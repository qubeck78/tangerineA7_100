#include "main.h"
#include <string.h>
#include "bsp.h"
#include "ff.h"
#include "diskio.h"

#define _BOOTLOADER_PROTECTION_ADDR ( 0x3000 )
#define _TXT_ATTR                   0x7f00


BSP_T *bsp                              = ( BSP_T *)                        0xf0000000; //registers base address
_VGA_REGISTERS_T *vga                   = ( _VGA_REGISTERS_T * )            0xf0100000; //vga registers base address
_AXI_DMA_REGISTERS_T *axidma            = ( _AXI_DMA_REGISTERS_T *)         0xf0200000; //sdram dma base address;
_PS2HOST_REGISTERS_T *ps2Host           = ( _PS2HOST_REGISTERS_T * )        0xf0300000; //ps2 keyboard/mouse host controller
_UART_REGISTERS_T *uart0                = ( _UART_REGISTERS_T *)            0xf0400000; //uart 0 base address
_SPI_REGISTERS_T *spi0                  = ( _SPI_REGISTERS_T *)             0xf0500000; //spi 0 base address

void (*bootEntry)(void) = (void(*)())0x0;


uint32_t    screenIndex;
uint16_t   *displayRam; 
uint32_t    fileBoot;
FATFS       fatfs;
FIL         fd;
char        buf[128];


uint32_t print( char *buf )
{
   char     c;
   uint32_t i;

   i = 0;

   while( c = buf[ i++ ] )
   {  

      if( c == 13 )
      {

      }else if( c == 10 )
      {
         screenIndex -= screenIndex % 160;
         screenIndex += 160;
         if( screenIndex >= 7200 )
         {
            screenIndex = 0;
         }  
      }
      else
      {
         displayRam[ screenIndex++ ] = _TXT_ATTR | c;
      }
   }

   return 0;
}

int32_t uartGetC()
{

   if ( uart0->uartStatus & 1 )
   {           
      return uart0->uartData;
   }
   else
   {
      return -1;
   }
}

int bootPutC( unsigned char c )
{
   while( ! ( uart0->uartStatus & 2 ) );
   uart0->uartData = (unsigned short)c;
   
   return 0;
}

uint32_t bootGetS( char *buf, uint32_t maxLength )
{
   uint32_t idx;   
   char     c;
   uint32_t rv;
   uint8_t  rbuf[4];
   UINT     nbr;

   idx = 0;
   
   do
   {

      do
      {

         if( fileBoot )
         {
            f_read( &fd, rbuf, 1, &nbr );
            
            rv = rbuf[0];

         }
         else
         {
            rv = uartGetC();
         }

      }while( rv == -1 );

      c = (char) rv & 0xff;

      if( ( c != 13 ) && ( c != 10 ) )
      {
         if( idx < ( maxLength - 1 ) )
         {
            buf[idx++] = c;
            buf[idx] = 0;
         }
      }

      
   }while( c != 10 );

   return 0;
}


uint32_t hexToIDigit( char *buf, uint32_t position )
{
   char c;
   
   c = buf[ position ];
   
   if ( ( c >= '0' ) && ( c <='9' ) )
   {
      return c - '0';
   }else if ( ( c >='a' ) && ( c <='f' ) )
   {
      return c - 'a' + 10;
   }else if ( ( c >='A' ) && ( c <='F' ) )
   {
      return c - 'A' + 10;
   }
   else
   {
      return -1;
   }
}

uint32_t hexToIByte( char *buf, uint32_t position )
{
   uint32_t d1;
   uint32_t d2;
   
   d1 = hexToIDigit( buf, position++ );
   if( d1 == -1 ) return -1;
   
   
   d2 = hexToIDigit( buf, position );
   if( d2 == -1 ) return -1;
   
   return ( d1 << 4 ) | d2;
}

void hexDigit(char *string, char digit )
{
    digit &= 0x0f;
    
    if( digit<10 )
    {
        string[0] = digit + '0';
        string[1] = 0;
    }
    else
    {
        string[0] = digit + 'a' - 10;
        string[1] = 0;
    }
}

void itoaHex8Digits( uint32_t value, char* str )
{
    hexDigit(&str[0], ( value >> 28 ) & 0x0f );
    hexDigit(&str[1], ( value >> 24 ) & 0x0f );

    hexDigit(&str[2], ( value >> 20 ) & 0x0f );
    hexDigit(&str[3], ( value >> 16 ) & 0x0f );

    hexDigit(&str[4], ( value >> 12 ) & 0x0f );
    hexDigit(&str[5], ( value >> 8 ) & 0x0f );

    hexDigit(&str[6], ( value >> 4) & 0x0f );
    hexDigit(&str[7], ( value ) & 0x0f );
}

uint32_t decodeAndDisplayS0Record( char *buf )
{
   uint32_t idx;
   uint32_t recordLength;
   uint32_t i;
   uint32_t v;
   char line[8];
   
   recordLength = hexToIByte( buf, 1 );
   if( recordLength == -1 ) return 1;
   
   for( i = 0; i < recordLength - 3; i++ )
   {
      v = hexToIByte( buf, 7 + i * 2 );

      if( v == -1 ) return 1;
      
      line[0] = (char)v;
      line[1] = 0;
      print( line );
   
   }
   
   return 0;
}

uint32_t decodeAndSaveS1_2_3Record( char *buf, uint32_t recordType )
{
   uint32_t rv;
   uint32_t i;
   uint32_t dataFieldIdx;
   uint32_t address;
   uint32_t recordLength;
   uint32_t addressFieldLength;

   unsigned char *memPtr;
   
   memPtr = 0;
   
   recordLength = hexToIByte( buf, 2 );
   
   if( recordLength == -1 ) return 1;
   

   switch( recordType )
   {


      case 1:

         addressFieldLength = 2;
         dataFieldIdx       = 8;
         break;

      case 2:

         addressFieldLength = 3;
         dataFieldIdx       = 10;
         break;

      case 3:

         addressFieldLength = 4;
         dataFieldIdx       = 12;
         break;


   }
   address = 0;

   for( i = 0; i < addressFieldLength; i++ )
   {

      rv = hexToIByte( buf, 4 + i * 2 );
      
      if( rv == -1 ) return 1;

      address <<= 8;
      address |= (uint8_t)rv;

   }

   if( address < _BOOTLOADER_PROTECTION_ADDR ) return 2;
   
   for( i = 0; i < recordLength - addressFieldLength - 1; i++ )
   {
      rv = hexToIByte( buf, dataFieldIdx + i * 2 );
      if( rv == -1 ) return 1;
      
      memPtr[ address + i ] = rv;
   
   }
   
   return 0;
}


uint32_t decodeAndExecuteS7_8_9Record( char *buf, uint32_t recordType )
{
   uint32_t rv;
   uint32_t address;
   uint32_t i;
   uint32_t addressFieldLength;


   switch( recordType )
   {
      
      case 7:
         addressFieldLength = 4;
         break;

      case 8:
         addressFieldLength = 3;
         break;

      case 9:
         addressFieldLength = 2;
         break;

      default:
         return 1;
   }

   address = 0;

   for( i = 0; i < addressFieldLength; i++ )
   {
      rv = hexToIByte( buf, 4 + i * 2 );
      if( rv == -1 ) return 1;
   
      address <<= 8;
      address |= (uint8_t)rv;
   
   }

   if( fileBoot )
   {
      f_close( &fd );
   }

   print( (char*)"\nBOOT\n" );
   
   bootEntry = (void (*)(void)) address;

   (*bootEntry)();
   
   return 0;
}


void spaceDistance( uint32_t n )
{
   uint32_t i;

   for( i = 0 ; i < n; i++ )
   {
      print( (char*) " " );
   }

}


int main()
{
   uint32_t          i;
   uint32_t          k;
   uint32_t          uartData;
   volatile uint32_t j;
   FRESULT           frv;
   uint32_t          startMs;

   //160x45 txt mode only
   vga->vmMode    = _VIDEOMODE_TEXT160_ONLY;

   //hide cursor
   vga->pgCursorX = 255;
   vga->pgCursorY = 255;

   displayRam  = ( unsigned short * )0x10000000;
      
   screenIndex = 0;  

   for( i = 0; i < 7200 ; i++ )
   {
     displayRam[i] = _TXT_ATTR;
   }


   print( (char*) "\n" );  

   itoaHex8Digits( bsp->version, buf );

   i = 2;

   print( (char*) "       |.\\__/.|    (~\\\n" );
   print( (char*) "       | O O  |     ) )\n" );
   print( (char*) "     _.|  T   |_   ( ( \n" );   
   print( (char*) ".---- ((---- ((------------.\n" );
   print( (char*) "| tangerineA7_100 Wukong   |\n" );
   print( (char*) "| Powered by nekoRV        |\n" );
   print( (char*) "| Bootloader32IM B20250224 |\n" );
   print( (char*) "| SOC B" );
   print( buf);
   print( (char*)"            |\n" );

   print( (char*) "`--------------------------`\n\n" );


   //stop audio dma
   //aud->audioDmaConfig  = 0x00;         


   //hide sprite ( mouse cursor )
/*   spriteGen->spriteX = 0;
   spriteGen->spriteY = 0;
  */ 
   
   //clear ps2 keyboard fifo

   startMs = bsp->tickTimerCounter;

   while( !( ps2Host->keyboardStatus & 1 ))
   {
      i = ps2Host->keyboardData;

      if( bsp->tickTimerCounter > ( startMs + 1000 ) )
      {
         break;
      }
   }


   //clear uart rx fifo
   while( uartGetC() != -1 );


   //color bars
   for( i = 0; i < 4; i++ )
   {
      for( k = 0; k < 4; k++ )
      {
         displayRam[ ( 160 * ( i + 1 ) ) + 150 + k * 2 ] = ( k + ( i * 4 ) ) << 12;
         displayRam[ ( 160 * ( i + 1 ) ) + 151 + k * 2 ] = ( k + ( i * 4 ) ) << 12;
      }
   }

   if( disk_initialize( 0 ) )
   {
      print( "sd: error\n" );
   }

   f_mount( 0, &fatfs );     
         

   k        = 0;
   uartData = -1;
   fileBoot = 0;


   do
   {
      
      screenIndex = 160 * 22 + 50;

      for( i = 0; i < 60; i++ )
      {

         if( k < 60 )
         {
            if( i <= k )
            {
               print( (char*)"\xb1" );
            }
            else
            {
               print( (char*)"\xb0" );
            }
         }
         else
         {
            if( i <= ( k - 60 ) )
            {
               print( (char*)"\xb0" );
            }
            else
            {
               print( (char*)"\xb1" );
            }


         }
      }  


      k++;
      if( k >= 120 )
      {
         k = 0;
      }

      for( j = 0; j < 100000; j++ )
      {
         uartData = uartGetC();
         if( uartData == 'S' ) break;  
      }

      if( !( ps2Host->keyboardStatus & 1 ) )
      {
         i        = ps2Host->keyboardData;
         fileBoot = 1;

         break;
      }

   }while( uartData != 'S' );

   screenIndex = 160 * 22 + 50;

   for( i = 0; i < 60; i++ )
   {
      print( (char*) " " );
   }

   screenIndex = 160 * 11;


   if( fileBoot )
   {
      frv = f_open( &fd, "0:boot.rec", FA_READ | FA_OPEN_EXISTING );
      if( frv != FR_OK )
      {
         fileBoot = 0;
         print( "sd boot error\n" );
      }
      else
      {
         print( (char*)"Booting from sd\n" );
      }
   }


   if( !fileBoot )
   {

      print( (char*)"Receiving:'" );

      bootGetS( buf, sizeof( buf ) );
      
      if( !decodeAndDisplayS0Record( buf ) )
      {
         bootPutC( '*' );
      }
      else
      {
         bootPutC( '!' );

         print( (char*)"'\nERROR - please reset\n" );

         do{}while( 1 );
      }
      print( (char*)"'\n" );
   
   }

   do{
   
      bootGetS( buf, sizeof( buf ) );

      
      if( buf[0] == 'S' )
      {
      
         k = 0;
         
         switch( buf[1] )
         {
            case '1':
               k = decodeAndSaveS1_2_3Record( buf, 1 );
               break;
               
            case '2':
               k = decodeAndSaveS1_2_3Record( buf, 2 );
               break;

            case '3':
               k = decodeAndSaveS1_2_3Record( buf, 3 );
               break;
               
            case '0':
            case '4':
            case '5':
            case '6':
               k = 0;
               break;
               
            case '7':
               k = decodeAndExecuteS7_8_9Record( buf, 7 );
               break;
               
            case '8':
            
               k = decodeAndExecuteS7_8_9Record( buf, 8 );
               break;

            case '9':
            
               k = decodeAndExecuteS7_8_9Record( buf, 9 );
               break;
               
            default:
               
               k = 2;               
               do{}while( 1 );
         }
      
         switch( k )
         {
            //ok
            case 0:
               bootPutC( '*' );
               break;
               
            //retransmission
            case 1:
            
               print( ( char *) "r" );
               bootPutC( 'r' );
               break;

            //dead in the water
            default:
               
               print( (char*)"\nUnrecoverable error - please reset\n" );

               bootPutC( '!' );
               
               do{}while( 1 );
               
               break;
         }
      }
   
   }while( 1 );

} 
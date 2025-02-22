#include "main.h"
#include <cstring>
#include "../gfxLib/bsp.h"

BSP_T                   *bsp     = ( BSP_T *)                  0xf0000000; //registers base address
_UART_REGISTERS_T       *uart0   = ( _UART_REGISTERS_T *)      0xf0400000; //uart 0 base address
_VGA_REGISTERS_T        *vga     = ( _VGA_REGISTERS_T * )      0xf0100000; //vga registers base address

//_SPRITEGEN_REGISTERS_T  *spriteGen   = ( _SPRITEGEN_REGISTERS_T *)   0xf0100000; //hw sprite generator base address


/*
_USBHOST_REGISTERS_T *usbhost = ( _USBHOST_REGISTERS_T *)   0xf0300000; //hid usb host base address
_AUDIO_REGISTERS_T   *aud     = ( _AUDIO_REGISTERS_T*)      0xf0600000; //i2s audio base address
_SPI_REGISTERS_T     *spi1    = ( _SPI_REGISTERS_T *)       0xf0700000; //spi 1 base address
*/


uint32_t    screenIndex;
uint16_t   *displayRam; 

void (*bootEntry)(void) = (void(*)())0x0;

char buf[128];

#define _BOOTLOADER_PROTECTION_ADDR ( 8 * 1024 )
#define _TXT_ATTR                   0x7f00

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

int uartPutC( unsigned char c )
{
   while( ! ( uart0->uartStatus & 2 ) );
   uart0->uartData = (unsigned short)c;
   
   return 0;
}

uint32_t uartGetS( char *buf, uint32_t maxLength )
{
   uint32_t idx;   
   char     c;
   uint32_t rv;

   idx = 0;
   
   do
   {

      do
      {
         rv = uartGetC();
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
   
   if ( ( c >= '0' ) and ( c <='9' ) )
   {
      return c - '0';
   }else if ( ( c >='a' ) and ( c <='f' ) )
   {
      return c - 'a' + 10;
   }else if ( ( c >='A' ) and ( c <='F' ) )
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


/*uint8_t flashSpiSendReceive( uint8_t txB )
{
   
   do
   {
   }while( ! ( spi1->spiStatus & 1 ) );

   spi1->spiData = txB;

   do
   {
   }while( ! ( spi1->spiStatus & 1 ) );

   return spi1->spiData;            // return received byte

}


int flashRead( uint32_t address, uint32_t length, uint8_t *buffer )
{
   uint32_t i;

   //cs low
   bsp->gpoPort &= ( 1 << 8 ) ^ 0xffffffff;

   //read
   flashSpiSendReceive( 0x03 );

   //address
   flashSpiSendReceive( ( address >> 16 ) & 0xff );
   flashSpiSendReceive( ( address >> 8 ) & 0xff );
   flashSpiSendReceive( address & 0xff );

   //read data
   for( i = 0; i < length; i++ )
   {
      buffer[i] = flashSpiSendReceive( 0xff );
   }


   //cs high
   bsp->gpoPort |= ( 1 << 8 );

   return 0;
}

void loadSecondStageBootloader()
{
   uint32_t *sbPtr;

   print( (char*)"\n\nLoading second stage\n" );

   flashRead( 0x700000, 0x20000, (uint8_t*)_SYSTEM_MEMORY_BASE );

   sbPtr = (uint32_t*)_SYSTEM_MEMORY_BASE;

   //check code signature (jump command)
   if( *sbPtr == 0x0100006f )
   {

      print( (char*)"BOOT\n" );

      bootEntry = (void (*)(void)) _SYSTEM_MEMORY_BASE;

      (*bootEntry)();

   }
   else
   {
      print( (char*)"Invalid signature, please upload second stage bootloader to FPGA configuration memory at 0x700000\n" );

      do{}while( 1 );
   }

}
*/

int main()
{
   uint32_t          i;
   uint32_t          k;
   uint32_t          uartData;
   volatile uint32_t j;

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

   spaceDistance( i ); print( (char*) "       |.\\__/.|    (~\\\n" );
   spaceDistance( i ); print( (char*) "       | O O  |     ) )\n" );
   spaceDistance( i ); print( (char*) "     _.|  T   |_   ( ( \n" );   
   spaceDistance( i ); print( (char*) ".---- ((---- ((------------.\n" );
   spaceDistance( i ); print( (char*) "| tangerineA7_100 Wukong   |\n" );
   spaceDistance( i ); print( (char*) "| Powered by nekoRV        |\n" );
   spaceDistance( i ); print( (char*) "| Bootloader32IM B20250213 |\n" );
   spaceDistance( i ); print( (char*) "| SOC B" );
   print( buf);
   print( (char*)"            |\n" );

   spaceDistance( i ); print( (char*) "`--------------------------`\n\n" );


   //stop audio dma
   //aud->audioDmaConfig  = 0x00;         

   //clear usb hid fifo
/*   j = 0;
   while( ! ( usbhost->usbHidKeyboardStatus & 1 ) )
   {
      j |= usbhost->usbHidKeyboardData;
   }
*/

   //hide sprite ( mouse cursor )
/*   spriteGen->spriteX = 0;
   spriteGen->spriteY = 0;
  */ 
   

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

      

   k = 0;
   uartData = -1;
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

	/*
      if( ! ( usbhost->usbHidKeyboardStatus & 1 ) )
      {
         //key has been pressed

         j = 0;
         //clear usb hid fifo
         while( ! ( usbhost->usbHidKeyboardStatus & 1 ) )
         {
            j |= usbhost->usbHidKeyboardData;
         }

         //start second stage bootloader
         if( j != 0 )
         {
            loadSecondStageBootloader();
         }
      }
	*/

   }while( uartData != 'S' );

   screenIndex = 160 * 22 + 50;

   for( i = 0; i < 60; i++ )
   {
      print( (char*) " " );
   }

   screenIndex = 160 * 22 + 50;

   print( (char*)"Receiving:'" );

   uartGetS( buf, sizeof( buf ) );
   //print( buf );
   
   if( !decodeAndDisplayS0Record( buf ) )
   {
      uartPutC( '*' );
   }
   else
   {
      uartPutC( '!' );
      print( (char*)"'\nERROR - please reset\n" );
      do{}while( 1 );
   }
   print( (char*)"'\n" );
   
   
   do{
   
      uartGetS( buf, sizeof( buf ) );

      
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
               uartPutC( '*' );
               break;
               
            //retransmission
            case 1:
            
               print( ( char *) "r" );
               uartPutC( 'r' );
               break;

            //dead in the water
            default:
               
               print( (char*)"\nUnrecoverable error - please reset\n" );

               uartPutC( '!' );
               
               do{}while( 1 );
               
               break;
         }
      }
   
   }while( 1 );

} 
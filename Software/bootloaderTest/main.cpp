#include "main.h"
#include <cstring>
#include <climits>

#include "../gfxLib/bsp.h"

BSP_T                   *bsp     = ( BSP_T *)                  0xf0000000; //registers base address 
_VGA_REGISTERS_T        *vga     = ( _VGA_REGISTERS_T * )      0xf0100000; //vga registers base address

#define TEXTATTR 0x8f00

uint16_t *displayRam;
uint32_t  screenIndex;
uint16_t *ddr;

char buf[128];

uint32_t random_state = 3242323459;

uint32_t randomNumber()
{
    uint32_t r = random_state;

    r ^= r << 13;
    r ^= r >> 17;
    r ^= r << 5;

    random_state = r;

    return r;
} 


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
         displayRam[ screenIndex++ ] = TEXTATTR | c;
      }
   }

   return 0;
}

 
int main()
{
   uint32_t          i;
   volatile uint32_t j;
   uint32_t          k;
   uint32_t          x;
   uint32_t          y;


   //160x45 column txt over gfx mode 
   vga->vmMode    = _VIDEOMODE_426_TEXT160_OVER_GFX; 

   vga->pgCursorX = 0;
   vga->pgCursorY = 12;
    
   displayRam           = ( unsigned short * )0x10000000;
   ddr                  = ( unsigned short * )0x20000000;

   screenIndex = 0;  

   
   
   for( i = 0; i < 7200 ; i++ )
   {
     displayRam[i] = 0;
   }

   for( y = 0; y < 240; y++ )
   {
      for( x = 0; x < 432; x++ )
      {
         ddr[ x + 512 * y ] = 0;
      }
   }

   print( (char*) "\n" );   
   print( (char*) "      |.\\__/.|    (~\\  \n" );
   print( (char*) "      | O O  |     ) ) \n" );
   print( (char*) "    _.|  T   |_   ( (  \n" );   
   print( (char*) " .-- ((---- ((-------. \n" );
   print( (char*) " |  RISC-V           | \n" );
   print( (char*) " |  tangerine A7_100 | \n" );
   print( (char*) " |                   | \n" );
   print( (char*) " |  Bootloader test  | \n" );
   print( (char*) " `-------------------` \n" );


   k = 0;
   do
   {
      
      screenIndex = 160 * 11;

      for( i = 0; i < 160; i++ )
      {


         if( k < 160 )
         {
            if( i <= k )
            {
               print( (char*)"#" );
            }
            else
            {
               print( (char*)" " );
            }
         }
         else
         {
            if( i <= ( k - 160 ) )
            {
               print( (char*)" " );
            }
            else
            {
               print( (char*)"#" );
            }


         }
      }  

      k++;

      if( k >= 320 )
      {
         k = 0;
      }

   
      for( j = 0; j < 10000; j++ );


      if( k == 0 )
      {

         for( y = 0; y < 240; y++ )
         {
            for( x = 0; x < 426; x++ )
            {
               ddr[ x + 512 * y ] = randomNumber();
            }
         }

         for( i = 160 * 30; i < 160 * 45 ; i++ )
         {
            displayRam[i] = randomNumber();
         }
      }

   }while( 1 );

} 

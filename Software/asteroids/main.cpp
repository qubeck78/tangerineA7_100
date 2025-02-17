#include "main.h"
#include <cstring>
#include <climits>

#include "../gfxLib/bsp.h"
#include "../gfxLib/osAlloc.h"
#include "../gfxLib/osFile.h"
#include "../gfxLib/gfBitmap.h"
#include "../gfxLib/gfDrawing.h"
#include "../gfxLib/gfFont.h"
#include "../gfxLib/gfGouraud.h"
#include "../gfxLib/gfJPEG.h"
#include "../gfxLib/osUIEvents.h"
#include "../gfxLib/usbHID.h"  

#include "../gfxLib/ff.h" 


extern tgfTextOverlay   con;

tgfBitmap               screen1;
tgfBitmap               screen2;


tgfBitmap               background;
tgfBitmap               asteroid1;
tgfBitmap               asteroid2;


#define NUM_OF_ASTEROIDS   10

typedef struct _tasteroid
{

   tgfBitmap   *bmp;
   
   uint16_t     enabled;

   uint16_t     width;
   uint16_t     height;

   long         positionX;
   long         speedX;

   int16_t      positionY;

}tasteroid;


tasteroid asteroids[NUM_OF_ASTEROIDS];

int animLeds( int j )
{  

      
   return 0;
} 

uint32_t init()
{
   uint32_t rv;

   rv = 0;

   bspInit();
      
   
   setVideoMode( _VIDEOMODE_426_TEXT160_OVER_GFX );
   
   //alloc screen buffers
   screen1.width        = 320;
   screen1.rowWidth     = 512;

   screen1.height       = 240;
   
   screen1.flags        = 0;
   screen1.transparentColor= 0;
   screen1.buffer          = osAlloc( screen1.rowWidth * screen1.height * 2, OS_ALLOC_MEMF_CHIP ); //osAlloc( 320 * 240 * 2 );

   if( screen1.buffer == NULL )
   {
      toPrint( &con, (char*)"\nCan't alloc screen1\n" );
      do{}while( 1 );
   } 

   memset( screen1.buffer, 0, screen1.rowWidth * screen1.height * 2 );

   screen2.width        = 320;
   screen2.rowWidth     = 512;

   screen2.height       = 240;
   
   screen2.flags        = 0;
   screen2.transparentColor= 0;
   screen2.buffer          = osAlloc( screen2.rowWidth * screen2.height * 2, OS_ALLOC_MEMF_CHIP ); //osAlloc( 320 * 240 * 2 );
   
   if( screen2.buffer == NULL )
   {
      toPrint( &con, (char*)"\nCan't alloc screen2\n" );
      do{}while( 1 );
   }     
   
   memset( screen2.buffer, 0, screen2.rowWidth * screen2.height * 2 );

   //display first buffer
   gfDisplayBitmap( &screen1 );


   gfFillRect( &screen1, 0, 0, screen1.width - 1, screen1.height - 1 , gfColor( 0, 0, 0 ) ); 
   gfFillRect( &screen2, 0, 0, screen2.width - 1, screen2.height - 1 , gfColor( 0, 0, 0 ) ); 
   
   con.textAttributes = 0x8f;

   //init events queue
   osUIEventsInit();   

   //init filesystem
   rv = osFInit();


   if( rv )
   {
      toPrint( &con, ( char* )"SD init error!" );
      
      do{
      }while( 1 );      
   }


   rv = gfLoadBitmapFS( &asteroid1, (char*)"0:demos/asteroid2.gbm" );

   asteroid1.flags         |= GF_BITMAP_FLAG_TRANSPARENT;
   asteroid1.transparentColor     = 0x0;

   rv = gfLoadBitmapFS( &background, (char*)"0:demos/spacebackground1.gbm" );

   asteroid2.flags         |= GF_BITMAP_FLAG_TRANSPARENT;
   asteroid2.transparentColor     = 0x0;

   return rv;
}

uint32_t anim( tgfBitmap *pscr )
{
   uint32_t     i;
   tasteroid   *rock;


   //copy background to screen buffer
   gfBlitBitmap( pscr, &background, 0, 0 );


   for( i = 0; i < NUM_OF_ASTEROIDS; i++ )
   {
      rock = &asteroids[i];

      if( rock->enabled )
      {
         gfBlitScaledBitmap( pscr, rock->bmp, rock->positionX >> 16 , rock->positionY, rock->width, rock->height );
      }
   }


   return 0;
}

uint32_t initAnim()
{
   uint32_t     i;
   tasteroid   *rock;
   float        scale;

   for( i = 0; i < NUM_OF_ASTEROIDS; i++ )
   {
      rock = &asteroids[i];

      rock->bmp = &asteroid1;
      
      rock->enabled = 1;

      rock->positionY = randomNumber() % 220;

      scale = ((float)( NUM_OF_ASTEROIDS - i ) * 1.1f );

      rock->width = rock->bmp->width / scale;
      rock->height = rock->bmp->height / scale;
      rock->positionX = -rock->width - ( randomNumber() % 100 );
      rock->positionX <<= 16;
      
      rock->speedX =  ( ( i + 1 ) << 18 ) / NUM_OF_ASTEROIDS;

   }

   return 0;
}

uint32_t moveAsteroids()
{
   uint32_t     i;
   tasteroid   *rock;

   for( i = 0; i < NUM_OF_ASTEROIDS; i++ )
   {
      rock = &asteroids[i];

      if( rock->enabled )
      {
         rock->positionX += rock->speedX;

         if( rock->positionX > ( 320 << 16 ) )
         {
            rock->positionX = -rock->width;
            rock->positionX <<= 16;
            rock->positionY = randomNumber() % 220;

         }

      }

   }

   return 0;
}

int main()
{
   uint32_t    i;
   uint32_t    rv;
   
   tosUIEvent  event; 

   
   init();
   initAnim();

   do
   {


      gfDisplayBitmap( &screen2 );

      waitVSync();
      
      anim( &screen1 );
      moveAsteroids();

      gfDisplayBitmap( &screen1 );
      waitVSync();
      
      anim( &screen2 );    
      moveAsteroids();
      
      if( !osGetUIEvent( &event ) )
      { 
         if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
         {
            switch( event.arg1 )
            {
               case _KEYCODE_F1:

                  axidma->cacheControl ^= 1;       //enable / disable cache
                  break;

               case _KEYCODE_PAUSE:

                  reboot();
                  break;  
            }
         }
      }
   
   }while( 1 );
   

} 

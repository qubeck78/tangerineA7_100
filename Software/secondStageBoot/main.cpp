#include <cstdio>
#include "bsp.h"
#include "osAlloc.h"
#include "osFile.h"
#include "gfBitmap.h"
#include "gfDrawing.h"
#include "gfFont.h"
#include "osUIEvents.h"


#include "main.h"
#include "ui.h"
#include "srec.h"

extern BSP_T            *bsp;
extern tgfTextOverlay    con;


extern void(*bootLoaderEntry)(void);

tgfBitmap                screen;
tgfBitmap                background;

long                     selectorWindowIdx;
long                     selectorCursorPos;
long                     selectorWindowHeight;
char                     selectorFileNames[26][_MAXFILENAMELENGTH + 1];
char                     buf[512];
char                     path[512];



uint32_t init()
{
   uint32_t rv;
   uint32_t i;

   rv = 0;

   bspInit();

   setVideoMode( _VIDEOMODE_426_TEXT160_OVER_GFX );

   printf( "Bootloader...\n" );

   
   //alloc screen buffers
   screen.width            = 426;
   screen.rowWidth         = 512;

   screen.height           = 240;
   
   screen.flags            = 0;
   screen.transparentColor = 0;
   screen.buffer           = osAlloc( screen.rowWidth * screen.height * 2, OS_ALLOC_MEMF_CHIP );
   
   if( screen.buffer == NULL )
   {
      printf( "\nCan't alloc screen\n" );
      do{}while( 1 );
   } 
   
   //display first buffer
   gfDisplayBitmap( &screen );


   gfFillRect( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 0, 0, 0 ) ); 
   

   //init events queue
   osUIEventsInit();   

   //init filesystem
   rv = osFInit();

   if( rv )
   {
      printf( "SD init error!" );
      
      do{}while( 1 );      
   }

   return rv;
}

uint32_t loadSrecFile( char *path )
{
   tosFile     in;
   uint32_t    rv;
   uint32_t    i;

   uiRedrawConsole();


   if( osFOpen( &in, path, OS_FILE_READ ) )
   {
      return 1;
   }


   uiDrawLoadingScreen( path );

   i = 0;

   while( !osFGetS( &in, (uint8_t*)buf, sizeof( buf) - 1 ) )
   {

      con.textAttributes = 0x8f;
      toSetCursorPos( &con, 80 - 2, 24 );

      printf( "%04X\n", i++ );

      rv = 0;

      if( buf[0] == 'S' )
      {
               
         switch( buf[1] )
         {
            case '1':
               rv = decodeAndSaveS1_2_3Record( buf, 1 );
               break;
               
            case '2':
               rv = decodeAndSaveS1_2_3Record( buf, 2 );
               break;

            case '3':
               rv = decodeAndSaveS1_2_3Record( buf, 3 );
               break;
               
            case '0':
            case '4':
            case '5':
            case '6':
               rv = 0;
               break;
               
            case '7':
               rv = decodeAndExecuteS7_8_9Record( buf, 7 );
               break;
               
            case '8':
            
               rv = decodeAndExecuteS7_8_9Record( buf, 8 );
               break;

            case '9':
            
               rv = decodeAndExecuteS7_8_9Record( buf, 9 );
               break;
               
            default:
               
               rv = 2;               
         }
      
      } 

      if( rv )
      {
         break;
      }
   }

   osFClose( &in );

   //shouldn't return
   return 1;
}

int main()
{
   uint32_t       rv;
   tosUIEvent     event; 

   init();

   rv = gfLoadBitmapFS( &background, (char*) "0:/shell/background426.gbm" );
   gfBlitBitmap( &screen, &background, 0, 0 );

   uiInit();

   uiRedrawConsole();

   //reset dir cursors
   selectorWindowIdx       = 0;
   selectorCursorPos       = 0;
   
   //default selector window height
   selectorWindowHeight    = 22;

   uiReadDirAndFillSelectorWindowContents();
   uiDrawSelectorWindowContents();

   do
   {

   
      while( !osGetUIEvent( &event ) )
      { 
         if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
         {
            switch( event.arg1 )
            {
               case _KEYCODE_PAUSE:

                  reboot();
                  break;  

               case _KEYCODE_UP:
               
                  if( selectorCursorPos > 0 )
                  {
                     selectorCursorPos--;
                  }
                  else
                  {
                     selectorCursorPos = selectorWindowHeight - 1;
                     selectorWindowIdx -= selectorWindowHeight;
                     
                     if( selectorWindowIdx < 0 )
                     {
                        selectorWindowIdx = 0;
                        selectorCursorPos = 0;
                     }

                     uiReadDirAndFillSelectorWindowContents();

                  }

                  uiDrawSelectorWindowContents();
                  break;

               case _KEYCODE_DOWN:

                  if( selectorCursorPos < ( selectorWindowHeight - 1 ) )
                  {
                     if( selectorFileNames[selectorCursorPos + 1 ][0] != 0x00 )
                     {
                        selectorCursorPos++;
                     }
                     
                  }else
                  {
                     selectorCursorPos    = 0;
                     selectorWindowIdx    += selectorWindowHeight;
                     
                     uiReadDirAndFillSelectorWindowContents();
                  }
                  uiDrawSelectorWindowContents();
                  break;

               case _KEYCODE_ENTER:

                  strcpy( path, "0:apps/" );
                  strcat( path, selectorFileNames[ selectorCursorPos ] );

                  loadSrecFile( path );

                  uiRedrawConsole();
                  uiDrawSelectorWindowContents();

                  break;
            }
         }
      }
   
   }while( 1 );
   

} 

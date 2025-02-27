#include <cstdio>
#include "ui.h"
#include "main.h"

#include "bsp.h"
#include "osAlloc.h"
#include "osFile.h"
#include "gfBitmap.h"
#include "gfDrawing.h"
#include "gfFont.h"
#include "osUIEvents.h"


extern tgfTextOverlay    con;

extern long              selectorWindowIdx;
extern long              selectorCursorPos;
extern long              selectorWindowHeight;
extern char              selectorFileNames[ 26 ][ _MAXFILENAMELENGTH + 1 ];

tosDir                  dir;
tosDirItem              dirItem;


uint32_t uiInit()
{

   return 0;
}


uint32_t uiRedrawConsole()
{
   con.textAttributes = 0x07;

   toCls( &con );

   toSetCursorPos( &con, 160 - 19, 41 ); printf( "   |.\\__/.|    (~\\" ); fflush( stdout );
   toSetCursorPos( &con, 160 - 19, 42 ); printf( "   | O O  |     ) )" ); fflush( stdout );
   toSetCursorPos( &con, 160 - 19, 43 ); printf( " _.|  T   |_   ( (" ); fflush( stdout );  
   toSetCursorPos( &con, 160 - 19, 44 ); printf( "- ((---- ((-------" ); fflush( stdout );


   toSetCursorPos( &con, 0, 42 );
   printf( "Tangerine A7_100" );
   fflush( stdout );

   toSetCursorPos( &con, 0, 43 );
   printf( "bootloader" );
   fflush( stdout );

   toSetCursorPos( &con, 0, 44 );
   printf( "%s", _BUILD_DATE );
   fflush( stdout );

   con.textAttributes = 0x8f;



   return 0;   
}

uint32_t uiReadDirAndFillSelectorWindowContents()
{
   uint32_t rv;
   uint32_t i;
   uint32_t j;


   rv = 0;

   //clear selector windows contents
   for( i = 0 ; i < selectorWindowHeight; i++ )
   {
      selectorFileNames[i][0] = 0x0;

   }


   rv = osDirOpen( &dir, (char*)"0:apps" );

   i = 0;
   j = 0;

   do
   {

      rv = osDirRead( &dir, &dirItem );

      if( rv )
      {
         break;
      }

      if( j >= selectorWindowIdx )
      {

         if( dirItem.type != OS_DIRITEM_DIR )
         {
            strncpy( selectorFileNames[i], dirItem.name, _MAXFILENAMELENGTH );
            i++;
         }
      }

      j++;  //directory item index

   }while( i < selectorWindowHeight );


   osDirClose( &dir );

   return 0;
}

uint32_t uiDrawSelectorWindowContents()
{
   uint32_t    rv;
   uint32_t    i;
   uint32_t    j;
   char     buf[50];

   rv = 0;

   con.textAttributes = 0x8f;

   toSetCursorPos( &con, 69, 2 );
   printf( "Select program to load\n" );

   con.textAttributes   = 0x0f;
   for( i = 0; i < selectorWindowHeight; i++ )
   {

      //clear buf
      for( j = 0; j < 38; j++ )
      {
         buf[j]      = ' ';
         buf[j + 1]  = 0;
      }

      j = strlen( selectorFileNames[i] );

      if( j > 0 )
      {

         if( j > 38 )
         {
            j = 38;
         }

         //center file name
         strncpy( &buf[ 19 - j / 2 ], selectorFileNames[i], j );

         //extend buf
         for( j = strlen( buf ); j < 38; j++ )
         {
            buf[j]      = ' ';
            buf[j + 1]  = 0;
         }

      }

      toSetCursorPos( &con, 61, 4 + i );

      if( selectorCursorPos == i )
      {
         con.textAttributes = 0x8e;
      }
      else
      {
         con.textAttributes = 0x0f;
      }

      printf( "%s\n", buf );

   }

   return rv;
}

uint32_t uiDrawLoadingScreen( char *path )
{

   con.textAttributes = 0x8e;
   toSetCursorPos( &con, 80 - ( strlen( path ) / 2 ), 20 );
   printf( "%s\n", path );

   con.textAttributes = 0x8f;
   toSetCursorPos( &con, 76, 23 );
   printf( "Loading:\n" );



   return 0;
}

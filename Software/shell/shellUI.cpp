#include "shellUI.h"

#include <cstring>
#include <climits>
#include <cstdio>

#include "main.h"
#include "osFile.h"
#include "gfBitmap.h"
#include "gfFont.h"


extern tgfBitmap        screen;
extern tgfTextOverlay   con;

tosDir                  dir;
tosDirItem              dirItem;

extern tgfBitmap        background;

uint32_t uiDrawStatusBar()
{
   uint32_t i;

   toSetCursorPos( &con, 0, 0 );
   con.textAttributes   = 0xf0;

   toPrintF( &con, ( char* )"tangerineSOC Shell %s", _BUILD );
   for( i = 0; i < 160 - 28; i++ )
   {
      toPrintF( &con, (char*)" " );
   }

   toSetCursorPos( &con, 0, 44 );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F1 remount" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F2 download" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F3 hex view" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F5 copy" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F6 rename/move" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F7 mkdir" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0xd7;
   toPrintF( &con, ( char* )"F8 delete" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );


   con.textAttributes   = 0x5f;
   toPrintF( &con, ( char* )"BkSp parent" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0x5f;
   toPrintF( &con, ( char* )"ENTER view/enter" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0x5f;
   toPrintF( &con, ( char* )"TAB switch" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )" " );

   con.textAttributes   = 0x5f;
   toPrintF( &con, ( char* )"PAUSE exit" );

   con.textAttributes   = 0x0f;
   toPrintF( &con, ( char* )"                             " );

   return 0;
}

uint32_t uiDrawSelectorWindowFrame( tselector *selector )
{
   uint32_t    rv;
   uint32_t    i;
   uint32_t    j;
   char     buf[128];

   rv = 0;


   toSetCursorPos( &con, selector->x, 1 );
   con.textAttributes   = 0x0f;

   
   buf[0] = 0xda;

   j = strlen( selector->path );

   for( i = 0; i < 78; i++ )
   {

      if( i < j )
      {
         buf[ 1 + i ] = selector->path[i];
      }
      else
      {
         buf[ 1 + i ] = 0xc4;
      }

   }

   buf[79] = 0xbf;
   buf[80] = 0x00;

   toPrint( &con, buf );

   for( i = 0; i < selector->selectorWindowHeight; i++ )
   {
      toSetCursorPos( &con, selector->x, 2 + i );
      toPrint( &con, ( char* ) "\xb3" );
      toSetCursorPos( &con, selector->x + 79, 2 + i );
      toPrint( &con, ( char* ) "\xb3" );
   }

   buf[0] = 0xc0;

   for( i = 0; i < 78; i++ )
   {
      buf[ 1 + i ] = 0xc4;
   }

   buf[79] = 0xd9;
   buf[80] = 0x00;

   toSetCursorPos( &con, selector->x, 2 + selector->selectorWindowHeight );
   toPrint( &con, buf );

   return rv;
}


uint32_t uiDrawSelectorWindowContents( tselector *selector )
{
   uint32_t    rv;
   uint32_t    i;
   uint32_t    j;
   uint32_t    idx;

   char     buf[128];
   uint16_t   position;
   char     buf2[16];


   position = selector->x + 1;

   rv = 0;

   con.textAttributes   = 0x0f;
   for( i = 0; i < selector->selectorWindowHeight; i++ )
   {
      strncpy( buf, selector->selectorFileNames[i], 78 );
      for( j = strlen( buf ); j < 78; j++ )
      {
         buf[j]      = ' ';
         buf[j+1]    = 0;
      }

      if( selector->selectorFileLengths[i] == 0xffffffff )
      {
         j = 73;
         buf[j++] = '(';
         buf[j++] = 'd';
         buf[j++] = 'i';
         buf[j++] = 'r';
         buf[j++] = ')';
      }
      else
      {
         if( selector->selectorFileNames[i][0] != 0 )
         {
            sprintf( buf2, "%d", selector->selectorFileLengths[i] );

            idx = 78 - strlen( buf2 );
            for( j = 0; j < strlen( buf2 ); j++ )
            {
               buf[idx + j] = buf2[j];
            }
         }
      }
 
      toSetCursorPos( &con, position, 2 + i );

      if(( selector->selectorCursorPos == i ) && ( selector->selectorActive ) )
      {
         con.textAttributes = 0x5f;
      }
      else
      {
         con.textAttributes = 0x0f;
      }

      toPrint( &con, buf );

   }

   return rv;
}


uint32_t uiReadDirAndFillSelectorWindowContents( tselector *selector)
{
   uint32_t rv;
   uint32_t i;
   uint32_t j;


   rv = 0;

   //clear selector windows contents
   for( i = 0 ; i < selector->selectorWindowHeight; i++ )
   {
      selector->selectorFileNames[i][0]   = 0;
      selector->selectorFileLengths[i]    = 0;

   }


   rv = osDirOpen( &dir, selector->path );


   i = 0;
   j = 0;

   do
   {
      rv = osDirRead( &dir, &dirItem );

      if( rv )
      {
         break;
      }

      if( j >= selector->selectorWindowIdx )
      {

         strncpy( selector->selectorFileNames[i], dirItem.name, _MAXFILENAMELENGTH );

         if( dirItem.type == OS_DIRITEM_DIR )
         {
            selector->selectorFileLengths[i] = 0xffffffff;
         }
         else
         {
            selector->selectorFileLengths[i] = dirItem.size;
         }


         i++;
      }

      j++;  //directory item index

   }while( i < selector->selectorWindowHeight );


   osDirClose( &dir );

   return 0;
}

uint32_t uiDrawInfoWindow( char *title, char *contents, uint32_t buttons )
{
   uint32_t    wy;
   uint32_t    wx;
   char     buf[160];
   uint32_t    i;
   uint32_t    j;
   uint16_t   width;

   width = strlen( contents );


   if( buttons == _UI_INFO_WINDOW_BUTTONS_NONE )
   {
      wy = ( con.height / 2 ) - 1;
   }
   else
   {
      wy = ( con.height / 2 ) - 2;
   }

   wx = ( con.width / 2 ) - ( ( width + 2 ) / 2 );
   
   buf[0] = 0xda;

   j = strlen( title );

   //36
   for( i = 0; i < width; i++ )
   {

      if( i < j )
      {
         buf[ 1 + i ] = title[i];
      }
      else
      {
         buf[ 1 + i ] = 0xc4;
      }

   }

   buf[width+1] = 0xbf;
   buf[width+2] = 0x00;
   
   toSetCursorPos( &con, wx, wy - 1);
   con.textAttributes   = 0x8e;
   toPrint( &con, buf );

   buf[0] = 0xb3;


   for( i = 0; i < width; i++ )
   {

      buf[ 1 + i ] = contents[i];

   }

   buf[width+1] = 0xb3;
   buf[width+2] = 0x00;

   toSetCursorPos( &con, wx, wy );
   toPrint( &con, buf );

   if( buttons != _UI_INFO_WINDOW_BUTTONS_NONE )
   {

      buf[0] = 0xb3;

      for( i = 0; i < width; i++ )
      {

         buf[ 1 + i ] = ' ';

      }

      buf[width+1] = 0xb3;
      buf[width+2] = 0x00;

      toSetCursorPos( &con, wx, wy + 1 );
      toPrint( &con, buf );


      switch( buttons )
      {
         case _UI_INFO_WINDOW_BUTTONS_YESNO:

            toSetCursorPos( &con, wx + 2, wy + 1 );
            toPrint( &con, (char*)"YES" );
            
            toSetCursorPos( &con, wx + width - 3, wy + 1 );
            toPrint( &con, (char*)"NO" );

            break;

         case _UI_INFO_WINDOW_BUTTONS_OK:

            toSetCursorPos( &con, wx + 2, wy + 1 );
            toPrint( &con, (char*)"OK" );

            break;

         case _UI_INFO_WINDOW_BUTTONS_CANCEL:

            toSetCursorPos( &con, wx + 2, wy + 1 );
            toPrint( &con, (char*)"CANCEL" );

            break;
      }


      toSetCursorPos( &con, wx, wy + 2 );

   }
   else
   {
   
      toSetCursorPos( &con, wx, wy + 1 );

   }

   buf[0] = 0xc0;

   for( i = 0; i < width; i++ )
   {
      buf[ 1 + i ] = 0xc4;
   }

   buf[width+1] = 0xd9;
   buf[width+2] = 0x00;

   toPrint( &con, buf );

   con.textAttributes   = 0x0f;

   return 0;
}

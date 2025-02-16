#include "main.h"
#include <cstring>
#include <climits>
#include <cstdio>

#include "bsp.h"
#include "osAlloc.h"
#include "osFile.h"
#include "gfBitmap.h"
#include "gfDrawing.h"
#include "gfFont.h"
#include "gfJPEG.h"
#include "osUIEvents.h"
#include "usbHID.h" 

#define SLIDESHOW_ALPHA_ANIMATION

extern BSP_T                *bsp;


extern tgfTextOverlay        con;
tgfBitmap                    screen;
tgfBitmap                    background;
tgfBitmap                    fileBmp;
tgfBitmap                    cursor;

char                         buf[ 128 ];
char                         lfnBuf[ 512 + 16];

tosDir                       dir;
tosDirItem                   dirItem;

uint32_t                     numDirEntries;


uint32_t getNumEntries()
{
    uint32_t rv;
    uint32_t numEntries;

    #ifdef _GFXLIB_SDL

    rv = osDirOpen( &dir, (char*)"./img" );

    #else

    rv = osDirOpen( &dir, (char*)"0:img" );
    
    #endif

    printf( "Dir open\n" );

    numEntries = 0;

    do
    {
        rv = osDirRead( &dir, &dirItem );

        if( rv ) 
        {
            break; // Error or end of dir
        }

        printf( "%s\n", dirItem.name );

        numEntries++;

    }while( 1 );

    osDirClose( &dir );

    printf( "%d entries\n", numEntries );

    return numEntries;
}

uint32_t getEntry( uint32_t entryNumber )
{
    uint32_t i;
    uint32_t rv;
    
    #ifdef _GFXLIB_SDL

    rv = osDirOpen( &dir, (char*)"./img" );

    #else

    rv = osDirOpen( &dir, (char*)"0:img" );
    
    #endif


    for( i = 0; i < entryNumber; i++ )
    {

        osDirRead( &dir, &dirItem );

    }

    osDirClose( &dir );

    return 0;
}


uint32_t slideshow()
{
    uint32_t        rv;
    uint32_t        i;
    int16_t         x;
    int16_t         y;
    char            extension[8];
    tosUIEvent      event;
    

    do{
        
        getEntry( randomNumber() % numDirEntries );

            
        if ( dirItem.type != OS_DIRITEM_DIR )
        {

            i = strlen( dirItem.name );
        
            if( i >= 4 )
            {
                extension[0] = dirItem.name[ i - 4 ];
                extension[1] = dirItem.name[ i - 3 ];
                extension[2] = dirItem.name[ i - 2 ];
                extension[3] = dirItem.name[ i - 1 ];
                extension[4] = 0;
                
                if( ( strcmp( extension, ".jpg" ) == 0 ) || ( strcmp( extension, ".gbm" ) == 0 ) )
                {
                
                    
                    strcpy( buf, "img/" );
                    strcat( buf, dirItem.name );

                    con.textAttributes = 0x0f;
                    toCls( &con );
                    con.textAttributes  = 0x8f;

                    printf( "Loading:%s\n", dirItem.name );

                    if( dirItem.name[ i - 3 ] == 'g' )
                    {
                        gfLoadBitmapFS( &fileBmp, buf );
                    }
                    else
                    {
                        gfLoadJPEGFS( &fileBmp, buf );                      
                    }
                    

                    if( screen.width > 512 )
                    {                       
                        x  = ((uint32_t)randomNumber() ) % ( screen.width - 320 );
                        y  = ((uint32_t)randomNumber() ) % ( screen.height - 240 );
                        
                    }
                    else
                    {
                    
                        x = ( screen.width / 2 ) - ( fileBmp.width / 2);
                        y = ( screen.height / 2 ) - ( fileBmp.height / 2 );
                    }



                    #ifdef SLIDESHOW_ALPHA_ANIMATION

                    background.width            = fileBmp.width;
                    background.height           = fileBmp.height;
                    background.rowWidth         = background.width;
                    background.flags            = 0;
                    background.transparentColor = 0;
                    background.buffer           = osAlloc( background.rowWidth * background.height * 2, OS_ALLOC_MEMF_CHIP );

                    gfBlitBitmapSrcRect( &background, &screen, x, y, background.width, background.height, 0, 0 );
  

                    for( i = 0; i < 256; i += 8 )
                    {       
                        waitVSync();
                        gfBlitBitmapA2Src( &screen, &fileBmp, &background, x, y, i );
                    }

                    osFree( background.buffer );                    
                    background.buffer   = NULL;

                    #endif
                    
                    gfBlitBitmap( &screen, &fileBmp, x, y );

                    osFree( fileBmp.buffer );
                    
                    fileBmp.buffer          = NULL;
                    con.textAttributes      = 0x0f;
                    
                    toCls( &con );
                    con.textAttributes      = 0x8f;
                    
                    printf( "%s %d\n", dirItem.name, dirItem.size );
                    
                    for( i = 0; i < 500; i++ )
                    {
                        delayMs( 20 );
                                        
                        if( !osGetUIEvent( &event ) )
                        { 
                            if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
                            {
                                switch( event.arg1 )
                                {
                                
                                    case _KEYCODE_PAUSE:

                                        reboot();
                                        break; 

                                    case _KEYCODE_F1:

                                        break;

                                    default:

                                        //exit delay loop
                                        i = 500;
                                        break;
                                }
                            }

                        }
                    }
                }
            }
        }
            
    }while( 1 );

}


int main()
{
    uint32_t    i;
    uint32_t    rv;
    tosUIEvent      event;


    bspInit();
        
    setVideoMode( _VIDEOMODE_1280_TEXT160_OVER_GFX );

    //alloc screen buffers
    screen.width            = 1280;
    screen.rowWidth         = 2048;
    screen.height           = 720;


    toCls( &con );
    
    con.flags   |= GF_TEXT_OVERLAY_FLAG_SHOW_CURSOR;

    printf( "tangerineRISC-V SOC Slideshow B20250215\n\n" );

    
    screen.flags            = 0;
    screen.transparentColor = 0;

    screen.buffer           = osAlloc( screen.rowWidth * screen.height * 2, OS_ALLOC_MEMF_CHIP ); 


    if( screen.buffer == NULL )
    {
        printf( "\nERROR: Can't alloc screen\n" );
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
        printf( "SD init error!\n" );
        
        do{
        }while( 1 );        
    }


    printf( ">" );
    fflush( stdout );

    do
    {
        if( !osGetUIEvent( &event ) )
        { 
            if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
            {
                printf( "%c", event.arg1 );
                fflush( stdout );      
            }
        }

    }while( event.arg1 != 27 );

/*
    gfLoadBitmapFS( &cursor, (char*)"0:/sys/cursor.gbm" );
    usbHIDSetMousePointerShape( &cursor );

    usbHIDSetMousePointerVisibility( 1 );        
*/
    printf( "Scanning /img directory\n" );

    numDirEntries = getNumEntries();


    con.flags   &= GF_TEXT_OVERLAY_FLAG_SHOW_CURSOR ^ 0xffffffff;

    if( numDirEntries )
    {
        slideshow();
    }

    reboot();
} 

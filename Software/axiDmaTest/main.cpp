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


extern BSP_T                *bsp;
extern tgfTextOverlay        con;
tgfBitmap                    screen;

tgfBitmap                    bmp;

uint16_t                    *ch2Buf;
uint32_t                    *ch2BufL;




int main()
{
    uint32_t    i;
    uint32_t    j;
    int16_t     x;
    int16_t     y;

    uint32_t    rv;
    tosUIEvent      event;


    bspInit();


    ch2Buf = (uint16_t*)0x40000000;
    ch2BufL = (uint32_t*)0x40000000;

    setVideoMode( _VIDEOMODE_1280_TEXT160_OVER_GFX );
    
    //alloc screen buffers
    screen.width            = 1280;
    screen.rowWidth         = 2048;
    screen.height           = 720;

    con.textAttributes = 0x0f;
    toCls( &con );
    con.textAttributes = 0x8f;
    
    con.flags   |= GF_TEXT_OVERLAY_FLAG_SHOW_CURSOR;

    printf( "tangerineRISC-V SOC axiDMA block transfer test B20250221\n\n" );

    
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

//    gfFillRect( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 255, 255, 255 ) ); 

    axidma->ch2DaAddress        = (uint32_t)screen.buffer;
    axidma->ch2DaRowWidth       = 4096;
    axidma->ch2TransferLength   = 159; 
    axidma->ch2DaWriteMask      = 0xffffffff;

    for( i = 0; i < 4; i++ )
    {
        axidma->ch2Input0[i] = gfColor( 32, 32, 32) | ( gfColor( 32, 32, 32) << 16 );
    }
    
    for( i = 0; i < 768; i++ )
    {
        axidma->ch2Command = 0x00;
        do{
        }while( ! ( axidma->ch2Command & 1 ) );   
    }

    

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


    i = 0;

    gfLoadBitmapFS( &bmp, (char*)"0:/las.gbm" );

    do
    {


        axidma->ch2DaAddress    = (uint32_t)screen.buffer + 960 + 240 * 4096;
        axidma->ch2DaRowWidth       = 4096;
        axidma->ch2TransferLength   = 159; 
        axidma->ch2DaWriteMask      = 0xffffffff;

        for( y = 0; y < 4; y++ )
        {
            axidma->ch2Input0[y] = gfColor( 32, 32, 32) | ( gfColor( 32, 32, 32) << 16 );
        }

        for( y = 0; y < 240; y++ )
        {
            axidma->ch2Command = 0x00;
            
            do{}while( ! ( axidma->ch2Command & 1 ) );   
        }



        axidma->ch2SaAddress    = (uint32_t)bmp.buffer;
        axidma->ch2SaRowWidth   = 640;

        axidma->ch2DaAddress    = (uint32_t)screen.buffer + 960 + 240 * 4096;

        axidma->ch2DaRowWidth   = 4096;

        //i - data shift ( pixels )
        switch( i & 7 )
        {
            case 0:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111111111111110000000000000000;
                break;

            case 1:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111111111111000000000000000011;
                break;

            case 2:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111111111100000000000000001111;
                break;

            case 3:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111111110000000000000000111111;
                break;

            case 4:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111111000000000000000011111111;
                break;

            case 5:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11111100000000000000001111111111;
                break;

            case 6:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11110000000000000000111111111111;
                break;

            case 7:
                //                          first           last
                axidma->ch2DaWriteMask  = 0b11000000000000000011111111111111;
                break;
        }

        axidma->ch2Input0[0] = i++;

        for( y = 0; y < 240; y++ )
        {

            axidma->ch2TransferLength   = 39;
            axidma->ch2Command = 0x03;
            do{
            }while( ! ( axidma->ch2Command & 1 ) );   

            axidma->ch2TransferLength   = 40;
            axidma->ch2Command = 0x02;
            do{
            }while( ! ( axidma->ch2Command & 1 ) );   

        }


        do
        {
            if( !osGetUIEvent( &event ) )
            { 
                if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
                {
                    break;
                }
            }

        }while( 1 );

    }while( 1 );


    reboot();
} 

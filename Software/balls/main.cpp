#include "main.h"
#include <math.h>
#include <cstring>
#include <climits>
#include <cstdio>

#include "../gfxLib/bsp.h"
#include "../gfxLib/osAlloc.h"
#include "../gfxLib/osFile.h"
#include "../gfxLib/gfBitmap.h"
#include "../gfxLib/gfDrawing.h"
#include "../gfxLib/gfFont.h"

#include "../gfxLib/osUIEvents.h"


extern tgfTextOverlay   con;
tgfBitmap               screen1;
tgfBitmap               screen2;
tgfBitmap               bgBmp;
tgfBitmap               ballBmp;

#define NUM_BALLS   20              // Number of balls
#define WIDTH       640             // Screen width in pixels
#define HEIGHT      360             // Screen height in pixels
#define RADIUS      8               // Ball radius in pixels
#define G           300.0           // Gravity acceleration (pixels/s^2)
#define DT          0.017           // Time step (seconds)
#define K           0.3             // Drag coefficient (adjust as needed)
#define BE          0.8             // Bounce returns 0.9 velocity

// Arrays to store ball properties
float x[NUM_BALLS], y[NUM_BALLS];      // Positions
float vx[NUM_BALLS], vy[NUM_BALLS];    // Velocities


uint32_t launchBall( uint32_t num )
{
    uint32_t i;


    x[num] = RADIUS + (float)randomNumber() / RAND_MAX * (WIDTH - 2 * RADIUS);  // x between RADIUS and WIDTH-RADIUS
    y[num] = RADIUS;                                                            // Start at top (y=0 + radius)


    vx[num] = (float)randomNumber() / RAND_MAX * 600.0f - 300.0f;                     // vx between -300 and 300
    vy[num] = 10.0f + (float)randomNumber() / RAND_MAX * 100.0f;                     // vy between 10 and 100


    return 0;
}

uint32_t drawBalls( tgfBitmap *bmp )
{
    uint32_t    i;

    gfBlitBitmap128( bmp, &bgBmp, 0, 0 );

    for( i = 0; i < NUM_BALLS; i++) 
    {
        gfBlitBitmap128( bmp, &ballBmp, x[i] - RADIUS, y[i] - RADIUS );
    }

    return 0;
}

int main()
{
    uint32_t    i;
    uint32_t    j;
    
    uint32_t    rv;
    uint32_t    screenNo;
    tosUIEvent  event; 

    float drag_factor;


    bspInit();
    
    setVideoMode( _VIDEOMODE_640_TEXT160_OVER_GFX );
    
    //alloc screen buffers
    screen1.width            = 640;
    screen1.rowWidth         = 1024;
    screen1.height           = 360;
    
    screen1.flags            = 0;
    screen1.transparentColor = 0;
    screen1.buffer           = osAlloc( screen1.rowWidth * screen1.height * 2, OS_ALLOC_MEMF_CHIP );
    
    if( screen1.buffer == NULL )
    {
        printf( "Can't alloc screen1\n" );
        do{}while( 1 );
    } 
        
    screen2.width            = 640;
    screen2.rowWidth         = 1024;
    screen2.height           = 360;
    
    screen2.flags            = 0;
    screen2.transparentColor = 0;
    screen2.buffer           = osAlloc( screen2.rowWidth * screen2.height * 2, OS_ALLOC_MEMF_CHIP );
    
    if( screen1.buffer == NULL )
    {
        printf( "Can't alloc screen2\n" );
        do{}while( 1 );
    } 
    
    //display first buffer
    gfDisplayBitmap( &screen1 );
    gfFillRect128( &screen1, 0, 0, screen1.width - 1, screen1.height - 1 , gfColor( 0, 0, 0 ) ); 

    //init events queue
    osUIEventsInit(); 

    //init filesystem
    osFInit();

    rv = gfLoadBitmapFS( &bgBmp, ( char* )"0:/demos/earth.gbm" );
    rv |= gfLoadBitmapFS( &ballBmp, ( char* )"0:/demos/ball16.gbm" );

    if( rv )
    {
        printf( "Can't load assets\n" );
        do{}while( 1 );
    }

    ballBmp.flags               |= GF_BITMAP_FLAG_TRANSPARENT;
    ballBmp.transparentColor    = 0;

    drag_factor = exp( -K * DT );


    for( i = 0; i < NUM_BALLS; i++ )
    {
        launchBall( i );
    }

    screenNo = 0;
    
    do
    {

        //check balls velocity, re-launch if still

        for( i = 0; i < NUM_BALLS; i++ )
        {
            if( ( abs( vy[i] ) < 1 ) && ( y[i] > ( HEIGHT - RADIUS * 2 ) ) )
            {
                launchBall( i );
            }
        }


        // Apply drag to velocities
        for( i = 0; i < NUM_BALLS; i++) 
        {
            vx[i] *= drag_factor;
            vy[i] *= drag_factor;
        }

        // Update positions and velocities
        for( i = 0; i < NUM_BALLS; i++) 
        {
            x[i] += vx[i] * DT;          // Update x position
            y[i] += vy[i] * DT;          // Update y position
            vy[i] += G * DT;             // Apply gravity
        }

        // Check for bounces off screen borders
        for( i = 0; i < NUM_BALLS; i++) 
        {
            // Left border
            if (x[i] < RADIUS) {
                x[i] = RADIUS;
                vx[i] = -vx[i] * BE;
            }
            // Right border
            if (x[i] > WIDTH - RADIUS) {
                x[i] = WIDTH - RADIUS;
                vx[i] = -vx[i] * BE;
            }
            // Top border
            if (y[i] < RADIUS) {
                y[i] = RADIUS;
                vy[i] = -vy[i] * BE;
            }
            // Bottom border
            if (y[i] > HEIGHT - RADIUS) {
                y[i] = HEIGHT - RADIUS;
                vy[i] = -vy[i] * BE;
            }
        }


        if( screenNo & 1 )
        {

            gfDisplayBitmap( &screen2 );

            waitVSync();

            drawBalls( &screen1 );
        }
        else
        {

            gfDisplayBitmap( &screen1 );

            waitVSync();

            drawBalls( &screen2 );

        }

        screenNo++;

    }while( 1 );
    
    
    

} 
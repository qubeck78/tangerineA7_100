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
tgfBitmap               screen1Shifted;

tgfBitmap               screen2;
tgfBitmap               screen2Shifted;

tgfBitmap               bmpBigBackground;
tgfBitmap               bmpBigGround;

tgfBitmap               bmpBgDay;
tgfBitmap               bmpBgNight;
tgfBitmap               bmpBird[3];
tgfBitmap               bmpGround;
tgfBitmap               bmpPipeDown;
tgfBitmap               bmpPipeDownClipped;
tgfBitmap               bmpPipeUp;
tgfBitmap               bmpPipeUpClipped;
tgfBitmap               bmpLogo;


typedef struct _flappyCtx_t
{
    
    uint32_t    screenNo;
    uint32_t    groundAnimationStep;
    uint32_t    birdAnimationCounter;
    uint32_t    birdAnimationStep;

    float       birdY;
    float       birdVelocity;
    float       birdJumpVelocity;
    float       gravity;

    uint16_t    pipesUp[20];
    uint16_t    pipesDown[20];
    
    uint32_t    pipeSpawnCounter;

    uint32_t    score;
    uint32_t    gameOver;

}flappyCtx_t;


flappyCtx_t ctx;


uint32_t loadAssets()
{
    uint32_t    rv;
    uint32_t    i;

    rv  = gfLoadBitmapFS( &bmpBgDay, ( char* )"0:/flappy/bgDay.gbm" );
    rv |= gfLoadBitmapFS( &bmpBgNight, ( char* )"0:/flappy/bgNight.gbm" );
    rv |= gfLoadBitmapFS( &bmpBird[0], ( char* )"0:/flappy/bird1.gbm" );
    rv |= gfLoadBitmapFS( &bmpBird[1], ( char* )"0:/flappy/bird2.gbm" );
    rv |= gfLoadBitmapFS( &bmpBird[2], ( char* )"0:/flappy/bird3.gbm" );
    rv |= gfLoadBitmapFS( &bmpGround, ( char* )"0:/flappy/ground.gbm" );
    rv |= gfLoadBitmapFS( &bmpPipeDown, ( char* )"0:/flappy/pipeDown.gbm" );
    rv |= gfLoadBitmapFS( &bmpPipeUp, ( char* )"0:/flappy/pipeUp.gbm" );
    rv |= gfLoadBitmapFS( &bmpLogo, ( char* )"0:/flappy/logo.gbm" );

    for( i = 0; i < 3; i++ )
    {
        bmpBird[i].flags            |= GF_BITMAP_FLAG_TRANSPARENT;
        bmpBird[i].transparentColor = 0xf95f;
    }
 

    bmpPipeUp.flags                 |= GF_BITMAP_FLAG_TRANSPARENT;
    bmpPipeUp.transparentColor      = 0xf95f;

    bmpPipeDown.flags               |= GF_BITMAP_FLAG_TRANSPARENT;
    bmpPipeDown.transparentColor    = 0xf95f;

    bmpLogo.flags                   |= GF_BITMAP_FLAG_TRANSPARENT;
    bmpLogo.transparentColor        = 0xf95f;

    bmpPipeUpClipped.width              = bmpPipeUp.width;
    bmpPipeUpClipped.height             = bmpPipeUp.height;
    bmpPipeUpClipped.rowWidth           = bmpPipeUp.rowWidth;
    bmpPipeUpClipped.flags              = bmpPipeUp.flags;
    bmpPipeUpClipped.transparentColor   = bmpPipeUp.transparentColor;
    bmpPipeUpClipped.buffer             = bmpPipeUp.buffer;

    bmpPipeDownClipped.width            = bmpPipeDown.width;
    bmpPipeDownClipped.height           = bmpPipeDown.height;
    bmpPipeDownClipped.rowWidth         = bmpPipeDown.rowWidth;
    bmpPipeDownClipped.flags            = bmpPipeDown.flags;
    bmpPipeDownClipped.transparentColor = bmpPipeDown.transparentColor;
    bmpPipeDownClipped.buffer           = bmpPipeDown.buffer;
        

    if( rv )
    {
        printf( "Can't load assets\n" );
        do{}while( 1 );
    }


    //create big background

    bmpBigBackground.width     = 640;
    bmpBigBackground.rowWidth  = 640;
    bmpBigBackground.height    = 256;
    bmpBigBackground.flags     = 0;

    bmpBigBackground.buffer    = osAlloc( bmpBigBackground.rowWidth * bmpBigBackground.height * 2, OS_ALLOC_MEMF_CHIP );


    if( !bmpBigBackground.buffer )
    {
        printf( "Can't alloc bmpBigBackground\n" );
        do{}while( 1 );
    }

    for( i = 0; i < 5; i++ )
    {
        gfBlitBitmap128( &bmpBigBackground, &bmpBgDay, 144 * i, 0 );
    }

    bmpBigGround.width     = 640 + 64;
    bmpBigGround.rowWidth  = 640 + 64;
    bmpBigGround.height    = 55;
    bmpBigGround.flags     = 0;

    bmpBigGround.buffer    = osAlloc( bmpBigGround.rowWidth * bmpBigGround.height * 2, OS_ALLOC_MEMF_CHIP );

    if( !bmpBigGround.buffer )
    {
        printf( "Can't alloc bmpBigGround\n" );
        do{}while( 1 );
    }

    for( i = 0; i < 5; i++ )
    {
        gfBlitBitmap128( &bmpBigGround, &bmpGround, 168 * i, 0 );
    }

    return 0;
}

uint32_t drawPipeDown( tgfBitmap *bmp, uint32_t x, uint32_t height )
{
    if( !height )
    {
        return 0;
    }

    height = 160 - height;

    bmpPipeDownClipped.height = bmpPipeDown.height - height;

    gfBlitBitmap128( bmp, &bmpPipeDownClipped, x, 256 - bmpPipeDownClipped.height );

    return 0;
}

uint32_t drawPipeUp( tgfBitmap *bmp, uint32_t x, uint32_t height )
{
    if( !height )
    {
        return 0;
    }
    
    height = 160 - height;

    bmpPipeUpClipped.height = bmpPipeUp.height - height;
    bmpPipeUpClipped.buffer = bmpPipeUp.buffer + bmpPipeUp.rowWidth * 2 * height;

    gfBlitBitmap128( bmp, &bmpPipeUpClipped, x, 0 );

    return 0;
}


uint32_t drawPlayfield( tgfBitmap *bmp )
{
    uint32_t    i;

    //background
    gfBlitBitmap128( bmp, &bmpBigBackground, 64, 0 );

    //ground
    gfBlitBitmap128( bmp, &bmpBigGround, 64 - ctx.groundAnimationStep, 256 );

    //pipes
    for( i = 0; i < 19; i++ )
    {
        drawPipeUp( bmp, 64 - ctx.groundAnimationStep + i * 36, ctx.pipesUp[i] );
        drawPipeDown( bmp, 64 - ctx.groundAnimationStep + i * 36, ctx.pipesDown[i] );
    }

    //bird
    //                                                        // screen shift + 2x animation step - bird width + column margin
    gfBlitBitmap( bmp, &bmpBird[ ctx.birdAnimationStep  ], 64 + 72 - 17 + 3, ctx.birdY );

    return 0;
}

uint32_t shiftPipes()
{
    uint32_t i;

    for( i = 0; i < 19; i++ )
    {
        ctx.pipesUp[i] = ctx.pipesUp[ i + 1 ];
        ctx.pipesDown[i] = ctx.pipesDown[ i + 1 ];
    }

    if( !ctx.pipeSpawnCounter )
    {
        ctx.pipesUp[19]         = 32 + randomNumber() % 90;
        ctx.pipesDown[19]       = 32 + randomNumber() % 90;


        ctx.pipeSpawnCounter    = randomNumber() % 4; 

    }
    else
    {
        ctx.pipeSpawnCounter--;

        ctx.pipesUp[19]     = 0;
        ctx.pipesDown[19]   = 0;
    }
    return 0;
}

uint32_t birdCollisionDetection()
{

    if( ctx.pipesUp[2] )
    {
        if( ctx.birdY < ctx.pipesUp[2] )
        {
            return 1;
        }
    }

    if( ctx.pipesDown[2] )
    {
        if( ( (uint32_t)ctx.birdY + 12 ) > 256 - ctx.pipesDown[2] )
        {
            return 1;
        }
    }

    return 0;
}

uint32_t newGame()
{
    uint32_t i;

    ctx.screenNo                = 0;
    ctx.groundAnimationStep     = 0;
    ctx.birdAnimationStep       = 0;
    ctx.birdAnimationCounter    = 5;
    ctx.birdY                   = 128.0f;
    ctx.birdVelocity            = 0.0f;
    ctx.birdJumpVelocity        = -2.0f;
    ctx.gravity                 = 0.2;
    ctx.gameOver                = 0;
    ctx.score                   = 0;

    for( i = 0; i < 20; i++ )
    {
        ctx.pipesUp[i]      = 0;
        ctx.pipesDown[i]    = 0;
    }
    
    ctx.pipeSpawnCounter = 0;

    return 0;
}

uint32_t game()
{
    uint32_t    i;
    uint32_t    j;
    
    uint32_t    rv;
    tosUIEvent  event; 


    con.textAttributes = 0x0f;

    toCls( &con );

    con.textAttributes = 0x8f;
    
    do
    {

        newGame();

        toSetCursorPos( &con, 70, 38 );

        con.textAttributes = 0x0f;
        printf( "Press SPACE to jump\n" );

        do
        {


            while( !osGetUIEvent( &event ) )
            {

                if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
                {
                    switch( event.arg1 )
                    {

                        case ' ':

                            ctx.birdVelocity = ctx.birdJumpVelocity;

                            break;
                    }
                }

            }


            rv = birdCollisionDetection();

            if( rv )
            {
                ctx.gameOver = 1;
            }



            ctx.birdY           += ctx.birdVelocity;
            ctx.birdVelocity    += ctx.gravity;

            if( ctx.birdY < 0 )
            {
                ctx.birdY       = 0;
                ctx.gameOver    = 1;
            }

            if( ctx.birdY > ( 256 - 12 ) )
            {
                ctx.birdY       = 256 - 12;
                ctx.gameOver    = 1;
            }

            ctx.groundAnimationStep++;

            if( ctx.groundAnimationStep >= 36 )
            {
                ctx.groundAnimationStep = 0;

                if( ctx.pipesUp[2] || ctx.pipesDown[2] )
                {
                    ctx.score++;
                }

                toSetCursorPos( &con, 0, 0 );

                con.textAttributes = 0x0f;
                printf( "Score: %d\n", ctx.score );

                shiftPipes();

            }

            if( ctx.birdAnimationCounter )
            {
                ctx.birdAnimationCounter--;
            }
            else
            {
                ctx.birdAnimationCounter = 5;
                ctx.birdAnimationStep++;

                if( ctx.birdAnimationStep >= 3 )
                {
                    ctx.birdAnimationStep = 0;
                }
            }


            
            if( ctx.screenNo & 1 )
            {

                gfDisplayBitmap( &screen2Shifted );

                waitVSync();

                drawPlayfield( &screen1 );

            }
            else
            {

                gfDisplayBitmap( &screen1Shifted );

                waitVSync();

                drawPlayfield( &screen2 );

            }

            ctx.screenNo++;


        }while( !ctx.gameOver );

        //display current screen to show exact bird location

        if( ctx.screenNo & 1 )
        {

            gfDisplayBitmap( &screen2Shifted );

            waitVSync();

            drawPlayfield( &screen1 );

        }
        else
        {

            gfDisplayBitmap( &screen1Shifted );

            waitVSync();

            drawPlayfield( &screen2 );

        }


        con.textAttributes = 0x0f;
        toCls( &con );        

        toSetCursorPos( &con, 0, 0 );

        con.textAttributes = 0x0f;
        printf( "Score: %d\n", ctx.score );

        con.textAttributes = 0x8f;
        toSetCursorPos( &con, 74, 18 );
        printf( " GAME  OVER \n" );

        i = getTicks();

        do
        {


            if( getTicks() == ( i + 1000 ) )
            {

                toSetCursorPos( &con, 74, 19 );
                printf( " Play again \n" );
            
            }

            if( ! osGetUIEvent( &event ) )
            {
                if( getTicks() > ( i + 1000 ) )
                {


                    if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
                    {
                        break;
                    }
                }
            }

        }while( 1 );        

        con.textAttributes = 0x0f;

        toCls( &con );

        con.textAttributes = 0x8f;

    }while( event.arg1 != 27 );

    return 0;
}

uint32_t gameInit()
{
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

    //init shifted screens ( hide 32 pixels to the left)

    screen1Shifted.width    = screen1.width;
    screen1Shifted.height   = screen1.height;
    screen1Shifted.rowWidth = screen1.rowWidth;
    screen1Shifted.flags    = 0;
    screen1Shifted.buffer   = screen1.buffer + 128;      //shift right 64 pixels

    screen2Shifted.width    = screen2.width;
    screen2Shifted.height   = screen2.height;
    screen2Shifted.rowWidth = screen2.rowWidth;
    screen2Shifted.flags    = 0;
    screen2Shifted.buffer   = screen2.buffer + 128;      //shift right 64 pixels

    screen1.width += 64;
    screen2.width += 64;

    
    //display first buffer
    gfDisplayBitmap( &screen1Shifted );

    gfFillRect128( &screen1Shifted, 0, 0, screen1.width - 1, screen1.height - 1 , 0 ); 
    gfFillRect128( &screen2Shifted, 0, 0, screen2.width - 1, screen2.height - 1 , 0 ); 

    //init events queue
    osUIEventsInit(); 

    //init filesystem
    osFInit();

    loadAssets();


    gfFillRect128( &screen1Shifted, 0, 0, screen1.width - 1, screen1.height - 1 , gfColor( 0xde, 0xd7, 0x98 ) ); 
    gfFillRect128( &screen2Shifted, 0, 0, screen2.width - 1, screen2.height - 1 , gfColor( 0xde, 0xd7, 0x98 ) ); 


    return 0;
}


int main()
{
    uint32_t    i;
    uint32_t    j;
    
    uint32_t    rv;
    tosUIEvent  event; 

    bspInit();
    
    gameInit();


    do
    {

        newGame();

        ctx.birdY = -12.0f;

        drawPlayfield( &screen1 );


        do
        {

            if( ctx.screenNo & 1 )
            {

                gfDisplayBitmap( &screen2Shifted );

                waitVSync();

                drawPlayfield( &screen1 );
                gfBlitBitmap( &screen1, &bmpLogo, 64 + 273, 128 );
            }
            else
            {

                gfDisplayBitmap( &screen1Shifted );

                waitVSync();

                drawPlayfield( &screen2 );
                gfBlitBitmap( &screen2, &bmpLogo, 64 + 273, 128 );

            }

            ctx.screenNo++;

            ctx.groundAnimationStep++;

            if( ctx.groundAnimationStep >= 36 )
            {
                ctx.groundAnimationStep = 0;
            }


            event.type = 0;            
            osGetUIEvent( &event );

        }while( event.type != OS_EVENT_TYPE_KEYBOARD_KEYPRESS );        

        game();

    }while( 1 );

} 
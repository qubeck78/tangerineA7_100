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

uint32_t waitKey()
{
    tosUIEvent      event;
    uint32_t        key;


    key = 0;

    do
    {
        if( !osGetUIEvent( &event ) )
        { 
            if( event.type == OS_EVENT_TYPE_KEYBOARD_KEYPRESS )
            {
                key = event.arg1;
                break;
            }
        }

    }while( 1 );

    return key;
}

uint32_t test2()
{
   uint32_t    i;
   uint32_t    j;
   int16_t     x;
   int16_t     y;
   tosUIEvent      event;

   do
   {

      waitVSync();

      gfFillRect128( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 32, 32, 32 ) ); 

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


      waitKey();

   }while( 1 );

   return 0;
}


uint32_t rcgfFillRect128( tgfBitmap *bmp, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color )
{
   int16_t     x;
   int16_t     y;
   uint16_t    bh;
   uint16_t    bw;

   uint32_t    dStartMask;
   uint32_t    dEndMask;
   
   uint32_t    dStartAddr;
   uint32_t    dEndAddr;
   uint32_t    dStartWordAddr;
   uint32_t    dEndWordAddr;

   uint32_t    transferLength;

   if( !bmp ) return 1;

   if( x1 < 0 ) x1 = 0;
   if( y1 < 0 ) y1 = 0;
   if( x2 < 0 ) x2 = 0;
   if( y2 < 0 ) y2 = 0;

   if( x1 >= bmp->width ) x1 = bmp->width - 1;
   if( y1 >= bmp->height ) y1 = bmp->height - 1;
   if( x2 >= bmp->width ) x2 = bmp->width - 1;
   if( y2 >= bmp->height ) y2 = bmp->height - 1;

   if( y1 > y2 )
   {
      x = y2;
      y2 = y1;
      y1 = x;
   }

   if( x1 > x2 )
   {
      x = x2;
      x2 = x1;
      x1 = x;
   }

   bw = x2 - x1 + 1;
   bh = y2 - y1 + 1;

   for( x = 0; x < 4; x++ )
   {
      axidma->ch2Input0[x] = ( color << 16 ) | color;
   }

   axidma->ch2DaRowWidth   = bmp->rowWidth << 1;

   dStartAddr     = (uint32_t)bmp->buffer + ( y1 * ( bmp->rowWidth << 1 ) + ( x1 << 1) );
   dStartWordAddr = dStartAddr & 0xf;
   dStartAddr     = dStartAddr & 0xfffffff0;

   dEndAddr       = (uint32_t)bmp->buffer + ( y1 * ( bmp->rowWidth << 1 ) + ( x2 << 1) );
   dEndWordAddr   = dEndAddr & 0xf;
   dEndAddr       = dEndAddr & 0xfffffff0;

   //dStartWordAddr  >>= 1;   //pixel no
   //dEndWordAddr    >>= 1;

   transferLength = ( dEndAddr >> 4 ) - ( dStartAddr >> 4 ) + 1;

   //start mask
   dStartMask = 0xffff;
//   dStartMask <<= dStartWordAddr * 2;
   dStartMask <<= dStartWordAddr;
   dStartMask &= 0xffff;

   //end mask
   dEndMask = 0xffff;
//   dEndMask >>= ( 7 - dEndWordAddr ) * 2;
   dEndMask >>= ( dEndWordAddr ^ 14 );
   dEndMask &= 0xffff;


   axidma->ch2DaAddress       = dStartAddr;
   axidma->ch2TransferLength  = transferLength - 1;    //0 = 1 transfer, 1 = 2 transfers, etc

   axidma->ch2DaWriteMask     = dStartMask << 16 | dEndMask;

   for( y = 0; y < bh; y++ )
   {

      axidma->ch2Command = 0x00; //fill

      do{}while( ! ( axidma->ch2Command & 1) );

   }

   return 0;

}


uint32_t rcgfBlitBitmap128( tgfBitmap *dest, tgfBitmap *src, int16_t x, int16_t y )
{
   int16_t cx,cy,bw,bh,sx,sy;

   uint32_t    dStartMask;
   uint32_t    dEndMask;
   
   uint32_t    dStartAddr;
   uint32_t    dStartWordAddr;

   uint32_t    dEndAddr;
   uint32_t    dEndWordAddr;

   uint32_t    sStartAddr;
   uint32_t    sStartWordAddr;

   uint32_t    transferLength;


   if(( dest == NULL) || ( src == NULL ))
   {
      return 1;
   }

   bw = src->width;
   bh = src->height;
   sx = 0;
   sy = 0;


   //clip src bitmap if coordinates are negative
   if( x < 0 )
   {
      sx = -x;
      bw -= sx;
      x = 0;
   }

   if( y < 0 )
   {
      sy = -y;
      bh -= sy;
      y = 0;
   }


   //clip src width if exceeds sise of dest bitmap
   if( ( bw + x ) >= dest->width )
   {
      bw = dest->width - x;
   }

   if( bw <= 0 )
   {
      return 0;
   }

   if( ( bh + y ) >= dest->height )
   {
      bh = dest->height - y;
   }

   if( bh <= 0 )
   {
      return 0;
   }

   sStartAddr     = (uint32_t)src->buffer + ( sy * ( src->rowWidth << 1 ) + ( sx << 1) );
   sStartWordAddr = sStartAddr & 0xf;
   sStartAddr     = sStartAddr & 0xfffffff0;

   dStartAddr     = (uint32_t)dest->buffer + ( y * ( dest->rowWidth << 1 ) + ( x << 1) );
   dStartWordAddr = dStartAddr & 0xf;
   dStartAddr     = dStartAddr & 0xfffffff0;

   dEndAddr       = (uint32_t)dest->buffer + ( y * ( dest->rowWidth << 1 ) + ( ( x + bw - 1 ) << 1) );
   dEndWordAddr   = dEndAddr & 0xf;
   dEndAddr       = dEndAddr & 0xfffffff0;

   transferLength = ( dEndAddr >> 4 ) - ( dStartAddr >> 4 );   //axi dma adds 1 to transfer length

   //start transfer mask
   dStartMask = 0xffff;
   dStartMask <<= dStartWordAddr;
   dStartMask &= 0xffff;

   //end transfer mask
   dEndMask = 0xffff;
   dEndMask >>= ( dEndWordAddr ^ 14 );
   dEndMask &= 0xffff;

   axidma->ch2TransferLength   = transferLength;

   axidma->ch2SaAddress    = sStartAddr;
   axidma->ch2SaRowWidth   = src->rowWidth << 1;

//   axidma->ch2Input0[0]    = ( dStartWordAddr + ( sStartWordAddr ^ 0x0f ) ) / 2;     //source shift right
   axidma->ch2Input0[0]    = ( dStartWordAddr ) / 2;     //source shift right

   axidma->ch2DaAddress    = dStartAddr;
   axidma->ch2DaRowWidth   = dest->rowWidth << 1;
   axidma->ch2DaWriteMask  = dStartMask << 16 | dEndMask;

   if( src->flags & GF_BITMAP_FLAG_TRANSPARENT )
   {

      axidma->ch2Input0[1] = src->transparentColor;

      for( y = 0; y < bh; y++ )
      {

         axidma->ch2Command = 0x03;
         do{
         }while( ! ( axidma->ch2Command & 1 ) );   

         axidma->ch2Command = 0x04;
         do{
         }while( ! ( axidma->ch2Command & 1 ) );   

      }

   }
   else
   {
      for( y = 0; y < bh; y++ )
      {

         axidma->ch2Command = 0x03;
         do{
         }while( ! ( axidma->ch2Command & 1 ) );   

         axidma->ch2Command = 0x02;
         do{
         }while( ! ( axidma->ch2Command & 1 ) );   

      }
   }

   return 0;
}

uint32_t test1()
{
   int16_t tx1, tx2;
   
   setVideoMode( _VIDEOMODE_426_TEXT160_OVER_GFX );

   screen.width            = 426;
   screen.rowWidth         = 512;
   screen.height           = 240;

   
   for( tx1 = 1; tx1 < 300; tx1++ )
   {

      rcgfFillRect128( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 0, 0, 16 ) ); 

      tx2 = tx1 + 16 + randomNumber() % 100;

      gfLine( &screen, tx1 - 1, 20, tx1 - 1, 99, 0xffff );
      gfLine( &screen, tx2 + 1, 20, tx2 + 1, 99, 0xffff );

      rcgfFillRect128( &screen, tx1, 20, tx2, 99 , gfColor( 128, 32, 0 ) ); 


      waitKey();

   }

   return 0;
}

uint32_t test3()
{
   uint32_t i;

   setVideoMode( _VIDEOMODE_640_TEXT160_OVER_GFX );

   screen.width            = 640;
   screen.rowWidth         = 1024;
   screen.height           = 360;


   for( i = 0; i < 320; i++ )
   {
   
      waitVSync();

      rcgfFillRect128( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 32, 32, 32 ) ); 
      rcgfBlitBitmap128( &screen, &bmp, i * -1, 0 );
      rcgfBlitBitmap128( &screen, &bmp, i, 180 );

      waitKey();
   }

   return 0;
}

uint32_t test4()
{
   uint32_t i;

   setVideoMode( _VIDEOMODE_640_TEXT160_OVER_GFX );

   screen.width            = 640;
   screen.rowWidth         = 1024;
   screen.height           = 360;

   bmp.flags            |= GF_BITMAP_FLAG_TRANSPARENT;
  
   bmp.transparentColor = gfColor( 0, 0, 0 );

   for( i = 0; i < 320; i++ )
   {
   
      waitVSync();


      rcgfFillRect128( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 32, 32, 32 ) ); 
      rcgfBlitBitmap128( &screen, &bmp, i * -1, 0 );
      rcgfBlitBitmap128( &screen, &bmp, i, 180 );

      waitKey();
   }

   return 0;
}

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

   gfFillRect128( &screen, 0, 0, screen.width - 1, screen.height - 1 , gfColor( 32, 32, 32 ) ); 


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
//   gfLoadBitmapFS( &bmp, (char*)"0:/demos/asteroid2.gbm" );


   test4();

   reboot();
} 

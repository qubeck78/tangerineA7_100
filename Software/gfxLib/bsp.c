
#include "bsp.h"

#include <stddef.h>  // for size_t
#include <unistd.h>  // for STDERR_FILENO

#include "gfFont.h"
#include "osAlloc.h"

BSP_T *bsp                              = ( BSP_T *)                        0xf0000000; //registers base address
_VGA_REGISTERS_T *vga                   = ( _VGA_REGISTERS_T * )            0xf0100000; //vga registers base address
_AXI_DMA_REGISTERS_T *axidma            = ( _AXI_DMA_REGISTERS_T *)         0xf0200000; //sdram dma base address;
_PS2HOST_REGISTERS_T *ps2Host           = ( _PS2HOST_REGISTERS_T * )        0xf0300000; //ps2 keyboard/mouse host controller
_UART_REGISTERS_T *uart0                = ( _UART_REGISTERS_T *)            0xf0400000; //uart 0 base address
_SPI_REGISTERS_T *spi0                  = ( _SPI_REGISTERS_T *)             0xf0500000; //spi 0 base address


_BLITTER_REGISTERS_T *blt               = ( _BLITTER_REGISTERS_T *)         0xf0f00000; //blitter base address
_USBHOST_REGISTERS_T *usbhost           = ( _USBHOST_REGISTERS_T *)         0xf0f00000; //hid usb host base address
_AUDIO_REGISTERS_T *aud                 = ( _AUDIO_REGISTERS_T*)            0xf0f00000; //i2s audio base address
_FPALU_REGISTERS_T *fpalu               = ( _FPALU_REGISTERS_T * )          0xf0f00000; //fpalu base address

void (*bootLoaderEntry)(void) = (void(*)())0x0; 

tgfTextOverlay  con;

uint32_t    randomSeed;

#ifdef __cplusplus
extern "C" 
#endif
void _fini(void) { }

#ifdef __cplusplus
extern "C" 
{
#endif
int _write ( int file, const void * ptr, size_t len ) 
{
    char        buf[4];
    uint32_t    i;

    if( ( file == STDOUT_FILENO ) || ( file == STDERR_FILENO ) )
    {

        buf[1] = 0;

        for( i = 0; i < len; i++ )
        {
            buf[0] = ((char*)ptr)[i];
            toPrint( &con, buf );
        }

        return len;
    }
    else
    {
        return 0;
    }
}

void *malloc( size_t size )
{
    return osAlloc( size, OS_ALLOC_MEMF_CHIP ); 
}

void free( void *mem )
{
    osFree( mem ); 
}

void* realloc( void *oldmem, size_t bytes )
{
    return osRealloc( oldmem, bytes, OS_ALLOC_MEMF_CHIP );
}

#ifdef __cplusplus
}
#endif

uint32_t bspInit()
{
    randomSeed = 3242323459 + ( bsp->tickTimerCounter << 16 ) ^ ( bsp->tickTimerCounter ^ 0xef122333 );

    osAllocInit();
    osAllocAddNode( 0, ( void* )_SYSTEM_MEMORY_BASE, _SYSTEM_MEMORY_SIZE, OS_ALLOC_MEMF_CHIP );
    
    //osAllocAddNode( 1, ( void* )_SDRAM_MEMORY_BASE, _SDRAM_MEMORY_SIZE, OS_ALLOC_MEMF_FAST );

    vga->vmMode       = _VIDEOMODE_TEXT160_ONLY; //text mode: 160x45, 720p 
    
    //connect gfxlib con to hardware text overlay   
    con.type                = GF_TEXT_OVERLAY_TYPE_HARDWARE;
    con.flags               = 0;
    con.width               = 160;               //clear whole buffer
    con.height              = 45;
    con.cursX               = 0;
    con.cursY               = 0;
    con.textAttributes      = 0x0f;
    con.font                = NULL;
    con.textBuffer          = (uint8_t*) 0x10000000; //hw text mode buffer address

    toCls( &con );

    con.textAttributes      = 0x8f; 

    bootLoaderEntry = (void(*)())0x0; 

    return 0;
} 

uint32_t randomNumber()
{
    uint32_t r = randomSeed;

    r ^= r << 13;
    r ^= r >> 17;
    r ^= r << 5;

    randomSeed = r;

    return r;

/* 
    //https://github.com/cmcqueen/simplerandom/blob/main/c/lecuyer/lfsr88.c
   uint32_t b;

    b = (((s1 << 13) ^ s1) >> 19);
    s1 = (((s1 & 4294967294) << 12) ^ b);
    b = (((s2 << 2) ^ s2) >> 25);
    s2 = (((s2 & 4294967288) << 4) ^ b);
    b = (((s3 << 3) ^ s3) >> 11);
    s3 = (((s3 & 4294967280) << 17) ^ b);
    return (s1 ^ s2 ^ s3);
    */
} 

void hexDigit(char *string,char digit)
{
    digit &= 0x0f;
    
    if( digit<10 )
    {
        string[0] = digit + '0';
        string[1] = 0;
    }
    else
    {
        string[0] = digit + 'a' - 10;
        string[1] = 0;
    }
}

void itoaHex2Digits( uint32_t value, char* str )
{
    hexDigit(&str[0], ( value >> 4 ) & 0x0f );
    hexDigit(&str[1], ( value ) & 0x0f );
}

void itoaHex4Digits( uint32_t value, char* str )
{
    hexDigit(&str[4], ( value >> 12 ) & 0x0f );
    hexDigit(&str[5], ( value >> 8 ) & 0x0f );

    hexDigit(&str[6], ( value >> 4) & 0x0f );
    hexDigit(&str[7], ( value ) & 0x0f );
}


void itoaHex8Digits( uint32_t value, char* str )
{
    hexDigit(&str[0], ( value >> 28 ) & 0x0f );
    hexDigit(&str[1], ( value >> 24 ) & 0x0f );

    hexDigit(&str[2], ( value >> 20 ) & 0x0f );
    hexDigit(&str[3], ( value >> 16 ) & 0x0f );

    hexDigit(&str[4], ( value >> 12 ) & 0x0f );
    hexDigit(&str[5], ( value >> 8 ) & 0x0f );

    hexDigit(&str[6], ( value >> 4) & 0x0f );
    hexDigit(&str[7], ( value ) & 0x0f );
}

uint32_t getTicks()
{
    return bsp->tickTimerCounter;
}

void delayMs( uint32_t delay )
{
    uint32_t startMs;
    
    startMs = bsp->tickTimerCounter;
    
    while( bsp->tickTimerCounter < ( startMs + delay ) );
    
}

uint32_t setVideoMode( uint32_t videoMode )
{
    uint32_t    i;

    
    i = ( videoMode >> 2 ) & 3;

    switch( i )
    {
        case 0:

            //80x45

            con.width   = 80;
            con.height  = 45;

            break;

        case 1:

            //160x45

            con.width   = 160;
            con.height  = 45;

            break;

        case 2:
            //160x90

            con.width   = 160;
            con.height  = 90;

            break;

        default:
            return 1;
    }


    i = ( videoMode >> 4 ) & 3;
    
    switch( i )
    {
     
        case 0:
            
            //426x240

            axidma->ch1DmaRequestLength = 0x36;     //54 128-bit words, 864 bytes, 432 pixels
            axidma->ch1DmaRequestPtrAdd = 0x400;    //row width 1024 bytes, 512 pixels    

            break;

        case 1:
            
            //640x360
            
            axidma->ch1DmaRequestLength = 0x50;     //80 128-bit words, 1280 bytes, 640 pixels
            axidma->ch1DmaRequestPtrAdd = 0x800;    //row width 2048 bytes, 1024 pixels    

            break;

        case 2:

            //1280x720

            axidma->ch1DmaRequestLength = 0xa0;      //160 128-bit words, 2560 bytes, 1280 pixels
            axidma->ch1DmaRequestPtrAdd = 0x1000;    //row width 4096 bytes, 2048 pixels  
            
            break;

        default:
            return 1;

    }

    vga->vmMode = videoMode;

    return 0;
}

void waitVSync()
{
    do{}while( ! vga->pgVSync ); 
}

void reboot()
{
    (*bootLoaderEntry)();
}

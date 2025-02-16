#ifndef _PS2HOST_H
#define _PS2HOST_H

#ifdef __cplusplus
extern "C"
{
#endif

#include "bsp.h"

#define PS2_KEYBOARD_LED_SCROLL_LOCK   1
#define PS2_KEYBOARD_LED_NUM_LOCK      2
#define PS2_KEYBOARD_LED_CAPS_LOCK     4

typedef enum _ps2HostState_t { ps2hsNormal, ps2hsBreak, ps2hsEscape, ps2hsEscapeBreak }ps2HostState_t;

uint32_t ps2HostInit( void );
uint32_t ps2HostSetKeyboardLeds( uint32_t leds );

uint32_t ps2HostHandleEvents( void );


#ifdef __cplusplus
}
#endif

#endif

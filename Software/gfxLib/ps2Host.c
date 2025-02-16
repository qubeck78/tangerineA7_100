#include <stdio.h>
#include <stdlib.h>

#include "ps2Host.h"
#include "osUIEvents.h"


static uint8_t          shiftState;
static ps2HostState_t   ps2HostState;

const char ps2KeysUnshifted[] = {
      0,_KEYCODE_F9,0,_KEYCODE_F5,_KEYCODE_F3,_KEYCODE_F1,_KEYCODE_F2,_KEYCODE_F12,0,_KEYCODE_F10,_KEYCODE_F8,_KEYCODE_F6,_KEYCODE_F4,9,'`',0,0,0,0,0,0,'q','1',0,0,0,'z','s','a','w','2',0,0,
      'c','x','d','e','4','3',0,0,' ','v','f','t','r','5',0,0,'n','b','h','g','y','6',0,0,0,
      'm','j','u','7','8',0,0,',','k','i','o','0','9',0,0,'.','/','l',';','p','-',0,0,0,'\'',0,
      '[','=',0,0,0,0,10,']',0,92,0,0,0,0,0,0,0,0,8,0,0,'1','0','4','7',0,0,0,'0','.','2','5','6','8',27,0,_KEYCODE_F11,
      '+','3','-','*','9',0,0,0,0,0,_KEYCODE_F7 };

const char ps2KeysShifted[] = {
      0,_KEYCODE_F9,0,_KEYCODE_F5,_KEYCODE_F3,_KEYCODE_F1,_KEYCODE_F2,_KEYCODE_F12,0,_KEYCODE_F10,_KEYCODE_F8,_KEYCODE_F6,_KEYCODE_F4,9,'~',0,0,0,0,0,0,'Q','!',0,0,0,'Z','S','A','W','@',0,0,
      'C','X','D','E','$','#',0,0,' ','V','F','T','R','%',0,0,'N','B','H','G','Y','^',0,0,0,
      'M','J','U','&','*',0,0,'<','K','I','O',')','(',0,0,'>','?','L',':','P','_',0,0,0,'"',0,
      '{','+',0,0,0,0,10,'}',0,'|',0,0,0,0,0,0,0,0,8,0,0,'1','0','4','7',0,0,0,'0','.','2','5','6','8',27,0,_KEYCODE_F11,
      '+','3','-','*','9',0,0,0,0,0,_KEYCODE_F7 };

static uint32_t ps2HostKeyboardRxMain( uint32_t kbRx )
{
   tosUIEvent  event;

//   printf( "|%02x|", (int)kbRx );
//   fflush( stdout );

   switch( ps2HostState )
   {
      case ps2hsNormal:

         switch( kbRx )
         {
            case 0xe0:

               ps2HostState = ps2hsEscape;
               return 0;

            case 0xf0:
               ps2HostState = ps2hsBreak;
               return 0;

               break;

            case 0x12:
            case 0x59:

               shiftState |= SST_SHIFT;
               return 0;

               break;
         }

         event.type  = OS_EVENT_TYPE_KEYBOARD_KEYPRESS;

         if( shiftState & SST_SHIFT )
         {
            event.arg1  = ps2KeysShifted[ kbRx & 0xff ];
         }
         else
         {
            event.arg1  = ps2KeysUnshifted[ kbRx & 0xff ];
         }
         event.arg2  = shiftState;
         event.arg3  = kbRx;
         event.obj   = NULL;

         osPutUIEvent( &event );

         break;

      case ps2hsBreak:

         ps2HostState = ps2hsNormal;

         switch( kbRx )
         {
            case 0x12:
            case 0x59:

               shiftState &= 0xff ^ SST_SHIFT;
               return 0;
               break;
         }

         event.type  = OS_EVENT_TYPE_KEYBOARD_KEYRELEASE;

         if( shiftState & SST_SHIFT )
         {
            event.arg1  = ps2KeysShifted[ kbRx & 0xff ];
         }
         else
         {
            event.arg1  = ps2KeysUnshifted[ kbRx & 0xff ];
         }
         event.arg2  = shiftState;
         event.arg3  = kbRx;
         event.obj   = NULL;

         osPutUIEvent( &event );


         break;

      case ps2hsEscape:

         ps2HostState = ps2hsNormal;

         event.type  = OS_EVENT_TYPE_KEYBOARD_KEYPRESS;
         event.arg2  = shiftState;
         event.arg3  = kbRx;
         event.obj   = NULL;



         switch( kbRx )
         {
            case 0xf0:

               ps2HostState = ps2hsEscapeBreak;
               return 0;

               break;

            case 0x6b:

               event.arg1  = _KEYCODE_LEFT;
               osPutUIEvent( &event );

               break;

            case 0x72:

               event.arg1  = _KEYCODE_DOWN;
               osPutUIEvent( &event );

               break;

            case 0x74:

               event.arg1  = _KEYCODE_RIGHT;
               osPutUIEvent( &event );

               break;

            case 0x75:

               event.arg1  = _KEYCODE_UP;
               osPutUIEvent( &event );

               break;

            case 0x7d:

               event.arg1  = _KEYCODE_PGUP;
               osPutUIEvent( &event );

               break;

            case 0x7a:

               event.arg1  = _KEYCODE_PGDOWN;
               osPutUIEvent( &event );

               break;

         }

         break;

      case ps2hsEscapeBreak:

         ps2HostState = ps2hsNormal;

         event.type  = OS_EVENT_TYPE_KEYBOARD_KEYRELEASE;
         event.arg2  = shiftState;
         event.arg3  = kbRx;
         event.obj   = NULL;

         switch( kbRx )
         {

            case 0x6b:

               event.arg1  = _KEYCODE_LEFT;
               osPutUIEvent( &event );

               break;

            case 0x72:

               event.arg1  = _KEYCODE_DOWN;
               osPutUIEvent( &event );

               break;

            case 0x74:

               event.arg1  = _KEYCODE_RIGHT;
               osPutUIEvent( &event );

               break;

            case 0x75:

               event.arg1  = _KEYCODE_UP;
               osPutUIEvent( &event );

               break;

            case 0x7d:

               event.arg1  = _KEYCODE_PGUP;
               osPutUIEvent( &event );

               break;

            case 0x7a:

               event.arg1  = _KEYCODE_PGDOWN;
               osPutUIEvent( &event );

               break;

         }

         break;

      default:

         ps2HostState = ps2hsNormal;
         break;
   }



	return 0;
}


uint32_t ps2HostInit()
{

   shiftState     = 0;
   ps2HostState   = ps2hsNormal;

   if( ps2Host->id != 0x8000000a )
   {
      return 1;
   }

   ps2HostSetKeyboardLeds( PS2_KEYBOARD_LED_NUM_LOCK );

	return 0;
}

uint32_t ps2HostSetKeyboardLeds( uint32_t leds )
{
   volatile uint32_t i;

   delayMs( 10 );

   ps2Host->keyboardData = 0xed;

   while( ps2Host->keyboardStatus & 2 );

   delayMs( 10 );

   ps2Host->keyboardData = leds & 7;

   while( ps2Host->keyboardStatus & 2 );

   delayMs( 100 );

   while( !( ps2Host->keyboardStatus & 1 ))
   {
      i = ps2Host->keyboardData;
   }

   return 0;
}

uint32_t ps2HostHandleEvents()
{

   if( !( ps2Host->keyboardStatus & 1 ) )
   {
	  while( !( ps2Host->keyboardStatus & 1 ))
	  {
	     ps2HostKeyboardRxMain( ps2Host->keyboardData );
	  }
   }

	return 0;
}

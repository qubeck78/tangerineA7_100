#ifndef _SREC_H
#define _SREC_H

#include "gfTypes.h"

#define _BOOTLOADER_PROTECTION_ADDR ( 0x3000) 

uint32_t decodeAndDisplayS0Record( char *buf );
uint32_t decodeAndSaveS1_2_3Record( char *buf, uint32_t recordType );
uint32_t decodeAndExecuteS7_8_9Record( char *buf, uint32_t recordType );


#endif


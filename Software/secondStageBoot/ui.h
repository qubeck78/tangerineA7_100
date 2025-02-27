#ifndef _UI_H
#define _UI_H

#include "gfTypes.h"

uint32_t uiInit( void );
uint32_t uiRedrawConsole( void );
uint32_t uiReadDirAndFillSelectorWindowContents( void );
uint32_t uiDrawSelectorWindowContents( void );
uint32_t uiDrawLoadingScreen( char *path );

#endif

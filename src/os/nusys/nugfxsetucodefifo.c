#include "nu/nusys.h"

extern s32		nuGfxUcodeFifoSize; 	/*FIFO buffer size -1:size undefined*/
extern u64*		nuGfxUcodeFifoPtr;	/*Pointer to FIFO buffer */

void nuGfxSetUcodeFifo(void* fifoBufPtr, s32 size)
{
    nuGfxUcodeFifoPtr = (u64*)fifoBufPtr;
    nuGfxUcodeFifoSize = size;
}

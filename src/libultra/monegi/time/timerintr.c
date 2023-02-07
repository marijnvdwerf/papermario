#include "common.h"

INCLUDE_ASM(s32, "libultra/monegi/time/timerintr", __osTimerServicesInit);

INCLUDE_ASM(s32, "libultra/monegi/time/timerintr", __osTimerInterrupt);

INCLUDE_ASM(s32, "libultra/monegi/time/timerintr", __osSetTimerIntr);

INCLUDE_ASM(s32, "libultra/monegi/time/timerintr", __osInsertTimer);

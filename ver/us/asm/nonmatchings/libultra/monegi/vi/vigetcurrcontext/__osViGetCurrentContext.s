.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osViGetCurrentContext
/* 47020 8006BC20 3C028009 */  lui        $v0, %hi(__osViCurr)
/* 47024 8006BC24 8C424650 */  lw         $v0, %lo(__osViCurr)($v0)
/* 47028 8006BC28 03E00008 */  jr         $ra
/* 4702C 8006BC2C 00000000 */   nop
/* 47030 8006BC30 00000000 */  nop
/* 47034 8006BC34 00000000 */  nop
/* 47038 8006BC38 00000000 */  nop
/* 4703C 8006BC3C 00000000 */  nop

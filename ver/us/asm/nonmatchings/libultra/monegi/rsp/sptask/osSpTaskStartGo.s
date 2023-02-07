.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSpTaskStartGo
/* 3F1C0 80063DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F1C4 80063DC4 AFBF0010 */  sw         $ra, 0x10($sp)
.L80063DC8:
/* 3F1C8 80063DC8 0C01ADCC */  jal        __osSpDeviceBusy
/* 3F1CC 80063DCC 00000000 */   nop
/* 3F1D0 80063DD0 1440FFFD */  bnez       $v0, .L80063DC8
/* 3F1D4 80063DD4 00000000 */   nop
/* 3F1D8 80063DD8 0C01ADDC */  jal        __osSpSetStatus
/* 3F1DC 80063DDC 24040125 */   addiu     $a0, $zero, 0x125
/* 3F1E0 80063DE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3F1E4 80063DE4 03E00008 */  jr         $ra
/* 3F1E8 80063DE8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3F1EC 80063DEC 00000000 */  nop

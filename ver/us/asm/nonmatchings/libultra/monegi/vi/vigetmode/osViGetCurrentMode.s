.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViGetCurrentMode
/* 403F0 80064FF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 403F4 80064FF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 403F8 80064FF8 0C019B40 */  jal        __osDisableInt
/* 403FC 80064FFC AFB00010 */   sw        $s0, 0x10($sp)
/* 40400 80065000 3C038009 */  lui        $v1, %hi(__osViCurr)
/* 40404 80065004 8C634650 */  lw         $v1, %lo(__osViCurr)($v1)
/* 40408 80065008 8C650008 */  lw         $a1, 0x8($v1)
/* 4040C 8006500C 00402021 */  addu       $a0, $v0, $zero
/* 40410 80065010 0C019B5C */  jal        __osRestoreInt
/* 40414 80065014 90B00000 */   lbu       $s0, 0x0($a1)
/* 40418 80065018 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4041C 8006501C 02001021 */  addu       $v0, $s0, $zero
/* 40420 80065020 8FB00010 */  lw         $s0, 0x10($sp)
/* 40424 80065024 03E00008 */  jr         $ra
/* 40428 80065028 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4042C 8006502C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViGetCurrentFramebuffer
/* 40370 80064F70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40374 80064F74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40378 80064F78 0C019B40 */  jal        __osDisableInt
/* 4037C 80064F7C AFB00010 */   sw        $s0, 0x10($sp)
/* 40380 80064F80 3C038009 */  lui        $v1, %hi(__osViCurr)
/* 40384 80064F84 8C634650 */  lw         $v1, %lo(__osViCurr)($v1)
/* 40388 80064F88 00402021 */  addu       $a0, $v0, $zero
/* 4038C 80064F8C 0C019B5C */  jal        __osRestoreInt
/* 40390 80064F90 8C700004 */   lw        $s0, 0x4($v1)
/* 40394 80064F94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40398 80064F98 02001021 */  addu       $v0, $s0, $zero
/* 4039C 80064F9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 403A0 80064FA0 03E00008 */  jr         $ra
/* 403A4 80064FA4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 403A8 80064FA8 00000000 */  nop
/* 403AC 80064FAC 00000000 */  nop

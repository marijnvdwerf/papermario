.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViSetEvent
/* 40730 80065330 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40734 80065334 AFB00010 */  sw         $s0, 0x10($sp)
/* 40738 80065338 00808021 */  addu       $s0, $a0, $zero
/* 4073C 8006533C AFB10014 */  sw         $s1, 0x14($sp)
/* 40740 80065340 00A08821 */  addu       $s1, $a1, $zero
/* 40744 80065344 AFB20018 */  sw         $s2, 0x18($sp)
/* 40748 80065348 AFBF001C */  sw         $ra, 0x1C($sp)
/* 4074C 8006534C 0C019B40 */  jal        __osDisableInt
/* 40750 80065350 00C09021 */   addu      $s2, $a2, $zero
/* 40754 80065354 3C038009 */  lui        $v1, %hi(__osViNext)
/* 40758 80065358 8C634654 */  lw         $v1, %lo(__osViNext)($v1)
/* 4075C 8006535C AC700010 */  sw         $s0, 0x10($v1)
/* 40760 80065360 00602021 */  addu       $a0, $v1, $zero
/* 40764 80065364 AC910014 */  sw         $s1, 0x14($a0)
/* 40768 80065368 00402021 */  addu       $a0, $v0, $zero
/* 4076C 8006536C 0C019B5C */  jal        __osRestoreInt
/* 40770 80065370 A4720002 */   sh        $s2, 0x2($v1)
/* 40774 80065374 8FBF001C */  lw         $ra, 0x1C($sp)
/* 40778 80065378 8FB20018 */  lw         $s2, 0x18($sp)
/* 4077C 8006537C 8FB10014 */  lw         $s1, 0x14($sp)
/* 40780 80065380 8FB00010 */  lw         $s0, 0x10($sp)
/* 40784 80065384 03E00008 */  jr         $ra
/* 40788 80065388 27BD0020 */   addiu     $sp, $sp, 0x20
/* 4078C 8006538C 00000000 */  nop

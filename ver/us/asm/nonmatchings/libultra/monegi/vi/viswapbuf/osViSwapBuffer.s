.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViSwapBuffer
/* 409E0 800655E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 409E4 800655E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 409E8 800655E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 409EC 800655EC 0C019B40 */  jal        __osDisableInt
/* 409F0 800655F0 00808021 */   addu      $s0, $a0, $zero
/* 409F4 800655F4 3C048009 */  lui        $a0, %hi(__osViNext)
/* 409F8 800655F8 8C844654 */  lw         $a0, %lo(__osViNext)($a0)
/* 409FC 800655FC AC900004 */  sw         $s0, 0x4($a0)
/* 40A00 80065600 00802821 */  addu       $a1, $a0, $zero
/* 40A04 80065604 94A30000 */  lhu        $v1, 0x0($a1)
/* 40A08 80065608 00402021 */  addu       $a0, $v0, $zero
/* 40A0C 8006560C 34630010 */  ori        $v1, $v1, 0x10
/* 40A10 80065610 0C019B5C */  jal        __osRestoreInt
/* 40A14 80065614 A4A30000 */   sh        $v1, 0x0($a1)
/* 40A18 80065618 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40A1C 8006561C 8FB00010 */  lw         $s0, 0x10($sp)
/* 40A20 80065620 03E00008 */  jr         $ra
/* 40A24 80065624 27BD0018 */   addiu     $sp, $sp, 0x18
/* 40A28 80065628 00000000 */  nop
/* 40A2C 8006562C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osAfterPreNMI
/* 45580 8006A180 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45584 8006A184 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45588 8006A188 AFBE0010 */  sw         $fp, 0x10($sp)
/* 4558C 8006A18C 03A0F021 */  addu       $fp, $sp, $zero
/* 45590 8006A190 0C01ADE0 */  jal        __osSpSetPc
/* 45594 8006A194 00002021 */   addu      $a0, $zero, $zero
/* 45598 8006A198 00401821 */  addu       $v1, $v0, $zero
/* 4559C 8006A19C 0801A869 */  j          .L8006A1A4
/* 455A0 8006A1A0 00601021 */   addu      $v0, $v1, $zero
.L8006A1A4:
/* 455A4 8006A1A4 03C0E821 */  addu       $sp, $fp, $zero
/* 455A8 8006A1A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 455AC 8006A1AC 8FBE0010 */  lw         $fp, 0x10($sp)
/* 455B0 8006A1B0 03E00008 */  jr         $ra
/* 455B4 8006A1B4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 455B8 8006A1B8 00000000 */  nop
/* 455BC 8006A1BC 00000000 */  nop

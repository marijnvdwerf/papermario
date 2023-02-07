.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel proutSprintf
/* 3EA88 80063688 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3EA8C 8006368C AFB10014 */  sw         $s1, 0x14($sp)
/* 3EA90 80063690 00808821 */  addu       $s1, $a0, $zero
/* 3EA94 80063694 AFB00010 */  sw         $s0, 0x10($sp)
/* 3EA98 80063698 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3EA9C 8006369C 0C018B09 */  jal        memcpy
/* 3EAA0 800636A0 00C08021 */   addu      $s0, $a2, $zero
/* 3EAA4 800636A4 02301021 */  addu       $v0, $s1, $s0
/* 3EAA8 800636A8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3EAAC 800636AC 8FB10014 */  lw         $s1, 0x14($sp)
/* 3EAB0 800636B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 3EAB4 800636B4 03E00008 */  jr         $ra
/* 3EAB8 800636B8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3EABC 800636BC 00000000 */  nop

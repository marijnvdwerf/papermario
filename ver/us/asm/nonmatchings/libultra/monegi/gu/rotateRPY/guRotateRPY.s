.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guRotateRPY
/* 3DB80 80062780 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 3DB84 80062784 AFB00050 */  sw         $s0, 0x50($sp)
/* 3DB88 80062788 00808021 */  addu       $s0, $a0, $zero
/* 3DB8C 8006278C AFBF0054 */  sw         $ra, 0x54($sp)
/* 3DB90 80062790 0C018990 */  jal        guRotateRPYF
/* 3DB94 80062794 27A40010 */   addiu     $a0, $sp, 0x10
/* 3DB98 80062798 27A40010 */  addiu      $a0, $sp, 0x10
/* 3DB9C 8006279C 0C0196B0 */  jal        guMtxF2L
/* 3DBA0 800627A0 02002821 */   addu      $a1, $s0, $zero
/* 3DBA4 800627A4 8FBF0054 */  lw         $ra, 0x54($sp)
/* 3DBA8 800627A8 8FB00050 */  lw         $s0, 0x50($sp)
/* 3DBAC 800627AC 03E00008 */  jr         $ra
/* 3DBB0 800627B0 27BD0058 */   addiu     $sp, $sp, 0x58
/* 3DBB4 800627B4 00000000 */  nop
/* 3DBB8 800627B8 00000000 */  nop
/* 3DBBC 800627BC 00000000 */  nop

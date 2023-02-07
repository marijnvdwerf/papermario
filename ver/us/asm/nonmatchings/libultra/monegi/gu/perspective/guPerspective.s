.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guPerspective
/* 3D808 80062408 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3D80C 8006240C AFB00060 */  sw         $s0, 0x60($sp)
/* 3D810 80062410 00808021 */  addu       $s0, $a0, $zero
/* 3D814 80062414 C7A00078 */  lwc1       $f0, 0x78($sp)
/* 3D818 80062418 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 3D81C 8006241C C7A40080 */  lwc1       $f4, 0x80($sp)
/* 3D820 80062420 27A40020 */  addiu      $a0, $sp, 0x20
/* 3D824 80062424 AFBF0064 */  sw         $ra, 0x64($sp)
/* 3D828 80062428 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3D82C 8006242C E7A20014 */  swc1       $f2, 0x14($sp)
/* 3D830 80062430 0C018898 */  jal        guPerspectiveF
/* 3D834 80062434 E7A40018 */   swc1      $f4, 0x18($sp)
/* 3D838 80062438 27A40020 */  addiu      $a0, $sp, 0x20
/* 3D83C 8006243C 0C0196B0 */  jal        guMtxF2L
/* 3D840 80062440 02002821 */   addu      $a1, $s0, $zero
/* 3D844 80062444 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3D848 80062448 8FB00060 */  lw         $s0, 0x60($sp)
/* 3D84C 8006244C 03E00008 */  jr         $ra
/* 3D850 80062450 27BD0068 */   addiu     $sp, $sp, 0x68
/* 3D854 80062454 00000000 */  nop
/* 3D858 80062458 00000000 */  nop
/* 3D85C 8006245C 00000000 */  nop

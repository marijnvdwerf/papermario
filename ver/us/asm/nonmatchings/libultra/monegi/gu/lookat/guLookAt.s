.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guLookAt
/* 3C6E4 800612E4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 3C6E8 800612E8 AFB00068 */  sw         $s0, 0x68($sp)
/* 3C6EC 800612EC 00808021 */  addu       $s0, $a0, $zero
/* 3C6F0 800612F0 C7A00080 */  lwc1       $f0, 0x80($sp)
/* 3C6F4 800612F4 C7A20084 */  lwc1       $f2, 0x84($sp)
/* 3C6F8 800612F8 C7A40088 */  lwc1       $f4, 0x88($sp)
/* 3C6FC 800612FC C7A6008C */  lwc1       $f6, 0x8C($sp)
/* 3C700 80061300 C7A80090 */  lwc1       $f8, 0x90($sp)
/* 3C704 80061304 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* 3C708 80061308 27A40028 */  addiu      $a0, $sp, 0x28
/* 3C70C 8006130C AFBF006C */  sw         $ra, 0x6C($sp)
/* 3C710 80061310 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3C714 80061314 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3C718 80061318 E7A40018 */  swc1       $f4, 0x18($sp)
/* 3C71C 8006131C E7A6001C */  swc1       $f6, 0x1C($sp)
/* 3C720 80061320 E7A80020 */  swc1       $f8, 0x20($sp)
/* 3C724 80061324 0C018408 */  jal        guLookAtF
/* 3C728 80061328 E7AA0024 */   swc1      $f10, 0x24($sp)
/* 3C72C 8006132C 27A40028 */  addiu      $a0, $sp, 0x28
/* 3C730 80061330 0C0196B0 */  jal        guMtxF2L
/* 3C734 80061334 02002821 */   addu      $a1, $s0, $zero
/* 3C738 80061338 8FBF006C */  lw         $ra, 0x6C($sp)
/* 3C73C 8006133C 8FB00068 */  lw         $s0, 0x68($sp)
/* 3C740 80061340 03E00008 */  jr         $ra
/* 3C744 80061344 27BD0070 */   addiu     $sp, $sp, 0x70
/* 3C748 80061348 00000000 */  nop
/* 3C74C 8006134C 00000000 */  nop

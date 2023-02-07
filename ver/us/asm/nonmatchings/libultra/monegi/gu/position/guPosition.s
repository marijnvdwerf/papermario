.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guPosition
/* 3D9E8 800625E8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3D9EC 800625EC AFB00060 */  sw         $s0, 0x60($sp)
/* 3D9F0 800625F0 00808021 */  addu       $s0, $a0, $zero
/* 3D9F4 800625F4 C7A00078 */  lwc1       $f0, 0x78($sp)
/* 3D9F8 800625F8 C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 3D9FC 800625FC C7A40080 */  lwc1       $f4, 0x80($sp)
/* 3DA00 80062600 C7A60084 */  lwc1       $f6, 0x84($sp)
/* 3DA04 80062604 27A40020 */  addiu      $a0, $sp, 0x20
/* 3DA08 80062608 AFBF0064 */  sw         $ra, 0x64($sp)
/* 3DA0C 8006260C E7A00010 */  swc1       $f0, 0x10($sp)
/* 3DA10 80062610 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3DA14 80062614 E7A40018 */  swc1       $f4, 0x18($sp)
/* 3DA18 80062618 0C018918 */  jal        guPositionF
/* 3DA1C 8006261C E7A6001C */   swc1      $f6, 0x1C($sp)
/* 3DA20 80062620 27A40020 */  addiu      $a0, $sp, 0x20
/* 3DA24 80062624 0C0196B0 */  jal        guMtxF2L
/* 3DA28 80062628 02002821 */   addu      $a1, $s0, $zero
/* 3DA2C 8006262C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3DA30 80062630 8FB00060 */  lw         $s0, 0x60($sp)
/* 3DA34 80062634 03E00008 */  jr         $ra
/* 3DA38 80062638 27BD0068 */   addiu     $sp, $sp, 0x68
/* 3DA3C 8006263C 00000000 */  nop

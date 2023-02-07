.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guRotate
/* 415EC 800661EC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 415F0 800661F0 AFB00058 */  sw         $s0, 0x58($sp)
/* 415F4 800661F4 00808021 */  addu       $s0, $a0, $zero
/* 415F8 800661F8 C7A00070 */  lwc1       $f0, 0x70($sp)
/* 415FC 800661FC 27A40018 */  addiu      $a0, $sp, 0x18
/* 41600 80066200 AFBF005C */  sw         $ra, 0x5C($sp)
/* 41604 80066204 0C019828 */  jal        guRotateF
/* 41608 80066208 E7A00010 */   swc1      $f0, 0x10($sp)
/* 4160C 8006620C 27A40018 */  addiu      $a0, $sp, 0x18
/* 41610 80066210 0C0196B0 */  jal        guMtxF2L
/* 41614 80066214 02002821 */   addu      $a1, $s0, $zero
/* 41618 80066218 8FBF005C */  lw         $ra, 0x5C($sp)
/* 4161C 8006621C 8FB00058 */  lw         $s0, 0x58($sp)
/* 41620 80066220 03E00008 */  jr         $ra
/* 41624 80066224 27BD0060 */   addiu     $sp, $sp, 0x60
/* 41628 80066228 00000000 */  nop
/* 4162C 8006622C 00000000 */  nop

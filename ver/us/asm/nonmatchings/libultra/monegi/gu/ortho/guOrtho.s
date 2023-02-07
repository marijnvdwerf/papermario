.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guOrtho
/* 3D60C 8006220C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3D610 80062210 AFB00060 */  sw         $s0, 0x60($sp)
/* 3D614 80062214 00808021 */  addu       $s0, $a0, $zero
/* 3D618 80062218 C7A00078 */  lwc1       $f0, 0x78($sp)
/* 3D61C 8006221C C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 3D620 80062220 C7A40080 */  lwc1       $f4, 0x80($sp)
/* 3D624 80062224 C7A60084 */  lwc1       $f6, 0x84($sp)
/* 3D628 80062228 27A40020 */  addiu      $a0, $sp, 0x20
/* 3D62C 8006222C AFBF0064 */  sw         $ra, 0x64($sp)
/* 3D630 80062230 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3D634 80062234 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3D638 80062238 E7A40018 */  swc1       $f4, 0x18($sp)
/* 3D63C 8006223C 0C01883C */  jal        guOrthoF
/* 3D640 80062240 E7A6001C */   swc1      $f6, 0x1C($sp)
/* 3D644 80062244 27A40020 */  addiu      $a0, $sp, 0x20
/* 3D648 80062248 0C0196B0 */  jal        guMtxF2L
/* 3D64C 8006224C 02002821 */   addu      $a1, $s0, $zero
/* 3D650 80062250 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3D654 80062254 8FB00060 */  lw         $s0, 0x60($sp)
/* 3D658 80062258 03E00008 */  jr         $ra
/* 3D65C 8006225C 27BD0068 */   addiu     $sp, $sp, 0x68

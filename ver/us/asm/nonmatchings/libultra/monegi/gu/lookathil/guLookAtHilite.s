.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guLookAtHilite
/* 3CF48 80061B48 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 3CF4C 80061B4C C7A000C8 */  lwc1       $f0, 0xC8($sp)
/* 3CF50 80061B50 C7A200CC */  lwc1       $f2, 0xCC($sp)
/* 3CF54 80061B54 C7A400D0 */  lwc1       $f4, 0xD0($sp)
/* 3CF58 80061B58 C7A600D4 */  lwc1       $f6, 0xD4($sp)
/* 3CF5C 80061B5C C7A800D8 */  lwc1       $f8, 0xD8($sp)
/* 3CF60 80061B60 C7AA00DC */  lwc1       $f10, 0xDC($sp)
/* 3CF64 80061B64 C7AC00E0 */  lwc1       $f12, 0xE0($sp)
/* 3CF68 80061B68 C7AE00E4 */  lwc1       $f14, 0xE4($sp)
/* 3CF6C 80061B6C C7B000E8 */  lwc1       $f16, 0xE8($sp)
/* 3CF70 80061B70 C7B200EC */  lwc1       $f18, 0xEC($sp)
/* 3CF74 80061B74 F7B40098 */  sdc1       $f20, 0x98($sp)
/* 3CF78 80061B78 C7B400F0 */  lwc1       $f20, 0xF0($sp)
/* 3CF7C 80061B7C F7B600A0 */  sdc1       $f22, 0xA0($sp)
/* 3CF80 80061B80 C7B600F4 */  lwc1       $f22, 0xF4($sp)
/* 3CF84 80061B84 F7B800A8 */  sdc1       $f24, 0xA8($sp)
/* 3CF88 80061B88 C7B800F8 */  lwc1       $f24, 0xF8($sp)
/* 3CF8C 80061B8C AFB00090 */  sw         $s0, 0x90($sp)
/* 3CF90 80061B90 00808021 */  addu       $s0, $a0, $zero
/* 3CF94 80061B94 F7BA00B0 */  sdc1       $f26, 0xB0($sp)
/* 3CF98 80061B98 C7BA00FC */  lwc1       $f26, 0xFC($sp)
/* 3CF9C 80061B9C 8FA20100 */  lw         $v0, 0x100($sp)
/* 3CFA0 80061BA0 8FA30104 */  lw         $v1, 0x104($sp)
/* 3CFA4 80061BA4 27A40050 */  addiu      $a0, $sp, 0x50
/* 3CFA8 80061BA8 AFBF0094 */  sw         $ra, 0x94($sp)
/* 3CFAC 80061BAC E7A00010 */  swc1       $f0, 0x10($sp)
/* 3CFB0 80061BB0 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3CFB4 80061BB4 E7A40018 */  swc1       $f4, 0x18($sp)
/* 3CFB8 80061BB8 E7A6001C */  swc1       $f6, 0x1C($sp)
/* 3CFBC 80061BBC E7A80020 */  swc1       $f8, 0x20($sp)
/* 3CFC0 80061BC0 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 3CFC4 80061BC4 E7AC0028 */  swc1       $f12, 0x28($sp)
/* 3CFC8 80061BC8 E7AE002C */  swc1       $f14, 0x2C($sp)
/* 3CFCC 80061BCC E7B00030 */  swc1       $f16, 0x30($sp)
/* 3CFD0 80061BD0 E7B20034 */  swc1       $f18, 0x34($sp)
/* 3CFD4 80061BD4 E7B40038 */  swc1       $f20, 0x38($sp)
/* 3CFD8 80061BD8 E7B6003C */  swc1       $f22, 0x3C($sp)
/* 3CFDC 80061BDC E7B80040 */  swc1       $f24, 0x40($sp)
/* 3CFE0 80061BE0 E7BA0044 */  swc1       $f26, 0x44($sp)
/* 3CFE4 80061BE4 AFA20048 */  sw         $v0, 0x48($sp)
/* 3CFE8 80061BE8 0C0184D4 */  jal        guLookAtHiliteF
/* 3CFEC 80061BEC AFA3004C */   sw        $v1, 0x4C($sp)
/* 3CFF0 80061BF0 27A40050 */  addiu      $a0, $sp, 0x50
/* 3CFF4 80061BF4 0C0196B0 */  jal        guMtxF2L
/* 3CFF8 80061BF8 02002821 */   addu      $a1, $s0, $zero
/* 3CFFC 80061BFC 8FBF0094 */  lw         $ra, 0x94($sp)
/* 3D000 80061C00 8FB00090 */  lw         $s0, 0x90($sp)
/* 3D004 80061C04 D7BA00B0 */  ldc1       $f26, 0xB0($sp)
/* 3D008 80061C08 D7B800A8 */  ldc1       $f24, 0xA8($sp)
/* 3D00C 80061C0C D7B600A0 */  ldc1       $f22, 0xA0($sp)
/* 3D010 80061C10 D7B40098 */  ldc1       $f20, 0x98($sp)
/* 3D014 80061C14 03E00008 */  jr         $ra
/* 3D018 80061C18 27BD00B8 */   addiu     $sp, $sp, 0xB8
/* 3D01C 80061C1C 00000000 */  nop

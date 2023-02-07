.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guLookAtReflect
/* 3D484 80062084 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 3D488 80062088 AFB00070 */  sw         $s0, 0x70($sp)
/* 3D48C 8006208C 00808021 */  addu       $s0, $a0, $zero
/* 3D490 80062090 C7A00088 */  lwc1       $f0, 0x88($sp)
/* 3D494 80062094 C7A2008C */  lwc1       $f2, 0x8C($sp)
/* 3D498 80062098 C7A40090 */  lwc1       $f4, 0x90($sp)
/* 3D49C 8006209C C7A60094 */  lwc1       $f6, 0x94($sp)
/* 3D4A0 800620A0 C7A80098 */  lwc1       $f8, 0x98($sp)
/* 3D4A4 800620A4 C7AA009C */  lwc1       $f10, 0x9C($sp)
/* 3D4A8 800620A8 C7AC00A0 */  lwc1       $f12, 0xA0($sp)
/* 3D4AC 800620AC 27A40030 */  addiu      $a0, $sp, 0x30
/* 3D4B0 800620B0 AFBF0074 */  sw         $ra, 0x74($sp)
/* 3D4B4 800620B4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3D4B8 800620B8 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3D4BC 800620BC E7A40018 */  swc1       $f4, 0x18($sp)
/* 3D4C0 800620C0 E7A6001C */  swc1       $f6, 0x1C($sp)
/* 3D4C4 800620C4 E7A80020 */  swc1       $f8, 0x20($sp)
/* 3D4C8 800620C8 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 3D4CC 800620CC 0C018708 */  jal        guLookAtReflectF
/* 3D4D0 800620D0 E7AC0028 */   swc1      $f12, 0x28($sp)
/* 3D4D4 800620D4 27A40030 */  addiu      $a0, $sp, 0x30
/* 3D4D8 800620D8 0C0196B0 */  jal        guMtxF2L
/* 3D4DC 800620DC 02002821 */   addu      $a1, $s0, $zero
/* 3D4E0 800620E0 8FBF0074 */  lw         $ra, 0x74($sp)
/* 3D4E4 800620E4 8FB00070 */  lw         $s0, 0x70($sp)
/* 3D4E8 800620E8 03E00008 */  jr         $ra
/* 3D4EC 800620EC 27BD0078 */   addiu     $sp, $sp, 0x78

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guMtxCatL
/* 412F0 80065EF0 27BDFF20 */  addiu      $sp, $sp, -0xE0
/* 412F4 80065EF4 00801021 */  addu       $v0, $a0, $zero
/* 412F8 80065EF8 27A40010 */  addiu      $a0, $sp, 0x10
/* 412FC 80065EFC AFB000D0 */  sw         $s0, 0xD0($sp)
/* 41300 80065F00 00A08021 */  addu       $s0, $a1, $zero
/* 41304 80065F04 00402821 */  addu       $a1, $v0, $zero
/* 41308 80065F08 AFB200D8 */  sw         $s2, 0xD8($sp)
/* 4130C 80065F0C 00C09021 */  addu       $s2, $a2, $zero
/* 41310 80065F10 AFBF00DC */  sw         $ra, 0xDC($sp)
/* 41314 80065F14 0C0196D0 */  jal        guMtxL2F
/* 41318 80065F18 AFB100D4 */   sw        $s1, 0xD4($sp)
/* 4131C 80065F1C 27B10050 */  addiu      $s1, $sp, 0x50
/* 41320 80065F20 02202021 */  addu       $a0, $s1, $zero
/* 41324 80065F24 0C0196D0 */  jal        guMtxL2F
/* 41328 80065F28 02002821 */   addu      $a1, $s0, $zero
/* 4132C 80065F2C 27A40010 */  addiu      $a0, $sp, 0x10
/* 41330 80065F30 02202821 */  addu       $a1, $s1, $zero
/* 41334 80065F34 27B00090 */  addiu      $s0, $sp, 0x90
/* 41338 80065F38 0C0196F0 */  jal        guMtxCatF
/* 4133C 80065F3C 02003021 */   addu      $a2, $s0, $zero
/* 41340 80065F40 02002021 */  addu       $a0, $s0, $zero
/* 41344 80065F44 0C0196B0 */  jal        guMtxF2L
/* 41348 80065F48 02402821 */   addu      $a1, $s2, $zero
/* 4134C 80065F4C 8FBF00DC */  lw         $ra, 0xDC($sp)
/* 41350 80065F50 8FB200D8 */  lw         $s2, 0xD8($sp)
/* 41354 80065F54 8FB100D4 */  lw         $s1, 0xD4($sp)
/* 41358 80065F58 8FB000D0 */  lw         $s0, 0xD0($sp)
/* 4135C 80065F5C 03E00008 */  jr         $ra
/* 41360 80065F60 27BD00E0 */   addiu     $sp, $sp, 0xE0
/* 41364 80065F64 00000000 */  nop
/* 41368 80065F68 00000000 */  nop
/* 4136C 80065F6C 00000000 */  nop

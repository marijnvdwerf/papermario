.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSpTaskYielded
/* 3F210 80063E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F214 80063E14 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F218 80063E18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F21C 80063E1C 0C01ADD8 */  jal        __osSpGetStatus
/* 3F220 80063E20 00808021 */   addu      $s0, $a0, $zero
/* 3F224 80063E24 00022202 */  srl        $a0, $v0, 8
/* 3F228 80063E28 30420080 */  andi       $v0, $v0, 0x80
/* 3F22C 80063E2C 10400006 */  beqz       $v0, .L80063E48
/* 3F230 80063E30 30840001 */   andi      $a0, $a0, 0x1
/* 3F234 80063E34 8E020004 */  lw         $v0, 0x4($s0)
/* 3F238 80063E38 2403FFFD */  addiu      $v1, $zero, -0x3
/* 3F23C 80063E3C 00441025 */  or         $v0, $v0, $a0
/* 3F240 80063E40 00431024 */  and        $v0, $v0, $v1
/* 3F244 80063E44 AE020004 */  sw         $v0, 0x4($s0)
.L80063E48:
/* 3F248 80063E48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F24C 80063E4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F250 80063E50 00801021 */  addu       $v0, $a0, $zero
/* 3F254 80063E54 03E00008 */  jr         $ra
/* 3F258 80063E58 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3F25C 80063E5C 00000000 */  nop

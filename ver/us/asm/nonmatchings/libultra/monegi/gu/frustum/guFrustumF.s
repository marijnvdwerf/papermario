.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guFrustumF
/* 3C2B0 80060EB0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3C2B4 80060EB4 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 3C2B8 80060EB8 4485E000 */  mtc1       $a1, $f28
/* 3C2BC 80060EBC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 3C2C0 80060EC0 4486A000 */  mtc1       $a2, $f20
/* 3C2C4 80060EC4 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 3C2C8 80060EC8 4487F000 */  mtc1       $a3, $f30
/* 3C2CC 80060ECC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 3C2D0 80060ED0 C7B60058 */  lwc1       $f22, 0x58($sp)
/* 3C2D4 80060ED4 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 3C2D8 80060ED8 C7B8005C */  lwc1       $f24, 0x5C($sp)
/* 3C2DC 80060EDC AFB00010 */  sw         $s0, 0x10($sp)
/* 3C2E0 80060EE0 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 3C2E4 80060EE4 C7BA0060 */  lwc1       $f26, 0x60($sp)
/* 3C2E8 80060EE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C2EC 80060EEC 0C019698 */  jal        guMtxIdentF
/* 3C2F0 80060EF0 00808021 */   addu      $s0, $a0, $zero
/* 3C2F4 80060EF4 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* 3C2F8 80060EF8 44811000 */  mtc1       $at, $f2
/* 3C2FC 80060EFC 4602D082 */  mul.s      $f2, $f26, $f2
/* 3C300 80060F00 4618C100 */  add.s      $f4, $f24, $f24
/* 3C304 80060F04 461CA201 */  sub.s      $f8, $f20, $f28
/* 3C308 80060F08 461EB281 */  sub.s      $f10, $f22, $f30
/* 3C30C 80060F0C 461CA500 */  add.s      $f20, $f20, $f28
/* 3C310 80060F10 00003021 */  addu       $a2, $zero, $zero
/* 3C314 80060F14 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 3C318 80060F18 44813000 */  mtc1       $at, $f6
/* 3C31C 80060F1C 461EB580 */  add.s      $f22, $f22, $f30
/* 3C320 80060F20 02002821 */  addu       $a1, $s0, $zero
/* 3C324 80060F24 AE00003C */  sw         $zero, 0x3C($s0)
/* 3C328 80060F28 46181082 */  mul.s      $f2, $f2, $f24
/* 3C32C 80060F2C E606002C */  swc1       $f6, 0x2C($s0)
/* 3C330 80060F30 46082003 */  div.s      $f0, $f4, $f8
/* 3C334 80060F34 460A2103 */  div.s      $f4, $f4, $f10
/* 3C338 80060F38 E6000000 */  swc1       $f0, 0x0($s0)
/* 3C33C 80060F3C 4618D000 */  add.s      $f0, $f26, $f24
/* 3C340 80060F40 4608A503 */  div.s      $f20, $f20, $f8
/* 3C344 80060F44 460AB583 */  div.s      $f22, $f22, $f10
/* 3C348 80060F48 4618D681 */  sub.s      $f26, $f26, $f24
/* 3C34C 80060F4C E6040014 */  swc1       $f4, 0x14($s0)
/* 3C350 80060F50 E6140020 */  swc1       $f20, 0x20($s0)
/* 3C354 80060F54 E6160024 */  swc1       $f22, 0x24($s0)
/* 3C358 80060F58 46000007 */  neg.s      $f0, $f0
/* 3C35C 80060F5C 461A0003 */  div.s      $f0, $f0, $f26
/* 3C360 80060F60 E6000028 */  swc1       $f0, 0x28($s0)
/* 3C364 80060F64 461A1083 */  div.s      $f2, $f2, $f26
/* 3C368 80060F68 E6020038 */  swc1       $f2, 0x38($s0)
.L80060F6C:
/* 3C36C 80060F6C 00002021 */  addu       $a0, $zero, $zero
/* 3C370 80060F70 00A01821 */  addu       $v1, $a1, $zero
.L80060F74:
/* 3C374 80060F74 C4600000 */  lwc1       $f0, 0x0($v1)
/* 3C378 80060F78 C7AC0064 */  lwc1       $f12, 0x64($sp)
/* 3C37C 80060F7C 460C0002 */  mul.s      $f0, $f0, $f12
/* 3C380 80060F80 24840001 */  addiu      $a0, $a0, 0x1
/* 3C384 80060F84 28820004 */  slti       $v0, $a0, 0x4
/* 3C388 80060F88 E4600000 */  swc1       $f0, 0x0($v1)
/* 3C38C 80060F8C 1440FFF9 */  bnez       $v0, .L80060F74
/* 3C390 80060F90 24630004 */   addiu     $v1, $v1, 0x4
/* 3C394 80060F94 24C60001 */  addiu      $a2, $a2, 0x1
/* 3C398 80060F98 28C20004 */  slti       $v0, $a2, 0x4
/* 3C39C 80060F9C 1440FFF3 */  bnez       $v0, .L80060F6C
/* 3C3A0 80060FA0 24A50010 */   addiu     $a1, $a1, 0x10
/* 3C3A4 80060FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C3A8 80060FA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3C3AC 80060FAC D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 3C3B0 80060FB0 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 3C3B4 80060FB4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 3C3B8 80060FB8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 3C3BC 80060FBC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 3C3C0 80060FC0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 3C3C4 80060FC4 03E00008 */  jr         $ra
/* 3C3C8 80060FC8 27BD0048 */   addiu     $sp, $sp, 0x48

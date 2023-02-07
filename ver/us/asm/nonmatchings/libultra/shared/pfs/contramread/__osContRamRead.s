.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osContRamRead
/* 45360 80069F60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 45364 80069F64 AFB00010 */  sw         $s0, 0x10($sp)
/* 45368 80069F68 00A08021 */  addu       $s0, $a1, $zero
/* 4536C 80069F6C AFB3001C */  sw         $s3, 0x1C($sp)
/* 45370 80069F70 00E09821 */  addu       $s3, $a3, $zero
/* 45374 80069F74 AFB10014 */  sw         $s1, 0x14($sp)
/* 45378 80069F78 30D1FFFF */  andi       $s1, $a2, 0xFFFF
/* 4537C 80069F7C AFBF0020 */  sw         $ra, 0x20($sp)
/* 45380 80069F80 0C018FE5 */  jal        __osSiGetAccess
/* 45384 80069F84 AFB20018 */   sw        $s2, 0x18($sp)
/* 45388 80069F88 00108080 */  sll        $s0, $s0, 2
/* 4538C 80069F8C 3C028000 */  lui        $v0, %hi(__osBbPakAddress)
/* 45390 80069F90 24420374 */  addiu      $v0, $v0, %lo(__osBbPakAddress)
/* 45394 80069F94 02028021 */  addu       $s0, $s0, $v0
/* 45398 80069F98 8E030000 */  lw         $v1, 0x0($s0)
/* 4539C 80069F9C 10600013 */  beqz       $v1, .L80069FEC
/* 453A0 80069FA0 00009021 */   addu      $s2, $zero, $zero
/* 453A4 80069FA4 3C028000 */  lui        $v0, %hi(__osBbPakSize)
/* 453A8 80069FA8 8C420384 */  lw         $v0, %lo(__osBbPakSize)($v0)
/* 453AC 80069FAC 00113140 */  sll        $a2, $s1, 5
/* 453B0 80069FB0 2442FFE0 */  addiu      $v0, $v0, -0x20
/* 453B4 80069FB4 0046102B */  sltu       $v0, $v0, $a2
/* 453B8 80069FB8 1440000D */  bnez       $v0, .L80069FF0
/* 453BC 80069FBC 00002821 */   addu      $a1, $zero, $zero
.L80069FC0:
/* 453C0 80069FC0 8E020000 */  lw         $v0, 0x0($s0)
/* 453C4 80069FC4 02652021 */  addu       $a0, $s3, $a1
/* 453C8 80069FC8 00C21021 */  addu       $v0, $a2, $v0
/* 453CC 80069FCC 00451021 */  addu       $v0, $v0, $a1
/* 453D0 80069FD0 24A50001 */  addiu      $a1, $a1, 0x1
/* 453D4 80069FD4 90430000 */  lbu        $v1, 0x0($v0)
/* 453D8 80069FD8 28A20020 */  slti       $v0, $a1, 0x20
/* 453DC 80069FDC 1440FFF8 */  bnez       $v0, .L80069FC0
/* 453E0 80069FE0 A0830000 */   sb        $v1, 0x0($a0)
/* 453E4 80069FE4 0801A7FC */  j          .L80069FF0
/* 453E8 80069FE8 00000000 */   nop
.L80069FEC:
/* 453EC 80069FEC 24120001 */  addiu      $s2, $zero, 0x1
.L80069FF0:
/* 453F0 80069FF0 0C018FF4 */  jal        __osSiRelAccess
/* 453F4 80069FF4 00000000 */   nop
/* 453F8 80069FF8 02401021 */  addu       $v0, $s2, $zero
/* 453FC 80069FFC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 45400 8006A000 8FB3001C */  lw         $s3, 0x1C($sp)
/* 45404 8006A004 8FB20018 */  lw         $s2, 0x18($sp)
/* 45408 8006A008 8FB10014 */  lw         $s1, 0x14($sp)
/* 4540C 8006A00C 8FB00010 */  lw         $s0, 0x10($sp)
/* 45410 8006A010 03E00008 */  jr         $ra
/* 45414 8006A014 27BD0028 */   addiu     $sp, $sp, 0x28
/* 45418 8006A018 00000000 */  nop
/* 4541C 8006A01C 00000000 */  nop

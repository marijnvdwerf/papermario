.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osCheckPackId
/* 44D50 80069950 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 44D54 80069954 AFB40038 */  sw         $s4, 0x38($sp)
/* 44D58 80069958 0080A021 */  addu       $s4, $a0, $zero
/* 44D5C 8006995C AFBF0040 */  sw         $ra, 0x40($sp)
/* 44D60 80069960 AFB5003C */  sw         $s5, 0x3C($sp)
/* 44D64 80069964 AFB30034 */  sw         $s3, 0x34($sp)
/* 44D68 80069968 AFB20030 */  sw         $s2, 0x30($sp)
/* 44D6C 8006996C AFB1002C */  sw         $s1, 0x2C($sp)
/* 44D70 80069970 AFB00028 */  sw         $s0, 0x28($sp)
/* 44D74 80069974 92820065 */  lbu        $v0, 0x65($s4)
/* 44D78 80069978 10400005 */  beqz       $v0, .L80069990
/* 44D7C 8006997C 00A09821 */   addu      $s3, $a1, $zero
/* 44D80 80069980 0C01A568 */  jal        __osPfsSelectBank
/* 44D84 80069984 00002821 */   addu      $a1, $zero, $zero
/* 44D88 80069988 14400037 */  bnez       $v0, .L80069A68
/* 44D8C 8006998C 8FBF0040 */   lw        $ra, 0x40($sp)
.L80069990:
/* 44D90 80069990 24120001 */  addiu      $s2, $zero, 0x1
/* 44D94 80069994 27B0001A */  addiu      $s0, $sp, 0x1A
/* 44D98 80069998 24020001 */  addiu      $v0, $zero, 0x1
/* 44D9C 8006999C 24030003 */  addiu      $v1, $zero, 0x3
/* 44DA0 800699A0 A7A20018 */  sh         $v0, 0x18($sp)
/* 44DA4 800699A4 24020004 */  addiu      $v0, $zero, 0x4
/* 44DA8 800699A8 A7A3001A */  sh         $v1, 0x1A($sp)
/* 44DAC 800699AC 24030006 */  addiu      $v1, $zero, 0x6
/* 44DB0 800699B0 A7A2001C */  sh         $v0, 0x1C($sp)
/* 44DB4 800699B4 A7A3001E */  sh         $v1, 0x1E($sp)
.L800699B8:
/* 44DB8 800699B8 8E840004 */  lw         $a0, 0x4($s4)
/* 44DBC 800699BC 8E850008 */  lw         $a1, 0x8($s4)
/* 44DC0 800699C0 96060000 */  lhu        $a2, 0x0($s0)
/* 44DC4 800699C4 0C01A7D8 */  jal        __osContRamRead
/* 44DC8 800699C8 02603821 */   addu      $a3, $s3, $zero
/* 44DCC 800699CC 14400025 */  bnez       $v0, .L80069A64
/* 44DD0 800699D0 02602021 */   addu      $a0, $s3, $zero
/* 44DD4 800699D4 27A50020 */  addiu      $a1, $sp, 0x20
/* 44DD8 800699D8 0C01A58F */  jal        __osIdCheckSum
/* 44DDC 800699DC 27A60022 */   addiu     $a2, $sp, 0x22
/* 44DE0 800699E0 9663001C */  lhu        $v1, 0x1C($s3)
/* 44DE4 800699E4 97A20020 */  lhu        $v0, 0x20($sp)
/* 44DE8 800699E8 54620006 */  bnel       $v1, $v0, .L80069A04
/* 44DEC 800699EC 26520001 */   addiu     $s2, $s2, 0x1
/* 44DF0 800699F0 9663001E */  lhu        $v1, 0x1E($s3)
/* 44DF4 800699F4 97A20022 */  lhu        $v0, 0x22($sp)
/* 44DF8 800699F8 10620006 */  beq        $v1, $v0, .L80069A14
/* 44DFC 800699FC 24020004 */   addiu     $v0, $zero, 0x4
/* 44E00 80069A00 26520001 */  addiu      $s2, $s2, 0x1
.L80069A04:
/* 44E04 80069A04 2A420004 */  slti       $v0, $s2, 0x4
/* 44E08 80069A08 1440FFEB */  bnez       $v0, .L800699B8
/* 44E0C 80069A0C 26100002 */   addiu     $s0, $s0, 0x2
/* 44E10 80069A10 24020004 */  addiu      $v0, $zero, 0x4
.L80069A14:
/* 44E14 80069A14 16420003 */  bne        $s2, $v0, .L80069A24
/* 44E18 80069A18 00008021 */   addu      $s0, $zero, $zero
/* 44E1C 80069A1C 0801A699 */  j          .L80069A64
/* 44E20 80069A20 2402000A */   addiu     $v0, $zero, 0xA
.L80069A24:
/* 44E24 80069A24 24150001 */  addiu      $s5, $zero, 0x1
/* 44E28 80069A28 27B10018 */  addiu      $s1, $sp, 0x18
.L80069A2C:
/* 44E2C 80069A2C 52120009 */  beql       $s0, $s2, .L80069A54
/* 44E30 80069A30 26100001 */   addiu     $s0, $s0, 0x1
/* 44E34 80069A34 8E840004 */  lw         $a0, 0x4($s4)
/* 44E38 80069A38 8E850008 */  lw         $a1, 0x8($s4)
/* 44E3C 80069A3C 96260000 */  lhu        $a2, 0x0($s1)
/* 44E40 80069A40 02603821 */  addu       $a3, $s3, $zero
/* 44E44 80069A44 0C01A808 */  jal        __osContRamWrite
/* 44E48 80069A48 AFB50010 */   sw        $s5, 0x10($sp)
/* 44E4C 80069A4C 14400005 */  bnez       $v0, .L80069A64
/* 44E50 80069A50 26100001 */   addiu     $s0, $s0, 0x1
.L80069A54:
/* 44E54 80069A54 2A020004 */  slti       $v0, $s0, 0x4
/* 44E58 80069A58 1440FFF4 */  bnez       $v0, .L80069A2C
/* 44E5C 80069A5C 26310002 */   addiu     $s1, $s1, 0x2
/* 44E60 80069A60 00001021 */  addu       $v0, $zero, $zero
.L80069A64:
/* 44E64 80069A64 8FBF0040 */  lw         $ra, 0x40($sp)
.L80069A68:
/* 44E68 80069A68 8FB5003C */  lw         $s5, 0x3C($sp)
/* 44E6C 80069A6C 8FB40038 */  lw         $s4, 0x38($sp)
/* 44E70 80069A70 8FB30034 */  lw         $s3, 0x34($sp)
/* 44E74 80069A74 8FB20030 */  lw         $s2, 0x30($sp)
/* 44E78 80069A78 8FB1002C */  lw         $s1, 0x2C($sp)
/* 44E7C 80069A7C 8FB00028 */  lw         $s0, 0x28($sp)
/* 44E80 80069A80 03E00008 */  jr         $ra
/* 44E84 80069A84 27BD0048 */   addiu     $sp, $sp, 0x48

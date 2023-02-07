.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osGetId
/* 44E88 80069A88 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 44E8C 80069A8C AFB1005C */  sw         $s1, 0x5C($sp)
/* 44E90 80069A90 00808821 */  addu       $s1, $a0, $zero
/* 44E94 80069A94 AFBF0060 */  sw         $ra, 0x60($sp)
/* 44E98 80069A98 AFB00058 */  sw         $s0, 0x58($sp)
/* 44E9C 80069A9C 92220065 */  lbu        $v0, 0x65($s1)
/* 44EA0 80069AA0 10400006 */  beqz       $v0, .L80069ABC
/* 44EA4 80069AA4 24060001 */   addiu     $a2, $zero, 0x1
/* 44EA8 80069AA8 0C01A568 */  jal        __osPfsSelectBank
/* 44EAC 80069AAC 00002821 */   addu      $a1, $zero, $zero
/* 44EB0 80069AB0 14400050 */  bnez       $v0, .L80069BF4
/* 44EB4 80069AB4 8FBF0060 */   lw        $ra, 0x60($sp)
/* 44EB8 80069AB8 24060001 */  addiu      $a2, $zero, 0x1
.L80069ABC:
/* 44EBC 80069ABC 8E240004 */  lw         $a0, 0x4($s1)
/* 44EC0 80069AC0 8E250008 */  lw         $a1, 0x8($s1)
/* 44EC4 80069AC4 0C01A7D8 */  jal        __osContRamRead
/* 44EC8 80069AC8 27A70010 */   addiu     $a3, $sp, 0x10
/* 44ECC 80069ACC 14400049 */  bnez       $v0, .L80069BF4
/* 44ED0 80069AD0 8FBF0060 */   lw        $ra, 0x60($sp)
/* 44ED4 80069AD4 27A40010 */  addiu      $a0, $sp, 0x10
/* 44ED8 80069AD8 27A50050 */  addiu      $a1, $sp, 0x50
/* 44EDC 80069ADC 0C01A58F */  jal        __osIdCheckSum
/* 44EE0 80069AE0 27A60052 */   addiu     $a2, $sp, 0x52
/* 44EE4 80069AE4 27B00010 */  addiu      $s0, $sp, 0x10
/* 44EE8 80069AE8 9603001C */  lhu        $v1, 0x1C($s0)
/* 44EEC 80069AEC 97A20050 */  lhu        $v0, 0x50($sp)
/* 44EF0 80069AF0 14620005 */  bne        $v1, $v0, .L80069B08
/* 44EF4 80069AF4 02202021 */   addu      $a0, $s1, $zero
/* 44EF8 80069AF8 9603001E */  lhu        $v1, 0x1E($s0)
/* 44EFC 80069AFC 97A20052 */  lhu        $v0, 0x52($sp)
/* 44F00 80069B00 5062000D */  beql       $v1, $v0, .L80069B38
/* 44F04 80069B04 96020018 */   lhu       $v0, 0x18($s0)
.L80069B08:
/* 44F08 80069B08 0C01A654 */  jal        __osCheckPackId
/* 44F0C 80069B0C 02002821 */   addu      $a1, $s0, $zero
/* 44F10 80069B10 2403000A */  addiu      $v1, $zero, 0xA
/* 44F14 80069B14 14430005 */  bne        $v0, $v1, .L80069B2C
/* 44F18 80069B18 02202021 */   addu      $a0, $s1, $zero
/* 44F1C 80069B1C 02002821 */  addu       $a1, $s0, $zero
/* 44F20 80069B20 27B00030 */  addiu      $s0, $sp, 0x30
/* 44F24 80069B24 0C01A5A1 */  jal        __osRepairPackId
/* 44F28 80069B28 02003021 */   addu      $a2, $s0, $zero
.L80069B2C:
/* 44F2C 80069B2C 14400031 */  bnez       $v0, .L80069BF4
/* 44F30 80069B30 8FBF0060 */   lw        $ra, 0x60($sp)
/* 44F34 80069B34 96020018 */  lhu        $v0, 0x18($s0)
.L80069B38:
/* 44F38 80069B38 30420001 */  andi       $v0, $v0, 0x1
/* 44F3C 80069B3C 1440000E */  bnez       $v0, .L80069B78
/* 44F40 80069B40 02002021 */   addu      $a0, $s0, $zero
/* 44F44 80069B44 02202021 */  addu       $a0, $s1, $zero
/* 44F48 80069B48 02002821 */  addu       $a1, $s0, $zero
/* 44F4C 80069B4C 27B00030 */  addiu      $s0, $sp, 0x30
/* 44F50 80069B50 0C01A5A1 */  jal        __osRepairPackId
/* 44F54 80069B54 02003021 */   addu      $a2, $s0, $zero
/* 44F58 80069B58 14400026 */  bnez       $v0, .L80069BF4
/* 44F5C 80069B5C 8FBF0060 */   lw        $ra, 0x60($sp)
/* 44F60 80069B60 96020018 */  lhu        $v0, 0x18($s0)
/* 44F64 80069B64 30420001 */  andi       $v0, $v0, 0x1
/* 44F68 80069B68 14400003 */  bnez       $v0, .L80069B78
/* 44F6C 80069B6C 02002021 */   addu      $a0, $s0, $zero
/* 44F70 80069B70 0801A6FD */  j          .L80069BF4
/* 44F74 80069B74 2402000B */   addiu     $v0, $zero, 0xB
.L80069B78:
/* 44F78 80069B78 2625000C */  addiu      $a1, $s1, 0xC
/* 44F7C 80069B7C 0C018A04 */  jal        bcopy
/* 44F80 80069B80 24060020 */   addiu     $a2, $zero, 0x20
/* 44F84 80069B84 24060007 */  addiu      $a2, $zero, 0x7
/* 44F88 80069B88 8E240004 */  lw         $a0, 0x4($s1)
/* 44F8C 80069B8C 8E250008 */  lw         $a1, 0x8($s1)
/* 44F90 80069B90 9203001B */  lbu        $v1, 0x1B($s0)
/* 44F94 80069B94 2627002C */  addiu      $a3, $s1, 0x2C
/* 44F98 80069B98 AE23004C */  sw         $v1, 0x4C($s1)
/* 44F9C 80069B9C 9209001A */  lbu        $t1, 0x1A($s0)
/* 44FA0 80069BA0 24020010 */  addiu      $v0, $zero, 0x10
/* 44FA4 80069BA4 AE220050 */  sw         $v0, 0x50($s1)
/* 44FA8 80069BA8 24020008 */  addiu      $v0, $zero, 0x8
/* 44FAC 80069BAC AE220054 */  sw         $v0, 0x54($s1)
/* 44FB0 80069BB0 A2290064 */  sb         $t1, 0x64($s1)
/* 44FB4 80069BB4 312800FF */  andi       $t0, $t1, 0xFF
/* 44FB8 80069BB8 00084040 */  sll        $t0, $t0, 1
/* 44FBC 80069BBC 312300FF */  andi       $v1, $t1, 0xFF
/* 44FC0 80069BC0 25080003 */  addiu      $t0, $t0, 0x3
/* 44FC4 80069BC4 24630001 */  addiu      $v1, $v1, 0x1
/* 44FC8 80069BC8 312200FF */  andi       $v0, $t1, 0xFF
/* 44FCC 80069BCC 000318C0 */  sll        $v1, $v1, 3
/* 44FD0 80069BD0 000210C0 */  sll        $v0, $v0, 3
/* 44FD4 80069BD4 AE230058 */  sw         $v1, 0x58($s1)
/* 44FD8 80069BD8 00621821 */  addu       $v1, $v1, $v0
/* 44FDC 80069BDC AE280060 */  sw         $t0, 0x60($s1)
/* 44FE0 80069BE0 0C01A7D8 */  jal        __osContRamRead
/* 44FE4 80069BE4 AE23005C */   sw        $v1, 0x5C($s1)
/* 44FE8 80069BE8 50400001 */  beql       $v0, $zero, .L80069BF0
/* 44FEC 80069BEC 00001021 */   addu      $v0, $zero, $zero
.L80069BF0:
/* 44FF0 80069BF0 8FBF0060 */  lw         $ra, 0x60($sp)
.L80069BF4:
/* 44FF4 80069BF4 8FB1005C */  lw         $s1, 0x5C($sp)
/* 44FF8 80069BF8 8FB00058 */  lw         $s0, 0x58($sp)
/* 44FFC 80069BFC 03E00008 */  jr         $ra
/* 45000 80069C00 27BD0068 */   addiu     $sp, $sp, 0x68

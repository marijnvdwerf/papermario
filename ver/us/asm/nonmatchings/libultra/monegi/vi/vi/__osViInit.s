.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osViInit
/* 46F20 8006BB20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46F24 8006BB24 AFB00010 */  sw         $s0, 0x10($sp)
/* 46F28 8006BB28 3C108009 */  lui        $s0, %hi(vi)
/* 46F2C 8006BB2C 261045F0 */  addiu      $s0, $s0, %lo(vi)
/* 46F30 8006BB30 02002021 */  addu       $a0, $s0, $zero
/* 46F34 8006BB34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46F38 8006BB38 0C018ACC */  jal        bzero
/* 46F3C 8006BB3C 24050060 */   addiu     $a1, $zero, 0x60
/* 46F40 8006BB40 26050030 */  addiu      $a1, $s0, 0x30
/* 46F44 8006BB44 24020001 */  addiu      $v0, $zero, 0x1
/* 46F48 8006BB48 A4A20002 */  sh         $v0, 0x2($a1)
/* 46F4C 8006BB4C A6020002 */  sh         $v0, 0x2($s0)
/* 46F50 8006BB50 3C048000 */  lui        $a0, %hi(osTvType)
/* 46F54 8006BB54 8C840300 */  lw         $a0, %lo(osTvType)($a0)
/* 46F58 8006BB58 3C038000 */  lui        $v1, (0x80000000 >> 16)
/* 46F5C 8006BB5C 3C018009 */  lui        $at, %hi(__osViCurr)
/* 46F60 8006BB60 AC304650 */  sw         $s0, %lo(__osViCurr)($at)
/* 46F64 8006BB64 3C018009 */  lui        $at, %hi(__osViNext)
/* 46F68 8006BB68 AC254654 */  sw         $a1, %lo(__osViNext)($at)
/* 46F6C 8006BB6C ACA30004 */  sw         $v1, 0x4($a1)
/* 46F70 8006BB70 14800005 */  bnez       $a0, .L8006BB88
/* 46F74 8006BB74 AE030004 */   sw        $v1, 0x4($s0)
/* 46F78 8006BB78 3C028009 */  lui        $v0, %hi(osViModePalLan1)
/* 46F7C 8006BB7C 24424660 */  addiu      $v0, $v0, %lo(osViModePalLan1)
/* 46F80 8006BB80 0801AEEC */  j          .L8006BBB0
/* 46F84 8006BB84 ACA20008 */   sw        $v0, 0x8($a1)
.L8006BB88:
/* 46F88 8006BB88 24020002 */  addiu      $v0, $zero, 0x2
/* 46F8C 8006BB8C 14820005 */  bne        $a0, $v0, .L8006BBA4
/* 46F90 8006BB90 00000000 */   nop
/* 46F94 8006BB94 3C028009 */  lui        $v0, %hi(osViModeMpalLan1)
/* 46F98 8006BB98 24424490 */  addiu      $v0, $v0, %lo(osViModeMpalLan1)
/* 46F9C 8006BB9C 0801AEEC */  j          .L8006BBB0
/* 46FA0 8006BBA0 ACA20008 */   sw        $v0, 0x8($a1)
.L8006BBA4:
/* 46FA4 8006BBA4 3C028009 */  lui        $v0, %hi(osViModeNtscLan1)
/* 46FA8 8006BBA8 24424440 */  addiu      $v0, $v0, %lo(osViModeNtscLan1)
/* 46FAC 8006BBAC ACA20008 */  sw         $v0, 0x8($a1)
.L8006BBB0:
/* 46FB0 8006BBB0 3C038009 */  lui        $v1, %hi(__osViNext)
/* 46FB4 8006BBB4 8C634654 */  lw         $v1, %lo(__osViNext)($v1)
/* 46FB8 8006BBB8 24020020 */  addiu      $v0, $zero, 0x20
/* 46FBC 8006BBBC A4620000 */  sh         $v0, 0x0($v1)
/* 46FC0 8006BBC0 00603021 */  addu       $a2, $v1, $zero
/* 46FC4 8006BBC4 8CC40008 */  lw         $a0, 0x8($a2)
/* 46FC8 8006BBC8 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 46FCC 8006BBCC 8C850004 */  lw         $a1, 0x4($a0)
/* 46FD0 8006BBD0 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
/* 46FD4 8006BBD4 ACC5000C */  sw         $a1, 0xC($a2)
/* 46FD8 8006BBD8 8C620000 */  lw         $v0, 0x0($v1)
/* 46FDC 8006BBDC 2C42000B */  sltiu      $v0, $v0, 0xB
/* 46FE0 8006BBE0 14400007 */  bnez       $v0, .L8006BC00
/* 46FE4 8006BBE4 3C02A440 */   lui       $v0, %hi(D_A4400000)
/* 46FE8 8006BBE8 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 46FEC 8006BBEC 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
.L8006BBF0:
/* 46FF0 8006BBF0 8C620000 */  lw         $v0, 0x0($v1)
/* 46FF4 8006BBF4 2C42000B */  sltiu      $v0, $v0, 0xB
/* 46FF8 8006BBF8 1040FFFD */  beqz       $v0, .L8006BBF0
/* 46FFC 8006BBFC 3C02A440 */   lui       $v0, %hi(D_A4400000)
.L8006BC00:
/* 47000 8006BC00 AC400000 */  sw         $zero, %lo(D_A4400000)($v0)
/* 47004 8006BC04 0C01958C */  jal        __osViSwapContext
/* 47008 8006BC08 00000000 */   nop
/* 4700C 8006BC0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47010 8006BC10 8FB00010 */  lw         $s0, 0x10($sp)
/* 47014 8006BC14 03E00008 */  jr         $ra
/* 47018 8006BC18 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4701C 8006BC1C 00000000 */  nop

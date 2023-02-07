.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osIdCheckSum
/* 44A3C 8006963C 00804021 */  addu       $t0, $a0, $zero
/* 44A40 80069640 00003821 */  addu       $a3, $zero, $zero
/* 44A44 80069644 A4C00000 */  sh         $zero, 0x0($a2)
/* 44A48 80069648 A4A00000 */  sh         $zero, 0x0($a1)
.L8006964C:
/* 44A4C 8006964C 01071021 */  addu       $v0, $t0, $a3
/* 44A50 80069650 94440000 */  lhu        $a0, 0x0($v0)
/* 44A54 80069654 94A30000 */  lhu        $v1, 0x0($a1)
/* 44A58 80069658 24E70002 */  addiu      $a3, $a3, 0x2
/* 44A5C 8006965C 00831821 */  addu       $v1, $a0, $v1
/* 44A60 80069660 00042027 */  nor        $a0, $zero, $a0
/* 44A64 80069664 A4A30000 */  sh         $v1, 0x0($a1)
/* 44A68 80069668 94C20000 */  lhu        $v0, 0x0($a2)
/* 44A6C 8006966C 2CE3001C */  sltiu      $v1, $a3, 0x1C
/* 44A70 80069670 00441021 */  addu       $v0, $v0, $a0
/* 44A74 80069674 1460FFF5 */  bnez       $v1, .L8006964C
/* 44A78 80069678 A4C20000 */   sh        $v0, 0x0($a2)
/* 44A7C 8006967C 03E00008 */  jr         $ra
/* 44A80 80069680 00001021 */   addu      $v0, $zero, $zero

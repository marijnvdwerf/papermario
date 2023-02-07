.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel sprintf
/* 3EA30 80063630 AFA50004 */  sw         $a1, 0x4($sp)
/* 3EA34 80063634 AFA60008 */  sw         $a2, 0x8($sp)
/* 3EA38 80063638 AFA7000C */  sw         $a3, 0xC($sp)
/* 3EA3C 8006363C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3EA40 80063640 AFB00010 */  sw         $s0, 0x10($sp)
/* 3EA44 80063644 00808021 */  addu       $s0, $a0, $zero
/* 3EA48 80063648 00A03021 */  addu       $a2, $a1, $zero
/* 3EA4C 8006364C 3C048006 */  lui        $a0, %hi(proutSprintf)
/* 3EA50 80063650 24843688 */  addiu      $a0, $a0, %lo(proutSprintf)
/* 3EA54 80063654 02002821 */  addu       $a1, $s0, $zero
/* 3EA58 80063658 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EA5C 8006365C 0C018B14 */  jal        _Printf
/* 3EA60 80063660 27A70020 */   addiu     $a3, $sp, 0x20
/* 3EA64 80063664 00401821 */  addu       $v1, $v0, $zero
/* 3EA68 80063668 04600002 */  bltz       $v1, .L80063674
/* 3EA6C 8006366C 02031021 */   addu      $v0, $s0, $v1
/* 3EA70 80063670 A0400000 */  sb         $zero, 0x0($v0)
.L80063674:
/* 3EA74 80063674 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EA78 80063678 8FB00010 */  lw         $s0, 0x10($sp)
/* 3EA7C 8006367C 00601021 */  addu       $v0, $v1, $zero
/* 3EA80 80063680 03E00008 */  jr         $ra
/* 3EA84 80063684 27BD0018 */   addiu     $sp, $sp, 0x18

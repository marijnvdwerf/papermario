.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsSelectBank
/* 449A0 800695A0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 449A4 800695A4 AFB1003C */  sw         $s1, 0x3C($sp)
/* 449A8 800695A8 00808821 */  addu       $s1, $a0, $zero
/* 449AC 800695AC AFB00038 */  sw         $s0, 0x38($sp)
/* 449B0 800695B0 30B000FF */  andi       $s0, $a1, 0xFF
/* 449B4 800695B4 00002021 */  addu       $a0, $zero, $zero
/* 449B8 800695B8 27A50018 */  addiu      $a1, $sp, 0x18
/* 449BC 800695BC AFBF0040 */  sw         $ra, 0x40($sp)
.L800695C0:
/* 449C0 800695C0 00A41021 */  addu       $v0, $a1, $a0
/* 449C4 800695C4 24840001 */  addiu      $a0, $a0, 0x1
/* 449C8 800695C8 28830020 */  slti       $v1, $a0, 0x20
/* 449CC 800695CC 1460FFFC */  bnez       $v1, .L800695C0
/* 449D0 800695D0 A0500000 */   sb        $s0, 0x0($v0)
/* 449D4 800695D4 24060400 */  addiu      $a2, $zero, 0x400
/* 449D8 800695D8 AFA00010 */  sw         $zero, 0x10($sp)
/* 449DC 800695DC 8E240004 */  lw         $a0, 0x4($s1)
/* 449E0 800695E0 8E250008 */  lw         $a1, 0x8($s1)
/* 449E4 800695E4 0C01A808 */  jal        __osContRamWrite
/* 449E8 800695E8 27A70018 */   addiu     $a3, $sp, 0x18
/* 449EC 800695EC 50400001 */  beql       $v0, $zero, .L800695F4
/* 449F0 800695F0 A2300065 */   sb        $s0, 0x65($s1)
.L800695F4:
/* 449F4 800695F4 8FBF0040 */  lw         $ra, 0x40($sp)
/* 449F8 800695F8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 449FC 800695FC 8FB00038 */  lw         $s0, 0x38($sp)
/* 44A00 80069600 03E00008 */  jr         $ra
/* 44A04 80069604 27BD0048 */   addiu     $sp, $sp, 0x48
/* 44A08 80069608 00000000 */  nop
/* 44A0C 8006960C 00000000 */  nop

.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.5 */

glabel guMtxF2L
/* 43780 80068380 3C014780 */  lui       $at, (0x47800000 >> 16)
/* 43784 80068384 44810000 */  mtc1      $at, $f0
/* 43788 80068388 3C19FFFF */  lui       $t9, (0xFFFF0000 >> 16)
/* 4378C 8006838C 24B80020 */  addiu     $t8, $a1, 0x20
.LPAL_80068390:
/* 43790 80068390 C4840000 */  lwc1      $f4, 0x0($a0)
/* 43794 80068394 46002182 */  mul.s     $f6, $f4, $f0
/* 43798 80068398 4600320D */  trunc.w.s $f8, $f6
/* 4379C 8006839C C48A0004 */  lwc1      $f10, 0x4($a0)
/* 437A0 800683A0 46005402 */  mul.s     $f16, $f10, $f0
/* 437A4 800683A4 4600848D */  trunc.w.s $f18, $f16
/* 437A8 800683A8 44084000 */  mfc1      $t0, $f8
/* 437AC 800683AC 44099000 */  mfc1      $t1, $f18
/* 437B0 800683B0 01195024 */  and       $t2, $t0, $t9
/* 437B4 800683B4 00095C02 */  srl       $t3, $t1, 16
/* 437B8 800683B8 014B6025 */  or        $t4, $t2, $t3
/* 437BC 800683BC ACAC0000 */  sw        $t4, 0x0($a1)
/* 437C0 800683C0 00086C00 */  sll       $t5, $t0, 16
/* 437C4 800683C4 312EFFFF */  andi      $t6, $t1, 0xFFFF
/* 437C8 800683C8 01AE7825 */  or        $t7, $t5, $t6
/* 437CC 800683CC ACAF0020 */  sw        $t7, 0x20($a1)
/* 437D0 800683D0 24A50004 */  addiu     $a1, $a1, 0x4
/* 437D4 800683D4 14B8FFEE */  bne       $a1, $t8, .LPAL_80068390
/* 437D8 800683D8 24840008 */   addiu    $a0, $a0, 0x8
/* 437DC 800683DC 03E00008 */  jr        $ra
/* 437E0 800683E0 00000000 */   nop
/* 437E4 800683E4 00000000 */  nop
/* 437E8 800683E8 00000000 */  nop
/* 437EC 800683EC 00000000 */  nop
/* 437F0 800683F0 00000000 */  nop
/* 437F4 800683F4 00000000 */  nop
/* 437F8 800683F8 00000000 */  nop
/* 437FC 800683FC 00000000 */  nop

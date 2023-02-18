.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel osWritebackDCacheAll
/* 3BA80 80060680 3C088000 */  lui       $t0, 0x8000
/* 3BA84 80060684 240A2000 */  addiu     $t2, $zero, 0x2000
/* 3BA88 80060688 010A4821 */  addu      $t1, $t0, $t2
/* 3BA8C 8006068C 2529FFF0 */  addiu     $t1, $t1, -0x10
.LIQUE_80060690:
/* 3BA90 80060690 BD010000 */  cache     0x01, 0x0($t0) # handwritten instruction
/* 3BA94 80060694 0109082B */  sltu      $at, $t0, $t1
/* 3BA98 80060698 1420FFFD */  bnez      $at, .LIQUE_80060690
/* 3BA9C 8006069C 25080010 */   addiu    $t0, $t0, (0x80000010 & 0xFFFF)
/* 3BAA0 800606A0 03E00008 */  jr        $ra
/* 3BAA4 800606A4 00000000 */   nop
/* 3BAA8 800606A8 00000000 */  nop
/* 3BAAC 800606AC 00000000 */  nop

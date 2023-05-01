.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.5 */

# Handwritten function
glabel __osRestoreInt
/* 47650 8006C250 40086000 */  mfc0      $t0, $12 # handwritten instruction
/* 47654 8006C254 01044025 */  or        $t0, $t0, $a0
/* 47658 8006C258 40886000 */  mtc0      $t0, $12 # handwritten instruction
/* 4765C 8006C25C 00000000 */  nop
/* 47660 8006C260 00000000 */  nop
/* 47664 8006C264 03E00008 */  jr        $ra
/* 47668 8006C268 00000000 */   nop
/* 4766C 8006C26C 00000000 */  nop

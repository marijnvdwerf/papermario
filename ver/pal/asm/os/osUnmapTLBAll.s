.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.5 */

# Handwritten function
glabel osUnmapTLBAll
/* 42BD0 800677D0 40085000 */  mfc0      $t0, $10 # handwritten instruction
/* 42BD4 800677D4 2409001E */  addiu     $t1, $zero, 0x1E
/* 42BD8 800677D8 3C0A8000 */  lui       $t2, (0x80000000 >> 16)
/* 42BDC 800677DC 408A5000 */  mtc0      $t2, $10 # handwritten instruction
/* 42BE0 800677E0 40801000 */  mtc0      $zero, $2 # handwritten instruction
/* 42BE4 800677E4 40801800 */  mtc0      $zero, $3 # handwritten instruction
.LPAL_800677E8:
/* 42BE8 800677E8 40890000 */  mtc0      $t1, $0 # handwritten instruction
/* 42BEC 800677EC 00000000 */  nop
/* 42BF0 800677F0 42000002 */  tlbwi # handwritten instruction
/* 42BF4 800677F4 00000000 */  nop
/* 42BF8 800677F8 00000000 */  nop
/* 42BFC 800677FC 2129FFFF */  addi      $t1, $t1, -0x1 # handwritten instruction
/* 42C00 80067800 0521FFF9 */  bgez      $t1, .LPAL_800677E8
/* 42C04 80067804 00000000 */   nop
/* 42C08 80067808 40885000 */  mtc0      $t0, $10 # handwritten instruction
/* 42C0C 8006780C 03E00008 */  jr        $ra
/* 42C10 80067810 00000000 */   nop
/* 42C14 80067814 00000000 */  nop
/* 42C18 80067818 00000000 */  nop
/* 42C1C 8006781C 00000000 */  nop

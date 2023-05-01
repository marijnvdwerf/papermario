.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.5 */

glabel guScaleF
/* 43A40 80068640 AC850000 */  sw        $a1, 0x0($a0)
/* 43A44 80068644 AC800004 */  sw        $zero, 0x4($a0)
/* 43A48 80068648 AC800008 */  sw        $zero, 0x8($a0)
/* 43A4C 8006864C AC80000C */  sw        $zero, 0xC($a0)
/* 43A50 80068650 AC800010 */  sw        $zero, 0x10($a0)
/* 43A54 80068654 AC860014 */  sw        $a2, 0x14($a0)
/* 43A58 80068658 AC800018 */  sw        $zero, 0x18($a0)
/* 43A5C 8006865C AC80001C */  sw        $zero, 0x1C($a0)
/* 43A60 80068660 AC800020 */  sw        $zero, 0x20($a0)
/* 43A64 80068664 AC800024 */  sw        $zero, 0x24($a0)
/* 43A68 80068668 AC870028 */  sw        $a3, 0x28($a0)
/* 43A6C 8006866C AC80002C */  sw        $zero, 0x2C($a0)
/* 43A70 80068670 3C083F80 */  lui       $t0, (0x3F800000 >> 16)
/* 43A74 80068674 AC800030 */  sw        $zero, 0x30($a0)
/* 43A78 80068678 AC800034 */  sw        $zero, 0x34($a0)
/* 43A7C 8006867C AC800038 */  sw        $zero, 0x38($a0)
/* 43A80 80068680 03E00008 */  jr        $ra
/* 43A84 80068684 AC88003C */   sw       $t0, 0x3C($a0)
/* 43A88 80068688 00000000 */  nop
/* 43A8C 8006868C 00000000 */  nop
/* 43A90 80068690 00000000 */  nop
/* 43A94 80068694 00000000 */  nop
/* 43A98 80068698 00000000 */  nop
/* 43A9C 8006869C 00000000 */  nop

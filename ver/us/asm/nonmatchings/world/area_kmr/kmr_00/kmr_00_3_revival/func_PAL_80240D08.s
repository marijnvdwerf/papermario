.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel func_PAL_80240D08
/* 918F28 80240D08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 918F2C 80240D0C 3C05FD05 */  lui        $a1, (0xFD050F82 >> 16)
/* 918F30 80240D10 34A50F82 */  ori        $a1, $a1, (0xFD050F82 & 0xFFFF)
/* 918F34 80240D14 AFBF0010 */  sw         $ra, 0x10($sp)
/* 918F38 80240D18 0C0B2AAF */  jal        func_PAL_802CAABC
/* 918F3C 80240D1C 0000202D */   daddu     $a0, $zero, $zero
/* 918F40 80240D20 38420007 */  xori       $v0, $v0, 0x7
/* 918F44 80240D24 2C420001 */  sltiu      $v0, $v0, 0x1
/* 918F48 80240D28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 918F4C 80240D2C 00021040 */  sll        $v0, $v0, 1
/* 918F50 80240D30 03E00008 */  jr         $ra
/* 918F54 80240D34 27BD0018 */   addiu     $sp, $sp, 0x18

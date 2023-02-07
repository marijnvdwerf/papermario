.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel filemenu_draw_file_name
/* 1B33DC 80249E7C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B33E0 80249E80 AFB40028 */  sw         $s4, 0x28($sp)
/* 1B33E4 80249E84 8FB40050 */  lw         $s4, 0x50($sp)
/* 1B33E8 80249E88 AFB30024 */  sw         $s3, 0x24($sp)
/* 1B33EC 80249E8C 8FB30054 */  lw         $s3, 0x54($sp)
/* 1B33F0 80249E90 AFB20020 */  sw         $s2, 0x20($sp)
/* 1B33F4 80249E94 8FB20058 */  lw         $s2, 0x58($sp)
/* 1B33F8 80249E98 AFB60030 */  sw         $s6, 0x30($sp)
/* 1B33FC 80249E9C 00A0B02D */  daddu      $s6, $a1, $zero
/* 1B3400 80249EA0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1B3404 80249EA4 8FBE005C */  lw         $fp, 0x5C($sp)
/* 1B3408 80249EA8 00C0282D */  daddu      $a1, $a2, $zero
/* 1B340C 80249EAC AFB5002C */  sw         $s5, 0x2C($sp)
.L80249EB0:
/* 1B3410 80249EB0 00E0A82D */  daddu      $s5, $a3, $zero
/* 1B3414 80249EB4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1B3418 80249EB8 0000882D */  daddu      $s1, $zero, $zero
/* 1B341C 80249EBC AFBF003C */  sw         $ra, 0x3C($sp)
/* 1B3420 80249EC0 AFB70034 */  sw         $s7, 0x34($sp)
/* 1B3424 80249EC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1B3428 80249EC8 1AC00016 */  blez       $s6, .L80249F24
/* 1B342C 80249ECC AFA40040 */   sw        $a0, 0x40($sp)
/* 1B3430 80249ED0 241700F7 */  addiu      $s7, $zero, 0xF7
/* 1B3434 80249ED4 00A0802D */  daddu      $s0, $a1, $zero
.L80249ED8:
/* 1B3438 80249ED8 8FA30040 */  lw         $v1, 0x40($sp)
/* 1B343C 80249EDC 00711021 */  addu       $v0, $v1, $s1
/* 1B3440 80249EE0 90440000 */  lbu        $a0, 0x0($v0)
/* 1B3444 80249EE4 1097000B */  beq        $a0, $s7, .L80249F14
/* 1B3448 80249EE8 2482FFF0 */   addiu     $v0, $a0, -0x10
/* 1B344C 80249EEC 2C42000A */  sltiu      $v0, $v0, 0xA
/* 1B3450 80249EF0 10400003 */  beqz       $v0, .L80249F00
.L80249EF4:
/* 1B3454 80249EF4 0200282D */   daddu     $a1, $s0, $zero
/* 1B3458 80249EF8 080927C1 */  j          .L80249F04
/* 1B345C 80249EFC 26A60001 */   addiu     $a2, $s5, 0x1
.L80249F00:
/* 1B3460 80249F00 02A0302D */  daddu      $a2, $s5, $zero
.L80249F04:
/* 1B3464 80249F04 0280382D */  daddu      $a3, $s4, $zero
/* 1B3468 80249F08 AFB30010 */  sw         $s3, 0x10($sp)
/* 1B346C 80249F0C 0C092742 */  jal        filemenu_draw_message
/* 1B3470 80249F10 AFB20014 */   sw        $s2, 0x14($sp)
.L80249F14:
/* 1B3474 80249F14 26310001 */  addiu      $s1, $s1, 0x1
/* 1B3478 80249F18 0236102A */  slt        $v0, $s1, $s6
/* 1B347C 80249F1C 1440FFEE */  bnez       $v0, .L80249ED8
/* 1B3480 80249F20 021E8021 */   addu      $s0, $s0, $fp
.L80249F24:
/* 1B3484 80249F24 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1B3488 80249F28 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1B348C 80249F2C 8FB70034 */  lw         $s7, 0x34($sp)
/* 1B3490 80249F30 8FB60030 */  lw         $s6, 0x30($sp)
/* 1B3494 80249F34 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1B3498 80249F38 8FB40028 */  lw         $s4, 0x28($sp)
/* 1B349C 80249F3C 8FB30024 */  lw         $s3, 0x24($sp)
/* 1B34A0 80249F40 8FB20020 */  lw         $s2, 0x20($sp)
/* 1B34A4 80249F44 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1B34A8 80249F48 8FB00018 */  lw         $s0, 0x18($sp)
/* 1B34AC 80249F4C 03E00008 */  jr         $ra
.L80249F50:
/* 1B34B0 80249F50 27BD0040 */   addiu     $sp, $sp, 0x40
/* 1B34B4 80249F54 00000000 */  nop

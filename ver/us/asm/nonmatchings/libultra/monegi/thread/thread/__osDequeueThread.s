.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osDequeueThread
/* 3F900 80064500 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3F904 80064504 AFBE0000 */  sw         $fp, 0x0($sp)
/* 3F908 80064508 03A0F021 */  addu       $fp, $sp, $zero
/* 3F90C 8006450C 00801021 */  addu       $v0, $a0, $zero
/* 3F910 80064510 00A01821 */  addu       $v1, $a1, $zero
/* 3F914 80064514 00402021 */  addu       $a0, $v0, $zero
/* 3F918 80064518 8C850000 */  lw         $a1, 0x0($a0)
.L8006451C:
/* 3F91C 8006451C 14A00003 */  bnez       $a1, .L8006452C
/* 3F920 80064520 00000000 */   nop
/* 3F924 80064524 08019153 */  j          .L8006454C
/* 3F928 80064528 00000000 */   nop
.L8006452C:
/* 3F92C 8006452C 14A30004 */  bne        $a1, $v1, .L80064540
/* 3F930 80064530 00000000 */   nop
/* 3F934 80064534 8C660000 */  lw         $a2, 0x0($v1)
/* 3F938 80064538 08019153 */  j          .L8006454C
/* 3F93C 8006453C AC860000 */   sw        $a2, 0x0($a0)
.L80064540:
/* 3F940 80064540 00A02021 */  addu       $a0, $a1, $zero
/* 3F944 80064544 08019147 */  j          .L8006451C
/* 3F948 80064548 8C850000 */   lw        $a1, 0x0($a0)
.L8006454C:
/* 3F94C 8006454C 03C0E821 */  addu       $sp, $fp, $zero
/* 3F950 80064550 8FBE0000 */  lw         $fp, 0x0($sp)
/* 3F954 80064554 03E00008 */  jr         $ra
/* 3F958 80064558 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3F95C 8006455C 00000000 */  nop

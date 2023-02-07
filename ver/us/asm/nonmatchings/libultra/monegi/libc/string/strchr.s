.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strchr
/* 3DFD0 80062BD0 00052E00 */  sll        $a1, $a1, 24
/* 3DFD4 80062BD4 08018AFB */  j          .L80062BEC
/* 3DFD8 80062BD8 00052E03 */   sra       $a1, $a1, 24
.L80062BDC:
/* 3DFDC 80062BDC 14600003 */  bnez       $v1, .L80062BEC
/* 3DFE0 80062BE0 24840001 */   addiu     $a0, $a0, 0x1
/* 3DFE4 80062BE4 03E00008 */  jr         $ra
/* 3DFE8 80062BE8 00001021 */   addu      $v0, $zero, $zero
.L80062BEC:
/* 3DFEC 80062BEC 80820000 */  lb         $v0, 0x0($a0)
/* 3DFF0 80062BF0 1445FFFA */  bne        $v0, $a1, .L80062BDC
/* 3DFF4 80062BF4 90830000 */   lbu       $v1, 0x0($a0)
/* 3DFF8 80062BF8 03E00008 */  jr         $ra
/* 3DFFC 80062BFC 00801021 */   addu      $v0, $a0, $zero

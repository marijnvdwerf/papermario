.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osGetActiveQueue
/* 3F960 80064560 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3F964 80064564 AFBE0000 */  sw         $fp, 0x0($sp)
/* 3F968 80064568 03A0F021 */  addu       $fp, $sp, $zero
/* 3F96C 8006456C 3C038009 */  lui        $v1, %hi(__osActiveQueue)
/* 3F970 80064570 8C63327C */  lw         $v1, %lo(__osActiveQueue)($v1)
/* 3F974 80064574 0801915F */  j          .L8006457C
/* 3F978 80064578 00601021 */   addu      $v0, $v1, $zero
.L8006457C:
/* 3F97C 8006457C 03C0E821 */  addu       $sp, $fp, $zero
/* 3F980 80064580 8FBE0000 */  lw         $fp, 0x0($sp)
/* 3F984 80064584 03E00008 */  jr         $ra
/* 3F988 80064588 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3F98C 8006458C 00000000 */  nop

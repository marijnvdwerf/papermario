.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strlen
/* 3E000 80062C00 80820000 */  lb         $v0, 0x0($a0)
/* 3E004 80062C04 10400005 */  beqz       $v0, .L80062C1C
/* 3E008 80062C08 00801821 */   addu      $v1, $a0, $zero
/* 3E00C 80062C0C 24630001 */  addiu      $v1, $v1, 0x1
.L80062C10:
/* 3E010 80062C10 80620000 */  lb         $v0, 0x0($v1)
/* 3E014 80062C14 5440FFFE */  bnel       $v0, $zero, .L80062C10
/* 3E018 80062C18 24630001 */   addiu     $v1, $v1, 0x1
.L80062C1C:
/* 3E01C 80062C1C 03E00008 */  jr         $ra
/* 3E020 80062C20 00641023 */   subu      $v0, $v1, $a0

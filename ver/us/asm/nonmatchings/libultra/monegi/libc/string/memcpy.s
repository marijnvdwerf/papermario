.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel memcpy
/* 3E024 80062C24 10C00007 */  beqz       $a2, .L80062C44
/* 3E028 80062C28 00801821 */   addu      $v1, $a0, $zero
.L80062C2C:
/* 3E02C 80062C2C 90A20000 */  lbu        $v0, 0x0($a1)
/* 3E030 80062C30 24A50001 */  addiu      $a1, $a1, 0x1
/* 3E034 80062C34 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 3E038 80062C38 A0620000 */  sb         $v0, 0x0($v1)
/* 3E03C 80062C3C 14C0FFFB */  bnez       $a2, .L80062C2C
/* 3E040 80062C40 24630001 */   addiu     $v1, $v1, 0x1
.L80062C44:
/* 3E044 80062C44 03E00008 */  jr         $ra
/* 3E048 80062C48 00801021 */   addu      $v0, $a0, $zero
/* 3E04C 80062C4C 00000000 */  nop

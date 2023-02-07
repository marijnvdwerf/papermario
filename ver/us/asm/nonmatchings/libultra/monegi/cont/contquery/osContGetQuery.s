.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osContGetQuery
/* 3BB34 80060734 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3BB38 80060738 00802821 */  addu       $a1, $a0, $zero
/* 3BB3C 8006073C AFBF0018 */  sw         $ra, 0x18($sp)
/* 3BB40 80060740 0C0182E1 */  jal        __osContGetInitData
/* 3BB44 80060744 27A40010 */   addiu     $a0, $sp, 0x10
/* 3BB48 80060748 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3BB4C 8006074C 03E00008 */  jr         $ra
/* 3BB50 80060750 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3BB54 80060754 00000000 */  nop
/* 3BB58 80060758 00000000 */  nop
/* 3BB5C 8006075C 00000000 */  nop

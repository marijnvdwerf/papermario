.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osInitialize_autodetect
/* 45B20 8006A720 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 45B24 8006A724 AFBE0000 */  sw         $fp, 0x0($sp)
/* 45B28 8006A728 03A0F021 */  addu       $fp, $sp, $zero
/* 45B2C 8006A72C 03C0E821 */  addu       $sp, $fp, $zero
/* 45B30 8006A730 8FBE0000 */  lw         $fp, 0x0($sp)
/* 45B34 8006A734 03E00008 */  jr         $ra
/* 45B38 8006A738 27BD0008 */   addiu     $sp, $sp, 0x8
/* 45B3C 8006A73C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osGetThreadPri
/* 46E10 8006BA10 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 46E14 8006BA14 AFBE0000 */  sw         $fp, 0x0($sp)
/* 46E18 8006BA18 03A0F021 */  addu       $fp, $sp, $zero
/* 46E1C 8006BA1C AFC40008 */  sw         $a0, 0x8($fp)
/* 46E20 8006BA20 8FC20008 */  lw         $v0, 0x8($fp)
/* 46E24 8006BA24 14400004 */  bnez       $v0, .L8006BA38
/* 46E28 8006BA28 00000000 */   nop
/* 46E2C 8006BA2C 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 46E30 8006BA30 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 46E34 8006BA34 AFC20008 */  sw         $v0, 0x8($fp)
.L8006BA38:
/* 46E38 8006BA38 8FC20008 */  lw         $v0, 0x8($fp)
/* 46E3C 8006BA3C 8C430004 */  lw         $v1, 0x4($v0)
/* 46E40 8006BA40 0801AE92 */  j          .L8006BA48
/* 46E44 8006BA44 00601021 */   addu      $v0, $v1, $zero
.L8006BA48:
/* 46E48 8006BA48 03C0E821 */  addu       $sp, $fp, $zero
/* 46E4C 8006BA4C 8FBE0000 */  lw         $fp, 0x0($sp)
/* 46E50 8006BA50 03E00008 */  jr         $ra
/* 46E54 8006BA54 27BD0008 */   addiu     $sp, $sp, 0x8
/* 46E58 8006BA58 00000000 */  nop
/* 46E5C 8006BA5C 00000000 */  nop

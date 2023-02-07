.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSetTimerIntr
/* 3FED4 80064AD4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FED8 80064AD8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3FEDC 80064ADC AFBE0020 */  sw         $fp, 0x20($sp)
/* 3FEE0 80064AE0 03A0F021 */  addu       $fp, $sp, $zero
/* 3FEE4 80064AE4 AFC40028 */  sw         $a0, 0x28($fp)
/* 3FEE8 80064AE8 AFC5002C */  sw         $a1, 0x2C($fp)
/* 3FEEC 80064AEC 8FC20028 */  lw         $v0, 0x28($fp)
/* 3FEF0 80064AF0 14400012 */  bnez       $v0, .L80064B3C
/* 3FEF4 80064AF4 00000000 */   nop
/* 3FEF8 80064AF8 8FC20028 */  lw         $v0, 0x28($fp)
/* 3FEFC 80064AFC 1440000B */  bnez       $v0, .L80064B2C
/* 3FF00 80064B00 00000000 */   nop
/* 3FF04 80064B04 8FC2002C */  lw         $v0, 0x2C($fp)
/* 3FF08 80064B08 2C4301D4 */  sltiu      $v1, $v0, 0x1D4
/* 3FF0C 80064B0C 1060000B */  beqz       $v1, .L80064B3C
/* 3FF10 80064B10 00000000 */   nop
/* 3FF14 80064B14 8FC2002C */  lw         $v0, 0x2C($fp)
/* 3FF18 80064B18 240301D3 */  addiu      $v1, $zero, 0x1D3
/* 3FF1C 80064B1C 14430003 */  bne        $v0, $v1, .L80064B2C
/* 3FF20 80064B20 00000000 */   nop
/* 3FF24 80064B24 080192CB */  j          .L80064B2C
/* 3FF28 80064B28 00000000 */   nop
.L80064B2C:
/* 3FF2C 80064B2C 24020000 */  addiu      $v0, $zero, 0x0
/* 3FF30 80064B30 240301D4 */  addiu      $v1, $zero, 0x1D4
/* 3FF34 80064B34 AFC20028 */  sw         $v0, 0x28($fp)
/* 3FF38 80064B38 AFC3002C */  sw         $v1, 0x2C($fp)
.L80064B3C:
/* 3FF3C 80064B3C 0C019B40 */  jal        __osDisableInt
/* 3FF40 80064B40 00000000 */   nop
/* 3FF44 80064B44 0C018EB8 */  jal        osGetCount
/* 3FF48 80064B48 AFC20018 */   sw        $v0, 0x18($fp)
/* 3FF4C 80064B4C 00402021 */  addu       $a0, $v0, $zero
/* 3FF50 80064B50 3C01800A */  lui        $at, %hi(__osTimerCounter)
/* 3FF54 80064B54 AC249200 */  sw         $a0, %lo(__osTimerCounter)($at)
/* 3FF58 80064B58 3C03800A */  lui        $v1, %hi(__osTimerCounter)
/* 3FF5C 80064B5C 8C639200 */  lw         $v1, %lo(__osTimerCounter)($v1)
/* 3FF60 80064B60 00001021 */  addu       $v0, $zero, $zero
/* 3FF64 80064B64 8FC60028 */  lw         $a2, 0x28($fp)
/* 3FF68 80064B68 8FC7002C */  lw         $a3, 0x2C($fp)
/* 3FF6C 80064B6C 00671821 */  addu       $v1, $v1, $a3
/* 3FF70 80064B70 0067202B */  sltu       $a0, $v1, $a3
/* 3FF74 80064B74 00461021 */  addu       $v0, $v0, $a2
/* 3FF78 80064B78 00441021 */  addu       $v0, $v0, $a0
/* 3FF7C 80064B7C AFC20010 */  sw         $v0, 0x10($fp)
/* 3FF80 80064B80 AFC30014 */  sw         $v1, 0x14($fp)
/* 3FF84 80064B84 0C01ADA0 */  jal        __osSetCompare
/* 3FF88 80064B88 8FC40014 */   lw        $a0, 0x14($fp)
/* 3FF8C 80064B8C 0C019B5C */  jal        __osRestoreInt
/* 3FF90 80064B90 8FC40018 */   lw        $a0, 0x18($fp)
/* 3FF94 80064B94 03C0E821 */  addu       $sp, $fp, $zero
/* 3FF98 80064B98 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3FF9C 80064B9C 8FBE0020 */  lw         $fp, 0x20($sp)
/* 3FFA0 80064BA0 03E00008 */  jr         $ra
/* 3FFA4 80064BA4 27BD0028 */   addiu     $sp, $sp, 0x28

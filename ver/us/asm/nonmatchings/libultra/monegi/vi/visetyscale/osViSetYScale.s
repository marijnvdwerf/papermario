.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViSetYScale
/* 40990 80065590 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40994 80065594 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 40998 80065598 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4099C 8006559C 0C019B40 */  jal        __osDisableInt
/* 409A0 800655A0 46006506 */   mov.s     $f20, $f12
/* 409A4 800655A4 3C048009 */  lui        $a0, %hi(__osViNext)
/* 409A8 800655A8 8C844654 */  lw         $a0, %lo(__osViNext)($a0)
/* 409AC 800655AC E4940024 */  swc1       $f20, 0x24($a0)
/* 409B0 800655B0 00802821 */  addu       $a1, $a0, $zero
/* 409B4 800655B4 94A30000 */  lhu        $v1, 0x0($a1)
/* 409B8 800655B8 00402021 */  addu       $a0, $v0, $zero
/* 409BC 800655BC 34630004 */  ori        $v1, $v1, 0x4
/* 409C0 800655C0 0C019B5C */  jal        __osRestoreInt
/* 409C4 800655C4 A4A30000 */   sh        $v1, 0x0($a1)
/* 409C8 800655C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 409CC 800655CC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 409D0 800655D0 03E00008 */  jr         $ra
/* 409D4 800655D4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 409D8 800655D8 00000000 */  nop
/* 409DC 800655DC 00000000 */  nop

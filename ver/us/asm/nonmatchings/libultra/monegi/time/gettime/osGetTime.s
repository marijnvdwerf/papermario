.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osGetTime
/* 3F990 80064590 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3F994 80064594 AFBF0030 */  sw         $ra, 0x30($sp)
/* 3F998 80064598 AFBE002C */  sw         $fp, 0x2C($sp)
/* 3F99C 8006459C AFB30028 */  sw         $s3, 0x28($sp)
/* 3F9A0 800645A0 AFB20024 */  sw         $s2, 0x24($sp)
/* 3F9A4 800645A4 AFB00020 */  sw         $s0, 0x20($sp)
/* 3F9A8 800645A8 0C019B40 */  jal        __osDisableInt
/* 3F9AC 800645AC 03A0F021 */   addu      $fp, $sp, $zero
/* 3F9B0 800645B0 0C018EB8 */  jal        osGetCount
/* 3F9B4 800645B4 00408021 */   addu      $s0, $v0, $zero
/* 3F9B8 800645B8 AFC20010 */  sw         $v0, 0x10($fp)
/* 3F9BC 800645BC 8FC20010 */  lw         $v0, 0x10($fp)
/* 3F9C0 800645C0 3C03800A */  lui        $v1, %hi(__osBaseCounter)
/* 3F9C4 800645C4 8C63918C */  lw         $v1, %lo(__osBaseCounter)($v1)
/* 3F9C8 800645C8 00431023 */  subu       $v0, $v0, $v1
/* 3F9CC 800645CC AFC20014 */  sw         $v0, 0x14($fp)
/* 3F9D0 800645D0 3C02800A */  lui        $v0, %hi(__osCurrentTime)
/* 3F9D4 800645D4 8C4291D8 */  lw         $v0, %lo(__osCurrentTime)($v0)
/* 3F9D8 800645D8 3C03800A */  lui        $v1, %hi(__osCurrentTime+4)
/* 3F9DC 800645DC 8C6391DC */  lw         $v1, %lo(__osCurrentTime+4)($v1)
/* 3F9E0 800645E0 AFC20018 */  sw         $v0, 0x18($fp)
/* 3F9E4 800645E4 AFC3001C */  sw         $v1, 0x1C($fp)
/* 3F9E8 800645E8 0C019B5C */  jal        __osRestoreInt
/* 3F9EC 800645EC 02002021 */   addu      $a0, $s0, $zero
/* 3F9F0 800645F0 8FD30014 */  lw         $s3, 0x14($fp)
/* 3F9F4 800645F4 00009021 */  addu       $s2, $zero, $zero
/* 3F9F8 800645F8 8FC60018 */  lw         $a2, 0x18($fp)
/* 3F9FC 800645FC 8FC7001C */  lw         $a3, 0x1C($fp)
/* 3FA00 80064600 02672821 */  addu       $a1, $s3, $a3
/* 3FA04 80064604 00A7102B */  sltu       $v0, $a1, $a3
/* 3FA08 80064608 02462021 */  addu       $a0, $s2, $a2
/* 3FA0C 8006460C 00822021 */  addu       $a0, $a0, $v0
/* 3FA10 80064610 00801021 */  addu       $v0, $a0, $zero
/* 3FA14 80064614 08019187 */  j          .L8006461C
/* 3FA18 80064618 00A01821 */   addu      $v1, $a1, $zero
.L8006461C:
/* 3FA1C 8006461C 03C0E821 */  addu       $sp, $fp, $zero
/* 3FA20 80064620 8FBF0030 */  lw         $ra, 0x30($sp)
/* 3FA24 80064624 8FBE002C */  lw         $fp, 0x2C($sp)
/* 3FA28 80064628 8FB30028 */  lw         $s3, 0x28($sp)
/* 3FA2C 8006462C 8FB20024 */  lw         $s2, 0x24($sp)
/* 3FA30 80064630 8FB00020 */  lw         $s0, 0x20($sp)
/* 3FA34 80064634 03E00008 */  jr         $ra
/* 3FA38 80064638 27BD0038 */   addiu     $sp, $sp, 0x38
/* 3FA3C 8006463C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiRawStartDma
/* 3F260 80063E60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F264 80063E64 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 3F268 80063E68 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 3F26C 80063E6C AFB20018 */  sw         $s2, 0x18($sp)
/* 3F270 80063E70 00809021 */  addu       $s2, $a0, $zero
/* 3F274 80063E74 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3F278 80063E78 AFB10014 */  sw         $s1, 0x14($sp)
/* 3F27C 80063E7C AFB00010 */  sw         $s0, 0x10($sp)
/* 3F280 80063E80 8C430000 */  lw         $v1, 0x0($v0)
/* 3F284 80063E84 30630003 */  andi       $v1, $v1, 0x3
/* 3F288 80063E88 10600003 */  beqz       $v1, .L80063E98
/* 3F28C 80063E8C 00A08821 */   addu      $s1, $a1, $zero
/* 3F290 80063E90 08018FC8 */  j          .L80063F20
/* 3F294 80063E94 2402FFFF */   addiu     $v0, $zero, -0x1
.L80063E98:
/* 3F298 80063E98 24020001 */  addiu      $v0, $zero, 0x1
/* 3F29C 80063E9C 16420003 */  bne        $s2, $v0, .L80063EAC
/* 3F2A0 80063EA0 02202021 */   addu      $a0, $s1, $zero
/* 3F2A4 80063EA4 0C018180 */  jal        osWritebackDCache
/* 3F2A8 80063EA8 24050040 */   addiu     $a1, $zero, 0x40
.L80063EAC:
/* 3F2AC 80063EAC 0C01836C */  jal        osVirtualToPhysical
/* 3F2B0 80063EB0 02202021 */   addu      $a0, $s1, $zero
/* 3F2B4 80063EB4 3C03A480 */  lui        $v1, %hi(D_A4800000)
/* 3F2B8 80063EB8 AC620000 */  sw         $v0, %lo(D_A4800000)($v1)
/* 3F2BC 80063EBC 5640000E */  bnel       $s2, $zero, .L80063EF8
/* 3F2C0 80063EC0 3C03A480 */   lui       $v1, (0xA4800010 >> 16)
/* 3F2C4 80063EC4 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 3F2C8 80063EC8 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 3F2CC 80063ECC 50400008 */  beql       $v0, $zero, .L80063EF0
/* 3F2D0 80063ED0 3C03A480 */   lui       $v1, (0xA4800004 >> 16)
/* 3F2D4 80063ED4 0C019B40 */  jal        __osDisableInt
/* 3F2D8 80063ED8 00000000 */   nop
/* 3F2DC 80063EDC 0C019FF2 */  jal        skKeepAlive
/* 3F2E0 80063EE0 00408021 */   addu      $s0, $v0, $zero
/* 3F2E4 80063EE4 0C019B5C */  jal        __osRestoreInt
/* 3F2E8 80063EE8 02002021 */   addu      $a0, $s0, $zero
/* 3F2EC 80063EEC 3C03A480 */  lui        $v1, (0xA4800010 >> 16)
.L80063EF0:
/* 3F2F0 80063EF0 08018FBF */  j          .L80063EFC
/* 3F2F4 80063EF4 34630004 */   ori       $v1, $v1, (0xA4800004 & 0xFFFF)
.L80063EF8:
/* 3F2F8 80063EF8 34630010 */  ori        $v1, $v1, (0xA4800010 & 0xFFFF)
.L80063EFC:
/* 3F2FC 80063EFC 3C021FC0 */  lui        $v0, (0x1FC007C0 >> 16)
/* 3F300 80063F00 344207C0 */  ori        $v0, $v0, (0x1FC007C0 & 0xFFFF)
/* 3F304 80063F04 AC620000 */  sw         $v0, 0x0($v1)
/* 3F308 80063F08 16400005 */  bnez       $s2, .L80063F20
/* 3F30C 80063F0C 00001021 */   addu      $v0, $zero, $zero
/* 3F310 80063F10 02202021 */  addu       $a0, $s1, $zero
/* 3F314 80063F14 0C018134 */  jal        osInvalDCache
/* 3F318 80063F18 24050040 */   addiu     $a1, $zero, 0x40
/* 3F31C 80063F1C 00001021 */  addu       $v0, $zero, $zero
.L80063F20:
/* 3F320 80063F20 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3F324 80063F24 8FB20018 */  lw         $s2, 0x18($sp)
/* 3F328 80063F28 8FB10014 */  lw         $s1, 0x14($sp)
/* 3F32C 80063F2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F330 80063F30 03E00008 */  jr         $ra
/* 3F334 80063F34 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3F338 80063F38 00000000 */  nop
/* 3F33C 80063F3C 00000000 */  nop

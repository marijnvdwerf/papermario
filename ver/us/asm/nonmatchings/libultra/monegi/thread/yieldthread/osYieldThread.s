.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osYieldThread
/* 46E60 8006BA60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 46E64 8006BA64 AFBF0018 */  sw         $ra, 0x18($sp)
/* 46E68 8006BA68 AFBE0014 */  sw         $fp, 0x14($sp)
/* 46E6C 8006BA6C AFB00010 */  sw         $s0, 0x10($sp)
/* 46E70 8006BA70 0C019B40 */  jal        __osDisableInt
/* 46E74 8006BA74 03A0F021 */   addu      $fp, $sp, $zero
/* 46E78 8006BA78 00408021 */  addu       $s0, $v0, $zero
/* 46E7C 8006BA7C 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 46E80 8006BA80 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 46E84 8006BA84 24030002 */  addiu      $v1, $zero, 0x2
/* 46E88 8006BA88 A4430010 */  sh         $v1, 0x10($v0)
/* 46E8C 8006BA8C 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 46E90 8006BA90 24843278 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 46E94 8006BA94 0C019A81 */  jal        __osEnqueueAndYield
/* 46E98 8006BA98 00000000 */   nop
/* 46E9C 8006BA9C 0C019B5C */  jal        __osRestoreInt
/* 46EA0 8006BAA0 02002021 */   addu      $a0, $s0, $zero
/* 46EA4 8006BAA4 03C0E821 */  addu       $sp, $fp, $zero
/* 46EA8 8006BAA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 46EAC 8006BAAC 8FBE0014 */  lw         $fp, 0x14($sp)
/* 46EB0 8006BAB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 46EB4 8006BAB4 03E00008 */  jr         $ra
/* 46EB8 8006BAB8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 46EBC 8006BABC 00000000 */  nop

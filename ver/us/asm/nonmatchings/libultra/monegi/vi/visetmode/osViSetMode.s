.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViSetMode
/* 40790 80065390 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40794 80065394 AFB00010 */  sw         $s0, 0x10($sp)
/* 40798 80065398 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4079C 8006539C 0C019B40 */  jal        __osDisableInt
/* 407A0 800653A0 00808021 */   addu      $s0, $a0, $zero
/* 407A4 800653A4 3C038000 */  lui        $v1, %hi(__osBbIsBb)
/* 407A8 800653A8 8C630388 */  lw         $v1, %lo(__osBbIsBb)($v1)
/* 407AC 800653AC 10600005 */  beqz       $v1, .L800653C4
/* 407B0 800653B0 00403021 */   addu      $a2, $v0, $zero
/* 407B4 800653B4 8E020004 */  lw         $v0, 0x4($s0)
/* 407B8 800653B8 2403DFFF */  addiu      $v1, $zero, -0x2001
/* 407BC 800653BC 00431024 */  and        $v0, $v0, $v1
/* 407C0 800653C0 AE020004 */  sw         $v0, 0x4($s0)
.L800653C4:
/* 407C4 800653C4 3C028009 */  lui        $v0, %hi(__osViNext)
/* 407C8 800653C8 8C424654 */  lw         $v0, %lo(__osViNext)($v0)
/* 407CC 800653CC 24030001 */  addiu      $v1, $zero, 0x1
/* 407D0 800653D0 AC500008 */  sw         $s0, 0x8($v0)
/* 407D4 800653D4 00402021 */  addu       $a0, $v0, $zero
/* 407D8 800653D8 A4830000 */  sh         $v1, 0x0($a0)
/* 407DC 800653DC 00402821 */  addu       $a1, $v0, $zero
/* 407E0 800653E0 8CA20008 */  lw         $v0, 0x8($a1)
/* 407E4 800653E4 8C430004 */  lw         $v1, 0x4($v0)
/* 407E8 800653E8 00C02021 */  addu       $a0, $a2, $zero
/* 407EC 800653EC 0C019B5C */  jal        __osRestoreInt
/* 407F0 800653F0 ACA3000C */   sw        $v1, 0xC($a1)
/* 407F4 800653F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 407F8 800653F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 407FC 800653FC 03E00008 */  jr         $ra
/* 40800 80065400 27BD0018 */   addiu     $sp, $sp, 0x18
/* 40804 80065404 00000000 */  nop
/* 40808 80065408 00000000 */  nop
/* 4080C 8006540C 00000000 */  nop

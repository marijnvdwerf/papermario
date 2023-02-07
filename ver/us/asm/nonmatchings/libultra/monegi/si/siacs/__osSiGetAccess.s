.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiGetAccess
/* 3F394 80063F94 3C028009 */  lui        $v0, %hi(__osSiAccessQueueEnabled)
/* 3F398 80063F98 8C423260 */  lw         $v0, %lo(__osSiAccessQueueEnabled)($v0)
/* 3F39C 80063F9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F3A0 80063FA0 14400003 */  bnez       $v0, .L80063FB0
/* 3F3A4 80063FA4 AFBF0018 */   sw        $ra, 0x18($sp)
/* 3F3A8 80063FA8 0C018FD0 */  jal        __osSiCreateAccessQueue
/* 3F3AC 80063FAC 00000000 */   nop
.L80063FB0:
/* 3F3B0 80063FB0 3C04800E */  lui        $a0, %hi(__osSiAccessQueue)
/* 3F3B4 80063FB4 24849008 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
/* 3F3B8 80063FB8 27A50010 */  addiu      $a1, $sp, 0x10
/* 3F3BC 80063FBC 0C018DCC */  jal        osRecvMesg
/* 3F3C0 80063FC0 24060001 */   addiu     $a2, $zero, 0x1
/* 3F3C4 80063FC4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3F3C8 80063FC8 03E00008 */  jr         $ra
/* 3F3CC 80063FCC 27BD0020 */   addiu     $sp, $sp, 0x20

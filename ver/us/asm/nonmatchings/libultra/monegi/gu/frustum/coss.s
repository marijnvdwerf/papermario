.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel coss
/* 3C290 80060E90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C294 80060E94 24844000 */  addiu      $a0, $a0, 0x4000
/* 3C298 80060E98 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C29C 80060E9C 0C0189F0 */  jal        sins
/* 3C2A0 80060EA0 3084FFFF */   andi      $a0, $a0, 0xFFFF
/* 3C2A4 80060EA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C2A8 80060EA8 03E00008 */  jr         $ra
/* 3C2AC 80060EAC 27BD0018 */   addiu     $sp, $sp, 0x18

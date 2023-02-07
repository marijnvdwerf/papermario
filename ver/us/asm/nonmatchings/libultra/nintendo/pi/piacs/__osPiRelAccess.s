.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPiRelAccess
/* 42FC0 80067BC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42FC4 80067BC4 3C04800B */  lui        $a0, %hi(__osPiAccessQueue)
/* 42FC8 80067BC8 24842DCC */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* 42FCC 80067BCC 00002821 */  addu       $a1, $zero, $zero
/* 42FD0 80067BD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 42FD4 80067BD4 0C018E28 */  jal        osSendMesg
/* 42FD8 80067BD8 00003021 */   addu      $a2, $zero, $zero
/* 42FDC 80067BDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 42FE0 80067BE0 03E00008 */  jr         $ra
/* 42FE4 80067BE4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 42FE8 80067BE8 00000000 */  nop
/* 42FEC 80067BEC 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osEPiWriteIo
/* 42780 80067380 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 42784 80067384 AFB00010 */  sw         $s0, 0x10($sp)
/* 42788 80067388 00808021 */  addu       $s0, $a0, $zero
/* 4278C 8006738C AFB10014 */  sw         $s1, 0x14($sp)
/* 42790 80067390 00A08821 */  addu       $s1, $a1, $zero
/* 42794 80067394 AFB20018 */  sw         $s2, 0x18($sp)
/* 42798 80067398 AFBF001C */  sw         $ra, 0x1C($sp)
/* 4279C 8006739C 0C019EE1 */  jal        __osPiGetAccess
/* 427A0 800673A0 00C09021 */   addu      $s2, $a2, $zero
/* 427A4 800673A4 02002021 */  addu       $a0, $s0, $zero
/* 427A8 800673A8 02202821 */  addu       $a1, $s1, $zero
/* 427AC 800673AC 0C01B000 */  jal        __osEPiRawWriteIo
/* 427B0 800673B0 02403021 */   addu      $a2, $s2, $zero
/* 427B4 800673B4 0C019EF0 */  jal        __osPiRelAccess
/* 427B8 800673B8 00408021 */   addu      $s0, $v0, $zero
/* 427BC 800673BC 02001021 */  addu       $v0, $s0, $zero
/* 427C0 800673C0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 427C4 800673C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 427C8 800673C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 427CC 800673CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 427D0 800673D0 03E00008 */  jr         $ra
/* 427D4 800673D4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 427D8 800673D8 00000000 */  nop
/* 427DC 800673DC 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osEPiReadIo
/* 427E0 800673E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 427E4 800673E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 427E8 800673E8 00808021 */  addu       $s0, $a0, $zero
/* 427EC 800673EC AFB10014 */  sw         $s1, 0x14($sp)
/* 427F0 800673F0 00A08821 */  addu       $s1, $a1, $zero
/* 427F4 800673F4 AFB20018 */  sw         $s2, 0x18($sp)
/* 427F8 800673F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 427FC 800673FC 0C019EE1 */  jal        __osPiGetAccess
/* 42800 80067400 00C09021 */   addu      $s2, $a2, $zero
/* 42804 80067404 02002021 */  addu       $a0, $s0, $zero
/* 42808 80067408 02202821 */  addu       $a1, $s1, $zero
/* 4280C 8006740C 0C01AFA0 */  jal        __osEPiRawReadIo
/* 42810 80067410 02403021 */   addu      $a2, $s2, $zero
/* 42814 80067414 0C019EF0 */  jal        __osPiRelAccess
/* 42818 80067418 00408021 */   addu      $s0, $v0, $zero
/* 4281C 8006741C 02001021 */  addu       $v0, $s0, $zero
/* 42820 80067420 8FBF001C */  lw         $ra, 0x1C($sp)
/* 42824 80067424 8FB20018 */  lw         $s2, 0x18($sp)
/* 42828 80067428 8FB10014 */  lw         $s1, 0x14($sp)
/* 4282C 8006742C 8FB00010 */  lw         $s0, 0x10($sp)
/* 42830 80067430 03E00008 */  jr         $ra
/* 42834 80067434 27BD0020 */   addiu     $sp, $sp, 0x20
/* 42838 80067438 00000000 */  nop
/* 4283C 8006743C 00000000 */  nop

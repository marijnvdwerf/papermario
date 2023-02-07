.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiRelAccess
/* 3F3D0 80063FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F3D4 80063FD4 3C04800E */  lui        $a0, %hi(__osSiAccessQueue)
/* 3F3D8 80063FD8 24849008 */  addiu      $a0, $a0, %lo(__osSiAccessQueue)
/* 3F3DC 80063FDC 00002821 */  addu       $a1, $zero, $zero
/* 3F3E0 80063FE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3F3E4 80063FE4 0C018E28 */  jal        osSendMesg
/* 3F3E8 80063FE8 00003021 */   addu      $a2, $zero, $zero
/* 3F3EC 80063FEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3F3F0 80063FF0 03E00008 */  jr         $ra
/* 3F3F4 80063FF4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3F3F8 80063FF8 00000000 */  nop
/* 3F3FC 80063FFC 00000000 */  nop

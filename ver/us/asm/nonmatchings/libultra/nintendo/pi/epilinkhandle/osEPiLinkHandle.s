.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osEPiLinkHandle
/* 428E0 800674E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 428E4 800674E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 428E8 800674E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 428EC 800674EC 0C019B40 */  jal        __osDisableInt
/* 428F0 800674F0 00808021 */   addu      $s0, $a0, $zero
/* 428F4 800674F4 3C038009 */  lui        $v1, %hi(__osPiTable)
/* 428F8 800674F8 8C63453C */  lw         $v1, %lo(__osPiTable)($v1)
/* 428FC 800674FC 00402021 */  addu       $a0, $v0, $zero
/* 42900 80067500 3C018009 */  lui        $at, %hi(__osPiTable)
/* 42904 80067504 AC30453C */  sw         $s0, %lo(__osPiTable)($at)
/* 42908 80067508 0C019B5C */  jal        __osRestoreInt
/* 4290C 8006750C AE030000 */   sw        $v1, 0x0($s0)
/* 42910 80067510 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42914 80067514 8FB00010 */  lw         $s0, 0x10($sp)
/* 42918 80067518 00001021 */  addu       $v0, $zero, $zero
/* 4291C 8006751C 03E00008 */  jr         $ra
/* 42920 80067520 27BD0018 */   addiu     $sp, $sp, 0x18
/* 42924 80067524 00000000 */  nop
/* 42928 80067528 00000000 */  nop
/* 4292C 8006752C 00000000 */  nop

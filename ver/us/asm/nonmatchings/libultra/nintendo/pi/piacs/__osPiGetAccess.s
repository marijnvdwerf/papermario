.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPiGetAccess
/* 42F84 80067B84 3C028009 */  lui        $v0, %hi(__osPiAccessQueueEnabled)
/* 42F88 80067B88 8C424560 */  lw         $v0, %lo(__osPiAccessQueueEnabled)($v0)
/* 42F8C 80067B8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 42F90 80067B90 14400003 */  bnez       $v0, .L80067BA0
/* 42F94 80067B94 AFBF0018 */   sw        $ra, 0x18($sp)
/* 42F98 80067B98 0C019ECC */  jal        __osPiCreateAccessQueue
/* 42F9C 80067B9C 00000000 */   nop
.L80067BA0:
/* 42FA0 80067BA0 3C04800B */  lui        $a0, %hi(__osPiAccessQueue)
/* 42FA4 80067BA4 24842DCC */  addiu      $a0, $a0, %lo(__osPiAccessQueue)
/* 42FA8 80067BA8 27A50010 */  addiu      $a1, $sp, 0x10
/* 42FAC 80067BAC 0C018DCC */  jal        osRecvMesg
/* 42FB0 80067BB0 24060001 */   addiu     $a2, $zero, 0x1
/* 42FB4 80067BB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 42FB8 80067BB8 03E00008 */  jr         $ra
/* 42FBC 80067BBC 27BD0020 */   addiu     $sp, $sp, 0x20

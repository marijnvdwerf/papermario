.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPiCreateAccessQueue
/* 42F30 80067B30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42F34 80067B34 24020001 */  addiu      $v0, $zero, 0x1
/* 42F38 80067B38 AFB00010 */  sw         $s0, 0x10($sp)
/* 42F3C 80067B3C 3C10800B */  lui        $s0, %hi(__osPiAccessQueue)
/* 42F40 80067B40 26102DCC */  addiu      $s0, $s0, %lo(__osPiAccessQueue)
/* 42F44 80067B44 02002021 */  addu       $a0, $s0, $zero
/* 42F48 80067B48 3C05800B */  lui        $a1, %hi(piAccessBuf)
/* 42F4C 80067B4C 24A5F700 */  addiu      $a1, $a1, %lo(piAccessBuf)
/* 42F50 80067B50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 42F54 80067B54 3C018009 */  lui        $at, %hi(__osPiAccessQueueEnabled)
/* 42F58 80067B58 AC224560 */  sw         $v0, %lo(__osPiAccessQueueEnabled)($at)
/* 42F5C 80067B5C 0C018DB0 */  jal        osCreateMesgQueue
/* 42F60 80067B60 24060001 */   addiu     $a2, $zero, 0x1
/* 42F64 80067B64 02002021 */  addu       $a0, $s0, $zero
/* 42F68 80067B68 00002821 */  addu       $a1, $zero, $zero
/* 42F6C 80067B6C 0C018E28 */  jal        osSendMesg
/* 42F70 80067B70 00003021 */   addu      $a2, $zero, $zero
/* 42F74 80067B74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42F78 80067B78 8FB00010 */  lw         $s0, 0x10($sp)
/* 42F7C 80067B7C 03E00008 */  jr         $ra
/* 42F80 80067B80 27BD0018 */   addiu     $sp, $sp, 0x18

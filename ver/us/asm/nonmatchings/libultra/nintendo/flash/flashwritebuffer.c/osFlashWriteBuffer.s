.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osFlashWriteBuffer
/* 430F0 80067CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 430F4 80067CF4 3C028000 */  lui        $v0, %hi(__osBbFlashSize)
/* 430F8 80067CF8 8C420368 */  lw         $v0, %lo(__osBbFlashSize)($v0)
/* 430FC 80067CFC 00C02021 */  addu       $a0, $a2, $zero
/* 43100 80067D00 AFB00010 */  sw         $s0, 0x10($sp)
/* 43104 80067D04 00E08021 */  addu       $s0, $a3, $zero
/* 43108 80067D08 14400003 */  bnez       $v0, .L80067D18
/* 4310C 80067D0C AFBF0014 */   sw        $ra, 0x14($sp)
/* 43110 80067D10 08019F4E */  j          .L80067D38
/* 43114 80067D14 2402FFFF */   addiu     $v0, $zero, -0x1
.L80067D18:
/* 43118 80067D18 3C05800E */  lui        $a1, %hi(__osBbFlashBuffer)
/* 4311C 80067D1C 24A59020 */  addiu      $a1, $a1, %lo(__osBbFlashBuffer)
/* 43120 80067D20 0C018A04 */  jal        bcopy
/* 43124 80067D24 24060080 */   addiu     $a2, $zero, 0x80
/* 43128 80067D28 02002021 */  addu       $a0, $s0, $zero
/* 4312C 80067D2C 00002821 */  addu       $a1, $zero, $zero
/* 43130 80067D30 0C018E28 */  jal        osSendMesg
/* 43134 80067D34 00003021 */   addu      $a2, $zero, $zero
.L80067D38:
/* 43138 80067D38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4313C 80067D3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 43140 80067D40 03E00008 */  jr         $ra
/* 43144 80067D44 27BD0018 */   addiu     $sp, $sp, 0x18
/* 43148 80067D48 00000000 */  nop
/* 4314C 80067D4C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osContStartQuery
/* 3BAB0 800606B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BAB4 800606B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3BAB8 800606B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BABC 800606BC 0C018FE5 */  jal        __osSiGetAccess
/* 3BAC0 800606C0 00808021 */   addu      $s0, $a0, $zero
/* 3BAC4 800606C4 3C02800A */  lui        $v0, %hi(__osContLastCmd)
/* 3BAC8 800606C8 904291F0 */  lbu        $v0, %lo(__osContLastCmd)($v0)
/* 3BACC 800606CC 1040000B */  beqz       $v0, .L800606FC
/* 3BAD0 800606D0 00000000 */   nop
/* 3BAD4 800606D4 0C01833C */  jal        __osPackRequestData
/* 3BAD8 800606D8 00002021 */   addu      $a0, $zero, $zero
/* 3BADC 800606DC 3C05800B */  lui        $a1, %hi(__osContPifRam)
/* 3BAE0 800606E0 24A5F910 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 3BAE4 800606E4 0C018F98 */  jal        __osSiRawStartDma
/* 3BAE8 800606E8 24040001 */   addiu     $a0, $zero, 0x1
/* 3BAEC 800606EC 02002021 */  addu       $a0, $s0, $zero
/* 3BAF0 800606F0 00002821 */  addu       $a1, $zero, $zero
/* 3BAF4 800606F4 0C018DCC */  jal        osRecvMesg
/* 3BAF8 800606F8 24060001 */   addiu     $a2, $zero, 0x1
.L800606FC:
/* 3BAFC 800606FC 3C05800B */  lui        $a1, %hi(__osContPifRam)
/* 3BB00 80060700 24A5F910 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 3BB04 80060704 0C018F98 */  jal        __osSiRawStartDma
/* 3BB08 80060708 00002021 */   addu      $a0, $zero, $zero
/* 3BB0C 8006070C 240300FD */  addiu      $v1, $zero, 0xFD
/* 3BB10 80060710 3C01800A */  lui        $at, %hi(__osContLastCmd)
/* 3BB14 80060714 A02391F0 */  sb         $v1, %lo(__osContLastCmd)($at)
/* 3BB18 80060718 0C018FF4 */  jal        __osSiRelAccess
/* 3BB1C 8006071C 00408021 */   addu      $s0, $v0, $zero
/* 3BB20 80060720 02001021 */  addu       $v0, $s0, $zero
/* 3BB24 80060724 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BB28 80060728 8FB00010 */  lw         $s0, 0x10($sp)
/* 3BB2C 8006072C 03E00008 */  jr         $ra
/* 3BB30 80060730 27BD0018 */   addiu     $sp, $sp, 0x18

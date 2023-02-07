.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osContStartReadData
/* 3BB60 80060760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BB64 80060764 AFB00010 */  sw         $s0, 0x10($sp)
/* 3BB68 80060768 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BB6C 8006076C 0C018FE5 */  jal        __osSiGetAccess
/* 3BB70 80060770 00808021 */   addu      $s0, $a0, $zero
/* 3BB74 80060774 3C03800A */  lui        $v1, %hi(__osContLastCmd)
/* 3BB78 80060778 906391F0 */  lbu        $v1, %lo(__osContLastCmd)($v1)
/* 3BB7C 8006077C 24020001 */  addiu      $v0, $zero, 0x1
/* 3BB80 80060780 1062000B */  beq        $v1, $v0, .L800607B0
/* 3BB84 80060784 00000000 */   nop
/* 3BB88 80060788 0C018249 */  jal        __osPackReadData
/* 3BB8C 8006078C 00000000 */   nop
/* 3BB90 80060790 3C05800B */  lui        $a1, %hi(__osContPifRam)
/* 3BB94 80060794 24A5F910 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 3BB98 80060798 0C018F98 */  jal        __osSiRawStartDma
/* 3BB9C 8006079C 24040001 */   addiu     $a0, $zero, 0x1
/* 3BBA0 800607A0 02002021 */  addu       $a0, $s0, $zero
/* 3BBA4 800607A4 00002821 */  addu       $a1, $zero, $zero
/* 3BBA8 800607A8 0C018DCC */  jal        osRecvMesg
/* 3BBAC 800607AC 24060001 */   addiu     $a2, $zero, 0x1
.L800607B0:
/* 3BBB0 800607B0 3C05800B */  lui        $a1, %hi(__osContPifRam)
/* 3BBB4 800607B4 24A5F910 */  addiu      $a1, $a1, %lo(__osContPifRam)
/* 3BBB8 800607B8 0C018F98 */  jal        __osSiRawStartDma
/* 3BBBC 800607BC 00002021 */   addu      $a0, $zero, $zero
/* 3BBC0 800607C0 240300FD */  addiu      $v1, $zero, 0xFD
/* 3BBC4 800607C4 3C01800A */  lui        $at, %hi(__osContLastCmd)
/* 3BBC8 800607C8 A02391F0 */  sb         $v1, %lo(__osContLastCmd)($at)
/* 3BBCC 800607CC 0C018FF4 */  jal        __osSiRelAccess
/* 3BBD0 800607D0 00408021 */   addu      $s0, $v0, $zero
/* 3BBD4 800607D4 02001021 */  addu       $v0, $s0, $zero
/* 3BBD8 800607D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BBDC 800607DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 3BBE0 800607E0 03E00008 */  jr         $ra
/* 3BBE4 800607E4 27BD0018 */   addiu     $sp, $sp, 0x18

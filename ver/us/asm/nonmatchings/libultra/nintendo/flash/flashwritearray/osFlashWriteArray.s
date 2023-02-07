.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osFlashWriteArray
/* 43150 80067D50 3C038000 */  lui        $v1, %hi(__osBbFlashSize)
/* 43154 80067D54 8C630368 */  lw         $v1, %lo(__osBbFlashSize)($v1)
/* 43158 80067D58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4315C 80067D5C 1060000F */  beqz       $v1, .L80067D9C
/* 43160 80067D60 AFBF0010 */   sw        $ra, 0x10($sp)
/* 43164 80067D64 000431C0 */  sll        $a2, $a0, 7
/* 43168 80067D68 24C20080 */  addiu      $v0, $a2, 0x80
/* 4316C 80067D6C 0062102B */  sltu       $v0, $v1, $v0
/* 43170 80067D70 1440000B */  bnez       $v0, .L80067DA0
/* 43174 80067D74 2402FFFF */   addiu     $v0, $zero, -0x1
/* 43178 80067D78 3C058000 */  lui        $a1, %hi(__osBbFlashAddress)
/* 4317C 80067D7C 8CA50364 */  lw         $a1, %lo(__osBbFlashAddress)($a1)
/* 43180 80067D80 3C04800E */  lui        $a0, %hi(__osBbFlashBuffer)
/* 43184 80067D84 24849020 */  addiu      $a0, $a0, %lo(__osBbFlashBuffer)
/* 43188 80067D88 00A62821 */  addu       $a1, $a1, $a2
/* 4318C 80067D8C 0C018A04 */  jal        bcopy
/* 43190 80067D90 24060080 */   addiu     $a2, $zero, 0x80
/* 43194 80067D94 08019F68 */  j          .L80067DA0
/* 43198 80067D98 00001021 */   addu      $v0, $zero, $zero
.L80067D9C:
/* 4319C 80067D9C 2402FFFF */  addiu      $v0, $zero, -0x1
.L80067DA0:
/* 431A0 80067DA0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 431A4 80067DA4 03E00008 */  jr         $ra
/* 431A8 80067DA8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 431AC 80067DAC 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSpTaskLoad
/* 3F0BC 80063CBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F0C0 80063CC0 AFB10014 */  sw         $s1, 0x14($sp)
/* 3F0C4 80063CC4 00808821 */  addu       $s1, $a0, $zero
/* 3F0C8 80063CC8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3F0CC 80063CCC 0C018EF8 */  jal        _VirtualToPhysicalTask
/* 3F0D0 80063CD0 AFB00010 */   sw        $s0, 0x10($sp)
/* 3F0D4 80063CD4 00408021 */  addu       $s0, $v0, $zero
/* 3F0D8 80063CD8 8E030004 */  lw         $v1, 0x4($s0)
/* 3F0DC 80063CDC 30630001 */  andi       $v1, $v1, 0x1
/* 3F0E0 80063CE0 10600013 */  beqz       $v1, .L80063D30
/* 3F0E4 80063CE4 02002021 */   addu      $a0, $s0, $zero
/* 3F0E8 80063CE8 8E020038 */  lw         $v0, 0x38($s0)
/* 3F0EC 80063CEC 8E05003C */  lw         $a1, 0x3C($s0)
/* 3F0F0 80063CF0 AE020018 */  sw         $v0, 0x18($s0)
/* 3F0F4 80063CF4 AE05001C */  sw         $a1, 0x1C($s0)
/* 3F0F8 80063CF8 8E230004 */  lw         $v1, 0x4($s1)
/* 3F0FC 80063CFC 2404FFFE */  addiu      $a0, $zero, -0x2
/* 3F100 80063D00 00641824 */  and        $v1, $v1, $a0
/* 3F104 80063D04 AE230004 */  sw         $v1, 0x4($s1)
/* 3F108 80063D08 8E020004 */  lw         $v0, 0x4($s0)
/* 3F10C 80063D0C 30420004 */  andi       $v0, $v0, 0x4
/* 3F110 80063D10 10400006 */  beqz       $v0, .L80063D2C
/* 3F114 80063D14 3C03A000 */   lui       $v1, %hi(D_A0000000)
/* 3F118 80063D18 8E220038 */  lw         $v0, 0x38($s1)
/* 3F11C 80063D1C 24420BFC */  addiu      $v0, $v0, 0xBFC
/* 3F120 80063D20 00431025 */  or         $v0, $v0, $v1
/* 3F124 80063D24 8C440000 */  lw         $a0, %lo(D_A0000000)($v0)
/* 3F128 80063D28 AE040010 */  sw         $a0, 0x10($s0)
.L80063D2C:
/* 3F12C 80063D2C 02002021 */  addu       $a0, $s0, $zero
.L80063D30:
/* 3F130 80063D30 0C018180 */  jal        osWritebackDCache
/* 3F134 80063D34 24050040 */   addiu     $a1, $zero, 0x40
/* 3F138 80063D38 0C01ADDC */  jal        __osSpSetStatus
/* 3F13C 80063D3C 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 3F140 80063D40 2411FFFF */  addiu      $s1, $zero, -0x1
/* 3F144 80063D44 3C040400 */  lui        $a0, (0x4001000 >> 16)
.L80063D48:
/* 3F148 80063D48 0C01ADE0 */  jal        __osSpSetPc
/* 3F14C 80063D4C 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 3F150 80063D50 1051FFFD */  beq        $v0, $s1, .L80063D48
/* 3F154 80063D54 3C040400 */   lui       $a0, (0x4001000 >> 16)
/* 3F158 80063D58 2411FFFF */  addiu      $s1, $zero, -0x1
/* 3F15C 80063D5C 24040001 */  addiu      $a0, $zero, 0x1
.L80063D60:
/* 3F160 80063D60 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 3F164 80063D64 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 3F168 80063D68 02003021 */  addu       $a2, $s0, $zero
/* 3F16C 80063D6C 0C01ADEC */  jal        __osSpRawStartDma
/* 3F170 80063D70 24070040 */   addiu     $a3, $zero, 0x40
/* 3F174 80063D74 1051FFFA */  beq        $v0, $s1, .L80063D60
/* 3F178 80063D78 24040001 */   addiu     $a0, $zero, 0x1
.L80063D7C:
/* 3F17C 80063D7C 0C01ADCC */  jal        __osSpDeviceBusy
/* 3F180 80063D80 00000000 */   nop
/* 3F184 80063D84 1440FFFD */  bnez       $v0, .L80063D7C
/* 3F188 80063D88 24040001 */   addiu     $a0, $zero, 0x1
/* 3F18C 80063D8C 2411FFFF */  addiu      $s1, $zero, -0x1
.L80063D90:
/* 3F190 80063D90 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 3F194 80063D94 8E060008 */  lw         $a2, 0x8($s0)
/* 3F198 80063D98 8E07000C */  lw         $a3, 0xC($s0)
/* 3F19C 80063D9C 0C01ADEC */  jal        __osSpRawStartDma
/* 3F1A0 80063DA0 34A51000 */   ori       $a1, $a1, (0x4001000 & 0xFFFF)
/* 3F1A4 80063DA4 1051FFFA */  beq        $v0, $s1, .L80063D90
/* 3F1A8 80063DA8 24040001 */   addiu     $a0, $zero, 0x1
/* 3F1AC 80063DAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3F1B0 80063DB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 3F1B4 80063DB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F1B8 80063DB8 03E00008 */  jr         $ra
/* 3F1BC 80063DBC 27BD0020 */   addiu     $sp, $sp, 0x20

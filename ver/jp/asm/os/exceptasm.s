.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

# Handwritten function
glabel __osExceptionPreamble
/* 45DD0 8006A9D0 3C1A8007 */  lui       $k0, %hi(osExceptionPreamble) # handwritten instruction
/* 45DD4 8006A9D4 275AA9E0 */  addiu     $k0, $k0, %lo(osExceptionPreamble) # handwritten instruction
/* 45DD8 8006A9D8 03400008 */  jr        $k0
/* 45DDC 8006A9DC 00000000 */   nop

# Handwritten function
glabel osExceptionPreamble
/* 45DE0 8006A9E0 3C1A800B */  lui       $k0, %hi(__osThreadSave) # handwritten instruction
/* 45DE4 8006A9E4 275A0CE8 */  addiu     $k0, $k0, %lo(__osThreadSave) # handwritten instruction
/* 45DE8 8006A9E8 FF410020 */  sd        $at, 0x20($k0) # handwritten instruction
/* 45DEC 8006A9EC 401B6000 */  mfc0      $k1, $12 # handwritten instruction
/* 45DF0 8006A9F0 AF5B0118 */  sw        $k1, 0x118($k0) # handwritten instruction
/* 45DF4 8006A9F4 2401FFFC */  addiu     $at, $zero, -0x4
/* 45DF8 8006A9F8 0361D824 */  and       $k1, $k1, $at
/* 45DFC 8006A9FC 409B6000 */  mtc0      $k1, $12 # handwritten instruction
/* 45E00 8006AA00 FF480058 */  sd        $t0, 0x58($k0) # handwritten instruction
/* 45E04 8006AA04 FF490060 */  sd        $t1, 0x60($k0) # handwritten instruction
/* 45E08 8006AA08 FF4A0068 */  sd        $t2, 0x68($k0) # handwritten instruction
/* 45E0C 8006AA0C AF400018 */  sw        $zero, 0x18($k0) # handwritten instruction
/* 45E10 8006AA10 40086800 */  mfc0      $t0, $13 # handwritten instruction
/* 45E14 8006AA14 03404021 */  addu      $t0, $k0, $zero
/* 45E18 8006AA18 3C1A8009 */  lui       $k0, %hi(__osRunningThread) # handwritten instruction
/* 45E1C 8006AA1C 8F5A4640 */  lw        $k0, %lo(__osRunningThread)($k0) # handwritten instruction
/* 45E20 8006AA20 DD090020 */  ld        $t1, 0x20($t0)
/* 45E24 8006AA24 FF490020 */  sd        $t1, 0x20($k0) # handwritten instruction
/* 45E28 8006AA28 DD090118 */  ld        $t1, 0x118($t0)
/* 45E2C 8006AA2C FF490118 */  sd        $t1, 0x118($k0) # handwritten instruction
/* 45E30 8006AA30 DD090058 */  ld        $t1, 0x58($t0)
/* 45E34 8006AA34 FF490058 */  sd        $t1, 0x58($k0) # handwritten instruction
/* 45E38 8006AA38 DD090060 */  ld        $t1, 0x60($t0)
/* 45E3C 8006AA3C FF490060 */  sd        $t1, 0x60($k0) # handwritten instruction
/* 45E40 8006AA40 DD090068 */  ld        $t1, 0x68($t0)
/* 45E44 8006AA44 FF490068 */  sd        $t1, 0x68($k0) # handwritten instruction
/* 45E48 8006AA48 FF420028 */  sd        $v0, 0x28($k0) # handwritten instruction
/* 45E4C 8006AA4C FF430030 */  sd        $v1, 0x30($k0) # handwritten instruction
/* 45E50 8006AA50 FF440038 */  sd        $a0, 0x38($k0) # handwritten instruction
/* 45E54 8006AA54 FF450040 */  sd        $a1, 0x40($k0) # handwritten instruction
/* 45E58 8006AA58 FF460048 */  sd        $a2, 0x48($k0) # handwritten instruction
/* 45E5C 8006AA5C FF470050 */  sd        $a3, 0x50($k0) # handwritten instruction
/* 45E60 8006AA60 FF4B0070 */  sd        $t3, 0x70($k0) # handwritten instruction
/* 45E64 8006AA64 FF4C0078 */  sd        $t4, 0x78($k0) # handwritten instruction
/* 45E68 8006AA68 FF4D0080 */  sd        $t5, 0x80($k0) # handwritten instruction
/* 45E6C 8006AA6C FF4E0088 */  sd        $t6, 0x88($k0) # handwritten instruction
/* 45E70 8006AA70 FF4F0090 */  sd        $t7, 0x90($k0) # handwritten instruction
/* 45E74 8006AA74 FF500098 */  sd        $s0, 0x98($k0) # handwritten instruction
/* 45E78 8006AA78 FF5100A0 */  sd        $s1, 0xA0($k0) # handwritten instruction
/* 45E7C 8006AA7C FF5200A8 */  sd        $s2, 0xA8($k0) # handwritten instruction
/* 45E80 8006AA80 FF5300B0 */  sd        $s3, 0xB0($k0) # handwritten instruction
/* 45E84 8006AA84 FF5400B8 */  sd        $s4, 0xB8($k0) # handwritten instruction
/* 45E88 8006AA88 FF5500C0 */  sd        $s5, 0xC0($k0) # handwritten instruction
/* 45E8C 8006AA8C FF5600C8 */  sd        $s6, 0xC8($k0) # handwritten instruction
/* 45E90 8006AA90 FF5700D0 */  sd        $s7, 0xD0($k0) # handwritten instruction
/* 45E94 8006AA94 FF5800D8 */  sd        $t8, 0xD8($k0) # handwritten instruction
/* 45E98 8006AA98 FF5900E0 */  sd        $t9, 0xE0($k0) # handwritten instruction
/* 45E9C 8006AA9C FF5C00E8 */  sd        $gp, 0xE8($k0) # handwritten instruction
/* 45EA0 8006AAA0 FF5D00F0 */  sd        $sp, 0xF0($k0) # handwritten instruction
/* 45EA4 8006AAA4 FF5E00F8 */  sd        $fp, 0xF8($k0) # handwritten instruction
/* 45EA8 8006AAA8 FF5F0100 */  sd        $ra, 0x100($k0) # handwritten instruction
/* 45EAC 8006AAAC 00004012 */  mflo      $t0
/* 45EB0 8006AAB0 FF480108 */  sd        $t0, 0x108($k0) # handwritten instruction
/* 45EB4 8006AAB4 00004010 */  mfhi      $t0
/* 45EB8 8006AAB8 FF480110 */  sd        $t0, 0x110($k0) # handwritten instruction
/* 45EBC 8006AABC 8F5B0118 */  lw        $k1, 0x118($k0) # handwritten instruction
/* 45EC0 8006AAC0 3369FF00 */  andi      $t1, $k1, 0xFF00 # handwritten instruction
/* 45EC4 8006AAC4 11200013 */  beqz      $t1, .LJP_8006AB14
/* 45EC8 8006AAC8 00000000 */   nop
/* 45ECC 8006AACC 3C088009 */  lui       $t0, %hi(__OSGlobalIntMask)
/* 45ED0 8006AAD0 25085890 */  addiu     $t0, $t0, %lo(__OSGlobalIntMask)
/* 45ED4 8006AAD4 8D080000 */  lw        $t0, 0x0($t0)
/* 45ED8 8006AAD8 2401FFFF */  addiu     $at, $zero, -0x1
/* 45EDC 8006AADC 01015026 */  xor       $t2, $t0, $at
/* 45EE0 8006AAE0 314AFF00 */  andi      $t2, $t2, 0xFF00
/* 45EE4 8006AAE4 012A6025 */  or        $t4, $t1, $t2
/* 45EE8 8006AAE8 3C01FFFF */  lui       $at, (0xFFFF00FF >> 16)
/* 45EEC 8006AAEC 342100FF */  ori       $at, $at, (0xFFFF00FF & 0xFFFF)
/* 45EF0 8006AAF0 03615824 */  and       $t3, $k1, $at
/* 45EF4 8006AAF4 016C5825 */  or        $t3, $t3, $t4
/* 45EF8 8006AAF8 AF4B0118 */  sw        $t3, 0x118($k0) # handwritten instruction
/* 45EFC 8006AAFC 3108FF00 */  andi      $t0, $t0, 0xFF00
/* 45F00 8006AB00 01284824 */  and       $t1, $t1, $t0
/* 45F04 8006AB04 3C01FFFF */  lui       $at, (0xFFFF00FF >> 16)
/* 45F08 8006AB08 342100FF */  ori       $at, $at, (0xFFFF00FF & 0xFFFF)
/* 45F0C 8006AB0C 0361D824 */  and       $k1, $k1, $at
/* 45F10 8006AB10 0369D825 */  or        $k1, $k1, $t1
.LJP_8006AB14:
/* 45F14 8006AB14 3C09A430 */  lui       $t1, %hi(D_A430000C)
/* 45F18 8006AB18 8D29000C */  lw        $t1, %lo(D_A430000C)($t1)
/* 45F1C 8006AB1C 1120000B */  beqz      $t1, .LJP_8006AB4C
/* 45F20 8006AB20 00000000 */   nop
/* 45F24 8006AB24 3C088009 */  lui       $t0, %hi(__OSGlobalIntMask)
/* 45F28 8006AB28 25085890 */  addiu     $t0, $t0, %lo(__OSGlobalIntMask)
/* 45F2C 8006AB2C 8D080000 */  lw        $t0, 0x0($t0)
/* 45F30 8006AB30 00084402 */  srl       $t0, $t0, 16
/* 45F34 8006AB34 2401FFFF */  addiu     $at, $zero, -0x1
/* 45F38 8006AB38 01014026 */  xor       $t0, $t0, $at
/* 45F3C 8006AB3C 3108003F */  andi      $t0, $t0, 0x3F
/* 45F40 8006AB40 8F4C0128 */  lw        $t4, 0x128($k0) # handwritten instruction
/* 45F44 8006AB44 010C4024 */  and       $t0, $t0, $t4
/* 45F48 8006AB48 01284825 */  or        $t1, $t1, $t0
.LJP_8006AB4C:
/* 45F4C 8006AB4C AF490128 */  sw        $t1, 0x128($k0) # handwritten instruction
/* 45F50 8006AB50 40087000 */  mfc0      $t0, $14 # handwritten instruction
/* 45F54 8006AB54 AF48011C */  sw        $t0, 0x11C($k0) # handwritten instruction
/* 45F58 8006AB58 8F480018 */  lw        $t0, 0x18($k0) # handwritten instruction
/* 45F5C 8006AB5C 11000014 */  beqz      $t0, .LJP_8006ABB0
/* 45F60 8006AB60 00000000 */   nop
/* 45F64 8006AB64 4448F800 */  cfc1      $t0, $31
/* 45F68 8006AB68 00000000 */  nop
/* 45F6C 8006AB6C AF48012C */  sw        $t0, 0x12C($k0) # handwritten instruction
/* 45F70 8006AB70 F7400130 */  sdc1      $f0, 0x130($k0)
/* 45F74 8006AB74 F7420138 */  sdc1      $f2, 0x138($k0)
/* 45F78 8006AB78 F7440140 */  sdc1      $f4, 0x140($k0)
/* 45F7C 8006AB7C F7460148 */  sdc1      $f6, 0x148($k0)
/* 45F80 8006AB80 F7480150 */  sdc1      $f8, 0x150($k0)
/* 45F84 8006AB84 F74A0158 */  sdc1      $f10, 0x158($k0)
/* 45F88 8006AB88 F74C0160 */  sdc1      $f12, 0x160($k0)
/* 45F8C 8006AB8C F74E0168 */  sdc1      $f14, 0x168($k0)
/* 45F90 8006AB90 F7500170 */  sdc1      $f16, 0x170($k0)
/* 45F94 8006AB94 F7520178 */  sdc1      $f18, 0x178($k0)
/* 45F98 8006AB98 F7540180 */  sdc1      $f20, 0x180($k0)
/* 45F9C 8006AB9C F7560188 */  sdc1      $f22, 0x188($k0)
/* 45FA0 8006ABA0 F7580190 */  sdc1      $f24, 0x190($k0)
/* 45FA4 8006ABA4 F75A0198 */  sdc1      $f26, 0x198($k0)
/* 45FA8 8006ABA8 F75C01A0 */  sdc1      $f28, 0x1A0($k0)
/* 45FAC 8006ABAC F75E01A8 */  sdc1      $f30, 0x1A8($k0)
.LJP_8006ABB0:
/* 45FB0 8006ABB0 40086800 */  mfc0      $t0, $13 # handwritten instruction
/* 45FB4 8006ABB4 AF480120 */  sw        $t0, 0x120($k0) # handwritten instruction
/* 45FB8 8006ABB8 24090002 */  addiu     $t1, $zero, 0x2
/* 45FBC 8006ABBC A7490010 */  sh        $t1, 0x10($k0) # handwritten instruction
/* 45FC0 8006ABC0 3109007C */  andi      $t1, $t0, 0x7C
/* 45FC4 8006ABC4 240A0024 */  addiu     $t2, $zero, 0x24
/* 45FC8 8006ABC8 112A00BF */  beq       $t1, $t2, .LJP_8006AEC8
/* 45FCC 8006ABCC 00000000 */   nop
/* 45FD0 8006ABD0 240A002C */  addiu     $t2, $zero, 0x2C
/* 45FD4 8006ABD4 112A0110 */  beq       $t1, $t2, .LJP_8006B018
/* 45FD8 8006ABD8 00000000 */   nop
/* 45FDC 8006ABDC 240A0000 */  addiu     $t2, $zero, 0x0
/* 45FE0 8006ABE0 152A00D2 */  bne       $t1, $t2, .LJP_8006AF2C
/* 45FE4 8006ABE4 00000000 */   nop
/* 45FE8 8006ABE8 03688024 */  and       $s0, $k1, $t0
.LJP_8006ABEC:
/* 45FEC 8006ABEC 3209FF00 */  andi      $t1, $s0, 0xFF00
/* 45FF0 8006ABF0 00095302 */  srl       $t2, $t1, 12
/* 45FF4 8006ABF4 15400003 */  bnez      $t2, .LJP_8006AC04
/* 45FF8 8006ABF8 00000000 */   nop
/* 45FFC 8006ABFC 00095202 */  srl       $t2, $t1, 8
/* 46000 8006AC00 214A0010 */  addi      $t2, $t2, 0x10 # handwritten instruction
.LJP_8006AC04:
/* 46004 8006AC04 3C01800A */  lui       $at, %hi(D_JP_80099D60)
/* 46008 8006AC08 002A0821 */  addu      $at, $at, $t2
/* 4600C 8006AC0C 902A9D60 */  lbu       $t2, %lo(D_JP_80099D60)($at)
/* 46010 8006AC10 3C01800A */  lui       $at, %hi(jtbl_JP_80099D80)
/* 46014 8006AC14 002A0821 */  addu      $at, $at, $t2
/* 46018 8006AC18 8C2A9D80 */  lw        $t2, %lo(jtbl_JP_80099D80)($at)
/* 4601C 8006AC1C 01400008 */  jr        $t2
/* 46020 8006AC20 00000000 */   nop
glabel .LJP_8006AC24
/* 46024 8006AC24 2401DFFF */  addiu     $at, $zero, -0x2001
/* 46028 8006AC28 1000FFF0 */  b         .LJP_8006ABEC
/* 4602C 8006AC2C 02018024 */   and      $s0, $s0, $at
glabel .LJP_8006AC30
/* 46030 8006AC30 2401BFFF */  addiu     $at, $zero, -0x4001
/* 46034 8006AC34 1000FFED */  b         .LJP_8006ABEC
/* 46038 8006AC38 02018024 */   and      $s0, $s0, $at
glabel .LJP_8006AC3C
/* 4603C 8006AC3C 40095800 */  mfc0      $t1, $11 # handwritten instruction
/* 46040 8006AC40 40895800 */  mtc0      $t1, $11 # handwritten instruction
/* 46044 8006AC44 24040018 */  addiu     $a0, $zero, 0x18
/* 46048 8006AC48 0C01ABD7 */  jal       send_mesg
/* 4604C 8006AC4C 00000000 */   nop
/* 46050 8006AC50 3C01FFFF */  lui       $at, (0xFFFF7FFF >> 16)
/* 46054 8006AC54 34217FFF */  ori       $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 46058 8006AC58 1000FFE4 */  b         .LJP_8006ABEC
/* 4605C 8006AC5C 02018024 */   and      $s0, $s0, $at
glabel .LJP_8006AC60
/* 46060 8006AC60 2401F7FF */  addiu     $at, $zero, -0x801
/* 46064 8006AC64 02018024 */  and       $s0, $s0, $at
/* 46068 8006AC68 3C098009 */  lui       $t1, %hi(__osHwIntTable)
/* 4606C 8006AC6C 252958A0 */  addiu     $t1, $t1, %lo(__osHwIntTable)
/* 46070 8006AC70 21290008 */  addi      $t1, $t1, 0x8 # handwritten instruction
/* 46074 8006AC74 8D2A0000 */  lw        $t2, 0x0($t1)
/* 46078 8006AC78 11400007 */  beqz      $t2, .LJP_8006AC98
/* 4607C 8006AC7C 00000000 */   nop
/* 46080 8006AC80 0140F809 */  jalr      $t2
/* 46084 8006AC84 8D3D0004 */   lw       $sp, 0x4($t1)
/* 46088 8006AC88 10400003 */  beqz      $v0, .LJP_8006AC98
/* 4608C 8006AC8C 00000000 */   nop
/* 46090 8006AC90 10000093 */  b         .LJP_8006AEE0
/* 46094 8006AC94 00000000 */   nop
.LJP_8006AC98:
/* 46098 8006AC98 0C01ABD7 */  jal       send_mesg
/* 4609C 8006AC9C 24040010 */   addiu    $a0, $zero, 0x10
/* 460A0 8006ACA0 1000FFD2 */  b         .LJP_8006ABEC
/* 460A4 8006ACA4 00000000 */   nop
glabel .LJP_8006ACA8
/* 460A8 8006ACA8 3C11A430 */  lui       $s1, %hi(D_A4300008)
/* 460AC 8006ACAC 8E310008 */  lw        $s1, %lo(D_A4300008)($s1)
/* 460B0 8006ACB0 3C088009 */  lui       $t0, %hi(__OSGlobalIntMask)
/* 460B4 8006ACB4 25085890 */  addiu     $t0, $t0, %lo(__OSGlobalIntMask)
/* 460B8 8006ACB8 8D080000 */  lw        $t0, 0x0($t0)
/* 460BC 8006ACBC 00084402 */  srl       $t0, $t0, 16
/* 460C0 8006ACC0 02288824 */  and       $s1, $s1, $t0
/* 460C4 8006ACC4 32290001 */  andi      $t1, $s1, 0x1
/* 460C8 8006ACC8 11200014 */  beqz      $t1, .LJP_8006AD1C
/* 460CC 8006ACCC 00000000 */   nop
/* 460D0 8006ACD0 3231003E */  andi      $s1, $s1, 0x3E
/* 460D4 8006ACD4 3C0CA404 */  lui       $t4, %hi(D_A4040010)
/* 460D8 8006ACD8 8D8C0010 */  lw        $t4, %lo(D_A4040010)($t4)
/* 460DC 8006ACDC 34098008 */  ori       $t1, $zero, 0x8008
/* 460E0 8006ACE0 3C01A404 */  lui       $at, %hi(D_A4040010)
/* 460E4 8006ACE4 AC290010 */  sw        $t1, %lo(D_A4040010)($at)
/* 460E8 8006ACE8 318C0300 */  andi      $t4, $t4, 0x300
/* 460EC 8006ACEC 11800007 */  beqz      $t4, .LJP_8006AD0C
/* 460F0 8006ACF0 00000000 */   nop
/* 460F4 8006ACF4 0C01ABD7 */  jal       send_mesg
/* 460F8 8006ACF8 24040020 */   addiu    $a0, $zero, 0x20
/* 460FC 8006ACFC 12200044 */  beqz      $s1, .LJP_8006AE10
/* 46100 8006AD00 00000000 */   nop
/* 46104 8006AD04 10000005 */  b         .LJP_8006AD1C
/* 46108 8006AD08 00000000 */   nop
.LJP_8006AD0C:
/* 4610C 8006AD0C 0C01ABD7 */  jal       send_mesg
/* 46110 8006AD10 24040058 */   addiu    $a0, $zero, 0x58
/* 46114 8006AD14 1220003E */  beqz      $s1, .LJP_8006AE10
/* 46118 8006AD18 00000000 */   nop
.LJP_8006AD1C:
/* 4611C 8006AD1C 32290008 */  andi      $t1, $s1, 0x8
/* 46120 8006AD20 11200008 */  beqz      $t1, .LJP_8006AD44
/* 46124 8006AD24 00000000 */   nop
/* 46128 8006AD28 32310037 */  andi      $s1, $s1, 0x37
/* 4612C 8006AD2C 3C01A440 */  lui       $at, %hi(D_A4400010)
/* 46130 8006AD30 AC200010 */  sw        $zero, %lo(D_A4400010)($at)
/* 46134 8006AD34 0C01ABD7 */  jal       send_mesg
/* 46138 8006AD38 24040038 */   addiu    $a0, $zero, 0x38
/* 4613C 8006AD3C 12200034 */  beqz      $s1, .LJP_8006AE10
/* 46140 8006AD40 00000000 */   nop
.LJP_8006AD44:
/* 46144 8006AD44 32290004 */  andi      $t1, $s1, 0x4
/* 46148 8006AD48 11200009 */  beqz      $t1, .LJP_8006AD70
/* 4614C 8006AD4C 00000000 */   nop
/* 46150 8006AD50 3231003B */  andi      $s1, $s1, 0x3B
/* 46154 8006AD54 24090001 */  addiu     $t1, $zero, 0x1
/* 46158 8006AD58 3C01A450 */  lui       $at, %hi(D_A450000C)
/* 4615C 8006AD5C AC29000C */  sw        $t1, %lo(D_A450000C)($at)
/* 46160 8006AD60 0C01ABD7 */  jal       send_mesg
/* 46164 8006AD64 24040030 */   addiu    $a0, $zero, 0x30
/* 46168 8006AD68 12200029 */  beqz      $s1, .LJP_8006AE10
/* 4616C 8006AD6C 00000000 */   nop
.LJP_8006AD70:
/* 46170 8006AD70 32290002 */  andi      $t1, $s1, 0x2
/* 46174 8006AD74 11200008 */  beqz      $t1, .LJP_8006AD98
/* 46178 8006AD78 00000000 */   nop
/* 4617C 8006AD7C 3231003D */  andi      $s1, $s1, 0x3D
/* 46180 8006AD80 3C01A480 */  lui       $at, %hi(D_A4800018)
/* 46184 8006AD84 AC200018 */  sw        $zero, %lo(D_A4800018)($at)
/* 46188 8006AD88 0C01ABD7 */  jal       send_mesg
/* 4618C 8006AD8C 24040028 */   addiu    $a0, $zero, 0x28
/* 46190 8006AD90 1220001F */  beqz      $s1, .LJP_8006AE10
/* 46194 8006AD94 00000000 */   nop
.LJP_8006AD98:
/* 46198 8006AD98 32290010 */  andi      $t1, $s1, 0x10
/* 4619C 8006AD9C 11200013 */  beqz      $t1, .LJP_8006ADEC
/* 461A0 8006ADA0 00000000 */   nop
/* 461A4 8006ADA4 3231002F */  andi      $s1, $s1, 0x2F
/* 461A8 8006ADA8 24090002 */  addiu     $t1, $zero, 0x2
/* 461AC 8006ADAC 3C01A460 */  lui       $at, %hi(D_A4600010)
/* 461B0 8006ADB0 AC290010 */  sw        $t1, %lo(D_A4600010)($at)
/* 461B4 8006ADB4 3C098009 */  lui       $t1, %hi(D_80095938)
/* 461B8 8006ADB8 252958C8 */  addiu     $t1, $t1, %lo(D_80095938)
/* 461BC 8006ADBC 8D2A0000 */  lw        $t2, 0x0($t1)
/* 461C0 8006ADC0 11400006 */  beqz      $t2, .LJP_8006ADDC
/* 461C4 8006ADC4 00000000 */   nop
/* 461C8 8006ADC8 8D3D0004 */  lw        $sp, 0x4($t1)
/* 461CC 8006ADCC 0140F809 */  jalr      $t2
/* 461D0 8006ADD0 00402021 */   addu     $a0, $v0, $zero
/* 461D4 8006ADD4 14400003 */  bnez      $v0, .LJP_8006ADE4
/* 461D8 8006ADD8 00000000 */   nop
.LJP_8006ADDC:
/* 461DC 8006ADDC 0C01ABD7 */  jal       send_mesg
/* 461E0 8006ADE0 24040040 */   addiu    $a0, $zero, 0x40
.LJP_8006ADE4:
/* 461E4 8006ADE4 1220000A */  beqz      $s1, .LJP_8006AE10
/* 461E8 8006ADE8 00000000 */   nop
.LJP_8006ADEC:
/* 461EC 8006ADEC 32290020 */  andi      $t1, $s1, 0x20
/* 461F0 8006ADF0 11200007 */  beqz      $t1, .LJP_8006AE10
/* 461F4 8006ADF4 00000000 */   nop
/* 461F8 8006ADF8 3231001F */  andi      $s1, $s1, 0x1F
/* 461FC 8006ADFC 24090800 */  addiu     $t1, $zero, 0x800
/* 46200 8006AE00 3C01A430 */  lui       $at, %hi(D_A4300000)
/* 46204 8006AE04 AC290000 */  sw        $t1, %lo(D_A4300000)($at)
/* 46208 8006AE08 0C01ABD7 */  jal       send_mesg
/* 4620C 8006AE0C 24040048 */   addiu    $a0, $zero, 0x48
.LJP_8006AE10:
/* 46210 8006AE10 2401FBFF */  addiu     $at, $zero, -0x401
/* 46214 8006AE14 1000FF75 */  b         .LJP_8006ABEC
/* 46218 8006AE18 02018024 */   and      $s0, $s0, $at
glabel .LJP_8006AE1C
/* 4621C 8006AE1C 8F5B0118 */  lw        $k1, 0x118($k0) # handwritten instruction
/* 46220 8006AE20 2401EFFF */  addiu     $at, $zero, -0x1001
/* 46224 8006AE24 0361D824 */  and       $k1, $k1, $at
/* 46228 8006AE28 AF5B0118 */  sw        $k1, 0x118($k0) # handwritten instruction
/* 4622C 8006AE2C 3C098009 */  lui       $t1, %hi(__osShutdown)
/* 46230 8006AE30 2529588C */  addiu     $t1, $t1, %lo(__osShutdown)
/* 46234 8006AE34 8D2A0000 */  lw        $t2, 0x0($t1)
/* 46238 8006AE38 11400004 */  beqz      $t2, .LJP_8006AE4C
/* 4623C 8006AE3C 00000000 */   nop
/* 46240 8006AE40 2401EFFF */  addiu     $at, $zero, -0x1001
/* 46244 8006AE44 10000026 */  b         .LJP_8006AEE0
/* 46248 8006AE48 02018024 */   and      $s0, $s0, $at
.LJP_8006AE4C:
/* 4624C 8006AE4C 240A0001 */  addiu     $t2, $zero, 0x1
/* 46250 8006AE50 AD2A0000 */  sw        $t2, 0x0($t1)
/* 46254 8006AE54 0C01ABD7 */  jal       send_mesg
/* 46258 8006AE58 24040070 */   addiu    $a0, $zero, 0x70
/* 4625C 8006AE5C 2401EFFF */  addiu     $at, $zero, -0x1001
/* 46260 8006AE60 02018024 */  and       $s0, $s0, $at
/* 46264 8006AE64 3C0A8009 */  lui       $t2, %hi(__osRunQueue)
/* 46268 8006AE68 8D4A4638 */  lw        $t2, %lo(__osRunQueue)($t2)
/* 4626C 8006AE6C 8D5B0118 */  lw        $k1, 0x118($t2) # handwritten instruction
/* 46270 8006AE70 2401EFFF */  addiu     $at, $zero, -0x1001
/* 46274 8006AE74 0361D824 */  and       $k1, $k1, $at
/* 46278 8006AE78 10000019 */  b         .LJP_8006AEE0
/* 4627C 8006AE7C AD5B0118 */   sw       $k1, 0x118($t2) # handwritten instruction
glabel .LJP_8006AE80
/* 46280 8006AE80 2401FDFF */  addiu     $at, $zero, -0x201
/* 46284 8006AE84 01014024 */  and       $t0, $t0, $at
/* 46288 8006AE88 40886800 */  mtc0      $t0, $13 # handwritten instruction
/* 4628C 8006AE8C 24040008 */  addiu     $a0, $zero, 0x8
/* 46290 8006AE90 0C01ABD7 */  jal       send_mesg
/* 46294 8006AE94 00000000 */   nop
/* 46298 8006AE98 2401FDFF */  addiu     $at, $zero, -0x201
/* 4629C 8006AE9C 1000FF53 */  b         .LJP_8006ABEC
/* 462A0 8006AEA0 02018024 */   and      $s0, $s0, $at
glabel .LJP_8006AEA4
/* 462A4 8006AEA4 2401FEFF */  addiu     $at, $zero, -0x101
/* 462A8 8006AEA8 01014024 */  and       $t0, $t0, $at
/* 462AC 8006AEAC 40886800 */  mtc0      $t0, $13 # handwritten instruction
/* 462B0 8006AEB0 24040000 */  addiu     $a0, $zero, 0x0
/* 462B4 8006AEB4 0C01ABD7 */  jal       send_mesg
/* 462B8 8006AEB8 00000000 */   nop
/* 462BC 8006AEBC 2401FEFF */  addiu     $at, $zero, -0x101
/* 462C0 8006AEC0 1000FF4A */  b         .LJP_8006ABEC
/* 462C4 8006AEC4 02018024 */   and      $s0, $s0, $at
.LJP_8006AEC8:
/* 462C8 8006AEC8 24090001 */  addiu     $t1, $zero, 0x1
/* 462CC 8006AECC A7490012 */  sh        $t1, 0x12($k0) # handwritten instruction
/* 462D0 8006AED0 0C01ABD7 */  jal       send_mesg
/* 462D4 8006AED4 24040050 */   addiu    $a0, $zero, 0x50
/* 462D8 8006AED8 10000001 */  b         .LJP_8006AEE0
/* 462DC 8006AEDC 00000000 */   nop
glabel .LJP_8006AEE0
/* 462E0 8006AEE0 8F490004 */  lw        $t1, 0x4($k0) # handwritten instruction
/* 462E4 8006AEE4 3C0A8009 */  lui       $t2, %hi(__osRunQueue)
/* 462E8 8006AEE8 8D4A4638 */  lw        $t2, %lo(__osRunQueue)($t2)
/* 462EC 8006AEEC 8D4B0004 */  lw        $t3, 0x4($t2)
/* 462F0 8006AEF0 012B082A */  slt       $at, $t1, $t3
/* 462F4 8006AEF4 10200007 */  beqz      $at, .LJP_8006AF14
/* 462F8 8006AEF8 00000000 */   nop
/* 462FC 8006AEFC 03402821 */  addu      $a1, $k0, $zero
/* 46300 8006AF00 3C048009 */  lui       $a0, %hi(__osRunQueue)
/* 46304 8006AF04 0C01AC55 */  jal       __osEnqueueThread
/* 46308 8006AF08 24844638 */   addiu    $a0, $a0, %lo(__osRunQueue)
/* 4630C 8006AF0C 0801AC6D */  j         __osDispatchThread
/* 46310 8006AF10 00000000 */   nop
.LJP_8006AF14:
/* 46314 8006AF14 3C098009 */  lui       $t1, %hi(__osRunQueue)
/* 46318 8006AF18 25294638 */  addiu     $t1, $t1, %lo(__osRunQueue)
/* 4631C 8006AF1C 8D2A0000 */  lw        $t2, 0x0($t1)
/* 46320 8006AF20 AF4A0000 */  sw        $t2, 0x0($k0) # handwritten instruction
/* 46324 8006AF24 0801AC6D */  j         __osDispatchThread
/* 46328 8006AF28 AD3A0000 */   sw       $k0, 0x0($t1) # handwritten instruction
.LJP_8006AF2C:
/* 4632C 8006AF2C 3C018009 */  lui       $at, %hi(__osFaultedThread)
/* 46330 8006AF30 AC3A4644 */  sw        $k0, %lo(__osFaultedThread)($at) # handwritten instruction
/* 46334 8006AF34 24090001 */  addiu     $t1, $zero, 0x1
/* 46338 8006AF38 A7490010 */  sh        $t1, 0x10($k0) # handwritten instruction
/* 4633C 8006AF3C 24090002 */  addiu     $t1, $zero, 0x2
/* 46340 8006AF40 A7490012 */  sh        $t1, 0x12($k0) # handwritten instruction
/* 46344 8006AF44 400A4000 */  mfc0      $t2, $8 # handwritten instruction
/* 46348 8006AF48 AF4A0124 */  sw        $t2, 0x124($k0) # handwritten instruction
/* 4634C 8006AF4C 0C01ABD7 */  jal       send_mesg
/* 46350 8006AF50 24040060 */   addiu    $a0, $zero, 0x60
/* 46354 8006AF54 0801AC6D */  j         __osDispatchThread
/* 46358 8006AF58 00000000 */   nop

# Handwritten function
glabel send_mesg
/* 4635C 8006AF5C 03E09021 */  addu      $s2, $ra, $zero
/* 46360 8006AF60 3C0A800E */  lui       $t2, %hi(__osEventStateTab)
/* 46364 8006AF64 254A9F60 */  addiu     $t2, $t2, %lo(__osEventStateTab)
/* 46368 8006AF68 01445021 */  addu      $t2, $t2, $a0
/* 4636C 8006AF6C 8D490000 */  lw        $t1, 0x0($t2)
/* 46370 8006AF70 11200027 */  beqz      $t1, .LJP_8006B010
/* 46374 8006AF74 00000000 */   nop
/* 46378 8006AF78 8D2B0008 */  lw        $t3, 0x8($t1)
/* 4637C 8006AF7C 8D2C0010 */  lw        $t4, 0x10($t1)
/* 46380 8006AF80 016C082A */  slt       $at, $t3, $t4
/* 46384 8006AF84 10200022 */  beqz      $at, .LJP_8006B010
/* 46388 8006AF88 00000000 */   nop
/* 4638C 8006AF8C 8D2D000C */  lw        $t5, 0xC($t1)
/* 46390 8006AF90 01AB6821 */  addu      $t5, $t5, $t3
/* 46394 8006AF94 01AC001A */  div       $zero, $t5, $t4
/* 46398 8006AF98 15800002 */  bnez      $t4, .LJP_8006AFA4
/* 4639C 8006AF9C 00000000 */   nop
/* 463A0 8006AFA0 0007000D */  break     7
.LJP_8006AFA4:
/* 463A4 8006AFA4 2401FFFF */  addiu     $at, $zero, -0x1
/* 463A8 8006AFA8 15810004 */  bne       $t4, $at, .LJP_8006AFBC
/* 463AC 8006AFAC 3C018000 */   lui      $at, (0x80000000 >> 16)
/* 463B0 8006AFB0 15A10002 */  bne       $t5, $at, .LJP_8006AFBC
/* 463B4 8006AFB4 00000000 */   nop
/* 463B8 8006AFB8 0006000D */  break     6
.LJP_8006AFBC:
/* 463BC 8006AFBC 00006810 */  mfhi      $t5
/* 463C0 8006AFC0 8D2C0014 */  lw        $t4, 0x14($t1)
/* 463C4 8006AFC4 24010004 */  addiu     $at, $zero, 0x4
/* 463C8 8006AFC8 01A10018 */  mult      $t5, $at
/* 463CC 8006AFCC 00006812 */  mflo      $t5
/* 463D0 8006AFD0 018D6021 */  addu      $t4, $t4, $t5
/* 463D4 8006AFD4 8D4D0004 */  lw        $t5, 0x4($t2)
/* 463D8 8006AFD8 AD8D0000 */  sw        $t5, 0x0($t4)
/* 463DC 8006AFDC 256A0001 */  addiu     $t2, $t3, 0x1
/* 463E0 8006AFE0 AD2A0008 */  sw        $t2, 0x8($t1)
/* 463E4 8006AFE4 8D2A0000 */  lw        $t2, 0x0($t1)
/* 463E8 8006AFE8 8D4B0000 */  lw        $t3, 0x0($t2)
/* 463EC 8006AFEC 11600008 */  beqz      $t3, .LJP_8006B010
/* 463F0 8006AFF0 00000000 */   nop
/* 463F4 8006AFF4 0C01AC67 */  jal       __osPopThread
/* 463F8 8006AFF8 01202021 */   addu     $a0, $t1, $zero
/* 463FC 8006AFFC 00405021 */  addu      $t2, $v0, $zero
/* 46400 8006B000 01402821 */  addu      $a1, $t2, $zero
/* 46404 8006B004 3C048009 */  lui       $a0, %hi(__osRunQueue)
/* 46408 8006B008 0C01AC55 */  jal       __osEnqueueThread
/* 4640C 8006B00C 24844638 */   addiu    $a0, $a0, %lo(__osRunQueue)
.LJP_8006B010:
/* 46410 8006B010 02400008 */  jr        $s2
/* 46414 8006B014 00000000 */   nop
.LJP_8006B018:
/* 46418 8006B018 3C013000 */  lui       $at, (0x30000000 >> 16)
/* 4641C 8006B01C 01014824 */  and       $t1, $t0, $at
/* 46420 8006B020 00094F02 */  srl       $t1, $t1, 28
/* 46424 8006B024 240A0001 */  addiu     $t2, $zero, 0x1
/* 46428 8006B028 152AFFC0 */  bne       $t1, $t2, .LJP_8006AF2C
/* 4642C 8006B02C 00000000 */   nop
/* 46430 8006B030 24090001 */  addiu     $t1, $zero, 0x1
/* 46434 8006B034 AF490018 */  sw        $t1, 0x18($k0) # handwritten instruction
/* 46438 8006B038 8F5B0118 */  lw        $k1, 0x118($k0) # handwritten instruction
/* 4643C 8006B03C 3C012000 */  lui       $at, (0x20000000 >> 16)
/* 46440 8006B040 0361D825 */  or        $k1, $k1, $at
/* 46444 8006B044 1000FFB3 */  b         .LJP_8006AF14
/* 46448 8006B048 AF5B0118 */   sw       $k1, 0x118($k0) # handwritten instruction

# Handwritten function
glabel __osEnqueueAndYield
/* 4644C 8006B04C 3C058009 */  lui       $a1, %hi(__osRunningThread)
/* 46450 8006B050 8CA54640 */  lw        $a1, %lo(__osRunningThread)($a1)
/* 46454 8006B054 40086000 */  mfc0      $t0, $12 # handwritten instruction
/* 46458 8006B058 35080002 */  ori       $t0, $t0, 0x2
/* 4645C 8006B05C ACA80118 */  sw        $t0, 0x118($a1)
/* 46460 8006B060 FCB00098 */  sd        $s0, 0x98($a1)
/* 46464 8006B064 FCB100A0 */  sd        $s1, 0xA0($a1)
/* 46468 8006B068 FCB200A8 */  sd        $s2, 0xA8($a1)
/* 4646C 8006B06C FCB300B0 */  sd        $s3, 0xB0($a1)
/* 46470 8006B070 FCB400B8 */  sd        $s4, 0xB8($a1)
/* 46474 8006B074 FCB500C0 */  sd        $s5, 0xC0($a1)
/* 46478 8006B078 FCB600C8 */  sd        $s6, 0xC8($a1)
/* 4647C 8006B07C FCB700D0 */  sd        $s7, 0xD0($a1)
/* 46480 8006B080 FCBC00E8 */  sd        $gp, 0xE8($a1)
/* 46484 8006B084 FCBD00F0 */  sd        $sp, 0xF0($a1)
/* 46488 8006B088 FCBE00F8 */  sd        $fp, 0xF8($a1)
/* 4648C 8006B08C FCBF0100 */  sd        $ra, 0x100($a1)
/* 46490 8006B090 ACBF011C */  sw        $ra, 0x11C($a1)
/* 46494 8006B094 8CBB0018 */  lw        $k1, 0x18($a1) # handwritten instruction
/* 46498 8006B098 1360000A */  beqz      $k1, .LJP_8006B0C4 # handwritten instruction
/* 4649C 8006B09C 00000000 */   nop
/* 464A0 8006B0A0 445BF800 */  cfc1      $k1, $31
/* 464A4 8006B0A4 00000000 */  nop
/* 464A8 8006B0A8 ACBB012C */  sw        $k1, 0x12C($a1) # handwritten instruction
/* 464AC 8006B0AC F4B40180 */  sdc1      $f20, 0x180($a1)
/* 464B0 8006B0B0 F4B60188 */  sdc1      $f22, 0x188($a1)
/* 464B4 8006B0B4 F4B80190 */  sdc1      $f24, 0x190($a1)
/* 464B8 8006B0B8 F4BA0198 */  sdc1      $f26, 0x198($a1)
/* 464BC 8006B0BC F4BC01A0 */  sdc1      $f28, 0x1A0($a1)
/* 464C0 8006B0C0 F4BE01A8 */  sdc1      $f30, 0x1A8($a1)
.LJP_8006B0C4:
/* 464C4 8006B0C4 8CBB0118 */  lw        $k1, 0x118($a1) # handwritten instruction
/* 464C8 8006B0C8 3369FF00 */  andi      $t1, $k1, 0xFF00 # handwritten instruction
/* 464CC 8006B0CC 1120000D */  beqz      $t1, .LJP_8006B104
/* 464D0 8006B0D0 00000000 */   nop
/* 464D4 8006B0D4 3C088009 */  lui       $t0, %hi(__OSGlobalIntMask)
/* 464D8 8006B0D8 25085890 */  addiu     $t0, $t0, %lo(__OSGlobalIntMask)
/* 464DC 8006B0DC 8D080000 */  lw        $t0, 0x0($t0)
/* 464E0 8006B0E0 2401FFFF */  addiu     $at, $zero, -0x1
/* 464E4 8006B0E4 01014026 */  xor       $t0, $t0, $at
/* 464E8 8006B0E8 3108FF00 */  andi      $t0, $t0, 0xFF00
/* 464EC 8006B0EC 01284825 */  or        $t1, $t1, $t0
/* 464F0 8006B0F0 3C01FFFF */  lui       $at, (0xFFFF00FF >> 16)
/* 464F4 8006B0F4 342100FF */  ori       $at, $at, (0xFFFF00FF & 0xFFFF)
/* 464F8 8006B0F8 0361D824 */  and       $k1, $k1, $at
/* 464FC 8006B0FC 0369D825 */  or        $k1, $k1, $t1
/* 46500 8006B100 ACBB0118 */  sw        $k1, 0x118($a1) # handwritten instruction
.LJP_8006B104:
/* 46504 8006B104 3C1BA430 */  lui       $k1, %hi(D_A430000C) # handwritten instruction
/* 46508 8006B108 8F7B000C */  lw        $k1, %lo(D_A430000C)($k1) # handwritten instruction
/* 4650C 8006B10C 1360000B */  beqz      $k1, .LJP_8006B13C # handwritten instruction
/* 46510 8006B110 00000000 */   nop
/* 46514 8006B114 3C1A8009 */  lui       $k0, %hi(__OSGlobalIntMask) # handwritten instruction
/* 46518 8006B118 275A5890 */  addiu     $k0, $k0, %lo(__OSGlobalIntMask) # handwritten instruction
/* 4651C 8006B11C 8F5A0000 */  lw        $k0, 0x0($k0) # handwritten instruction
/* 46520 8006B120 001AD402 */  srl       $k0, $k0, 16
/* 46524 8006B124 2401FFFF */  addiu     $at, $zero, -0x1
/* 46528 8006B128 0341D026 */  xor       $k0, $k0, $at
/* 4652C 8006B12C 335A003F */  andi      $k0, $k0, 0x3F # handwritten instruction
/* 46530 8006B130 8CA80128 */  lw        $t0, 0x128($a1)
/* 46534 8006B134 0348D024 */  and       $k0, $k0, $t0
/* 46538 8006B138 037AD825 */  or        $k1, $k1, $k0
.LJP_8006B13C:
/* 4653C 8006B13C 10800003 */  beqz      $a0, .LJP_8006B14C
/* 46540 8006B140 ACBB0128 */   sw       $k1, 0x128($a1) # handwritten instruction
/* 46544 8006B144 0C01AC55 */  jal       __osEnqueueThread
/* 46548 8006B148 00000000 */   nop
.LJP_8006B14C:
/* 4654C 8006B14C 0801AC6D */  j         __osDispatchThread
/* 46550 8006B150 00000000 */   nop

glabel __osEnqueueThread
/* 46554 8006B154 0080C821 */  addu      $t9, $a0, $zero
/* 46558 8006B158 8C980000 */  lw        $t8, 0x0($a0)
/* 4655C 8006B15C 8CAF0004 */  lw        $t7, 0x4($a1)
/* 46560 8006B160 8F0E0004 */  lw        $t6, 0x4($t8)
/* 46564 8006B164 01CF082A */  slt       $at, $t6, $t7
/* 46568 8006B168 14200007 */  bnez      $at, .LJP_8006B188
/* 4656C 8006B16C 00000000 */   nop
.LJP_8006B170:
/* 46570 8006B170 0300C821 */  addu      $t9, $t8, $zero
/* 46574 8006B174 8F180000 */  lw        $t8, 0x0($t8)
/* 46578 8006B178 8F0E0004 */  lw        $t6, 0x4($t8)
/* 4657C 8006B17C 01CF082A */  slt       $at, $t6, $t7
/* 46580 8006B180 1020FFFB */  beqz      $at, .LJP_8006B170
/* 46584 8006B184 00000000 */   nop
.LJP_8006B188:
/* 46588 8006B188 8F380000 */  lw        $t8, 0x0($t9)
/* 4658C 8006B18C ACB80000 */  sw        $t8, 0x0($a1)
/* 46590 8006B190 AF250000 */  sw        $a1, 0x0($t9)
/* 46594 8006B194 03E00008 */  jr        $ra
/* 46598 8006B198 ACA40008 */   sw       $a0, 0x8($a1)

glabel __osPopThread
/* 4659C 8006B19C 8C820000 */  lw        $v0, 0x0($a0)
/* 465A0 8006B1A0 8C590000 */  lw        $t9, 0x0($v0)
/* 465A4 8006B1A4 03E00008 */  jr        $ra
/* 465A8 8006B1A8 AC990000 */   sw       $t9, 0x0($a0)
/* 465AC 8006B1AC 03E00008 */  jr        $ra
/* 465B0 8006B1B0 00000000 */   nop

# Handwritten function
glabel __osDispatchThread
/* 465B4 8006B1B4 3C048009 */  lui       $a0, %hi(__osRunQueue)
/* 465B8 8006B1B8 0C01AC67 */  jal       __osPopThread
/* 465BC 8006B1BC 24844638 */   addiu    $a0, $a0, %lo(__osRunQueue)
/* 465C0 8006B1C0 3C018009 */  lui       $at, %hi(__osRunningThread)
/* 465C4 8006B1C4 AC224640 */  sw        $v0, %lo(__osRunningThread)($at)
/* 465C8 8006B1C8 24080004 */  addiu     $t0, $zero, 0x4
/* 465CC 8006B1CC A4480010 */  sh        $t0, 0x10($v0)
/* 465D0 8006B1D0 0040D021 */  addu      $k0, $v0, $zero
/* 465D4 8006B1D4 8F5B0118 */  lw        $k1, 0x118($k0) # handwritten instruction
/* 465D8 8006B1D8 3C088009 */  lui       $t0, %hi(__OSGlobalIntMask)
/* 465DC 8006B1DC 25085890 */  addiu     $t0, $t0, %lo(__OSGlobalIntMask)
/* 465E0 8006B1E0 8D080000 */  lw        $t0, 0x0($t0)
/* 465E4 8006B1E4 3108FF00 */  andi      $t0, $t0, 0xFF00
/* 465E8 8006B1E8 3369FF00 */  andi      $t1, $k1, 0xFF00 # handwritten instruction
/* 465EC 8006B1EC 01284824 */  and       $t1, $t1, $t0
/* 465F0 8006B1F0 3C01FFFF */  lui       $at, (0xFFFF00FF >> 16)
/* 465F4 8006B1F4 342100FF */  ori       $at, $at, (0xFFFF00FF & 0xFFFF)
/* 465F8 8006B1F8 0361D824 */  and       $k1, $k1, $at
/* 465FC 8006B1FC 0369D825 */  or        $k1, $k1, $t1
/* 46600 8006B200 409B6000 */  mtc0      $k1, $12 # handwritten instruction
/* 46604 8006B204 DF410020 */  ld        $at, 0x20($k0) # handwritten instruction
/* 46608 8006B208 DF420028 */  ld        $v0, 0x28($k0) # handwritten instruction
/* 4660C 8006B20C DF430030 */  ld        $v1, 0x30($k0) # handwritten instruction
/* 46610 8006B210 DF440038 */  ld        $a0, 0x38($k0) # handwritten instruction
/* 46614 8006B214 DF450040 */  ld        $a1, 0x40($k0) # handwritten instruction
/* 46618 8006B218 DF460048 */  ld        $a2, 0x48($k0) # handwritten instruction
/* 4661C 8006B21C DF470050 */  ld        $a3, 0x50($k0) # handwritten instruction
/* 46620 8006B220 DF480058 */  ld        $t0, 0x58($k0) # handwritten instruction
/* 46624 8006B224 DF490060 */  ld        $t1, 0x60($k0) # handwritten instruction
/* 46628 8006B228 DF4A0068 */  ld        $t2, 0x68($k0) # handwritten instruction
/* 4662C 8006B22C DF4B0070 */  ld        $t3, 0x70($k0) # handwritten instruction
/* 46630 8006B230 DF4C0078 */  ld        $t4, 0x78($k0) # handwritten instruction
/* 46634 8006B234 DF4D0080 */  ld        $t5, 0x80($k0) # handwritten instruction
/* 46638 8006B238 DF4E0088 */  ld        $t6, 0x88($k0) # handwritten instruction
/* 4663C 8006B23C DF4F0090 */  ld        $t7, 0x90($k0) # handwritten instruction
/* 46640 8006B240 DF500098 */  ld        $s0, 0x98($k0) # handwritten instruction
/* 46644 8006B244 DF5100A0 */  ld        $s1, 0xA0($k0) # handwritten instruction
/* 46648 8006B248 DF5200A8 */  ld        $s2, 0xA8($k0) # handwritten instruction
/* 4664C 8006B24C DF5300B0 */  ld        $s3, 0xB0($k0) # handwritten instruction
/* 46650 8006B250 DF5400B8 */  ld        $s4, 0xB8($k0) # handwritten instruction
/* 46654 8006B254 DF5500C0 */  ld        $s5, 0xC0($k0) # handwritten instruction
/* 46658 8006B258 DF5600C8 */  ld        $s6, 0xC8($k0) # handwritten instruction
/* 4665C 8006B25C DF5700D0 */  ld        $s7, 0xD0($k0) # handwritten instruction
/* 46660 8006B260 DF5800D8 */  ld        $t8, 0xD8($k0) # handwritten instruction
/* 46664 8006B264 DF5900E0 */  ld        $t9, 0xE0($k0) # handwritten instruction
/* 46668 8006B268 DF5C00E8 */  ld        $gp, 0xE8($k0) # handwritten instruction
/* 4666C 8006B26C DF5D00F0 */  ld        $sp, 0xF0($k0) # handwritten instruction
/* 46670 8006B270 DF5E00F8 */  ld        $fp, 0xF8($k0) # handwritten instruction
/* 46674 8006B274 DF5F0100 */  ld        $ra, 0x100($k0) # handwritten instruction
/* 46678 8006B278 DF5B0108 */  ld        $k1, 0x108($k0) # handwritten instruction
/* 4667C 8006B27C 03600013 */  mtlo      $k1
/* 46680 8006B280 DF5B0110 */  ld        $k1, 0x110($k0) # handwritten instruction
/* 46684 8006B284 03600011 */  mthi      $k1
/* 46688 8006B288 8F5B011C */  lw        $k1, 0x11C($k0) # handwritten instruction
/* 4668C 8006B28C 409B7000 */  mtc0      $k1, $14 # handwritten instruction
/* 46690 8006B290 8F5B0018 */  lw        $k1, 0x18($k0) # handwritten instruction
/* 46694 8006B294 13600013 */  beqz      $k1, .LJP_8006B2E4 # handwritten instruction
/* 46698 8006B298 00000000 */   nop
/* 4669C 8006B29C 8F5B012C */  lw        $k1, 0x12C($k0) # handwritten instruction
/* 466A0 8006B2A0 44DBF800 */  ctc1      $k1, $31
/* 466A4 8006B2A4 D7400130 */  ldc1      $f0, 0x130($k0)
/* 466A8 8006B2A8 D7420138 */  ldc1      $f2, 0x138($k0)
/* 466AC 8006B2AC D7440140 */  ldc1      $f4, 0x140($k0)
/* 466B0 8006B2B0 D7460148 */  ldc1      $f6, 0x148($k0)
/* 466B4 8006B2B4 D7480150 */  ldc1      $f8, 0x150($k0)
/* 466B8 8006B2B8 D74A0158 */  ldc1      $f10, 0x158($k0)
/* 466BC 8006B2BC D74C0160 */  ldc1      $f12, 0x160($k0)
/* 466C0 8006B2C0 D74E0168 */  ldc1      $f14, 0x168($k0)
/* 466C4 8006B2C4 D7500170 */  ldc1      $f16, 0x170($k0)
/* 466C8 8006B2C8 D7520178 */  ldc1      $f18, 0x178($k0)
/* 466CC 8006B2CC D7540180 */  ldc1      $f20, 0x180($k0)
/* 466D0 8006B2D0 D7560188 */  ldc1      $f22, 0x188($k0)
/* 466D4 8006B2D4 D7580190 */  ldc1      $f24, 0x190($k0)
/* 466D8 8006B2D8 D75A0198 */  ldc1      $f26, 0x198($k0)
/* 466DC 8006B2DC D75C01A0 */  ldc1      $f28, 0x1A0($k0)
/* 466E0 8006B2E0 D75E01A8 */  ldc1      $f30, 0x1A8($k0)
.LJP_8006B2E4:
/* 466E4 8006B2E4 8F5B0128 */  lw        $k1, 0x128($k0) # handwritten instruction
/* 466E8 8006B2E8 3C1A8009 */  lui       $k0, %hi(__OSGlobalIntMask) # handwritten instruction
/* 466EC 8006B2EC 275A5890 */  addiu     $k0, $k0, %lo(__OSGlobalIntMask) # handwritten instruction
/* 466F0 8006B2F0 8F5A0000 */  lw        $k0, 0x0($k0) # handwritten instruction
/* 466F4 8006B2F4 001AD402 */  srl       $k0, $k0, 16
/* 466F8 8006B2F8 037AD824 */  and       $k1, $k1, $k0
/* 466FC 8006B2FC 001BD840 */  sll       $k1, $k1, 1
/* 46700 8006B300 3C1A800A */  lui       $k0, %hi(D_80099AA0) # handwritten instruction
/* 46704 8006B304 275A9A80 */  addiu     $k0, $k0, %lo(D_80099AA0) # handwritten instruction
/* 46708 8006B308 037AD821 */  addu      $k1, $k1, $k0
/* 4670C 8006B30C 977B0000 */  lhu       $k1, 0x0($k1) # handwritten instruction
/* 46710 8006B310 3C1AA430 */  lui       $k0, (0xA430000C >> 16) # handwritten instruction
/* 46714 8006B314 375A000C */  ori       $k0, $k0, (0xA430000C & 0xFFFF) # handwritten instruction
/* 46718 8006B318 AF5B0000 */  sw        $k1, 0x0($k0) # handwritten instruction
/* 4671C 8006B31C 00000000 */  nop
/* 46720 8006B320 00000000 */  nop
/* 46724 8006B324 00000000 */  nop
/* 46728 8006B328 00000000 */  nop
/* 4672C 8006B32C 42000018 */  eret # handwritten instruction

glabel __osCleanupThread
/* 46730 8006B330 00002021 */  addu      $a0, $zero, $zero
/* 46734 8006B334 0C01B24C */  jal       osDestroyThread
/* 46738 8006B338 00000000 */   nop
/* 4673C 8006B33C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel _Ldtob
/* 45EB0 8006AAB0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 45EB4 8006AAB4 AFB1004C */  sw         $s1, 0x4C($sp)
/* 45EB8 8006AAB8 27B10018 */  addiu      $s1, $sp, 0x18
/* 45EBC 8006AABC AFB40058 */  sw         $s4, 0x58($sp)
/* 45EC0 8006AAC0 0080A021 */  addu       $s4, $a0, $zero
/* 45EC4 8006AAC4 00052E00 */  sll        $a1, $a1, 24
/* 45EC8 8006AAC8 AFB30054 */  sw         $s3, 0x54($sp)
/* 45ECC 8006AACC AFBF005C */  sw         $ra, 0x5C($sp)
/* 45ED0 8006AAD0 AFB20050 */  sw         $s2, 0x50($sp)
/* 45ED4 8006AAD4 AFB00048 */  sw         $s0, 0x48($sp)
/* 45ED8 8006AAD8 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 45EDC 8006AADC F7B60068 */  sdc1       $f22, 0x68($sp)
/* 45EE0 8006AAE0 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 45EE4 8006AAE4 8E820024 */  lw         $v0, 0x24($s4)
/* 45EE8 8006AAE8 D6940000 */  ldc1       $f20, 0x0($s4)
/* 45EEC 8006AAEC 04410003 */  bgez       $v0, .L8006AAFC
/* 45EF0 8006AAF0 00059E03 */   sra       $s3, $a1, 24
/* 45EF4 8006AAF4 0801AAC7 */  j          .L8006AB1C
/* 45EF8 8006AAF8 24020006 */   addiu     $v0, $zero, 0x6
.L8006AAFC:
/* 45EFC 8006AAFC 14400009 */  bnez       $v0, .L8006AB24
/* 45F00 8006AB00 27A40038 */   addiu     $a0, $sp, 0x38
/* 45F04 8006AB04 24020067 */  addiu      $v0, $zero, 0x67
/* 45F08 8006AB08 12620003 */  beq        $s3, $v0, .L8006AB18
/* 45F0C 8006AB0C 24020047 */   addiu     $v0, $zero, 0x47
/* 45F10 8006AB10 16620004 */  bne        $s3, $v0, .L8006AB24
/* 45F14 8006AB14 00000000 */   nop
.L8006AB18:
/* 45F18 8006AB18 24020001 */  addiu      $v0, $zero, 0x1
.L8006AB1C:
/* 45F1C 8006AB1C AE820024 */  sw         $v0, 0x24($s4)
/* 45F20 8006AB20 27A40038 */  addiu      $a0, $sp, 0x38
.L8006AB24:
/* 45F24 8006AB24 0C01ABB7 */  jal        _Ldunscale
/* 45F28 8006AB28 02802821 */   addu      $a1, $s4, $zero
/* 45F2C 8006AB2C 00401821 */  addu       $v1, $v0, $zero
/* 45F30 8006AB30 18600013 */  blez       $v1, .L8006AB80
/* 45F34 8006AB34 00000000 */   nop
/* 45F38 8006AB38 24020002 */  addiu      $v0, $zero, 0x2
/* 45F3C 8006AB3C 14620005 */  bne        $v1, $v0, .L8006AB54
/* 45F40 8006AB40 8E840008 */   lw        $a0, 0x8($s4)
/* 45F44 8006AB44 3C03800A */  lui        $v1, %hi(xldtob_800989e8)
/* 45F48 8006AB48 246389E8 */  addiu      $v1, $v1, %lo(xldtob_800989e8)
/* 45F4C 8006AB4C 0801AAD8 */  j          .L8006AB60
/* 45F50 8006AB50 24020003 */   addiu     $v0, $zero, 0x3
.L8006AB54:
/* 45F54 8006AB54 3C03800A */  lui        $v1, %hi(xldtob_800989ec)
/* 45F58 8006AB58 246389EC */  addiu      $v1, $v1, %lo(xldtob_800989ec)
/* 45F5C 8006AB5C 24020003 */  addiu      $v0, $zero, 0x3
.L8006AB60:
/* 45F60 8006AB60 AE820014 */  sw         $v0, 0x14($s4)
/* 45F64 8006AB64 806A0000 */  lb         $t2, 0x0($v1)
/* 45F68 8006AB68 806B0001 */  lb         $t3, 0x1($v1)
/* 45F6C 8006AB6C 806C0002 */  lb         $t4, 0x2($v1)
/* 45F70 8006AB70 A08A0000 */  sb         $t2, 0x0($a0)
/* 45F74 8006AB74 A08B0001 */  sb         $t3, 0x1($a0)
/* 45F78 8006AB78 0801ABAC */  j          .L8006AEB0
/* 45F7C 8006AB7C A08C0002 */   sb        $t4, 0x2($a0)
.L8006AB80:
/* 45F80 8006AB80 14400003 */  bnez       $v0, .L8006AB90
/* 45F84 8006AB84 00003821 */   addu      $a3, $zero, $zero
/* 45F88 8006AB88 0801ABA6 */  j          .L8006AE98
/* 45F8C 8006AB8C A7A00038 */   sh        $zero, 0x38($sp)
.L8006AB90:
/* 45F90 8006AB90 44800000 */  mtc1       $zero, $f0
/* 45F94 8006AB94 44800800 */  mtc1       $zero, $f1
/* 45F98 8006AB98 4620A03C */  c.lt.d     $f20, $f0
/* 45F9C 8006AB9C 45030001 */  bc1tl      .L8006ABA4
/* 45FA0 8006ABA0 4620A507 */   neg.d     $f20, $f20
.L8006ABA4:
/* 45FA4 8006ABA4 87A40038 */  lh         $a0, 0x38($sp)
/* 45FA8 8006ABA8 24037597 */  addiu      $v1, $zero, 0x7597
/* 45FAC 8006ABAC 00830018 */  mult       $a0, $v1
/* 45FB0 8006ABB0 00002012 */  mflo       $a0
/* 45FB4 8006ABB4 3C0214F8 */  lui        $v0, (0x14F8B589 >> 16)
/* 45FB8 8006ABB8 3442B589 */  ori        $v0, $v0, (0x14F8B589 & 0xFFFF)
/* 45FBC 8006ABBC 00820018 */  mult       $a0, $v0
/* 45FC0 8006ABC0 000427C3 */  sra        $a0, $a0, 31
/* 45FC4 8006ABC4 00001010 */  mfhi       $v0
/* 45FC8 8006ABC8 00021343 */  sra        $v0, $v0, 13
/* 45FCC 8006ABCC 00441023 */  subu       $v0, $v0, $a0
/* 45FD0 8006ABD0 2444FFFC */  addiu      $a0, $v0, -0x4
/* 45FD4 8006ABD4 00041C00 */  sll        $v1, $a0, 16
/* 45FD8 8006ABD8 00031403 */  sra        $v0, $v1, 16
/* 45FDC 8006ABDC 04410013 */  bgez       $v0, .L8006AC2C
/* 45FE0 8006ABE0 A7A40038 */   sh        $a0, 0x38($sp)
/* 45FE4 8006ABE4 00021023 */  negu       $v0, $v0
/* 45FE8 8006ABE8 24420003 */  addiu      $v0, $v0, 0x3
/* 45FEC 8006ABEC 2403FFFC */  addiu      $v1, $zero, -0x4
/* 45FF0 8006ABF0 00431824 */  and        $v1, $v0, $v1
/* 45FF4 8006ABF4 00032023 */  negu       $a0, $v1
/* 45FF8 8006ABF8 18600020 */  blez       $v1, .L8006AC7C
/* 45FFC 8006ABFC A7A40038 */   sh        $a0, 0x38($sp)
/* 46000 8006AC00 3C04800A */  lui        $a0, %hi(xldtob_pows)
/* 46004 8006AC04 248489A0 */  addiu      $a0, $a0, %lo(xldtob_pows)
.L8006AC08:
/* 46008 8006AC08 30620001 */  andi       $v0, $v1, 0x1
/* 4600C 8006AC0C 10400003 */  beqz       $v0, .L8006AC1C
/* 46010 8006AC10 00031843 */   sra       $v1, $v1, 1
/* 46014 8006AC14 D4800000 */  ldc1       $f0, 0x0($a0)
/* 46018 8006AC18 4620A502 */  mul.d      $f20, $f20, $f0
.L8006AC1C:
/* 4601C 8006AC1C 1C60FFFA */  bgtz       $v1, .L8006AC08
/* 46020 8006AC20 24840008 */   addiu     $a0, $a0, 0x8
/* 46024 8006AC24 0801AB20 */  j          .L8006AC80
/* 46028 8006AC28 8E840024 */   lw        $a0, 0x24($s4)
.L8006AC2C:
/* 4602C 8006AC2C 18400013 */  blez       $v0, .L8006AC7C
/* 46030 8006AC30 2402FFFC */   addiu     $v0, $zero, -0x4
/* 46034 8006AC34 00821024 */  and        $v0, $a0, $v0
/* 46038 8006AC38 00021C00 */  sll        $v1, $v0, 16
/* 4603C 8006AC3C 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 46040 8006AC40 44811800 */  mtc1       $at, $f3
/* 46044 8006AC44 44801000 */  mtc1       $zero, $f2
/* 46048 8006AC48 00031C03 */  sra        $v1, $v1, 16
/* 4604C 8006AC4C 1860000A */  blez       $v1, .L8006AC78
/* 46050 8006AC50 A7A20038 */   sh        $v0, 0x38($sp)
/* 46054 8006AC54 3C04800A */  lui        $a0, %hi(xldtob_pows)
/* 46058 8006AC58 248489A0 */  addiu      $a0, $a0, %lo(xldtob_pows)
.L8006AC5C:
/* 4605C 8006AC5C 30620001 */  andi       $v0, $v1, 0x1
/* 46060 8006AC60 10400003 */  beqz       $v0, .L8006AC70
/* 46064 8006AC64 00031843 */   sra       $v1, $v1, 1
/* 46068 8006AC68 D4800000 */  ldc1       $f0, 0x0($a0)
/* 4606C 8006AC6C 46201082 */  mul.d      $f2, $f2, $f0
.L8006AC70:
/* 46070 8006AC70 1C60FFFA */  bgtz       $v1, .L8006AC5C
/* 46074 8006AC74 24840008 */   addiu     $a0, $a0, 0x8
.L8006AC78:
/* 46078 8006AC78 4622A503 */  div.d      $f20, $f20, $f2
.L8006AC7C:
/* 4607C 8006AC7C 8E840024 */  lw         $a0, 0x24($s4)
.L8006AC80:
/* 46080 8006AC80 24020066 */  addiu      $v0, $zero, 0x66
/* 46084 8006AC84 16620004 */  bne        $s3, $v0, .L8006AC98
/* 46088 8006AC88 24920006 */   addiu     $s2, $a0, 0x6
/* 4608C 8006AC8C 87A30038 */  lh         $v1, 0x38($sp)
/* 46090 8006AC90 2482000A */  addiu      $v0, $a0, 0xA
/* 46094 8006AC94 00439021 */  addu       $s2, $v0, $v1
.L8006AC98:
/* 46098 8006AC98 2A420014 */  slti       $v0, $s2, 0x14
/* 4609C 8006AC9C 50400001 */  beql       $v0, $zero, .L8006ACA4
/* 460A0 8006ACA0 24120013 */   addiu     $s2, $zero, 0x13
.L8006ACA4:
/* 460A4 8006ACA4 24020030 */  addiu      $v0, $zero, 0x30
/* 460A8 8006ACA8 A2220000 */  sb         $v0, 0x0($s1)
/* 460AC 8006ACAC 1A400028 */  blez       $s2, .L8006AD50
/* 460B0 8006ACB0 26310001 */   addiu     $s1, $s1, 0x1
/* 460B4 8006ACB4 4480C000 */  mtc1       $zero, $f24
/* 460B8 8006ACB8 4480C800 */  mtc1       $zero, $f25
/* 460BC 8006ACBC 3C01800A */  lui        $at, %hi(xldtob_800989f0)
/* 460C0 8006ACC0 D43689F0 */  ldc1       $f22, %lo(xldtob_800989f0)($at)
.L8006ACC4:
/* 460C4 8006ACC4 4634C03C */  c.lt.d     $f24, $f20
/* 460C8 8006ACC8 45000021 */  bc1f       .L8006AD50
/* 460CC 8006ACCC 2652FFF8 */   addiu     $s2, $s2, -0x8
/* 460D0 8006ACD0 4620A10D */  trunc.w.d  $f4, $f20
/* 460D4 8006ACD4 44052000 */  mfc1       $a1, $f4
/* 460D8 8006ACD8 1A400005 */  blez       $s2, .L8006ACF0
/* 460DC 8006ACDC 26310008 */   addiu     $s1, $s1, 0x8
/* 460E0 8006ACE0 44850000 */  mtc1       $a1, $f0
/* 460E4 8006ACE4 46800021 */  cvt.d.w    $f0, $f0
/* 460E8 8006ACE8 4620A001 */  sub.d      $f0, $f20, $f0
/* 460EC 8006ACEC 46360502 */  mul.d      $f20, $f0, $f22
.L8006ACF0:
/* 460F0 8006ACF0 18A0000D */  blez       $a1, .L8006AD28
/* 460F4 8006ACF4 24100008 */   addiu     $s0, $zero, 0x8
/* 460F8 8006ACF8 2610FFFF */  addiu      $s0, $s0, -0x1
.L8006ACFC:
/* 460FC 8006ACFC 0600000A */  bltz       $s0, .L8006AD28
/* 46100 8006AD00 27A40040 */   addiu     $a0, $sp, 0x40
/* 46104 8006AD04 0C01B308 */  jal        ldiv
/* 46108 8006AD08 2406000A */   addiu     $a2, $zero, 0xA
/* 4610C 8006AD0C 93A20047 */  lbu        $v0, 0x47($sp)
/* 46110 8006AD10 2631FFFF */  addiu      $s1, $s1, -0x1
/* 46114 8006AD14 24420030 */  addiu      $v0, $v0, 0x30
/* 46118 8006AD18 A2220000 */  sb         $v0, 0x0($s1)
/* 4611C 8006AD1C 8FA50040 */  lw         $a1, 0x40($sp)
/* 46120 8006AD20 5CA0FFF6 */  bgtzl      $a1, .L8006ACFC
/* 46124 8006AD24 2610FFFF */   addiu     $s0, $s0, -0x1
.L8006AD28:
/* 46128 8006AD28 2610FFFF */  addiu      $s0, $s0, -0x1
/* 4612C 8006AD2C 06000006 */  bltz       $s0, .L8006AD48
/* 46130 8006AD30 00000000 */   nop
/* 46134 8006AD34 24020030 */  addiu      $v0, $zero, 0x30
.L8006AD38:
/* 46138 8006AD38 2631FFFF */  addiu      $s1, $s1, -0x1
/* 4613C 8006AD3C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 46140 8006AD40 0601FFFD */  bgez       $s0, .L8006AD38
/* 46144 8006AD44 A2220000 */   sb        $v0, 0x0($s1)
.L8006AD48:
/* 46148 8006AD48 1E40FFDE */  bgtz       $s2, .L8006ACC4
/* 4614C 8006AD4C 26310008 */   addiu     $s1, $s1, 0x8
.L8006AD50:
/* 46150 8006AD50 2624FFFF */  addiu      $a0, $s1, -0x1
/* 46154 8006AD54 27A30018 */  addiu      $v1, $sp, 0x18
/* 46158 8006AD58 00839023 */  subu       $s2, $a0, $v1
/* 4615C 8006AD5C 27B10019 */  addiu      $s1, $sp, 0x19
/* 46160 8006AD60 24030030 */  addiu      $v1, $zero, 0x30
/* 46164 8006AD64 97A20038 */  lhu        $v0, 0x38($sp)
/* 46168 8006AD68 83A40019 */  lb         $a0, 0x19($sp)
/* 4616C 8006AD6C 24420007 */  addiu      $v0, $v0, 0x7
/* 46170 8006AD70 14830009 */  bne        $a0, $v1, .L8006AD98
/* 46174 8006AD74 A7A20038 */   sh        $v0, 0x38($sp)
/* 46178 8006AD78 24040030 */  addiu      $a0, $zero, 0x30
.L8006AD7C:
/* 4617C 8006AD7C 97A20038 */  lhu        $v0, 0x38($sp)
/* 46180 8006AD80 26310001 */  addiu      $s1, $s1, 0x1
/* 46184 8006AD84 2442FFFF */  addiu      $v0, $v0, -0x1
/* 46188 8006AD88 A7A20038 */  sh         $v0, 0x38($sp)
/* 4618C 8006AD8C 82230000 */  lb         $v1, 0x0($s1)
/* 46190 8006AD90 1064FFFA */  beq        $v1, $a0, .L8006AD7C
/* 46194 8006AD94 2652FFFF */   addiu     $s2, $s2, -0x1
.L8006AD98:
/* 46198 8006AD98 24020066 */  addiu      $v0, $zero, 0x66
/* 4619C 8006AD9C 16620005 */  bne        $s3, $v0, .L8006ADB4
/* 461A0 8006ADA0 8E840024 */   lw        $a0, 0x24($s4)
/* 461A4 8006ADA4 87A30038 */  lh         $v1, 0x38($sp)
/* 461A8 8006ADA8 24820001 */  addiu      $v0, $a0, 0x1
/* 461AC 8006ADAC 0801AB75 */  j          .L8006ADD4
/* 461B0 8006ADB0 00431021 */   addu      $v0, $v0, $v1
.L8006ADB4:
/* 461B4 8006ADB4 24020065 */  addiu      $v0, $zero, 0x65
/* 461B8 8006ADB8 12620004 */  beq        $s3, $v0, .L8006ADCC
/* 461BC 8006ADBC 00001821 */   addu      $v1, $zero, $zero
/* 461C0 8006ADC0 24020045 */  addiu      $v0, $zero, 0x45
/* 461C4 8006ADC4 16620003 */  bne        $s3, $v0, .L8006ADD4
/* 461C8 8006ADC8 00641021 */   addu      $v0, $v1, $a0
.L8006ADCC:
/* 461CC 8006ADCC 24030001 */  addiu      $v1, $zero, 0x1
/* 461D0 8006ADD0 00641021 */  addu       $v0, $v1, $a0
.L8006ADD4:
/* 461D4 8006ADD4 00021400 */  sll        $v0, $v0, 16
/* 461D8 8006ADD8 00023C03 */  sra        $a3, $v0, 16
/* 461DC 8006ADDC 0247102A */  slt        $v0, $s2, $a3
/* 461E0 8006ADE0 10400002 */  beqz       $v0, .L8006ADEC
/* 461E4 8006ADE4 00121400 */   sll       $v0, $s2, 16
/* 461E8 8006ADE8 00023C03 */  sra        $a3, $v0, 16
.L8006ADEC:
/* 461EC 8006ADEC 18E0002A */  blez       $a3, .L8006AE98
/* 461F0 8006ADF0 00F2102A */   slt       $v0, $a3, $s2
/* 461F4 8006ADF4 10400007 */  beqz       $v0, .L8006AE14
/* 461F8 8006ADF8 02271821 */   addu      $v1, $s1, $a3
/* 461FC 8006ADFC 80620000 */  lb         $v0, 0x0($v1)
/* 46200 8006AE00 28420035 */  slti       $v0, $v0, 0x35
/* 46204 8006AE04 14400004 */  bnez       $v0, .L8006AE18
/* 46208 8006AE08 24030030 */   addiu     $v1, $zero, 0x30
/* 4620C 8006AE0C 0801AB86 */  j          .L8006AE18
/* 46210 8006AE10 24030039 */   addiu     $v1, $zero, 0x39
.L8006AE14:
/* 46214 8006AE14 24030030 */  addiu      $v1, $zero, 0x30
.L8006AE18:
/* 46218 8006AE18 24E6FFFF */  addiu      $a2, $a3, -0x1
/* 4621C 8006AE1C 02262021 */  addu       $a0, $s1, $a2
/* 46220 8006AE20 80820000 */  lb         $v0, 0x0($a0)
/* 46224 8006AE24 00604021 */  addu       $t0, $v1, $zero
/* 46228 8006AE28 1448000D */  bne        $v0, $t0, .L8006AE60
/* 4622C 8006AE2C 24020039 */   addiu     $v0, $zero, 0x39
/* 46230 8006AE30 00071C00 */  sll        $v1, $a3, 16
/* 46234 8006AE34 3C02FFFF */  lui        $v0, (0xFFFF0000 >> 16)
/* 46238 8006AE38 00622821 */  addu       $a1, $v1, $v0
/* 4623C 8006AE3C 3C09FFFF */  lui        $t1, (0xFFFF0000 >> 16)
.L8006AE40:
/* 46240 8006AE40 00A01821 */  addu       $v1, $a1, $zero
/* 46244 8006AE44 00A92821 */  addu       $a1, $a1, $t1
/* 46248 8006AE48 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 4624C 8006AE4C 02262021 */  addu       $a0, $s1, $a2
/* 46250 8006AE50 80820000 */  lb         $v0, 0x0($a0)
/* 46254 8006AE54 1048FFFA */  beq        $v0, $t0, .L8006AE40
/* 46258 8006AE58 00033C03 */   sra       $a3, $v1, 16
/* 4625C 8006AE5C 24020039 */  addiu      $v0, $zero, 0x39
.L8006AE60:
/* 46260 8006AE60 15020004 */  bne        $t0, $v0, .L8006AE74
/* 46264 8006AE64 00000000 */   nop
/* 46268 8006AE68 90820000 */  lbu        $v0, 0x0($a0)
/* 4626C 8006AE6C 24420001 */  addiu      $v0, $v0, 0x1
/* 46270 8006AE70 A0820000 */  sb         $v0, 0x0($a0)
.L8006AE74:
/* 46274 8006AE74 04C10009 */  bgez       $a2, .L8006AE9C
/* 46278 8006AE78 02802021 */   addu      $a0, $s4, $zero
/* 4627C 8006AE7C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 46280 8006AE80 24E20001 */  addiu      $v0, $a3, 0x1
/* 46284 8006AE84 00021400 */  sll        $v0, $v0, 16
/* 46288 8006AE88 97A30038 */  lhu        $v1, 0x38($sp)
/* 4628C 8006AE8C 00023C03 */  sra        $a3, $v0, 16
/* 46290 8006AE90 24630001 */  addiu      $v1, $v1, 0x1
/* 46294 8006AE94 A7A30038 */  sh         $v1, 0x38($sp)
.L8006AE98:
/* 46298 8006AE98 02802021 */  addu       $a0, $s4, $zero
.L8006AE9C:
/* 4629C 8006AE9C 02602821 */  addu       $a1, $s3, $zero
/* 462A0 8006AEA0 87A20038 */  lh         $v0, 0x38($sp)
/* 462A4 8006AEA4 02203021 */  addu       $a2, $s1, $zero
/* 462A8 8006AEA8 0C01ABDE */  jal        _Genld
/* 462AC 8006AEAC AFA20010 */   sw        $v0, 0x10($sp)
.L8006AEB0:
/* 462B0 8006AEB0 8FBF005C */  lw         $ra, 0x5C($sp)
/* 462B4 8006AEB4 8FB40058 */  lw         $s4, 0x58($sp)
/* 462B8 8006AEB8 8FB30054 */  lw         $s3, 0x54($sp)
/* 462BC 8006AEBC 8FB20050 */  lw         $s2, 0x50($sp)
/* 462C0 8006AEC0 8FB1004C */  lw         $s1, 0x4C($sp)
/* 462C4 8006AEC4 8FB00048 */  lw         $s0, 0x48($sp)
/* 462C8 8006AEC8 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 462CC 8006AECC D7B60068 */  ldc1       $f22, 0x68($sp)
/* 462D0 8006AED0 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 462D4 8006AED4 03E00008 */  jr         $ra
/* 462D8 8006AED8 27BD0078 */   addiu     $sp, $sp, 0x78

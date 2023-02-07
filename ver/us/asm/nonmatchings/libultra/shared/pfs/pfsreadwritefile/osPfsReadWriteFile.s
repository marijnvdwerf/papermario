.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osPfsReadWriteFile
/* 43CC8 800688C8 27BDFE98 */  addiu      $sp, $sp, -0x168
/* 43CCC 800688CC AFB20148 */  sw         $s2, 0x148($sp)
/* 43CD0 800688D0 00809021 */  addu       $s2, $a0, $zero
/* 43CD4 800688D4 AFB7015C */  sw         $s7, 0x15C($sp)
/* 43CD8 800688D8 00A0B821 */  addu       $s7, $a1, $zero
/* 43CDC 800688DC AFB00140 */  sw         $s0, 0x140($sp)
/* 43CE0 800688E0 00E08021 */  addu       $s0, $a3, $zero
/* 43CE4 800688E4 AFB40150 */  sw         $s4, 0x150($sp)
/* 43CE8 800688E8 30D400FF */  andi       $s4, $a2, 0xFF
/* 43CEC 800688EC AFBF0160 */  sw         $ra, 0x160($sp)
/* 43CF0 800688F0 AFB60158 */  sw         $s6, 0x158($sp)
/* 43CF4 800688F4 AFB50154 */  sw         $s5, 0x154($sp)
/* 43CF8 800688F8 AFB3014C */  sw         $s3, 0x14C($sp)
/* 43CFC 800688FC AFB10144 */  sw         $s1, 0x144($sp)
/* 43D00 80068900 8E420050 */  lw         $v0, 0x50($s2)
/* 43D04 80068904 02E2102A */  slt        $v0, $s7, $v0
/* 43D08 80068908 1040003B */  beqz       $v0, .L800689F8
/* 43D0C 8006890C 8FB10178 */   lw        $s1, 0x178($sp)
/* 43D10 80068910 06E000A1 */  bltz       $s7, .L80068B98
/* 43D14 80068914 24020005 */   addiu     $v0, $zero, 0x5
/* 43D18 80068918 1A200037 */  blez       $s1, .L800689F8
/* 43D1C 8006891C 3222001F */   andi      $v0, $s1, 0x1F
/* 43D20 80068920 1440009D */  bnez       $v0, .L80068B98
/* 43D24 80068924 24020005 */   addiu     $v0, $zero, 0x5
/* 43D28 80068928 06000033 */  bltz       $s0, .L800689F8
/* 43D2C 8006892C 3202001F */   andi      $v0, $s0, 0x1F
/* 43D30 80068930 14400099 */  bnez       $v0, .L80068B98
/* 43D34 80068934 24020005 */   addiu     $v0, $zero, 0x5
/* 43D38 80068938 8E420000 */  lw         $v0, 0x0($s2)
/* 43D3C 8006893C 30420001 */  andi       $v0, $v0, 0x1
/* 43D40 80068940 10400095 */  beqz       $v0, .L80068B98
/* 43D44 80068944 24020005 */   addiu     $v0, $zero, 0x5
/* 43D48 80068948 0C01A701 */  jal        __osCheckId
/* 43D4C 8006894C 02402021 */   addu      $a0, $s2, $zero
/* 43D50 80068950 24030002 */  addiu      $v1, $zero, 0x2
/* 43D54 80068954 54430003 */  bnel       $v0, $v1, .L80068964
/* 43D58 80068958 92420065 */   lbu       $v0, 0x65($s2)
/* 43D5C 8006895C 0801A2E6 */  j          .L80068B98
/* 43D60 80068960 24020002 */   addiu     $v0, $zero, 0x2
.L80068964:
/* 43D64 80068964 10400005 */  beqz       $v0, .L8006897C
/* 43D68 80068968 02402021 */   addu      $a0, $s2, $zero
/* 43D6C 8006896C 0C01A568 */  jal        __osPfsSelectBank
/* 43D70 80068970 00002821 */   addu      $a1, $zero, $zero
/* 43D74 80068974 14400089 */  bnez       $v0, .L80068B9C
/* 43D78 80068978 8FBF0160 */   lw        $ra, 0x160($sp)
.L8006897C:
/* 43D7C 8006897C 27A70018 */  addiu      $a3, $sp, 0x18
/* 43D80 80068980 8E440004 */  lw         $a0, 0x4($s2)
/* 43D84 80068984 9646005E */  lhu        $a2, 0x5E($s2)
/* 43D88 80068988 8E450008 */  lw         $a1, 0x8($s2)
/* 43D8C 8006898C 00D73021 */  addu       $a2, $a2, $s7
/* 43D90 80068990 0C01A7D8 */  jal        __osContRamRead
/* 43D94 80068994 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 43D98 80068998 14400080 */  bnez       $v0, .L80068B9C
/* 43D9C 8006899C 8FBF0160 */   lw        $ra, 0x160($sp)
/* 43DA0 800689A0 97A2001C */  lhu        $v0, 0x1C($sp)
/* 43DA4 800689A4 10400014 */  beqz       $v0, .L800689F8
/* 43DA8 800689A8 8FA20018 */   lw        $v0, 0x18($sp)
/* 43DAC 800689AC 10400012 */  beqz       $v0, .L800689F8
/* 43DB0 800689B0 97A2001E */   lhu       $v0, 0x1E($sp)
/* 43DB4 800689B4 8E430060 */  lw         $v1, 0x60($s2)
/* 43DB8 800689B8 0043102A */  slt        $v0, $v0, $v1
/* 43DBC 800689BC 1440000B */  bnez       $v0, .L800689EC
/* 43DC0 800689C0 97A3001E */   lhu       $v1, 0x1E($sp)
/* 43DC4 800689C4 93A2001E */  lbu        $v0, 0x1E($sp)
/* 43DC8 800689C8 92430064 */  lbu        $v1, 0x64($s2)
/* 43DCC 800689CC 0043102B */  sltu       $v0, $v0, $v1
/* 43DD0 800689D0 10400005 */  beqz       $v0, .L800689E8
/* 43DD4 800689D4 93A2001F */   lbu       $v0, 0x1F($sp)
/* 43DD8 800689D8 10400003 */  beqz       $v0, .L800689E8
/* 43DDC 800689DC 00021600 */   sll       $v0, $v0, 24
/* 43DE0 800689E0 04410007 */  bgez       $v0, .L80068A00
/* 43DE4 800689E4 00000000 */   nop
.L800689E8:
/* 43DE8 800689E8 97A3001E */  lhu        $v1, 0x1E($sp)
.L800689EC:
/* 43DEC 800689EC 24020001 */  addiu      $v0, $zero, 0x1
/* 43DF0 800689F0 14620069 */  bne        $v1, $v0, .L80068B98
/* 43DF4 800689F4 24020003 */   addiu     $v0, $zero, 0x3
.L800689F8:
/* 43DF8 800689F8 0801A2E6 */  j          .L80068B98
/* 43DFC 800689FC 24020005 */   addiu     $v0, $zero, 0x5
.L80068A00:
/* 43E00 80068A00 16800007 */  bnez       $s4, .L80068A20
/* 43E04 80068A04 240200FF */   addiu     $v0, $zero, 0xFF
/* 43E08 80068A08 93A20020 */  lbu        $v0, 0x20($sp)
/* 43E0C 80068A0C 30420002 */  andi       $v0, $v0, 0x2
/* 43E10 80068A10 14400003 */  bnez       $v0, .L80068A20
/* 43E14 80068A14 240200FF */   addiu     $v0, $zero, 0xFF
/* 43E18 80068A18 0801A2E6 */  j          .L80068B98
/* 43E1C 80068A1C 24020006 */   addiu     $v0, $zero, 0x6
.L80068A20:
/* 43E20 80068A20 02003821 */  addu       $a3, $s0, $zero
/* 43E24 80068A24 04E10002 */  bgez       $a3, .L80068A30
/* 43E28 80068A28 A3A20138 */   sb        $v0, 0x138($sp)
/* 43E2C 80068A2C 24E7001F */  addiu      $a3, $a3, 0x1F
.L80068A30:
/* 43E30 80068A30 00078143 */  sra        $s0, $a3, 5
/* 43E34 80068A34 97A3001E */  lhu        $v1, 0x1E($sp)
/* 43E38 80068A38 2A020008 */  slti       $v0, $s0, 0x8
/* 43E3C 80068A3C 1440000B */  bnez       $v0, .L80068A6C
/* 43E40 80068A40 A7A3013A */   sh        $v1, 0x13A($sp)
/* 43E44 80068A44 02402021 */  addu       $a0, $s2, $zero
.L80068A48:
/* 43E48 80068A48 27A50138 */  addiu      $a1, $sp, 0x138
/* 43E4C 80068A4C 27A60038 */  addiu      $a2, $sp, 0x38
/* 43E50 80068A50 0C01A200 */  jal        __osPfsGetNextPage
/* 43E54 80068A54 27A7013A */   addiu     $a3, $sp, 0x13A
/* 43E58 80068A58 1440004F */  bnez       $v0, .L80068B98
/* 43E5C 80068A5C 2610FFF8 */   addiu     $s0, $s0, -0x8
/* 43E60 80068A60 2A020008 */  slti       $v0, $s0, 0x8
/* 43E64 80068A64 1040FFF8 */  beqz       $v0, .L80068A48
/* 43E68 80068A68 02402021 */   addu      $a0, $s2, $zero
.L80068A6C:
/* 43E6C 80068A6C 02201021 */  addu       $v0, $s1, $zero
/* 43E70 80068A70 04420001 */  bltzl      $v0, .L80068A78
/* 43E74 80068A74 2442001F */   addiu     $v0, $v0, 0x1F
.L80068A78:
/* 43E78 80068A78 00029943 */  sra        $s3, $v0, 5
/* 43E7C 80068A7C 1A600029 */  blez       $s3, .L80068B24
/* 43E80 80068A80 8FB1017C */   lw        $s1, 0x17C($sp)
/* 43E84 80068A84 24160008 */  addiu      $s6, $zero, 0x8
/* 43E88 80068A88 27B5013A */  addiu      $s5, $sp, 0x13A
.L80068A8C:
/* 43E8C 80068A8C 56160009 */  bnel       $s0, $s6, .L80068AB4
/* 43E90 80068A90 92430065 */   lbu       $v1, 0x65($s2)
/* 43E94 80068A94 02402021 */  addu       $a0, $s2, $zero
/* 43E98 80068A98 27A50138 */  addiu      $a1, $sp, 0x138
/* 43E9C 80068A9C 27A60038 */  addiu      $a2, $sp, 0x38
/* 43EA0 80068AA0 0C01A200 */  jal        __osPfsGetNextPage
/* 43EA4 80068AA4 27A7013A */   addiu     $a3, $sp, 0x13A
/* 43EA8 80068AA8 1440003B */  bnez       $v0, .L80068B98
/* 43EAC 80068AAC 00008021 */   addu      $s0, $zero, $zero
/* 43EB0 80068AB0 92430065 */  lbu        $v1, 0x65($s2)
.L80068AB4:
/* 43EB4 80068AB4 93A2013A */  lbu        $v0, 0x13A($sp)
/* 43EB8 80068AB8 10620005 */  beq        $v1, $v0, .L80068AD0
/* 43EBC 80068ABC 00402821 */   addu      $a1, $v0, $zero
/* 43EC0 80068AC0 0C01A568 */  jal        __osPfsSelectBank
/* 43EC4 80068AC4 02402021 */   addu      $a0, $s2, $zero
/* 43EC8 80068AC8 14400034 */  bnez       $v0, .L80068B9C
/* 43ECC 80068ACC 8FBF0160 */   lw        $ra, 0x160($sp)
.L80068AD0:
/* 43ED0 80068AD0 92A20001 */  lbu        $v0, 0x1($s5)
/* 43ED4 80068AD4 000210C0 */  sll        $v0, $v0, 3
/* 43ED8 80068AD8 00501021 */  addu       $v0, $v0, $s0
/* 43EDC 80068ADC 16800007 */  bnez       $s4, .L80068AFC
/* 43EE0 80068AE0 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* 43EE4 80068AE4 8E440004 */  lw         $a0, 0x4($s2)
/* 43EE8 80068AE8 8E450008 */  lw         $a1, 0x8($s2)
/* 43EEC 80068AEC 0C01A7D8 */  jal        __osContRamRead
/* 43EF0 80068AF0 02203821 */   addu      $a3, $s1, $zero
/* 43EF4 80068AF4 0801A2C4 */  j          .L80068B10
/* 43EF8 80068AF8 00000000 */   nop
.L80068AFC:
/* 43EFC 80068AFC 8E440004 */  lw         $a0, 0x4($s2)
/* 43F00 80068B00 8E450008 */  lw         $a1, 0x8($s2)
/* 43F04 80068B04 02203821 */  addu       $a3, $s1, $zero
/* 43F08 80068B08 0C01A808 */  jal        __osContRamWrite
/* 43F0C 80068B0C AFA00010 */   sw        $zero, 0x10($sp)
.L80068B10:
/* 43F10 80068B10 14400021 */  bnez       $v0, .L80068B98
/* 43F14 80068B14 26310020 */   addiu     $s1, $s1, 0x20
/* 43F18 80068B18 2673FFFF */  addiu      $s3, $s3, -0x1
/* 43F1C 80068B1C 1E60FFDB */  bgtz       $s3, .L80068A8C
/* 43F20 80068B20 26100001 */   addiu     $s0, $s0, 0x1
.L80068B24:
/* 43F24 80068B24 24020001 */  addiu      $v0, $zero, 0x1
/* 43F28 80068B28 56820019 */  bnel       $s4, $v0, .L80068B90
/* 43F2C 80068B2C 8E440004 */   lw        $a0, 0x4($s2)
/* 43F30 80068B30 93A40020 */  lbu        $a0, 0x20($sp)
/* 43F34 80068B34 30820002 */  andi       $v0, $a0, 0x2
/* 43F38 80068B38 54400015 */  bnel       $v0, $zero, .L80068B90
/* 43F3C 80068B3C 8E440004 */   lw        $a0, 0x4($s2)
/* 43F40 80068B40 92430065 */  lbu        $v1, 0x65($s2)
/* 43F44 80068B44 34820002 */  ori        $v0, $a0, 0x2
/* 43F48 80068B48 10600006 */  beqz       $v1, .L80068B64
/* 43F4C 80068B4C A3A20020 */   sb        $v0, 0x20($sp)
/* 43F50 80068B50 02402021 */  addu       $a0, $s2, $zero
/* 43F54 80068B54 0C01A568 */  jal        __osPfsSelectBank
/* 43F58 80068B58 00002821 */   addu      $a1, $zero, $zero
/* 43F5C 80068B5C 1440000F */  bnez       $v0, .L80068B9C
/* 43F60 80068B60 8FBF0160 */   lw        $ra, 0x160($sp)
.L80068B64:
/* 43F64 80068B64 8E440004 */  lw         $a0, 0x4($s2)
/* 43F68 80068B68 8E450008 */  lw         $a1, 0x8($s2)
/* 43F6C 80068B6C 9646005E */  lhu        $a2, 0x5E($s2)
/* 43F70 80068B70 27A70018 */  addiu      $a3, $sp, 0x18
/* 43F74 80068B74 AFA00010 */  sw         $zero, 0x10($sp)
/* 43F78 80068B78 00D73021 */  addu       $a2, $a2, $s7
/* 43F7C 80068B7C 0C01A808 */  jal        __osContRamWrite
/* 43F80 80068B80 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 43F84 80068B84 14400005 */  bnez       $v0, .L80068B9C
/* 43F88 80068B88 8FBF0160 */   lw        $ra, 0x160($sp)
/* 43F8C 80068B8C 8E440004 */  lw         $a0, 0x4($s2)
.L80068B90:
/* 43F90 80068B90 0C01A518 */  jal        __osPfsGetStatus
/* 43F94 80068B94 8E450008 */   lw        $a1, 0x8($s2)
.L80068B98:
/* 43F98 80068B98 8FBF0160 */  lw         $ra, 0x160($sp)
.L80068B9C:
/* 43F9C 80068B9C 8FB7015C */  lw         $s7, 0x15C($sp)
/* 43FA0 80068BA0 8FB60158 */  lw         $s6, 0x158($sp)
/* 43FA4 80068BA4 8FB50154 */  lw         $s5, 0x154($sp)
/* 43FA8 80068BA8 8FB40150 */  lw         $s4, 0x150($sp)
/* 43FAC 80068BAC 8FB3014C */  lw         $s3, 0x14C($sp)
/* 43FB0 80068BB0 8FB20148 */  lw         $s2, 0x148($sp)
/* 43FB4 80068BB4 8FB10144 */  lw         $s1, 0x144($sp)
/* 43FB8 80068BB8 8FB00140 */  lw         $s0, 0x140($sp)
/* 43FBC 80068BBC 03E00008 */  jr         $ra
/* 43FC0 80068BC0 27BD0168 */   addiu     $sp, $sp, 0x168
/* 43FC4 80068BC4 00000000 */  nop
/* 43FC8 80068BC8 00000000 */  nop
/* 43FCC 80068BCC 00000000 */  nop

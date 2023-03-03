.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel update_encounters_pre_battle
/* 1CC54 80041854 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1CC58 80041858 AFB50024 */  sw         $s5, 0x24($sp)
/* 1CC5C 8004185C 3C15800B */  lui        $s5, %hi(D_800AF5E0)
/* 1CC60 80041860 26B5F5E0 */  addiu      $s5, $s5, %lo(D_800AF5E0)
/* 1CC64 80041864 AFB7002C */  sw         $s7, 0x2C($sp)
/* 1CC68 80041868 3C178011 */  lui        $s7, %hi(D_8010DD90)
/* 1CC6C 8004186C 26F7DD90 */  addiu      $s7, $s7, %lo(D_8010DD90)
/* 1CC70 80041870 3C048009 */  lui        $a0, %hi(D_800969A4)
/* 1CC74 80041874 248469A4 */  addiu      $a0, $a0, %lo(D_800969A4)
/* 1CC78 80041878 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1CC7C 8004187C AFB60028 */  sw         $s6, 0x28($sp)
/* 1CC80 80041880 AFB40020 */  sw         $s4, 0x20($sp)
/* 1CC84 80041884 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1CC88 80041888 AFB20018 */  sw         $s2, 0x18($sp)
/* 1CC8C 8004188C AFB10014 */  sw         $s1, 0x14($sp)
/* 1CC90 80041890 AFB00010 */  sw         $s0, 0x10($sp)
/* 1CC94 80041894 8C830000 */  lw         $v1, 0x0($a0)
/* 1CC98 80041898 24050001 */  addiu      $a1, $zero, 0x1
/* 1CC9C 8004189C 106500D2 */  beq        $v1, $a1, .LPAL_80041BE8
/* 1CCA0 800418A0 28620002 */   slti      $v0, $v1, 0x2
/* 1CCA4 800418A4 50400005 */  beql       $v0, $zero, .LPAL_800418BC
/* 1CCA8 800418A8 24020002 */   addiu     $v0, $zero, 0x2
/* 1CCAC 800418AC 10600009 */  beqz       $v1, .LPAL_800418D4
/* 1CCB0 800418B0 24040010 */   addiu     $a0, $zero, 0x10
/* 1CCB4 800418B4 0801078D */  j          .LPAL_80041E34
/* 1CCB8 800418B8 00000000 */   nop
.LPAL_800418BC:
/* 1CCBC 800418BC 1062011F */  beq        $v1, $v0, .LPAL_80041D3C
/* 1CCC0 800418C0 24020003 */   addiu     $v0, $zero, 0x3
/* 1CCC4 800418C4 10620151 */  beq        $v1, $v0, .LPAL_80041E0C
/* 1CCC8 800418C8 24020004 */   addiu     $v0, $zero, 0x4
/* 1CCCC 800418CC 0801078D */  j          .LPAL_80041E34
/* 1CCD0 800418D0 00000000 */   nop
.LPAL_800418D4:
/* 1CCD4 800418D4 3C02800F */  lui        $v0, %hi(D_PAL_800F3F60)
/* 1CCD8 800418D8 8C423F60 */  lw         $v0, %lo(D_PAL_800F3F60)($v0)
/* 1CCDC 800418DC 3C018009 */  lui        $at, %hi(D_80096A2C)
/* 1CCE0 800418E0 A0206A2C */  sb         $zero, %lo(D_80096A2C)($at)
/* 1CCE4 800418E4 3C018007 */  lui        $at, %hi(D_PAL_80073FE0)
/* 1CCE8 800418E8 AC203FE0 */  sw         $zero, %lo(D_PAL_80073FE0)($at)
/* 1CCEC 800418EC AC40008C */  sw         $zero, 0x8C($v0)
/* 1CCF0 800418F0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1CCF4 800418F4 AEA00090 */  sw         $zero, 0x90($s5)
/* 1CCF8 800418F8 AEA50094 */  sw         $a1, 0x94($s5)
/* 1CCFC 800418FC AEA50098 */  sw         $a1, 0x98($s5)
/* 1CD00 80041900 0C0B1D7A */  jal        func_PAL_802C75E8
/* 1CD04 80041904 A2A20008 */   sb        $v0, 0x8($s5)
/* 1CD08 80041908 82A2001C */  lb         $v0, 0x1C($s5)
/* 1CD0C 8004190C 18400024 */  blez       $v0, .LPAL_800419A0
/* 1CD10 80041910 0000982D */   daddu     $s3, $zero, $zero
/* 1CD14 80041914 02A0B02D */  daddu      $s6, $s5, $zero
.LPAL_80041918:
/* 1CD18 80041918 8ED40028 */  lw         $s4, 0x28($s6)
/* 1CD1C 8004191C 1280001B */  beqz       $s4, .LPAL_8004198C
/* 1CD20 80041920 00000000 */   nop
/* 1CD24 80041924 8E820000 */  lw         $v0, 0x0($s4)
/* 1CD28 80041928 18400018 */  blez       $v0, .LPAL_8004198C
/* 1CD2C 8004192C 0000882D */   daddu     $s1, $zero, $zero
/* 1CD30 80041930 0280902D */  daddu      $s2, $s4, $zero
.LPAL_80041934:
/* 1CD34 80041934 8E500004 */  lw         $s0, 0x4($s2)
/* 1CD38 80041938 1200000F */  beqz       $s0, .LPAL_80041978
/* 1CD3C 8004193C 00000000 */   nop
/* 1CD40 80041940 8E020000 */  lw         $v0, 0x0($s0)
/* 1CD44 80041944 30420020 */  andi       $v0, $v0, 0x20
/* 1CD48 80041948 1440000B */  bnez       $v0, .LPAL_80041978
/* 1CD4C 8004194C 00000000 */   nop
/* 1CD50 80041950 8E02003C */  lw         $v0, 0x3C($s0)
/* 1CD54 80041954 10400003 */  beqz       $v0, .LPAL_80041964
/* 1CD58 80041958 00000000 */   nop
/* 1CD5C 8004195C 0C0B1D08 */  jal        func_PAL_802C7420
/* 1CD60 80041960 8E040054 */   lw        $a0, 0x54($s0)
.LPAL_80041964:
/* 1CD64 80041964 8E020044 */  lw         $v0, 0x44($s0)
/* 1CD68 80041968 10400003 */  beqz       $v0, .LPAL_80041978
/* 1CD6C 8004196C 00000000 */   nop
/* 1CD70 80041970 0C0B1D08 */  jal        func_PAL_802C7420
/* 1CD74 80041974 8E04005C */   lw        $a0, 0x5C($s0)
.LPAL_80041978:
/* 1CD78 80041978 8E820000 */  lw         $v0, 0x0($s4)
/* 1CD7C 8004197C 26310001 */  addiu      $s1, $s1, 0x1
/* 1CD80 80041980 0222102A */  slt        $v0, $s1, $v0
/* 1CD84 80041984 1440FFEB */  bnez       $v0, .LPAL_80041934
/* 1CD88 80041988 26520004 */   addiu     $s2, $s2, 0x4
.LPAL_8004198C:
/* 1CD8C 8004198C 82A2001C */  lb         $v0, 0x1C($s5)
/* 1CD90 80041990 26730001 */  addiu      $s3, $s3, 0x1
/* 1CD94 80041994 0262102A */  slt        $v0, $s3, $v0
/* 1CD98 80041998 1440FFDF */  bnez       $v0, .LPAL_80041918
/* 1CD9C 8004199C 26D60004 */   addiu     $s6, $s6, 0x4
.LPAL_800419A0:
/* 1CDA0 800419A0 8EB0008C */  lw         $s0, 0x8C($s5)
/* 1CDA4 800419A4 8E020000 */  lw         $v0, 0x0($s0)
/* 1CDA8 800419A8 3C030010 */  lui        $v1, (0x100000 >> 16)
/* 1CDAC 800419AC 00431024 */  and        $v0, $v0, $v1
/* 1CDB0 800419B0 1040000C */  beqz       $v0, .LPAL_800419E4
/* 1CDB4 800419B4 00000000 */   nop
/* 1CDB8 800419B8 82A20012 */  lb         $v0, 0x12($s5)
/* 1CDBC 800419BC 14400009 */  bnez       $v0, .LPAL_800419E4
/* 1CDC0 800419C0 00000000 */   nop
/* 1CDC4 800419C4 AEA00094 */  sw         $zero, 0x94($s5)
/* 1CDC8 800419C8 0C039FAA */  jal        func_PAL_800E7EA8
/* 1CDCC 800419CC AEA0009C */   sw        $zero, 0x9C($s5)
/* 1CDD0 800419D0 24020003 */  addiu      $v0, $zero, 0x3
/* 1CDD4 800419D4 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1CDD8 800419D8 AC2269A4 */  sw         $v0, %lo(D_800969A4)($at)
/* 1CDDC 800419DC 0801078D */  j          .LPAL_80041E34
/* 1CDE0 800419E0 00000000 */   nop
.LPAL_800419E4:
/* 1CDE4 800419E4 3C028007 */  lui        $v0, %hi(D_PAL_800714AC)
/* 1CDE8 800419E8 8C4214AC */  lw         $v0, %lo(D_PAL_800714AC)($v0)
/* 1CDEC 800419EC 80420074 */  lb         $v0, 0x74($v0)
/* 1CDF0 800419F0 24110002 */  addiu      $s1, $zero, 0x2
/* 1CDF4 800419F4 14510009 */  bne        $v0, $s1, .LPAL_80041A1C
/* 1CDF8 800419F8 24120001 */   addiu     $s2, $zero, 0x1
/* 1CDFC 800419FC 2402000A */  addiu      $v0, $zero, 0xA
/* 1CE00 80041A00 AEA00094 */  sw         $zero, 0x94($s5)
/* 1CE04 80041A04 0C039FAA */  jal        func_PAL_800E7EA8
/* 1CE08 80041A08 AEA2009C */   sw        $v0, 0x9C($s5)
/* 1CE0C 80041A0C 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1CE10 80041A10 AC3169A4 */  sw         $s1, %lo(D_800969A4)($at)
/* 1CE14 80041A14 0801078D */  j          .LPAL_80041E34
/* 1CE18 80041A18 00000000 */   nop
.LPAL_80041A1C:
/* 1CE1C 80041A1C 82A30005 */  lb         $v1, 0x5($s5)
/* 1CE20 80041A20 8EB0008C */  lw         $s0, 0x8C($s5)
/* 1CE24 80041A24 1072001D */  beq        $v1, $s2, .LPAL_80041A9C
/* 1CE28 80041A28 24020003 */   addiu     $v0, $zero, 0x3
/* 1CE2C 80041A2C 1062001B */  beq        $v1, $v0, .LPAL_80041A9C
/* 1CE30 80041A30 00000000 */   nop
/* 1CE34 80041A34 0C039968 */  jal        func_PAL_800E65A0
/* 1CE38 80041A38 0040202D */   daddu     $a0, $v0, $zero
/* 1CE3C 80041A3C 10400016 */  beqz       $v0, .LPAL_80041A98
/* 1CE40 80041A40 00000000 */   nop
/* 1CE44 80041A44 8E020018 */  lw         $v0, 0x18($s0)
/* 1CE48 80041A48 82E30009 */  lb         $v1, 0x9($s7)
/* 1CE4C 80041A4C 84420028 */  lh         $v0, 0x28($v0)
/* 1CE50 80041A50 0062182A */  slt        $v1, $v1, $v0
/* 1CE54 80041A54 14600010 */  bnez       $v1, .LPAL_80041A98
/* 1CE58 80041A58 00000000 */   nop
/* 1CE5C 80041A5C 8E020000 */  lw         $v0, 0x0($s0)
/* 1CE60 80041A60 30420040 */  andi       $v0, $v0, 0x40
/* 1CE64 80041A64 1440000C */  bnez       $v0, .LPAL_80041A98
/* 1CE68 80041A68 00000000 */   nop
/* 1CE6C 80041A6C 82A20012 */  lb         $v0, 0x12($s5)
/* 1CE70 80041A70 14400009 */  bnez       $v0, .LPAL_80041A98
/* 1CE74 80041A74 2402000A */   addiu     $v0, $zero, 0xA
/* 1CE78 80041A78 AEA00094 */  sw         $zero, 0x94($s5)
/* 1CE7C 80041A7C AEA2009C */  sw         $v0, 0x9C($s5)
/* 1CE80 80041A80 3C018007 */  lui        $at, %hi(D_PAL_80073FE0)
/* 1CE84 80041A84 AC323FE0 */  sw         $s2, %lo(D_PAL_80073FE0)($at)
/* 1CE88 80041A88 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1CE8C 80041A8C AC3169A4 */  sw         $s1, %lo(D_800969A4)($at)
/* 1CE90 80041A90 0801078D */  j          .LPAL_80041E34
/* 1CE94 80041A94 00000000 */   nop
.LPAL_80041A98:
/* 1CE98 80041A98 8EB0008C */  lw         $s0, 0x8C($s5)
.LPAL_80041A9C:
/* 1CE9C 80041A9C 0C039968 */  jal        func_PAL_800E65A0
/* 1CEA0 80041AA0 2404002A */   addiu     $a0, $zero, 0x2A
/* 1CEA4 80041AA4 1040000E */  beqz       $v0, .LPAL_80041AE0
/* 1CEA8 80041AA8 24020003 */   addiu     $v0, $zero, 0x3
/* 1CEAC 80041AAC 8E020018 */  lw         $v0, 0x18($s0)
/* 1CEB0 80041AB0 82E30009 */  lb         $v1, 0x9($s7)
/* 1CEB4 80041AB4 84420028 */  lh         $v0, 0x28($v0)
/* 1CEB8 80041AB8 0062182A */  slt        $v1, $v1, $v0
/* 1CEBC 80041ABC 14600008 */  bnez       $v1, .LPAL_80041AE0
/* 1CEC0 80041AC0 24020003 */   addiu     $v0, $zero, 0x3
/* 1CEC4 80041AC4 8E020000 */  lw         $v0, 0x0($s0)
/* 1CEC8 80041AC8 30420040 */  andi       $v0, $v0, 0x40
/* 1CECC 80041ACC 14400004 */  bnez       $v0, .LPAL_80041AE0
/* 1CED0 80041AD0 24020003 */   addiu     $v0, $zero, 0x3
/* 1CED4 80041AD4 82A20012 */  lb         $v0, 0x12($s5)
/* 1CED8 80041AD8 10400015 */  beqz       $v0, .LPAL_80041B30
/* 1CEDC 80041ADC 24020003 */   addiu     $v0, $zero, 0x3
.LPAL_80041AE0:
/* 1CEE0 80041AE0 82A30005 */  lb         $v1, 0x5($s5)
/* 1CEE4 80041AE4 1462001D */  bne        $v1, $v0, .LPAL_80041B5C
/* 1CEE8 80041AE8 8EB0008C */   lw        $s0, 0x8C($s5)
/* 1CEEC 80041AEC 0C039968 */  jal        func_PAL_800E65A0
/* 1CEF0 80041AF0 24040028 */   addiu     $a0, $zero, 0x28
/* 1CEF4 80041AF4 10400019 */  beqz       $v0, .LPAL_80041B5C
/* 1CEF8 80041AF8 00000000 */   nop
/* 1CEFC 80041AFC 8E020018 */  lw         $v0, 0x18($s0)
/* 1CF00 80041B00 82E30009 */  lb         $v1, 0x9($s7)
/* 1CF04 80041B04 84420028 */  lh         $v0, 0x28($v0)
/* 1CF08 80041B08 0062182A */  slt        $v1, $v1, $v0
/* 1CF0C 80041B0C 14600013 */  bnez       $v1, .LPAL_80041B5C
/* 1CF10 80041B10 00000000 */   nop
/* 1CF14 80041B14 8E020000 */  lw         $v0, 0x0($s0)
/* 1CF18 80041B18 30420040 */  andi       $v0, $v0, 0x40
/* 1CF1C 80041B1C 1440000F */  bnez       $v0, .LPAL_80041B5C
/* 1CF20 80041B20 00000000 */   nop
/* 1CF24 80041B24 82A20012 */  lb         $v0, 0x12($s5)
/* 1CF28 80041B28 1440000C */  bnez       $v0, .LPAL_80041B5C
/* 1CF2C 80041B2C 00000000 */   nop
.LPAL_80041B30:
/* 1CF30 80041B30 2402000A */  addiu      $v0, $zero, 0xA
/* 1CF34 80041B34 AEA2009C */  sw         $v0, 0x9C($s5)
/* 1CF38 80041B38 24020001 */  addiu      $v0, $zero, 0x1
/* 1CF3C 80041B3C 3C018007 */  lui        $at, %hi(D_PAL_80073FE0)
/* 1CF40 80041B40 AC223FE0 */  sw         $v0, %lo(D_PAL_80073FE0)($at)
/* 1CF44 80041B44 24020002 */  addiu      $v0, $zero, 0x2
/* 1CF48 80041B48 AEA00094 */  sw         $zero, 0x94($s5)
/* 1CF4C 80041B4C 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1CF50 80041B50 AC2269A4 */  sw         $v0, %lo(D_800969A4)($at)
/* 1CF54 80041B54 0801078D */  j          .LPAL_80041E34
/* 1CF58 80041B58 00000000 */   nop
.LPAL_80041B5C:
/* 1CF5C 80041B5C 8EA40014 */  lw         $a0, 0x14($s5)
/* 1CF60 80041B60 04810015 */  bgez       $a0, .LPAL_80041BB8
/* 1CF64 80041B64 0000282D */   daddu     $a1, $zero, $zero
/* 1CF68 80041B68 82A30004 */  lb         $v1, 0x4($s5)
/* 1CF6C 80041B6C 24020001 */  addiu      $v0, $zero, 0x1
/* 1CF70 80041B70 1062000B */  beq        $v1, $v0, .LPAL_80041BA0
/* 1CF74 80041B74 28620002 */   slti      $v0, $v1, 0x2
/* 1CF78 80041B78 10400005 */  beqz       $v0, .LPAL_80041B90
/* 1CF7C 80041B7C 24020002 */   addiu     $v0, $zero, 0x2
/* 1CF80 80041B80 1060000D */  beqz       $v1, .LPAL_80041BB8
/* 1CF84 80041B84 24040002 */   addiu     $a0, $zero, 0x2
/* 1CF88 80041B88 080106F0 */  j          .LPAL_80041BC0
/* 1CF8C 80041B8C 00000000 */   nop
.LPAL_80041B90:
/* 1CF90 80041B90 10620006 */  beq        $v1, $v0, .LPAL_80041BAC
/* 1CF94 80041B94 24040002 */   addiu     $a0, $zero, 0x2
/* 1CF98 80041B98 080106F0 */  j          .LPAL_80041BC0
/* 1CF9C 80041B9C 00000000 */   nop
.LPAL_80041BA0:
/* 1CFA0 80041BA0 24040002 */  addiu      $a0, $zero, 0x2
/* 1CFA4 80041BA4 080106EE */  j          .LPAL_80041BB8
/* 1CFA8 80041BA8 24050001 */   addiu     $a1, $zero, 0x1
.LPAL_80041BAC:
/* 1CFAC 80041BAC 080106EE */  j          .LPAL_80041BB8
/* 1CFB0 80041BB0 0080282D */   daddu     $a1, $a0, $zero
/* 1CFB4 80041BB4 0000282D */  daddu      $a1, $zero, $zero
.LPAL_80041BB8:
/* 1CFB8 80041BB8 0C0526CF */  jal        func_PAL_80149B3C
/* 1CFBC 80041BBC 00000000 */   nop
.LPAL_80041BC0:
/* 1CFC0 80041BC0 0C0526AA */  jal        func_PAL_80149AA8
/* 1CFC4 80041BC4 00000000 */   nop
/* 1CFC8 80041BC8 24020001 */  addiu      $v0, $zero, 0x1
/* 1CFCC 80041BCC 3C018009 */  lui        $at, %hi(D_80096A2C)
/* 1CFD0 80041BD0 A0226A2C */  sb         $v0, %lo(D_80096A2C)($at)
/* 1CFD4 80041BD4 2402000A */  addiu      $v0, $zero, 0xA
/* 1CFD8 80041BD8 AEA2009C */  sw         $v0, 0x9C($s5)
/* 1CFDC 80041BDC 24020001 */  addiu      $v0, $zero, 0x1
/* 1CFE0 80041BE0 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1CFE4 80041BE4 AC2269A4 */  sw         $v0, %lo(D_800969A4)($at)
.LPAL_80041BE8:
/* 1CFE8 80041BE8 8EA30090 */  lw         $v1, 0x90($s5)
/* 1CFEC 80041BEC 240200FF */  addiu      $v0, $zero, 0xFF
/* 1CFF0 80041BF0 14620090 */  bne        $v1, $v0, .LPAL_80041E34
/* 1CFF4 80041BF4 00000000 */   nop
/* 1CFF8 80041BF8 8EA2009C */  lw         $v0, 0x9C($s5)
/* 1CFFC 80041BFC 14400052 */  bnez       $v0, .LPAL_80041D48
/* 1D000 80041C00 2442FFFF */   addiu     $v0, $v0, -0x1
/* 1D004 80041C04 8EB40088 */  lw         $s4, 0x88($s5)
/* 1D008 80041C08 8E820000 */  lw         $v0, 0x0($s4)
/* 1D00C 80041C0C 18400019 */  blez       $v0, .LPAL_80041C74
/* 1D010 80041C10 0000982D */   daddu     $s3, $zero, $zero
/* 1D014 80041C14 0280882D */  daddu      $s1, $s4, $zero
.LPAL_80041C18:
/* 1D018 80041C18 8E300004 */  lw         $s0, 0x4($s1)
/* 1D01C 80041C1C 12000010 */  beqz       $s0, .LPAL_80041C60
/* 1D020 80041C20 00000000 */   nop
/* 1D024 80041C24 8E030000 */  lw         $v1, 0x0($s0)
/* 1D028 80041C28 30620008 */  andi       $v0, $v1, 0x8
/* 1D02C 80041C2C 10400004 */  beqz       $v0, .LPAL_80041C40
/* 1D030 80041C30 30620020 */   andi      $v0, $v1, 0x20
/* 1D034 80041C34 8EA2008C */  lw         $v0, 0x8C($s5)
/* 1D038 80041C38 16020009 */  bne        $s0, $v0, .LPAL_80041C60
/* 1D03C 80041C3C 30620020 */   andi      $v0, $v1, 0x20
.LPAL_80041C40:
/* 1D040 80041C40 14400007 */  bnez       $v0, .LPAL_80041C60
/* 1D044 80041C44 00000000 */   nop
/* 1D048 80041C48 8E020040 */  lw         $v0, 0x40($s0)
/* 1D04C 80041C4C 10400004 */  beqz       $v0, .LPAL_80041C60
/* 1D050 80041C50 00000000 */   nop
/* 1D054 80041C54 0C0B1C2B */  jal        func_PAL_802C70AC
/* 1D058 80041C58 8E040058 */   lw        $a0, 0x58($s0)
/* 1D05C 80041C5C AE000040 */  sw         $zero, 0x40($s0)
.LPAL_80041C60:
/* 1D060 80041C60 8E820000 */  lw         $v0, 0x0($s4)
/* 1D064 80041C64 26730001 */  addiu      $s3, $s3, 0x1
/* 1D068 80041C68 0262102A */  slt        $v0, $s3, $v0
/* 1D06C 80041C6C 1440FFEA */  bnez       $v0, .LPAL_80041C18
/* 1D070 80041C70 26310004 */   addiu     $s1, $s1, 0x4
.LPAL_80041C74:
/* 1D074 80041C74 0C039FAA */  jal        func_PAL_800E7EA8
/* 1D078 80041C78 00000000 */   nop
/* 1D07C 80041C7C 8EB0008C */  lw         $s0, 0x8C($s5)
/* 1D080 80041C80 A2A000A0 */  sb         $zero, 0xA0($s5)
/* 1D084 80041C84 A6A000A2 */  sh         $zero, 0xA2($s5)
/* 1D088 80041C88 920200B5 */  lbu        $v0, 0xB5($s0)
/* 1D08C 80041C8C 2404002D */  addiu      $a0, $zero, 0x2D
/* 1D090 80041C90 0C039968 */  jal        func_PAL_800E65A0
/* 1D094 80041C94 A2A20010 */   sb        $v0, 0x10($s5)
/* 1D098 80041C98 10400008 */  beqz       $v0, .LPAL_80041CBC
/* 1D09C 80041C9C 00000000 */   nop
/* 1D0A0 80041CA0 82A30005 */  lb         $v1, 0x5($s5)
/* 1D0A4 80041CA4 24020003 */  addiu      $v0, $zero, 0x3
/* 1D0A8 80041CA8 14620004 */  bne        $v1, $v0, .LPAL_80041CBC
/* 1D0AC 80041CAC 00000000 */   nop
/* 1D0B0 80041CB0 24020004 */  addiu      $v0, $zero, 0x4
/* 1D0B4 80041CB4 A2A200A0 */  sb         $v0, 0xA0($s5)
/* 1D0B8 80041CB8 A6A300A2 */  sh         $v1, 0xA2($s5)
.LPAL_80041CBC:
/* 1D0BC 80041CBC 0C052207 */  jal        func_PAL_8014881C
/* 1D0C0 80041CC0 24042111 */   addiu     $a0, $zero, 0x2111
/* 1D0C4 80041CC4 0C052207 */  jal        func_PAL_8014881C
/* 1D0C8 80041CC8 24042112 */   addiu     $a0, $zero, 0x2112
/* 1D0CC 80041CCC 0C052207 */  jal        func_PAL_8014881C
/* 1D0D0 80041CD0 24042113 */   addiu     $a0, $zero, 0x2113
/* 1D0D4 80041CD4 0C052207 */  jal        func_PAL_8014881C
/* 1D0D8 80041CD8 24042114 */   addiu     $a0, $zero, 0x2114
/* 1D0DC 80041CDC 0C01BFFB */  jal        func_PAL_8006FFEC
/* 1D0E0 80041CE0 0000202D */   daddu     $a0, $zero, $zero
/* 1D0E4 80041CE4 86840046 */  lh         $a0, 0x46($s4)
/* 1D0E8 80041CE8 0C01BFF7 */  jal        func_PAL_8006FFDC
/* 1D0EC 80041CEC 00000000 */   nop
/* 1D0F0 80041CF0 0C01BFE8 */  jal        func_PAL_8006FFA0
/* 1D0F4 80041CF4 86840044 */   lh        $a0, 0x44($s4)
/* 1D0F8 80041CF8 0000202D */  daddu      $a0, $zero, $zero
/* 1D0FC 80041CFC 3C05437F */  lui        $a1, (0x437F0000 >> 16)
/* 1D100 80041D00 24020001 */  addiu      $v0, $zero, 0x1
/* 1D104 80041D04 A2A20007 */  sb         $v0, 0x7($s5)
/* 1D108 80041D08 240200FF */  addiu      $v0, $zero, 0xFF
/* 1D10C 80041D0C A2A00008 */  sb         $zero, 0x8($s5)
/* 1D110 80041D10 A2A0000B */  sb         $zero, 0xB($s5)
/* 1D114 80041D14 A2A0000C */  sb         $zero, 0xC($s5)
/* 1D118 80041D18 A6A0000E */  sh         $zero, 0xE($s5)
/* 1D11C 80041D1C AEA00098 */  sw         $zero, 0x98($s5)
/* 1D120 80041D20 0C04DA4A */  jal        func_PAL_80136928
/* 1D124 80041D24 AEA20090 */   sw        $v0, 0x90($s5)
/* 1D128 80041D28 24020005 */  addiu      $v0, $zero, 0x5
/* 1D12C 80041D2C 3C018009 */  lui        $at, %hi(D_800969D4)
/* 1D130 80041D30 AC2269D4 */  sw         $v0, %lo(D_800969D4)($at)
/* 1D134 80041D34 0801077D */  j          .LPAL_80041DF4
/* 1D138 80041D38 24020001 */   addiu     $v0, $zero, 0x1
.LPAL_80041D3C:
/* 1D13C 80041D3C 8EA2009C */  lw         $v0, 0x9C($s5)
/* 1D140 80041D40 10400003 */  beqz       $v0, .LPAL_80041D50
/* 1D144 80041D44 2442FFFF */   addiu     $v0, $v0, -0x1
.LPAL_80041D48:
/* 1D148 80041D48 0801078D */  j          .LPAL_80041E34
/* 1D14C 80041D4C AEA2009C */   sw        $v0, 0x9C($s5)
.LPAL_80041D50:
/* 1D150 80041D50 8EB40088 */  lw         $s4, 0x88($s5)
/* 1D154 80041D54 8E820000 */  lw         $v0, 0x0($s4)
/* 1D158 80041D58 18400019 */  blez       $v0, .LPAL_80041DC0
/* 1D15C 80041D5C 0000982D */   daddu     $s3, $zero, $zero
/* 1D160 80041D60 0280882D */  daddu      $s1, $s4, $zero
.LPAL_80041D64:
/* 1D164 80041D64 8E300004 */  lw         $s0, 0x4($s1)
/* 1D168 80041D68 12000010 */  beqz       $s0, .LPAL_80041DAC
/* 1D16C 80041D6C 00000000 */   nop
/* 1D170 80041D70 8E030000 */  lw         $v1, 0x0($s0)
/* 1D174 80041D74 30620008 */  andi       $v0, $v1, 0x8
/* 1D178 80041D78 10400004 */  beqz       $v0, .LPAL_80041D8C
/* 1D17C 80041D7C 30620020 */   andi      $v0, $v1, 0x20
/* 1D180 80041D80 8EA2008C */  lw         $v0, 0x8C($s5)
/* 1D184 80041D84 16020009 */  bne        $s0, $v0, .LPAL_80041DAC
/* 1D188 80041D88 30620020 */   andi      $v0, $v1, 0x20
.LPAL_80041D8C:
/* 1D18C 80041D8C 14400007 */  bnez       $v0, .LPAL_80041DAC
/* 1D190 80041D90 00000000 */   nop
/* 1D194 80041D94 8E020040 */  lw         $v0, 0x40($s0)
/* 1D198 80041D98 10400004 */  beqz       $v0, .LPAL_80041DAC
/* 1D19C 80041D9C 00000000 */   nop
/* 1D1A0 80041DA0 0C0B1C2B */  jal        func_PAL_802C70AC
/* 1D1A4 80041DA4 8E040058 */   lw        $a0, 0x58($s0)
/* 1D1A8 80041DA8 AE000040 */  sw         $zero, 0x40($s0)
.LPAL_80041DAC:
/* 1D1AC 80041DAC 8E820000 */  lw         $v0, 0x0($s4)
/* 1D1B0 80041DB0 26730001 */  addiu      $s3, $s3, 0x1
/* 1D1B4 80041DB4 0262102A */  slt        $v0, $s3, $v0
/* 1D1B8 80041DB8 1440FFEA */  bnez       $v0, .LPAL_80041D64
/* 1D1BC 80041DBC 26310004 */   addiu     $s1, $s1, 0x4
.LPAL_80041DC0:
/* 1D1C0 80041DC0 24020001 */  addiu      $v0, $zero, 0x1
/* 1D1C4 80041DC4 A2A20008 */  sb         $v0, 0x8($s5)
/* 1D1C8 80041DC8 A2A20007 */  sb         $v0, 0x7($s5)
/* 1D1CC 80041DCC 24020005 */  addiu      $v0, $zero, 0x5
/* 1D1D0 80041DD0 A2A00009 */  sb         $zero, 0x9($s5)
/* 1D1D4 80041DD4 A2A0000B */  sb         $zero, 0xB($s5)
/* 1D1D8 80041DD8 A2A0000C */  sb         $zero, 0xC($s5)
/* 1D1DC 80041DDC 3C018009 */  lui        $at, %hi(D_800969D4)
/* 1D1E0 80041DE0 AC2269D4 */  sw         $v0, %lo(D_800969D4)($at)
/* 1D1E4 80041DE4 24020001 */  addiu      $v0, $zero, 0x1
/* 1D1E8 80041DE8 A6A0000E */  sh         $zero, 0xE($s5)
/* 1D1EC 80041DEC AEA00098 */  sw         $zero, 0x98($s5)
/* 1D1F0 80041DF0 AEA00090 */  sw         $zero, 0x90($s5)
.LPAL_80041DF4:
/* 1D1F4 80041DF4 3C018009 */  lui        $at, %hi(D_80096A50)
/* 1D1F8 80041DF8 AC226A50 */  sw         $v0, %lo(D_80096A50)($at)
/* 1D1FC 80041DFC 3C018009 */  lui        $at, %hi(D_800969A4)
/* 1D200 80041E00 AC2069A4 */  sw         $zero, %lo(D_800969A4)($at)
/* 1D204 80041E04 0801078D */  j          .LPAL_80041E34
/* 1D208 80041E08 00000000 */   nop
.LPAL_80041E0C:
/* 1D20C 80041E0C A2A20009 */  sb         $v0, 0x9($s5)
/* 1D210 80041E10 24020005 */  addiu      $v0, $zero, 0x5
/* 1D214 80041E14 A2A50008 */  sb         $a1, 0x8($s5)
/* 1D218 80041E18 AEA00090 */  sw         $zero, 0x90($s5)
/* 1D21C 80041E1C AEA00098 */  sw         $zero, 0x98($s5)
/* 1D220 80041E20 3C018009 */  lui        $at, %hi(D_800969D4)
/* 1D224 80041E24 AC2269D4 */  sw         $v0, %lo(D_800969D4)($at)
/* 1D228 80041E28 3C018009 */  lui        $at, %hi(D_80096A50)
/* 1D22C 80041E2C AC256A50 */  sw         $a1, %lo(D_80096A50)($at)
/* 1D230 80041E30 AC800000 */  sw         $zero, 0x0($a0)
.LPAL_80041E34:
/* 1D234 80041E34 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1D238 80041E38 8FB7002C */  lw         $s7, 0x2C($sp)
/* 1D23C 80041E3C 8FB60028 */  lw         $s6, 0x28($sp)
/* 1D240 80041E40 8FB50024 */  lw         $s5, 0x24($sp)
/* 1D244 80041E44 8FB40020 */  lw         $s4, 0x20($sp)
/* 1D248 80041E48 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1D24C 80041E4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1D250 80041E50 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D254 80041E54 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D258 80041E58 03E00008 */  jr         $ra
/* 1D25C 80041E5C 27BD0038 */   addiu     $sp, $sp, 0x38

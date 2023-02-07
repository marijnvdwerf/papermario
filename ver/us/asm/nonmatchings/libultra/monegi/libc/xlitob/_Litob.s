.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel _Litob
/* 45C80 8006A880 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 45C84 8006A884 AFB3004C */  sw         $s3, 0x4C($sp)
/* 45C88 8006A888 00809821 */  addu       $s3, $a0, $zero
/* 45C8C 8006A88C 00052E00 */  sll        $a1, $a1, 24
/* 45C90 8006A890 00052E03 */  sra        $a1, $a1, 24
/* 45C94 8006A894 24020058 */  addiu      $v0, $zero, 0x58
/* 45C98 8006A898 AFBF005C */  sw         $ra, 0x5C($sp)
/* 45C9C 8006A89C AFB60058 */  sw         $s6, 0x58($sp)
/* 45CA0 8006A8A0 AFB50054 */  sw         $s5, 0x54($sp)
/* 45CA4 8006A8A4 AFB40050 */  sw         $s4, 0x50($sp)
/* 45CA8 8006A8A8 AFB20048 */  sw         $s2, 0x48($sp)
/* 45CAC 8006A8AC AFB10044 */  sw         $s1, 0x44($sp)
/* 45CB0 8006A8B0 14A20005 */  bne        $a1, $v0, .L8006A8C8
/* 45CB4 8006A8B4 AFB00040 */   sw        $s0, 0x40($sp)
/* 45CB8 8006A8B8 3C168009 */  lui        $s6, %hi(xlitob_udigs)
/* 45CBC 8006A8BC 26D645D4 */  addiu      $s6, $s6, %lo(xlitob_udigs)
/* 45CC0 8006A8C0 0801AA35 */  j          .L8006A8D4
/* 45CC4 8006A8C4 2402006F */   addiu     $v0, $zero, 0x6F
.L8006A8C8:
/* 45CC8 8006A8C8 3C168009 */  lui        $s6, %hi(xlitob_ldigs)
/* 45CCC 8006A8CC 26D645C0 */  addiu      $s6, $s6, %lo(xlitob_ldigs)
/* 45CD0 8006A8D0 2402006F */  addiu      $v0, $zero, 0x6F
.L8006A8D4:
/* 45CD4 8006A8D4 10A20007 */  beq        $a1, $v0, .L8006A8F4
/* 45CD8 8006A8D8 24020078 */   addiu     $v0, $zero, 0x78
/* 45CDC 8006A8DC 10A20003 */  beq        $a1, $v0, .L8006A8EC
/* 45CE0 8006A8E0 24020058 */   addiu     $v0, $zero, 0x58
/* 45CE4 8006A8E4 14A20004 */  bne        $a1, $v0, .L8006A8F8
/* 45CE8 8006A8E8 2414000A */   addiu     $s4, $zero, 0xA
.L8006A8EC:
/* 45CEC 8006A8EC 0801AA3E */  j          .L8006A8F8
/* 45CF0 8006A8F0 24140010 */   addiu     $s4, $zero, 0x10
.L8006A8F4:
/* 45CF4 8006A8F4 24140008 */  addiu      $s4, $zero, 0x8
.L8006A8F8:
/* 45CF8 8006A8F8 8E700000 */  lw         $s0, 0x0($s3)
/* 45CFC 8006A8FC 8E710004 */  lw         $s1, 0x4($s3)
/* 45D00 8006A900 24020064 */  addiu      $v0, $zero, 0x64
/* 45D04 8006A904 10A20004 */  beq        $a1, $v0, .L8006A918
/* 45D08 8006A908 24120018 */   addiu     $s2, $zero, 0x18
/* 45D0C 8006A90C 24020069 */  addiu      $v0, $zero, 0x69
/* 45D10 8006A910 14A20009 */  bne        $a1, $v0, .L8006A938
/* 45D14 8006A914 02301025 */   or        $v0, $s1, $s0
.L8006A918:
/* 45D18 8006A918 8E620000 */  lw         $v0, 0x0($s3)
/* 45D1C 8006A91C 04410006 */  bgez       $v0, .L8006A938
/* 45D20 8006A920 02301025 */   or        $v0, $s1, $s0
/* 45D24 8006A924 00118823 */  negu       $s1, $s1
/* 45D28 8006A928 00108023 */  negu       $s0, $s0
/* 45D2C 8006A92C 0011102B */  sltu       $v0, $zero, $s1
/* 45D30 8006A930 02028023 */  subu       $s0, $s0, $v0
/* 45D34 8006A934 02301025 */  or         $v0, $s1, $s0
.L8006A938:
/* 45D38 8006A938 14400004 */  bnez       $v0, .L8006A94C
/* 45D3C 8006A93C 02803821 */   addu      $a3, $s4, $zero
/* 45D40 8006A940 8E620024 */  lw         $v0, 0x24($s3)
/* 45D44 8006A944 1040000B */  beqz       $v0, .L8006A974
/* 45D48 8006A948 0014AFC3 */   sra       $s5, $s4, 31
.L8006A94C:
/* 45D4C 8006A94C 00003021 */  addu       $a2, $zero, $zero
/* 45D50 8006A950 02002021 */  addu       $a0, $s0, $zero
/* 45D54 8006A954 0C01B7A0 */  jal        __umoddi3
/* 45D58 8006A958 02202821 */   addu      $a1, $s1, $zero
/* 45D5C 8006A95C 02C32021 */  addu       $a0, $s6, $v1
/* 45D60 8006A960 90850000 */  lbu        $a1, 0x0($a0)
/* 45D64 8006A964 24120017 */  addiu      $s2, $zero, 0x17
/* 45D68 8006A968 A3A5002F */  sb         $a1, 0x2F($sp)
/* 45D6C 8006A96C 02803821 */  addu       $a3, $s4, $zero
/* 45D70 8006A970 0014AFC3 */  sra        $s5, $s4, 31
.L8006A974:
/* 45D74 8006A974 02A03021 */  addu       $a2, $s5, $zero
/* 45D78 8006A978 02002021 */  addu       $a0, $s0, $zero
/* 45D7C 8006A97C 0C01B648 */  jal        __udivdi3
/* 45D80 8006A980 02202821 */   addu      $a1, $s1, $zero
/* 45D84 8006A984 AE620000 */  sw         $v0, 0x0($s3)
/* 45D88 8006A988 AE630004 */  sw         $v1, 0x4($s3)
/* 45D8C 8006A98C 8E620000 */  lw         $v0, 0x0($s3)
/* 45D90 8006A990 1C400006 */  bgtz       $v0, .L8006A9AC
/* 45D94 8006A994 00000000 */   nop
/* 45D98 8006A998 5440001C */  bnel       $v0, $zero, .L8006AA0C
/* 45D9C 8006A99C 27A50018 */   addiu     $a1, $sp, 0x18
/* 45DA0 8006A9A0 8E620004 */  lw         $v0, 0x4($s3)
.L8006A9A4:
/* 45DA4 8006A9A4 10400019 */  beqz       $v0, .L8006AA0C
/* 45DA8 8006A9A8 27A50018 */   addiu     $a1, $sp, 0x18
.L8006A9AC:
/* 45DAC 8006A9AC 1A400016 */  blez       $s2, .L8006AA08
/* 45DB0 8006A9B0 02801821 */   addu      $v1, $s4, $zero
/* 45DB4 8006A9B4 02A01021 */  addu       $v0, $s5, $zero
/* 45DB8 8006A9B8 8E660000 */  lw         $a2, 0x0($s3)
/* 45DBC 8006A9BC 8E670004 */  lw         $a3, 0x4($s3)
/* 45DC0 8006A9C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 45DC4 8006A9C4 AFA30014 */  sw         $v1, 0x14($sp)
/* 45DC8 8006A9C8 0C01B327 */  jal        lldiv
/* 45DCC 8006A9CC 27A40030 */   addiu     $a0, $sp, 0x30
/* 45DD0 8006A9D0 2652FFFF */  addiu      $s2, $s2, -0x1
/* 45DD4 8006A9D4 8FA3003C */  lw         $v1, 0x3C($sp)
/* 45DD8 8006A9D8 8FA80030 */  lw         $t0, 0x30($sp)
/* 45DDC 8006A9DC 8FA90034 */  lw         $t1, 0x34($sp)
/* 45DE0 8006A9E0 02C31821 */  addu       $v1, $s6, $v1
/* 45DE4 8006A9E4 AE680000 */  sw         $t0, 0x0($s3)
/* 45DE8 8006A9E8 AE690004 */  sw         $t1, 0x4($s3)
/* 45DEC 8006A9EC 90640000 */  lbu        $a0, 0x0($v1)
/* 45DF0 8006A9F0 8E630000 */  lw         $v1, 0x0($s3)
/* 45DF4 8006A9F4 03B21021 */  addu       $v0, $sp, $s2
/* 45DF8 8006A9F8 1C60FFEC */  bgtz       $v1, .L8006A9AC
/* 45DFC 8006A9FC A0440018 */   sb        $a0, 0x18($v0)
/* 45E00 8006AA00 5060FFE8 */  beql       $v1, $zero, .L8006A9A4
/* 45E04 8006AA04 8E620004 */   lw        $v0, 0x4($s3)
.L8006AA08:
/* 45E08 8006AA08 27A50018 */  addiu      $a1, $sp, 0x18
.L8006AA0C:
/* 45E0C 8006AA0C 00B22821 */  addu       $a1, $a1, $s2
/* 45E10 8006AA10 24020018 */  addiu      $v0, $zero, 0x18
/* 45E14 8006AA14 00521023 */  subu       $v0, $v0, $s2
/* 45E18 8006AA18 8E640008 */  lw         $a0, 0x8($s3)
/* 45E1C 8006AA1C 00403021 */  addu       $a2, $v0, $zero
/* 45E20 8006AA20 0C018B09 */  jal        memcpy
/* 45E24 8006AA24 AE620014 */   sw        $v0, 0x14($s3)
/* 45E28 8006AA28 8E640014 */  lw         $a0, 0x14($s3)
/* 45E2C 8006AA2C 8E630024 */  lw         $v1, 0x24($s3)
/* 45E30 8006AA30 0083102A */  slt        $v0, $a0, $v1
/* 45E34 8006AA34 10400002 */  beqz       $v0, .L8006AA40
/* 45E38 8006AA38 00641023 */   subu      $v0, $v1, $a0
/* 45E3C 8006AA3C AE620010 */  sw         $v0, 0x10($s3)
.L8006AA40:
/* 45E40 8006AA40 04610011 */  bgez       $v1, .L8006AA88
/* 45E44 8006AA44 8FBF005C */   lw        $ra, 0x5C($sp)
/* 45E48 8006AA48 8E620030 */  lw         $v0, 0x30($s3)
/* 45E4C 8006AA4C 24030010 */  addiu      $v1, $zero, 0x10
/* 45E50 8006AA50 30420014 */  andi       $v0, $v0, 0x14
/* 45E54 8006AA54 1443000D */  bne        $v0, $v1, .L8006AA8C
/* 45E58 8006AA58 8FB60058 */   lw        $s6, 0x58($sp)
/* 45E5C 8006AA5C 8E620028 */  lw         $v0, 0x28($s3)
/* 45E60 8006AA60 8E63000C */  lw         $v1, 0xC($s3)
/* 45E64 8006AA64 00431023 */  subu       $v0, $v0, $v1
/* 45E68 8006AA68 8E630010 */  lw         $v1, 0x10($s3)
/* 45E6C 8006AA6C 8E640014 */  lw         $a0, 0x14($s3)
/* 45E70 8006AA70 00431023 */  subu       $v0, $v0, $v1
/* 45E74 8006AA74 00449023 */  subu       $s2, $v0, $a0
/* 45E78 8006AA78 1A400004 */  blez       $s2, .L8006AA8C
/* 45E7C 8006AA7C 00721021 */   addu      $v0, $v1, $s2
/* 45E80 8006AA80 AE620010 */  sw         $v0, 0x10($s3)
/* 45E84 8006AA84 8FBF005C */  lw         $ra, 0x5C($sp)
.L8006AA88:
/* 45E88 8006AA88 8FB60058 */  lw         $s6, 0x58($sp)
.L8006AA8C:
/* 45E8C 8006AA8C 8FB50054 */  lw         $s5, 0x54($sp)
/* 45E90 8006AA90 8FB40050 */  lw         $s4, 0x50($sp)
/* 45E94 8006AA94 8FB3004C */  lw         $s3, 0x4C($sp)
/* 45E98 8006AA98 8FB20048 */  lw         $s2, 0x48($sp)
/* 45E9C 8006AA9C 8FB10044 */  lw         $s1, 0x44($sp)
/* 45EA0 8006AAA0 8FB00040 */  lw         $s0, 0x40($sp)
/* 45EA4 8006AAA4 03E00008 */  jr         $ra
/* 45EA8 8006AAA8 27BD0060 */   addiu     $sp, $sp, 0x60
/* 45EAC 8006AAAC 00000000 */  nop

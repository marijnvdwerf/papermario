.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osPfsIsPlug
/* 47CA0 8006C8A0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 47CA4 8006C8A4 AFB00028 */  sw         $s0, 0x28($sp)
/* 47CA8 8006C8A8 24100003 */  addiu      $s0, $zero, 0x3
/* 47CAC 8006C8AC AFB20030 */  sw         $s2, 0x30($sp)
/* 47CB0 8006C8B0 00009021 */  addu       $s2, $zero, $zero
/* 47CB4 8006C8B4 AFB40038 */  sw         $s4, 0x38($sp)
/* 47CB8 8006C8B8 0080A021 */  addu       $s4, $a0, $zero
/* 47CBC 8006C8BC AFB70044 */  sw         $s7, 0x44($sp)
/* 47CC0 8006C8C0 00A0B821 */  addu       $s7, $a1, $zero
/* 47CC4 8006C8C4 AFBF0048 */  sw         $ra, 0x48($sp)
/* 47CC8 8006C8C8 AFB60040 */  sw         $s6, 0x40($sp)
/* 47CCC 8006C8CC AFB5003C */  sw         $s5, 0x3C($sp)
/* 47CD0 8006C8D0 AFB30034 */  sw         $s3, 0x34($sp)
/* 47CD4 8006C8D4 0C018FE5 */  jal        __osSiGetAccess
/* 47CD8 8006C8D8 AFB1002C */   sw        $s1, 0x2C($sp)
/* 47CDC 8006C8DC 3C13800E */  lui        $s3, %hi(__osPfsPifRam)
/* 47CE0 8006C8E0 26738360 */  addiu      $s3, $s3, %lo(__osPfsPifRam)
/* 47CE4 8006C8E4 27B10024 */  addiu      $s1, $sp, 0x24
/* 47CE8 8006C8E8 27B50010 */  addiu      $s5, $sp, 0x10
.L8006C8EC:
/* 47CEC 8006C8EC 0C01B285 */  jal        __osPfsRequestData
/* 47CF0 8006C8F0 00002021 */   addu      $a0, $zero, $zero
/* 47CF4 8006C8F4 24040001 */  addiu      $a0, $zero, 0x1
/* 47CF8 8006C8F8 0C018F98 */  jal        __osSiRawStartDma
/* 47CFC 8006C8FC 02602821 */   addu      $a1, $s3, $zero
/* 47D00 8006C900 02802021 */  addu       $a0, $s4, $zero
/* 47D04 8006C904 02202821 */  addu       $a1, $s1, $zero
/* 47D08 8006C908 0C018DCC */  jal        osRecvMesg
/* 47D0C 8006C90C 24060001 */   addiu     $a2, $zero, 0x1
/* 47D10 8006C910 00002021 */  addu       $a0, $zero, $zero
/* 47D14 8006C914 0C018F98 */  jal        __osSiRawStartDma
/* 47D18 8006C918 02602821 */   addu      $a1, $s3, $zero
/* 47D1C 8006C91C 02802021 */  addu       $a0, $s4, $zero
/* 47D20 8006C920 02202821 */  addu       $a1, $s1, $zero
/* 47D24 8006C924 24060001 */  addiu      $a2, $zero, 0x1
/* 47D28 8006C928 0C018DCC */  jal        osRecvMesg
/* 47D2C 8006C92C 0040B021 */   addu      $s6, $v0, $zero
/* 47D30 8006C930 27A40020 */  addiu      $a0, $sp, 0x20
/* 47D34 8006C934 0C01B2AD */  jal        __osPfsGetInitData
/* 47D38 8006C938 27A50010 */   addiu     $a1, $sp, 0x10
/* 47D3C 8006C93C 3C05800A */  lui        $a1, %hi(__osMaxControllers)
/* 47D40 8006C940 90A591D2 */  lbu        $a1, %lo(__osMaxControllers)($a1)
/* 47D44 8006C944 10A0000C */  beqz       $a1, .L8006C978
/* 47D48 8006C948 00002021 */   addu      $a0, $zero, $zero
/* 47D4C 8006C94C 00A03021 */  addu       $a2, $a1, $zero
/* 47D50 8006C950 26A30002 */  addiu      $v1, $s5, 0x2
.L8006C954:
/* 47D54 8006C954 90620000 */  lbu        $v0, 0x0($v1)
/* 47D58 8006C958 30420004 */  andi       $v0, $v0, 0x4
/* 47D5C 8006C95C 54400003 */  bnel       $v0, $zero, .L8006C96C
/* 47D60 8006C960 24840001 */   addiu     $a0, $a0, 0x1
/* 47D64 8006C964 0801B25E */  j          .L8006C978
/* 47D68 8006C968 2610FFFF */   addiu     $s0, $s0, -0x1
.L8006C96C:
/* 47D6C 8006C96C 0086102A */  slt        $v0, $a0, $a2
/* 47D70 8006C970 1440FFF8 */  bnez       $v0, .L8006C954
/* 47D74 8006C974 24630004 */   addiu     $v1, $v1, 0x4
.L8006C978:
/* 47D78 8006C978 50850001 */  beql       $a0, $a1, .L8006C980
/* 47D7C 8006C97C 00008021 */   addu      $s0, $zero, $zero
.L8006C980:
/* 47D80 8006C980 1E00FFDA */  bgtz       $s0, .L8006C8EC
/* 47D84 8006C984 00000000 */   nop
/* 47D88 8006C988 10A00013 */  beqz       $a1, .L8006C9D8
/* 47D8C 8006C98C 00002021 */   addu      $a0, $zero, $zero
/* 47D90 8006C990 24070001 */  addiu      $a3, $zero, 0x1
/* 47D94 8006C994 00A03021 */  addu       $a2, $a1, $zero
/* 47D98 8006C998 27A50012 */  addiu      $a1, $sp, 0x12
/* 47D9C 8006C99C 27A30013 */  addiu      $v1, $sp, 0x13
.L8006C9A0:
/* 47DA0 8006C9A0 90620000 */  lbu        $v0, 0x0($v1)
/* 47DA4 8006C9A4 54400008 */  bnel       $v0, $zero, .L8006C9C8
/* 47DA8 8006C9A8 24A50004 */   addiu     $a1, $a1, 0x4
/* 47DAC 8006C9AC 90A20000 */  lbu        $v0, 0x0($a1)
/* 47DB0 8006C9B0 30420001 */  andi       $v0, $v0, 0x1
/* 47DB4 8006C9B4 10400004 */  beqz       $v0, .L8006C9C8
/* 47DB8 8006C9B8 24A50004 */   addiu     $a1, $a1, 0x4
/* 47DBC 8006C9BC 00871004 */  sllv       $v0, $a3, $a0
/* 47DC0 8006C9C0 02421025 */  or         $v0, $s2, $v0
/* 47DC4 8006C9C4 305200FF */  andi       $s2, $v0, 0xFF
.L8006C9C8:
/* 47DC8 8006C9C8 24840001 */  addiu      $a0, $a0, 0x1
/* 47DCC 8006C9CC 0086102A */  slt        $v0, $a0, $a2
/* 47DD0 8006C9D0 1440FFF3 */  bnez       $v0, .L8006C9A0
/* 47DD4 8006C9D4 24630004 */   addiu     $v1, $v1, 0x4
.L8006C9D8:
/* 47DD8 8006C9D8 0C018FF4 */  jal        __osSiRelAccess
/* 47DDC 8006C9DC 00000000 */   nop
/* 47DE0 8006C9E0 8FBF0048 */  lw         $ra, 0x48($sp)
/* 47DE4 8006C9E4 02C01021 */  addu       $v0, $s6, $zero
/* 47DE8 8006C9E8 A2F20000 */  sb         $s2, 0x0($s7)
/* 47DEC 8006C9EC 8FB70044 */  lw         $s7, 0x44($sp)
/* 47DF0 8006C9F0 8FB60040 */  lw         $s6, 0x40($sp)
/* 47DF4 8006C9F4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 47DF8 8006C9F8 8FB40038 */  lw         $s4, 0x38($sp)
/* 47DFC 8006C9FC 8FB30034 */  lw         $s3, 0x34($sp)
/* 47E00 8006CA00 8FB20030 */  lw         $s2, 0x30($sp)
/* 47E04 8006CA04 8FB1002C */  lw         $s1, 0x2C($sp)
/* 47E08 8006CA08 8FB00028 */  lw         $s0, 0x28($sp)
/* 47E0C 8006CA0C 03E00008 */  jr         $ra
/* 47E10 8006CA10 27BD0050 */   addiu     $sp, $sp, 0x50

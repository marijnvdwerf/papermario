.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSendMesg
/* 3ECA0 800638A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3ECA4 800638A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3ECA8 800638A8 AFBE0018 */  sw         $fp, 0x18($sp)
/* 3ECAC 800638AC AFB10014 */  sw         $s1, 0x14($sp)
/* 3ECB0 800638B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 3ECB4 800638B4 03A0F021 */  addu       $fp, $sp, $zero
/* 3ECB8 800638B8 AFC40020 */  sw         $a0, 0x20($fp)
/* 3ECBC 800638BC AFC50024 */  sw         $a1, 0x24($fp)
/* 3ECC0 800638C0 0C019B40 */  jal        __osDisableInt
/* 3ECC4 800638C4 AFC60028 */   sw        $a2, 0x28($fp)
/* 3ECC8 800638C8 00408021 */  addu       $s0, $v0, $zero
.L800638CC:
/* 3ECCC 800638CC 8FC20020 */  lw         $v0, 0x20($fp)
/* 3ECD0 800638D0 8FC30020 */  lw         $v1, 0x20($fp)
/* 3ECD4 800638D4 8C420008 */  lw         $v0, 0x8($v0)
/* 3ECD8 800638D8 8C630010 */  lw         $v1, 0x10($v1)
/* 3ECDC 800638DC 0043102A */  slt        $v0, $v0, $v1
/* 3ECE0 800638E0 10400003 */  beqz       $v0, .L800638F0
/* 3ECE4 800638E4 00000000 */   nop
/* 3ECE8 800638E8 08018E50 */  j          .L80063940
/* 3ECEC 800638EC 00000000 */   nop
.L800638F0:
/* 3ECF0 800638F0 8FC20028 */  lw         $v0, 0x28($fp)
/* 3ECF4 800638F4 24030001 */  addiu      $v1, $zero, 0x1
/* 3ECF8 800638F8 1443000B */  bne        $v0, $v1, .L80063928
/* 3ECFC 800638FC 00000000 */   nop
/* 3ED00 80063900 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 3ED04 80063904 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 3ED08 80063908 24030008 */  addiu      $v1, $zero, 0x8
/* 3ED0C 8006390C A4430010 */  sh         $v1, 0x10($v0)
/* 3ED10 80063910 8FC30020 */  lw         $v1, 0x20($fp)
/* 3ED14 80063914 24620004 */  addiu      $v0, $v1, 0x4
/* 3ED18 80063918 0C019A81 */  jal        __osEnqueueAndYield
/* 3ED1C 8006391C 00402021 */   addu      $a0, $v0, $zero
/* 3ED20 80063920 08018E4E */  j          .L80063938
/* 3ED24 80063924 00000000 */   nop
.L80063928:
/* 3ED28 80063928 0C019B5C */  jal        __osRestoreInt
/* 3ED2C 8006392C 02002021 */   addu      $a0, $s0, $zero
/* 3ED30 80063930 08018E7C */  j          .L800639F0
/* 3ED34 80063934 2402FFFF */   addiu     $v0, $zero, -0x1
.L80063938:
/* 3ED38 80063938 08018E33 */  j          .L800638CC
/* 3ED3C 8006393C 00000000 */   nop
.L80063940:
/* 3ED40 80063940 8FC20020 */  lw         $v0, 0x20($fp)
/* 3ED44 80063944 8FC30020 */  lw         $v1, 0x20($fp)
/* 3ED48 80063948 8C42000C */  lw         $v0, 0xC($v0)
/* 3ED4C 8006394C 8C630008 */  lw         $v1, 0x8($v1)
/* 3ED50 80063950 00438821 */  addu       $s1, $v0, $v1
/* 3ED54 80063954 8FC20020 */  lw         $v0, 0x20($fp)
/* 3ED58 80063958 8C430010 */  lw         $v1, 0x10($v0)
/* 3ED5C 8006395C 14600002 */  bnez       $v1, .L80063968
/* 3ED60 80063960 0223001A */   div       $zero, $s1, $v1
/* 3ED64 80063964 0007000D */  break      7
.L80063968:
/* 3ED68 80063968 2401FFFF */  addiu      $at, $zero, -0x1
/* 3ED6C 8006396C 14610004 */  bne        $v1, $at, .L80063980
/* 3ED70 80063970 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 3ED74 80063974 16210002 */  bne        $s1, $at, .L80063980
/* 3ED78 80063978 00000000 */   nop
/* 3ED7C 8006397C 0006000D */  break      6
.L80063980:
/* 3ED80 80063980 00001010 */  mfhi       $v0
/* 3ED84 80063984 00408821 */  addu       $s1, $v0, $zero
/* 3ED88 80063988 8FC20020 */  lw         $v0, 0x20($fp)
/* 3ED8C 8006398C 02201821 */  addu       $v1, $s1, $zero
/* 3ED90 80063990 00032080 */  sll        $a0, $v1, 2
/* 3ED94 80063994 8C430014 */  lw         $v1, 0x14($v0)
/* 3ED98 80063998 00831021 */  addu       $v0, $a0, $v1
/* 3ED9C 8006399C 8FC30024 */  lw         $v1, 0x24($fp)
/* 3EDA0 800639A0 AC430000 */  sw         $v1, 0x0($v0)
/* 3EDA4 800639A4 8FC30020 */  lw         $v1, 0x20($fp)
/* 3EDA8 800639A8 8FC20020 */  lw         $v0, 0x20($fp)
/* 3EDAC 800639AC 8FC30020 */  lw         $v1, 0x20($fp)
/* 3EDB0 800639B0 8C640008 */  lw         $a0, 0x8($v1)
/* 3EDB4 800639B4 24830001 */  addiu      $v1, $a0, 0x1
/* 3EDB8 800639B8 AC430008 */  sw         $v1, 0x8($v0)
/* 3EDBC 800639BC 8FC20020 */  lw         $v0, 0x20($fp)
/* 3EDC0 800639C0 8C430000 */  lw         $v1, 0x0($v0)
/* 3EDC4 800639C4 8C620000 */  lw         $v0, 0x0($v1)
/* 3EDC8 800639C8 10400005 */  beqz       $v0, .L800639E0
/* 3EDCC 800639CC 00000000 */   nop
/* 3EDD0 800639D0 0C019AD6 */  jal        __osPopThread
/* 3EDD4 800639D4 8FC40020 */   lw        $a0, 0x20($fp)
/* 3EDD8 800639D8 0C0190A0 */  jal        osStartThread
/* 3EDDC 800639DC 00402021 */   addu      $a0, $v0, $zero
.L800639E0:
/* 3EDE0 800639E0 0C019B5C */  jal        __osRestoreInt
/* 3EDE4 800639E4 02002021 */   addu      $a0, $s0, $zero
/* 3EDE8 800639E8 08018E7C */  j          .L800639F0
/* 3EDEC 800639EC 00001021 */   addu      $v0, $zero, $zero
.L800639F0:
/* 3EDF0 800639F0 03C0E821 */  addu       $sp, $fp, $zero
/* 3EDF4 800639F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3EDF8 800639F8 8FBE0018 */  lw         $fp, 0x18($sp)
/* 3EDFC 800639FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 3EE00 80063A00 8FB00010 */  lw         $s0, 0x10($sp)
/* 3EE04 80063A04 03E00008 */  jr         $ra
/* 3EE08 80063A08 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3EE0C 80063A0C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osDestroyThread
/* 46CE0 8006B8E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 46CE4 8006B8E4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 46CE8 8006B8E8 AFBE001C */  sw         $fp, 0x1C($sp)
/* 46CEC 8006B8EC AFB20018 */  sw         $s2, 0x18($sp)
/* 46CF0 8006B8F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 46CF4 8006B8F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 46CF8 8006B8F8 03A0F021 */  addu       $fp, $sp, $zero
/* 46CFC 8006B8FC 0C019B40 */  jal        __osDisableInt
/* 46D00 8006B900 AFC40028 */   sw        $a0, 0x28($fp)
/* 46D04 8006B904 00408021 */  addu       $s0, $v0, $zero
/* 46D08 8006B908 8FC20028 */  lw         $v0, 0x28($fp)
/* 46D0C 8006B90C 14400005 */  bnez       $v0, .L8006B924
/* 46D10 8006B910 00000000 */   nop
/* 46D14 8006B914 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 46D18 8006B918 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 46D1C 8006B91C 0801AE52 */  j          .L8006B948
/* 46D20 8006B920 AFC20028 */   sw        $v0, 0x28($fp)
.L8006B924:
/* 46D24 8006B924 8FC20028 */  lw         $v0, 0x28($fp)
/* 46D28 8006B928 94430010 */  lhu        $v1, 0x10($v0)
/* 46D2C 8006B92C 24020001 */  addiu      $v0, $zero, 0x1
/* 46D30 8006B930 10620005 */  beq        $v1, $v0, .L8006B948
/* 46D34 8006B934 00000000 */   nop
/* 46D38 8006B938 8FC20028 */  lw         $v0, 0x28($fp)
/* 46D3C 8006B93C 8C440008 */  lw         $a0, 0x8($v0)
/* 46D40 8006B940 0C019140 */  jal        __osDequeueThread
/* 46D44 8006B944 8FC50028 */   lw        $a1, 0x28($fp)
.L8006B948:
/* 46D48 8006B948 3C028009 */  lui        $v0, %hi(__osActiveQueue)
/* 46D4C 8006B94C 8C42327C */  lw         $v0, %lo(__osActiveQueue)($v0)
/* 46D50 8006B950 8FC30028 */  lw         $v1, 0x28($fp)
/* 46D54 8006B954 14430008 */  bne        $v0, $v1, .L8006B978
/* 46D58 8006B958 00000000 */   nop
/* 46D5C 8006B95C 3C028009 */  lui        $v0, %hi(__osActiveQueue)
/* 46D60 8006B960 8C42327C */  lw         $v0, %lo(__osActiveQueue)($v0)
/* 46D64 8006B964 8C43000C */  lw         $v1, 0xC($v0)
/* 46D68 8006B968 3C018009 */  lui        $at, %hi(__osActiveQueue)
/* 46D6C 8006B96C AC23327C */  sw         $v1, %lo(__osActiveQueue)($at)
/* 46D70 8006B970 0801AE70 */  j          .L8006B9C0
/* 46D74 8006B974 00000000 */   nop
.L8006B978:
/* 46D78 8006B978 3C118009 */  lui        $s1, %hi(__osActiveQueue)
/* 46D7C 8006B97C 8E31327C */  lw         $s1, %lo(__osActiveQueue)($s1)
.L8006B980:
/* 46D80 8006B980 8E220004 */  lw         $v0, 0x4($s1)
/* 46D84 8006B984 2403FFFF */  addiu      $v1, $zero, -0x1
/* 46D88 8006B988 14430003 */  bne        $v0, $v1, .L8006B998
/* 46D8C 8006B98C 00000000 */   nop
/* 46D90 8006B990 0801AE70 */  j          .L8006B9C0
/* 46D94 8006B994 00000000 */   nop
.L8006B998:
/* 46D98 8006B998 8E32000C */  lw         $s2, 0xC($s1)
/* 46D9C 8006B99C 8FC20028 */  lw         $v0, 0x28($fp)
/* 46DA0 8006B9A0 16420005 */  bne        $s2, $v0, .L8006B9B8
/* 46DA4 8006B9A4 00000000 */   nop
/* 46DA8 8006B9A8 8FC20028 */  lw         $v0, 0x28($fp)
/* 46DAC 8006B9AC 8C43000C */  lw         $v1, 0xC($v0)
/* 46DB0 8006B9B0 0801AE70 */  j          .L8006B9C0
/* 46DB4 8006B9B4 AE23000C */   sw        $v1, 0xC($s1)
.L8006B9B8:
/* 46DB8 8006B9B8 0801AE60 */  j          .L8006B980
/* 46DBC 8006B9BC 02408821 */   addu      $s1, $s2, $zero
.L8006B9C0:
/* 46DC0 8006B9C0 8FC20028 */  lw         $v0, 0x28($fp)
/* 46DC4 8006B9C4 3C038009 */  lui        $v1, %hi(__osRunningThread)
/* 46DC8 8006B9C8 8C633280 */  lw         $v1, %lo(__osRunningThread)($v1)
/* 46DCC 8006B9CC 14430003 */  bne        $v0, $v1, .L8006B9DC
/* 46DD0 8006B9D0 00000000 */   nop
/* 46DD4 8006B9D4 0C019ADC */  jal        __osDispatchThread
/* 46DD8 8006B9D8 00000000 */   nop
.L8006B9DC:
/* 46DDC 8006B9DC 0C019B5C */  jal        __osRestoreInt
/* 46DE0 8006B9E0 02002021 */   addu      $a0, $s0, $zero
/* 46DE4 8006B9E4 03C0E821 */  addu       $sp, $fp, $zero
/* 46DE8 8006B9E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 46DEC 8006B9EC 8FBE001C */  lw         $fp, 0x1C($sp)
/* 46DF0 8006B9F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 46DF4 8006B9F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 46DF8 8006B9F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 46DFC 8006B9FC 03E00008 */  jr         $ra
/* 46E00 8006BA00 27BD0028 */   addiu     $sp, $sp, 0x28
/* 46E04 8006BA04 00000000 */  nop
/* 46E08 8006BA08 00000000 */  nop
/* 46E0C 8006BA0C 00000000 */  nop

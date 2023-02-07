.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osTimerInterrupt
/* 3FCEC 800648EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FCF0 800648F0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3FCF4 800648F4 AFBE0020 */  sw         $fp, 0x20($sp)
/* 3FCF8 800648F8 03A0F021 */  addu       $fp, $sp, $zero
/* 3FCFC 800648FC 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FD00 80064900 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FD04 80064904 8C430000 */  lw         $v1, 0x0($v0)
/* 3FD08 80064908 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FD0C 8006490C 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FD10 80064910 14620003 */  bne        $v1, $v0, .L80064920
/* 3FD14 80064914 00000000 */   nop
/* 3FD18 80064918 080192B0 */  j          .L80064AC0
/* 3FD1C 8006491C 00000000 */   nop
.L80064920:
/* 3FD20 80064920 00000000 */  nop
.L80064924:
/* 3FD24 80064924 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FD28 80064928 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FD2C 8006492C 8C430000 */  lw         $v1, 0x0($v0)
/* 3FD30 80064930 AFC30010 */  sw         $v1, 0x10($fp)
/* 3FD34 80064934 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FD38 80064938 3C038009 */  lui        $v1, %hi(__osTimerList)
/* 3FD3C 8006493C 8C633290 */  lw         $v1, %lo(__osTimerList)($v1)
/* 3FD40 80064940 14430007 */  bne        $v0, $v1, .L80064960
/* 3FD44 80064944 00000000 */   nop
/* 3FD48 80064948 0C01ADA0 */  jal        __osSetCompare
/* 3FD4C 8006494C 00002021 */   addu      $a0, $zero, $zero
/* 3FD50 80064950 3C01800A */  lui        $at, %hi(__osTimerCounter)
/* 3FD54 80064954 AC209200 */  sw         $zero, %lo(__osTimerCounter)($at)
/* 3FD58 80064958 080192B0 */  j          .L80064AC0
/* 3FD5C 8006495C 00000000 */   nop
.L80064960:
/* 3FD60 80064960 0C018EB8 */  jal        osGetCount
/* 3FD64 80064964 00000000 */   nop
/* 3FD68 80064968 AFC20014 */  sw         $v0, 0x14($fp)
/* 3FD6C 8006496C 8FC20014 */  lw         $v0, 0x14($fp)
/* 3FD70 80064970 3C03800A */  lui        $v1, %hi(__osTimerCounter)
/* 3FD74 80064974 8C639200 */  lw         $v1, %lo(__osTimerCounter)($v1)
/* 3FD78 80064978 00431023 */  subu       $v0, $v0, $v1
/* 3FD7C 8006497C AFC20018 */  sw         $v0, 0x18($fp)
/* 3FD80 80064980 8FC20014 */  lw         $v0, 0x14($fp)
/* 3FD84 80064984 3C01800A */  lui        $at, %hi(__osTimerCounter)
/* 3FD88 80064988 AC229200 */  sw         $v0, %lo(__osTimerCounter)($at)
/* 3FD8C 8006498C 8FC40010 */  lw         $a0, 0x10($fp)
/* 3FD90 80064990 8FC30018 */  lw         $v1, 0x18($fp)
/* 3FD94 80064994 00001021 */  addu       $v0, $zero, $zero
/* 3FD98 80064998 8C850010 */  lw         $a1, 0x10($a0)
/* 3FD9C 8006499C 0045302B */  sltu       $a2, $v0, $a1
/* 3FDA0 800649A0 14C0000D */  bnez       $a2, .L800649D8
/* 3FDA4 800649A4 00000000 */   nop
/* 3FDA8 800649A8 8C850010 */  lw         $a1, 0x10($a0)
/* 3FDAC 800649AC 14A2001C */  bne        $a1, $v0, .L80064A20
/* 3FDB0 800649B0 00000000 */   nop
/* 3FDB4 800649B4 8C850014 */  lw         $a1, 0x14($a0)
/* 3FDB8 800649B8 0065302B */  sltu       $a2, $v1, $a1
/* 3FDBC 800649BC 14C00006 */  bnez       $a2, .L800649D8
/* 3FDC0 800649C0 00000000 */   nop
/* 3FDC4 800649C4 8C840014 */  lw         $a0, 0x14($a0)
/* 3FDC8 800649C8 14830015 */  bne        $a0, $v1, .L80064A20
/* 3FDCC 800649CC 00000000 */   nop
/* 3FDD0 800649D0 08019288 */  j          .L80064A20
/* 3FDD4 800649D4 00000000 */   nop
.L800649D8:
/* 3FDD8 800649D8 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FDDC 800649DC 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FDE0 800649E0 8FC50018 */  lw         $a1, 0x18($fp)
/* 3FDE4 800649E4 00002021 */  addu       $a0, $zero, $zero
/* 3FDE8 800649E8 8C660010 */  lw         $a2, 0x10($v1)
/* 3FDEC 800649EC 8C670014 */  lw         $a3, 0x14($v1)
/* 3FDF0 800649F0 00E5182B */  sltu       $v1, $a3, $a1
/* 3FDF4 800649F4 00E52823 */  subu       $a1, $a3, $a1
/* 3FDF8 800649F8 00C42023 */  subu       $a0, $a2, $a0
/* 3FDFC 800649FC 00832023 */  subu       $a0, $a0, $v1
/* 3FE00 80064A00 AC440010 */  sw         $a0, 0x10($v0)
/* 3FE04 80064A04 AC450014 */  sw         $a1, 0x14($v0)
/* 3FE08 80064A08 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE0C 80064A0C 8C440010 */  lw         $a0, 0x10($v0)
/* 3FE10 80064A10 0C0192B5 */  jal        __osSetTimerIntr
/* 3FE14 80064A14 8C450014 */   lw        $a1, 0x14($v0)
/* 3FE18 80064A18 080192B0 */  j          .L80064AC0
/* 3FE1C 80064A1C 00000000 */   nop
.L80064A20:
/* 3FE20 80064A20 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE24 80064A24 8C620004 */  lw         $v0, 0x4($v1)
/* 3FE28 80064A28 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE2C 80064A2C 8C640000 */  lw         $a0, 0x0($v1)
/* 3FE30 80064A30 AC440000 */  sw         $a0, 0x0($v0)
/* 3FE34 80064A34 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE38 80064A38 8C620000 */  lw         $v0, 0x0($v1)
/* 3FE3C 80064A3C 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE40 80064A40 8C640004 */  lw         $a0, 0x4($v1)
/* 3FE44 80064A44 AC440004 */  sw         $a0, 0x4($v0)
/* 3FE48 80064A48 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE4C 80064A4C AC400000 */  sw         $zero, 0x0($v0)
/* 3FE50 80064A50 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE54 80064A54 AC400004 */  sw         $zero, 0x4($v0)
/* 3FE58 80064A58 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE5C 80064A5C 8C430018 */  lw         $v1, 0x18($v0)
/* 3FE60 80064A60 10600007 */  beqz       $v1, .L80064A80
/* 3FE64 80064A64 00000000 */   nop
/* 3FE68 80064A68 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE6C 80064A6C 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE70 80064A70 8C440018 */  lw         $a0, 0x18($v0)
/* 3FE74 80064A74 8C65001C */  lw         $a1, 0x1C($v1)
/* 3FE78 80064A78 0C018E28 */  jal        osSendMesg
/* 3FE7C 80064A7C 00003021 */   addu      $a2, $zero, $zero
.L80064A80:
/* 3FE80 80064A80 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FE84 80064A84 8C620008 */  lw         $v0, 0x8($v1)
/* 3FE88 80064A88 8C63000C */  lw         $v1, 0xC($v1)
/* 3FE8C 80064A8C 00431025 */  or         $v0, $v0, $v1
/* 3FE90 80064A90 10400009 */  beqz       $v0, .L80064AB8
/* 3FE94 80064A94 00000000 */   nop
/* 3FE98 80064A98 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FE9C 80064A9C 8FC30010 */  lw         $v1, 0x10($fp)
/* 3FEA0 80064AA0 8C640008 */  lw         $a0, 0x8($v1)
/* 3FEA4 80064AA4 8C65000C */  lw         $a1, 0xC($v1)
/* 3FEA8 80064AA8 AC440010 */  sw         $a0, 0x10($v0)
/* 3FEAC 80064AAC AC450014 */  sw         $a1, 0x14($v0)
/* 3FEB0 80064AB0 0C0192EA */  jal        __osInsertTimer
/* 3FEB4 80064AB4 8FC40010 */   lw        $a0, 0x10($fp)
.L80064AB8:
/* 3FEB8 80064AB8 08019249 */  j          .L80064924
/* 3FEBC 80064ABC 00000000 */   nop
.L80064AC0:
/* 3FEC0 80064AC0 03C0E821 */  addu       $sp, $fp, $zero
/* 3FEC4 80064AC4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3FEC8 80064AC8 8FBE0020 */  lw         $fp, 0x20($sp)
/* 3FECC 80064ACC 03E00008 */  jr         $ra
/* 3FED0 80064AD0 27BD0028 */   addiu     $sp, $sp, 0x28

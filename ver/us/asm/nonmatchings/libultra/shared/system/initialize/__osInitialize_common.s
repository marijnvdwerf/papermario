.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osInitialize_common
/* 45674 8006A274 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 45678 8006A278 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4567C 8006A27C AFBE0020 */  sw         $fp, 0x20($sp)
/* 45680 8006A280 03A0F021 */  addu       $fp, $sp, $zero
/* 45684 8006A284 24020001 */  addiu      $v0, $zero, 0x1
/* 45688 8006A288 3C01800A */  lui        $at, %hi(D_80099238)
/* 4568C 8006A28C AC229238 */  sw         $v0, %lo(D_80099238)($at)
/* 45690 8006A290 0C01AD90 */  jal        __osGetSR
/* 45694 8006A294 00000000 */   nop
/* 45698 8006A298 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 4569C 8006A29C 00431025 */  or         $v0, $v0, $v1
/* 456A0 8006A2A0 0C01AD98 */  jal        __osSetSR
/* 456A4 8006A2A4 00402021 */   addu      $a0, $v0, $zero
/* 456A8 8006A2A8 3C040100 */  lui        $a0, (0x1000800 >> 16)
/* 456AC 8006A2AC 0C01AD94 */  jal        __osSetFpcCsr
/* 456B0 8006A2B0 34840800 */   ori       $a0, $a0, (0x1000800 & 0xFFFF)
/* 456B4 8006A2B4 0C01AD9C */  jal        __osSetWatchLo
/* 456B8 8006A2B8 3C040490 */   lui       $a0, (0x4900000 >> 16)
/* 456BC 8006A2BC 3C020002 */  lui        $v0, (0x22000 >> 16)
/* 456C0 8006A2C0 34422000 */  ori        $v0, $v0, (0x22000 & 0xFFFF)
/* 456C4 8006A2C4 3C01A430 */  lui        $at, %hi(D_A430003C)
/* 456C8 8006A2C8 AC22003C */  sw         $v0, %lo(D_A430003C)($at)
/* 456CC 8006A2CC 3C02A430 */  lui        $v0, %hi(D_A430003C)
/* 456D0 8006A2D0 8C42003C */  lw         $v0, %lo(D_A430003C)($v0)
/* 456D4 8006A2D4 AFC20014 */  sw         $v0, 0x14($fp)
/* 456D8 8006A2D8 3C020001 */  lui        $v0, (0x11000 >> 16)
/* 456DC 8006A2DC 34421000 */  ori        $v0, $v0, (0x11000 & 0xFFFF)
/* 456E0 8006A2E0 3C01A430 */  lui        $at, %hi(D_A430003C)
/* 456E4 8006A2E4 AC22003C */  sw         $v0, %lo(D_A430003C)($at)
/* 456E8 8006A2E8 3C02A430 */  lui        $v0, %hi(D_A430003C)
/* 456EC 8006A2EC 8C42003C */  lw         $v0, %lo(D_A430003C)($v0)
/* 456F0 8006A2F0 AFC20018 */  sw         $v0, 0x18($fp)
/* 456F4 8006A2F4 00001021 */  addu       $v0, $zero, $zero
/* 456F8 8006A2F8 8FC40014 */  lw         $a0, 0x14($fp)
/* 456FC 8006A2FC 30830140 */  andi       $v1, $a0, 0x140
/* 45700 8006A300 24040140 */  addiu      $a0, $zero, 0x140
/* 45704 8006A304 14640006 */  bne        $v1, $a0, .L8006A320
/* 45708 8006A308 00000000 */   nop
/* 4570C 8006A30C 8FC40018 */  lw         $a0, 0x18($fp)
/* 45710 8006A310 30830140 */  andi       $v1, $a0, 0x140
/* 45714 8006A314 14600002 */  bnez       $v1, .L8006A320
/* 45718 8006A318 00000000 */   nop
/* 4571C 8006A31C 24020001 */  addiu      $v0, $zero, 0x1
.L8006A320:
/* 45720 8006A320 3C018000 */  lui        $at, %hi(__osBbIsBb)
/* 45724 8006A324 AC220388 */  sw         $v0, %lo(__osBbIsBb)($at)
/* 45728 8006A328 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 4572C 8006A32C 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 45730 8006A330 1040000A */  beqz       $v0, .L8006A35C
/* 45734 8006A334 00000000 */   nop
/* 45738 8006A338 3C02A460 */  lui        $v0, %hi(D_A4600060)
/* 4573C 8006A33C 8C420060 */  lw         $v0, %lo(D_A4600060)($v0)
/* 45740 8006A340 3C03C000 */  lui        $v1, (0xC0000000 >> 16)
/* 45744 8006A344 00431024 */  and        $v0, $v0, $v1
/* 45748 8006A348 10400004 */  beqz       $v0, .L8006A35C
/* 4574C 8006A34C 00000000 */   nop
/* 45750 8006A350 24020002 */  addiu      $v0, $zero, 0x2
/* 45754 8006A354 3C018000 */  lui        $at, %hi(__osBbIsBb)
/* 45758 8006A358 AC220388 */  sw         $v0, %lo(__osBbIsBb)($at)
.L8006A35C:
/* 4575C 8006A35C 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 45760 8006A360 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 45764 8006A364 1040000B */  beqz       $v0, .L8006A394
/* 45768 8006A368 00000000 */   nop
/* 4576C 8006A36C 24020001 */  addiu      $v0, $zero, 0x1
/* 45770 8006A370 3C018000 */  lui        $at, %hi(osTvType)
/* 45774 8006A374 AC220300 */  sw         $v0, %lo(osTvType)($at)
/* 45778 8006A378 3C018000 */  lui        $at, %hi(osRomType)
/* 4577C 8006A37C AC200304 */  sw         $zero, %lo(osRomType)($at)
/* 45780 8006A380 3C018000 */  lui        $at, %hi(osResetType)
/* 45784 8006A384 AC20030C */  sw         $zero, %lo(osResetType)($at)
/* 45788 8006A388 24020001 */  addiu      $v0, $zero, 0x1
/* 4578C 8006A38C 3C018000 */  lui        $at, %hi(osVersion)
/* 45790 8006A390 AC220314 */  sw         $v0, %lo(osVersion)($at)
.L8006A394:
/* 45794 8006A394 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 45798 8006A398 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 4579C 8006A39C 14400018 */  bnez       $v0, .L8006A400
/* 457A0 8006A3A0 00000000 */   nop
.L8006A3A4:
/* 457A4 8006A3A4 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 457A8 8006A3A8 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 457AC 8006A3AC 0C01AE10 */  jal        __osSiRawReadIo
/* 457B0 8006A3B0 27C50010 */   addiu     $a1, $fp, 0x10
/* 457B4 8006A3B4 14400003 */  bnez       $v0, .L8006A3C4
/* 457B8 8006A3B8 00000000 */   nop
/* 457BC 8006A3BC 0801A8F3 */  j          .L8006A3CC
/* 457C0 8006A3C0 00000000 */   nop
.L8006A3C4:
/* 457C4 8006A3C4 0801A8E9 */  j          .L8006A3A4
/* 457C8 8006A3C8 00000000 */   nop
.L8006A3CC:
/* 457CC 8006A3CC 00000000 */  nop
.L8006A3D0:
/* 457D0 8006A3D0 8FC30010 */  lw         $v1, 0x10($fp)
/* 457D4 8006A3D4 34620008 */  ori        $v0, $v1, 0x8
/* 457D8 8006A3D8 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 457DC 8006A3DC 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 457E0 8006A3E0 0C01AE24 */  jal        __osSiRawWriteIo
/* 457E4 8006A3E4 00402821 */   addu      $a1, $v0, $zero
/* 457E8 8006A3E8 14400003 */  bnez       $v0, .L8006A3F8
/* 457EC 8006A3EC 00000000 */   nop
/* 457F0 8006A3F0 0801A900 */  j          .L8006A400
/* 457F4 8006A3F4 00000000 */   nop
.L8006A3F8:
/* 457F8 8006A3F8 0801A8F4 */  j          .L8006A3D0
/* 457FC 8006A3FC 00000000 */   nop
.L8006A400:
/* 45800 8006A400 3C028000 */  lui        $v0, %hi(D_80000000)
/* 45804 8006A404 3C038006 */  lui        $v1, %hi(__osExceptionPreamble)
/* 45808 8006A408 24636230 */  addiu      $v1, $v1, %lo(__osExceptionPreamble)
/* 4580C 8006A40C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 45810 8006A410 8C6B0004 */  lw         $t3, 0x4($v1)
/* 45814 8006A414 8C6C0008 */  lw         $t4, 0x8($v1)
/* 45818 8006A418 8C6D000C */  lw         $t5, 0xC($v1)
/* 4581C 8006A41C AC4A0000 */  sw         $t2, %lo(D_80000000)($v0)
/* 45820 8006A420 AC4B0004 */  sw         $t3, %lo(D_80000004)($v0)
/* 45824 8006A424 AC4C0008 */  sw         $t4, %lo(D_80000008)($v0)
/* 45828 8006A428 AC4D000C */  sw         $t5, %lo(D_8000000C)($v0)
/* 4582C 8006A42C 3C028000 */  lui        $v0, (0x80000080 >> 16)
/* 45830 8006A430 34420080 */  ori        $v0, $v0, (0x80000080 & 0xFFFF)
/* 45834 8006A434 3C038006 */  lui        $v1, %hi(__osExceptionPreamble)
/* 45838 8006A438 24636230 */  addiu      $v1, $v1, %lo(__osExceptionPreamble)
/* 4583C 8006A43C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 45840 8006A440 8C6B0004 */  lw         $t3, 0x4($v1)
/* 45844 8006A444 8C6C0008 */  lw         $t4, 0x8($v1)
/* 45848 8006A448 8C6D000C */  lw         $t5, 0xC($v1)
/* 4584C 8006A44C AC4A0000 */  sw         $t2, 0x0($v0)
/* 45850 8006A450 AC4B0004 */  sw         $t3, 0x4($v0)
/* 45854 8006A454 AC4C0008 */  sw         $t4, 0x8($v0)
/* 45858 8006A458 AC4D000C */  sw         $t5, 0xC($v0)
/* 4585C 8006A45C 3C028000 */  lui        $v0, (0x80000100 >> 16)
/* 45860 8006A460 34420100 */  ori        $v0, $v0, (0x80000100 & 0xFFFF)
/* 45864 8006A464 3C038006 */  lui        $v1, %hi(__osExceptionPreamble)
/* 45868 8006A468 24636230 */  addiu      $v1, $v1, %lo(__osExceptionPreamble)
/* 4586C 8006A46C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 45870 8006A470 8C6B0004 */  lw         $t3, 0x4($v1)
/* 45874 8006A474 8C6C0008 */  lw         $t4, 0x8($v1)
/* 45878 8006A478 8C6D000C */  lw         $t5, 0xC($v1)
/* 4587C 8006A47C AC4A0000 */  sw         $t2, 0x0($v0)
/* 45880 8006A480 AC4B0004 */  sw         $t3, 0x4($v0)
/* 45884 8006A484 AC4C0008 */  sw         $t4, 0x8($v0)
/* 45888 8006A488 AC4D000C */  sw         $t5, 0xC($v0)
/* 4588C 8006A48C 3C028000 */  lui        $v0, (0x80000180 >> 16)
/* 45890 8006A490 34420180 */  ori        $v0, $v0, (0x80000180 & 0xFFFF)
/* 45894 8006A494 3C038006 */  lui        $v1, %hi(__osExceptionPreamble)
/* 45898 8006A498 24636230 */  addiu      $v1, $v1, %lo(__osExceptionPreamble)
/* 4589C 8006A49C 8C6A0000 */  lw         $t2, 0x0($v1)
/* 458A0 8006A4A0 8C6B0004 */  lw         $t3, 0x4($v1)
/* 458A4 8006A4A4 8C6C0008 */  lw         $t4, 0x8($v1)
/* 458A8 8006A4A8 8C6D000C */  lw         $t5, 0xC($v1)
/* 458AC 8006A4AC AC4A0000 */  sw         $t2, 0x0($v0)
/* 458B0 8006A4B0 AC4B0004 */  sw         $t3, 0x4($v0)
/* 458B4 8006A4B4 AC4C0008 */  sw         $t4, 0x8($v0)
/* 458B8 8006A4B8 AC4D000C */  sw         $t5, 0xC($v0)
/* 458BC 8006A4BC 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 458C0 8006A4C0 0C018180 */  jal        osWritebackDCache
/* 458C4 8006A4C4 24050190 */   addiu     $a1, $zero, 0x190
/* 458C8 8006A4C8 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 458CC 8006A4CC 0C018160 */  jal        osInvalICache
/* 458D0 8006A4D0 24050190 */   addiu     $a1, $zero, 0x190
/* 458D4 8006A4D4 0C01A870 */  jal        __createSpeedParam
/* 458D8 8006A4D8 00000000 */   nop
/* 458DC 8006A4DC 0C0193C8 */  jal        osUnmapTLBAll
/* 458E0 8006A4E0 00000000 */   nop
/* 458E4 8006A4E4 0C01AEB0 */  jal        osMapTLBRdb
/* 458E8 8006A4E8 00000000 */   nop
/* 458EC 8006A4EC 3C028009 */  lui        $v0, %hi(D_800945A0)
/* 458F0 8006A4F0 8C4245A0 */  lw         $v0, %lo(D_800945A0)($v0)
/* 458F4 8006A4F4 3C038009 */  lui        $v1, %hi(D_800945A4)
/* 458F8 8006A4F8 8C6345A4 */  lw         $v1, %lo(D_800945A4)($v1)
/* 458FC 8006A4FC 00404021 */  addu       $t0, $v0, $zero
/* 45900 8006A500 00604821 */  addu       $t1, $v1, $zero
/* 45904 8006A504 00082040 */  sll        $a0, $t0, 1
/* 45908 8006A508 000937C2 */  srl        $a2, $t1, 31
/* 4590C 8006A50C 00862025 */  or         $a0, $a0, $a2
/* 45910 8006A510 00092840 */  sll        $a1, $t1, 1
/* 45914 8006A514 00A32821 */  addu       $a1, $a1, $v1
/* 45918 8006A518 00A3382B */  sltu       $a3, $a1, $v1
/* 4591C 8006A51C 00822021 */  addu       $a0, $a0, $v0
/* 45920 8006A520 00872021 */  addu       $a0, $a0, $a3
/* 45924 8006A524 00053882 */  srl        $a3, $a1, 2
/* 45928 8006A528 00041780 */  sll        $v0, $a0, 30
/* 4592C 8006A52C 00E23825 */  or         $a3, $a3, $v0
/* 45930 8006A530 00043082 */  srl        $a2, $a0, 2
/* 45934 8006A534 3C018009 */  lui        $at, %hi(D_800945A0)
/* 45938 8006A538 AC2645A0 */  sw         $a2, %lo(D_800945A0)($at)
/* 4593C 8006A53C 3C018009 */  lui        $at, %hi(D_800945A4)
/* 45940 8006A540 AC2745A4 */  sw         $a3, %lo(D_800945A4)($at)
/* 45944 8006A544 3C028000 */  lui        $v0, %hi(osResetType)
/* 45948 8006A548 8C42030C */  lw         $v0, %lo(osResetType)($v0)
/* 4594C 8006A54C 14400005 */  bnez       $v0, .L8006A564
/* 45950 8006A550 00000000 */   nop
/* 45954 8006A554 3C048000 */  lui        $a0, %hi(D_8000031C)
/* 45958 8006A558 2484031C */  addiu      $a0, $a0, %lo(D_8000031C)
/* 4595C 8006A55C 0C018ACC */  jal        bzero
/* 45960 8006A560 24050040 */   addiu     $a1, $zero, 0x40
.L8006A564:
/* 45964 8006A564 3C028000 */  lui        $v0, %hi(osTvType)
/* 45968 8006A568 8C420300 */  lw         $v0, %lo(osTvType)($v0)
/* 4596C 8006A56C 14400006 */  bnez       $v0, .L8006A588
/* 45970 8006A570 00000000 */   nop
/* 45974 8006A574 3C0202F5 */  lui        $v0, (0x2F5B2D2 >> 16)
/* 45978 8006A578 3442B2D2 */  ori        $v0, $v0, (0x2F5B2D2 & 0xFFFF)
/* 4597C 8006A57C 3C018009 */  lui        $at, %hi(osViClock)
/* 45980 8006A580 0801A970 */  j          .L8006A5C0
/* 45984 8006A584 AC2245A8 */   sw        $v0, %lo(osViClock)($at)
.L8006A588:
/* 45988 8006A588 3C028000 */  lui        $v0, %hi(osTvType)
/* 4598C 8006A58C 8C420300 */  lw         $v0, %lo(osTvType)($v0)
/* 45990 8006A590 24030002 */  addiu      $v1, $zero, 0x2
/* 45994 8006A594 14430006 */  bne        $v0, $v1, .L8006A5B0
/* 45998 8006A598 00000000 */   nop
/* 4599C 8006A59C 3C0202E6 */  lui        $v0, (0x2E6025C >> 16)
/* 459A0 8006A5A0 3442025C */  ori        $v0, $v0, (0x2E6025C & 0xFFFF)
/* 459A4 8006A5A4 3C018009 */  lui        $at, %hi(osViClock)
/* 459A8 8006A5A8 0801A970 */  j          .L8006A5C0
/* 459AC 8006A5AC AC2245A8 */   sw        $v0, %lo(osViClock)($at)
.L8006A5B0:
/* 459B0 8006A5B0 3C0202E6 */  lui        $v0, (0x2E6D354 >> 16)
/* 459B4 8006A5B4 3442D354 */  ori        $v0, $v0, (0x2E6D354 & 0xFFFF)
/* 459B8 8006A5B8 3C018009 */  lui        $at, %hi(osViClock)
/* 459BC 8006A5BC AC2245A8 */  sw         $v0, %lo(osViClock)($at)
.L8006A5C0:
/* 459C0 8006A5C0 0C01AD8C */  jal        __osGetCause
/* 459C4 8006A5C4 00000000 */   nop
/* 459C8 8006A5C8 30431000 */  andi       $v1, $v0, 0x1000
/* 459CC 8006A5CC 10600007 */  beqz       $v1, .L8006A5EC
/* 459D0 8006A5D0 00000000 */   nop
.L8006A5D4:
/* 459D4 8006A5D4 0801A979 */  j          .L8006A5E4
/* 459D8 8006A5D8 00000000 */   nop
/* 459DC 8006A5DC 0801A97B */  j          .L8006A5EC
/* 459E0 8006A5E0 00000000 */   nop
.L8006A5E4:
/* 459E4 8006A5E4 0801A975 */  j          .L8006A5D4
/* 459E8 8006A5E8 00000000 */   nop
.L8006A5EC:
/* 459EC 8006A5EC 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 459F0 8006A5F0 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 459F4 8006A5F4 14400023 */  bnez       $v0, .L8006A684
/* 459F8 8006A5F8 00000000 */   nop
/* 459FC 8006A5FC 24020200 */  addiu      $v0, $zero, 0x200
/* 45A00 8006A600 3C018000 */  lui        $at, %hi(D_80000360)
/* 45A04 8006A604 AC220360 */  sw         $v0, %lo(D_80000360)($at)
/* 45A08 8006A608 34028000 */  ori        $v0, $zero, 0x8000
/* 45A0C 8006A60C 3C018000 */  lui        $at, %hi(__osBbPakSize)
/* 45A10 8006A610 AC220384 */  sw         $v0, %lo(__osBbPakSize)($at)
/* 45A14 8006A614 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 45A18 8006A618 3C018000 */  lui        $at, %hi(__osBbFlashSize)
/* 45A1C 8006A61C AC220368 */  sw         $v0, %lo(__osBbFlashSize)($at)
/* 45A20 8006A620 3C02803F */  lui        $v0, (0x803FFE00 >> 16)
/* 45A24 8006A624 3442FE00 */  ori        $v0, $v0, (0x803FFE00 & 0xFFFF)
/* 45A28 8006A628 3C018000 */  lui        $at, %hi(D_8000035C)
/* 45A2C 8006A62C AC22035C */  sw         $v0, %lo(D_8000035C)($at)
/* 45A30 8006A630 3C02803F */  lui        $v0, (0x803F7E00 >> 16)
/* 45A34 8006A634 34427E00 */  ori        $v0, $v0, (0x803F7E00 & 0xFFFF)
/* 45A38 8006A638 3C018000 */  lui        $at, %hi(__osBbPakAddress)
/* 45A3C 8006A63C AC220374 */  sw         $v0, %lo(__osBbPakAddress)($at)
/* 45A40 8006A640 3C018000 */  lui        $at, %hi(D_80000378)
/* 45A44 8006A644 AC200378 */  sw         $zero, %lo(D_80000378)($at)
/* 45A48 8006A648 3C018000 */  lui        $at, %hi(D_8000037C)
/* 45A4C 8006A64C AC20037C */  sw         $zero, %lo(D_8000037C)($at)
/* 45A50 8006A650 3C018000 */  lui        $at, %hi(D_80000380)
/* 45A54 8006A654 AC200380 */  sw         $zero, %lo(D_80000380)($at)
/* 45A58 8006A658 3C02803E */  lui        $v0, (0x803E0000 >> 16)
/* 45A5C 8006A65C 3C018000 */  lui        $at, %hi(__osBbFlashAddress)
/* 45A60 8006A660 AC220364 */  sw         $v0, %lo(__osBbFlashAddress)($at)
/* 45A64 8006A664 3C028000 */  lui        $v0, %hi(__osBbFlashSize)
/* 45A68 8006A668 8C420368 */  lw         $v0, %lo(__osBbFlashSize)($v0)
/* 45A6C 8006A66C 3C018000 */  lui        $at, %hi(__osBbSramSize)
/* 45A70 8006A670 AC220370 */  sw         $v0, %lo(__osBbSramSize)($at)
/* 45A74 8006A674 3C028000 */  lui        $v0, %hi(__osBbFlashAddress)
/* 45A78 8006A678 8C420364 */  lw         $v0, %lo(__osBbFlashAddress)($v0)
/* 45A7C 8006A67C 3C018000 */  lui        $at, %hi(__osBbSramAddress)
/* 45A80 8006A680 AC22036C */  sw         $v0, %lo(__osBbSramAddress)($at)
.L8006A684:
/* 45A84 8006A684 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 45A88 8006A688 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 45A8C 8006A68C 10400016 */  beqz       $v0, .L8006A6E8
/* 45A90 8006A690 00000000 */   nop
/* 45A94 8006A694 3C02A460 */  lui        $v0, %hi(D_A4600064)
/* 45A98 8006A698 8C420064 */  lw         $v0, %lo(D_A4600064)($v0)
/* 45A9C 8006A69C 3C037FFF */  lui        $v1, (0x7FFFFFFF >> 16)
/* 45AA0 8006A6A0 3463FFFF */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
/* 45AA4 8006A6A4 00431024 */  and        $v0, $v0, $v1
/* 45AA8 8006A6A8 3C01A460 */  lui        $at, %hi(D_A4600064)
/* 45AAC 8006A6AC AC220064 */  sw         $v0, %lo(D_A4600064)($at)
/* 45AB0 8006A6B0 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 45AB4 8006A6B4 3C01A430 */  lui        $at, %hi(D_A430003C)
/* 45AB8 8006A6B8 AC22003C */  sw         $v0, %lo(D_A430003C)($at)
/* 45ABC 8006A6BC 3C01A480 */  lui        $at, %hi(D_A480000C)
/* 45AC0 8006A6C0 AC20000C */  sw         $zero, %lo(D_A480000C)($at)
/* 45AC4 8006A6C4 3C02A480 */  lui        $v0, %hi(D_A480001C)
/* 45AC8 8006A6C8 8C42001C */  lw         $v0, %lo(D_A480001C)($v0)
/* 45ACC 8006A6CC 3C0380FF */  lui        $v1, (0x80FFFFFF >> 16)
/* 45AD0 8006A6D0 3463FFFF */  ori        $v1, $v1, (0x80FFFFFF & 0xFFFF)
/* 45AD4 8006A6D4 00431024 */  and        $v0, $v0, $v1
/* 45AD8 8006A6D8 3C032F40 */  lui        $v1, (0x2F400000 >> 16)
/* 45ADC 8006A6DC 00431025 */  or         $v0, $v0, $v1
/* 45AE0 8006A6E0 3C01A480 */  lui        $at, %hi(D_A480001C)
/* 45AE4 8006A6E4 AC22001C */  sw         $v0, %lo(D_A480001C)($at)
.L8006A6E8:
/* 45AE8 8006A6E8 24020001 */  addiu      $v0, $zero, 0x1
/* 45AEC 8006A6EC 3C01A450 */  lui        $at, %hi(D_A4500008)
/* 45AF0 8006A6F0 AC220008 */  sw         $v0, %lo(D_A4500008)($at)
/* 45AF4 8006A6F4 24023FFF */  addiu      $v0, $zero, 0x3FFF
/* 45AF8 8006A6F8 3C01A450 */  lui        $at, %hi(D_A4500010)
/* 45AFC 8006A6FC AC220010 */  sw         $v0, %lo(D_A4500010)($at)
/* 45B00 8006A700 2402000F */  addiu      $v0, $zero, 0xF
/* 45B04 8006A704 3C01A450 */  lui        $at, %hi(D_A4500014)
/* 45B08 8006A708 AC220014 */  sw         $v0, %lo(D_A4500014)($at)
/* 45B0C 8006A70C 03C0E821 */  addu       $sp, $fp, $zero
/* 45B10 8006A710 8FBF0024 */  lw         $ra, 0x24($sp)
/* 45B14 8006A714 8FBE0020 */  lw         $fp, 0x20($sp)
/* 45B18 8006A718 03E00008 */  jr         $ra
/* 45B1C 8006A71C 27BD0028 */   addiu     $sp, $sp, 0x28

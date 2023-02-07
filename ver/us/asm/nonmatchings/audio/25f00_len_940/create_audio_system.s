.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel create_audio_system
/* 255B0 8004A1B0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 255B4 8004A1B4 AFB00030 */  sw         $s0, 0x30($sp)
/* 255B8 8004A1B8 3C10800D */  lui        $s0, %hi(nuAuHeap)
/* 255BC 8004A1BC 26107D10 */  addiu      $s0, $s0, %lo(nuAuHeap)
/* 255C0 8004A1C0 0200202D */  daddu      $a0, $s0, $zero
/* 255C4 8004A1C4 3C05801B */  lui        $a1, %hi(AuHeapBase)
/* 255C8 8004A1C8 24A5A000 */  addiu      $a1, $a1, %lo(AuHeapBase)
/* 255CC 8004A1CC 3C060005 */  lui        $a2, (0x56000 >> 16)
/* 255D0 8004A1D0 24020001 */  addiu      $v0, $zero, 0x1
/* 255D4 8004A1D4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 255D8 8004A1D8 AFB20038 */  sw         $s2, 0x38($sp)
/* 255DC 8004A1DC AFB10034 */  sw         $s1, 0x34($sp)
/* 255E0 8004A1E0 3C018007 */  lui        $at, %hi(nuAuTaskStop)
/* 255E4 8004A1E4 A0226DE0 */  sb         $v0, %lo(nuAuTaskStop)($at)
/* 255E8 8004A1E8 3C018007 */  lui        $at, %hi(nuAuPreNMI)
/* 255EC 8004A1EC A0206DD0 */  sb         $zero, %lo(nuAuPreNMI)($at)
/* 255F0 8004A1F0 0C015D78 */  jal        alHeapInit
/* 255F4 8004A1F4 34C66000 */   ori       $a2, $a2, (0x56000 & 0xFFFF)
/* 255F8 8004A1F8 24047D00 */  addiu      $a0, $zero, 0x7D00
/* 255FC 8004A1FC 24020018 */  addiu      $v0, $zero, 0x18
/* 25600 8004A200 AFA20018 */  sw         $v0, 0x18($sp)
/* 25604 8004A204 24020004 */  addiu      $v0, $zero, 0x4
/* 25608 8004A208 0C0180CC */  jal        osAiSetFrequency
/* 2560C 8004A20C AFA2001C */   sw        $v0, 0x1C($sp)
/* 25610 8004A210 3C03800E */  lui        $v1, %hi(nusched+0x678)
/* 25614 8004A214 8C638E18 */  lw         $v1, %lo(nusched+0x678)($v1)
/* 25618 8004A218 00620018 */  mult       $v1, $v0
/* 2561C 8004A21C 00001812 */  mflo       $v1
/* 25620 8004A220 2464003B */  addiu      $a0, $v1, 0x3B
/* 25624 8004A224 3C038888 */  lui        $v1, (0x88888889 >> 16)
/* 25628 8004A228 34638889 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 2562C 8004A22C 00830019 */  multu      $a0, $v1
/* 25630 8004A230 0000882D */  daddu      $s1, $zero, $zero
/* 25634 8004A234 3C12800A */  lui        $s2, %hi(AlCmdListBuffers)
/* 25638 8004A238 2652FF20 */  addiu      $s2, $s2, %lo(AlCmdListBuffers)
/* 2563C 8004A23C AFA20020 */  sw         $v0, 0x20($sp)
/* 25640 8004A240 00001810 */  mfhi       $v1
/* 25644 8004A244 3C02B216 */  lui        $v0, (0xB21642C9 >> 16)
/* 25648 8004A248 344242C9 */  ori        $v0, $v0, (0xB21642C9 & 0xFFFF)
/* 2564C 8004A24C 00031942 */  srl        $v1, $v1, 5
/* 25650 8004A250 00620019 */  multu      $v1, $v0
/* 25654 8004A254 A3A00024 */  sb         $zero, 0x24($sp)
/* 25658 8004A258 AFB0002C */  sw         $s0, 0x2C($sp)
/* 2565C 8004A25C 3C028005 */  lui        $v0, %hi(nuAuDmaNew)
/* 25660 8004A260 2442A8DC */  addiu      $v0, $v0, %lo(nuAuDmaNew)
/* 25664 8004A264 AFA20028 */  sw         $v0, 0x28($sp)
/* 25668 8004A268 00001810 */  mfhi       $v1
/* 2566C 8004A26C 000319C2 */  srl        $v1, $v1, 7
/* 25670 8004A270 24630001 */  addiu      $v1, $v1, 0x1
/* 25674 8004A274 00031040 */  sll        $v0, $v1, 1
/* 25678 8004A278 00431021 */  addu       $v0, $v0, $v1
/* 2567C 8004A27C 000210C0 */  sll        $v0, $v0, 3
/* 25680 8004A280 00431023 */  subu       $v0, $v0, $v1
/* 25684 8004A284 000210C0 */  sll        $v0, $v0, 3
/* 25688 8004A288 3C01800A */  lui        $at, %hi(AlFrameSize)
/* 2568C 8004A28C AC220044 */  sw         $v0, %lo(AlFrameSize)($at)
/* 25690 8004A290 2442FF48 */  addiu      $v0, $v0, -0xB8
/* 25694 8004A294 3C01800A */  lui        $at, %hi(AlMinFrameSize)
/* 25698 8004A298 AC220048 */  sw         $v0, %lo(AlMinFrameSize)($at)
.L8004A29C:
/* 2569C 8004A29C 24050001 */  addiu      $a1, $zero, 0x1
/* 256A0 8004A2A0 24064000 */  addiu      $a2, $zero, 0x4000
/* 256A4 8004A2A4 8FA4002C */  lw         $a0, 0x2C($sp)
/* 256A8 8004A2A8 0C015D94 */  jal        alHeapAlloc
/* 256AC 8004A2AC 02258821 */   addu      $s1, $s1, $a1
/* 256B0 8004A2B0 AE420000 */  sw         $v0, 0x0($s2)
/* 256B4 8004A2B4 2E220003 */  sltiu      $v0, $s1, 0x3
/* 256B8 8004A2B8 1440FFF8 */  bnez       $v0, .L8004A29C
/* 256BC 8004A2BC 26520004 */   addiu     $s2, $s2, 0x4
/* 256C0 8004A2C0 0000882D */  daddu      $s1, $zero, $zero
/* 256C4 8004A2C4 24090002 */  addiu      $t1, $zero, 0x2
/* 256C8 8004A2C8 3C048007 */  lui        $a0, %hi(rspbootTextStart)
/* 256CC 8004A2CC 24841D40 */  addiu      $a0, $a0, %lo(rspbootTextStart)
/* 256D0 8004A2D0 3C028007 */  lui        $v0, %hi(rspbootTextEnd)
/* 256D4 8004A2D4 24421E10 */  addiu      $v0, $v0, %lo(rspbootTextEnd)
/* 256D8 8004A2D8 00442823 */  subu       $a1, $v0, $a0
/* 256DC 8004A2DC 3C088007 */  lui        $t0, %hi(main_DATA_START)
/* 256E0 8004A2E0 25081E10 */  addiu      $t0, $t0, %lo(main_DATA_START)
/* 256E4 8004A2E4 3C078009 */  lui        $a3, %hi(n_aspMain_data_bin)
/* 256E8 8004A2E8 24E76700 */  addiu      $a3, $a3, %lo(n_aspMain_data_bin)
/* 256EC 8004A2EC 24060800 */  addiu      $a2, $zero, 0x800
/* 256F0 8004A2F0 3C03800A */  lui        $v1, %hi(nuAuTasks)
/* 256F4 8004A2F4 2463FF30 */  addiu      $v1, $v1, %lo(nuAuTasks)
.L8004A2F8:
/* 256F8 8004A2F8 AC600000 */  sw         $zero, 0x0($v1)
/* 256FC 8004A2FC AC600054 */  sw         $zero, 0x54($v1)
/* 25700 8004A300 AC690010 */  sw         $t1, 0x10($v1)
/* 25704 8004A304 AC640018 */  sw         $a0, 0x18($v1)
/* 25708 8004A308 AC65001C */  sw         $a1, 0x1C($v1)
/* 2570C 8004A30C AC680020 */  sw         $t0, 0x20($v1)
/* 25710 8004A310 AC670028 */  sw         $a3, 0x28($v1)
/* 25714 8004A314 AC66002C */  sw         $a2, 0x2C($v1)
/* 25718 8004A318 AC600030 */  sw         $zero, 0x30($v1)
/* 2571C 8004A31C AC600034 */  sw         $zero, 0x34($v1)
/* 25720 8004A320 AC600038 */  sw         $zero, 0x38($v1)
/* 25724 8004A324 AC60003C */  sw         $zero, 0x3C($v1)
/* 25728 8004A328 AC600048 */  sw         $zero, 0x48($v1)
/* 2572C 8004A32C AC60004C */  sw         $zero, 0x4C($v1)
/* 25730 8004A330 26310001 */  addiu      $s1, $s1, 0x1
/* 25734 8004A334 2E220003 */  sltiu      $v0, $s1, 0x3
/* 25738 8004A338 1440FFEF */  bnez       $v0, .L8004A2F8
/* 2573C 8004A33C 24630058 */   addiu     $v1, $v1, 0x58
/* 25740 8004A340 0000882D */  daddu      $s1, $zero, $zero
/* 25744 8004A344 3C10800A */  lui        $s0, %hi(D_800A3628)
/* 25748 8004A348 26100038 */  addiu      $s0, $s0, %lo(D_800A3628)
.L8004A34C:
/* 2574C 8004A34C 24050001 */  addiu      $a1, $zero, 0x1
/* 25750 8004A350 02258821 */  addu       $s1, $s1, $a1
/* 25754 8004A354 3C06800A */  lui        $a2, %hi(AlFrameSize)
/* 25758 8004A358 8CC60044 */  lw         $a2, %lo(AlFrameSize)($a2)
/* 2575C 8004A35C 8FA4002C */  lw         $a0, 0x2C($sp)
/* 25760 8004A360 0C015D94 */  jal        alHeapAlloc
/* 25764 8004A364 00063080 */   sll       $a2, $a2, 2
/* 25768 8004A368 AE020000 */  sw         $v0, 0x0($s0)
/* 2576C 8004A36C 2E220003 */  sltiu      $v0, $s1, 0x3
/* 25770 8004A370 1440FFF6 */  bnez       $v0, .L8004A34C
/* 25774 8004A374 26100004 */   addiu     $s0, $s0, 0x4
/* 25778 8004A378 0000882D */  daddu      $s1, $zero, $zero
/* 2577C 8004A37C 3C02800A */  lui        $v0, %hi(nuAuDmaBufList)
/* 25780 8004A380 244205F0 */  addiu      $v0, $v0, %lo(nuAuDmaBufList)
/* 25784 8004A384 0040802D */  daddu      $s0, $v0, $zero
/* 25788 8004A388 26120014 */  addiu      $s2, $s0, 0x14
/* 2578C 8004A38C AE000004 */  sw         $zero, 0x4($s0)
/* 25790 8004A390 AE000000 */  sw         $zero, 0x0($s0)
.L8004A394:
/* 25794 8004A394 0240202D */  daddu      $a0, $s2, $zero
/* 25798 8004A398 0C012AA9 */  jal        alLink
/* 2579C 8004A39C 0200282D */   daddu     $a1, $s0, $zero
/* 257A0 8004A3A0 24050001 */  addiu      $a1, $zero, 0x1
/* 257A4 8004A3A4 24060500 */  addiu      $a2, $zero, 0x500
/* 257A8 8004A3A8 26520014 */  addiu      $s2, $s2, 0x14
/* 257AC 8004A3AC 8FA4002C */  lw         $a0, 0x2C($sp)
/* 257B0 8004A3B0 0C015D94 */  jal        alHeapAlloc
/* 257B4 8004A3B4 02258821 */   addu      $s1, $s1, $a1
/* 257B8 8004A3B8 AE020010 */  sw         $v0, 0x10($s0)
/* 257BC 8004A3BC 2E220031 */  sltiu      $v0, $s1, 0x31
/* 257C0 8004A3C0 1440FFF4 */  bnez       $v0, .L8004A394
/* 257C4 8004A3C4 26100014 */   addiu     $s0, $s0, 0x14
/* 257C8 8004A3C8 24050001 */  addiu      $a1, $zero, 0x1
/* 257CC 8004A3CC 8FA4002C */  lw         $a0, 0x2C($sp)
/* 257D0 8004A3D0 0C015D94 */  jal        alHeapAlloc
/* 257D4 8004A3D4 24060500 */   addiu     $a2, $zero, 0x500
/* 257D8 8004A3D8 3C04800A */  lui        $a0, %hi(nuAuDmaMesgQ)
/* 257DC 8004A3DC 24840050 */  addiu      $a0, $a0, %lo(nuAuDmaMesgQ)
/* 257E0 8004A3E0 3C05800A */  lui        $a1, %hi(nuAuDmaMesgBuf)
/* 257E4 8004A3E4 24A50068 */  addiu      $a1, $a1, %lo(nuAuDmaMesgBuf)
/* 257E8 8004A3E8 00111880 */  sll        $v1, $s1, 2
/* 257EC 8004A3EC 00711821 */  addu       $v1, $v1, $s1
/* 257F0 8004A3F0 00031880 */  sll        $v1, $v1, 2
/* 257F4 8004A3F4 3C01800A */  lui        $at, %hi(nuAuDmaBufList)
/* 257F8 8004A3F8 00230821 */  addu       $at, $at, $v1
/* 257FC 8004A3FC AC220600 */  sw         $v0, %lo(nuAuDmaBufList+0x10)($at)
/* 25800 8004A400 0C018DB0 */  jal        osCreateMesgQueue
/* 25804 8004A404 24060032 */   addiu     $a2, $zero, 0x32
/* 25808 8004A408 3C04800B */  lui        $a0, %hi(auSynDriver)
/* 2580C 8004A40C 24847BF0 */  addiu      $a0, $a0, %lo(auSynDriver)
/* 25810 8004A410 3C028005 */  lui        $v0, %hi(nuAuPreNMIProc)
/* 25814 8004A414 2442A9E0 */  addiu      $v0, $v0, %lo(nuAuPreNMIProc)
/* 25818 8004A418 3C018007 */  lui        $at, %hi(nuAuPreNMIFunc)
/* 2581C 8004A41C AC226DD4 */  sw         $v0, %lo(nuAuPreNMIFunc)($at)
/* 25820 8004A420 0C015644 */  jal        au_driver_init
/* 25824 8004A424 27A50018 */   addiu     $a1, $sp, 0x18
/* 25828 8004A428 8FA40020 */  lw         $a0, 0x20($sp)
/* 2582C 8004A42C 0C014947 */  jal        au_engine_init
/* 25830 8004A430 00000000 */   nop
/* 25834 8004A434 3C10800A */  lui        $s0, %hi(nuAuMgrThread)
/* 25838 8004A438 2610D968 */  addiu      $s0, $s0, %lo(nuAuMgrThread)
/* 2583C 8004A43C 0200202D */  daddu      $a0, $s0, $zero
/* 25840 8004A440 24050003 */  addiu      $a1, $zero, 0x3
/* 25844 8004A444 3C068005 */  lui        $a2, %hi(nuAuMgr)
/* 25848 8004A448 24C6A4C0 */  addiu      $a2, $a2, %lo(nuAuMgr)
/* 2584C 8004A44C 3C02800A */  lui        $v0, %hi(AlCmdListBuffers)
/* 25850 8004A450 2442FF20 */  addiu      $v0, $v0, %lo(AlCmdListBuffers)
/* 25854 8004A454 AFA20010 */  sw         $v0, 0x10($sp)
/* 25858 8004A458 24020046 */  addiu      $v0, $zero, 0x46
/* 2585C 8004A45C 0000382D */  daddu      $a3, $zero, $zero
/* 25860 8004A460 0C019000 */  jal        osCreateThread
/* 25864 8004A464 AFA20014 */   sw        $v0, 0x14($sp)
/* 25868 8004A468 0C0190A0 */  jal        osStartThread
/* 2586C 8004A46C 0200202D */   daddu     $a0, $s0, $zero
/* 25870 8004A470 8FBF003C */  lw         $ra, 0x3C($sp)
/* 25874 8004A474 8FB20038 */  lw         $s2, 0x38($sp)
/* 25878 8004A478 8FB10034 */  lw         $s1, 0x34($sp)
/* 2587C 8004A47C 8FB00030 */  lw         $s0, 0x30($sp)
/* 25880 8004A480 03E00008 */  jr         $ra
/* 25884 8004A484 27BD0040 */   addiu     $sp, $sp, 0x40

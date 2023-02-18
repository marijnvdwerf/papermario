.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel title_screen_draw_copyright
/* 128C4 800374C4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 128C8 800374C8 3C07800A */  lui       $a3, %hi(gMasterGfxPos)
/* 128CC 800374CC 24E79244 */  addiu     $a3, $a3, %lo(gMasterGfxPos)
/* 128D0 800374D0 3C02DE00 */  lui       $v0, (0xDE000000 >> 16)
/* 128D4 800374D4 AFB7001C */  sw        $s7, 0x1C($sp)
/* 128D8 800374D8 AFB60018 */  sw        $s6, 0x18($sp)
/* 128DC 800374DC AFB50014 */  sw        $s5, 0x14($sp)
/* 128E0 800374E0 AFB40010 */  sw        $s4, 0x10($sp)
/* 128E4 800374E4 AFB3000C */  sw        $s3, 0xC($sp)
/* 128E8 800374E8 AFB20008 */  sw        $s2, 0x8($sp)
/* 128EC 800374EC AFB10004 */  sw        $s1, 0x4($sp)
/* 128F0 800374F0 AFB00000 */  sw        $s0, 0x0($sp)
/* 128F4 800374F4 8CE50000 */  lw        $a1, 0x0($a3)
/* 128F8 800374F8 3C01437F */  lui       $at, (0x437F0000 >> 16)
/* 128FC 800374FC 44810000 */  mtc1      $at, $f0
/* 12900 80037500 00A0182D */  daddu     $v1, $a1, $zero
/* 12904 80037504 24A50008 */  addiu     $a1, $a1, 0x8
/* 12908 80037508 ACE50000 */  sw        $a1, 0x0($a3)
/* 1290C 8003750C AC620000 */  sw        $v0, 0x0($v1)
/* 12910 80037510 3C028007 */  lui       $v0, %hi(D_80077A50)
/* 12914 80037514 244266B0 */  addiu     $v0, $v0, %lo(D_80077A50)
/* 12918 80037518 46006302 */  mul.s     $f12, $f12, $f0
/* 1291C 8003751C 00000000 */  nop
/* 12920 80037520 AC620004 */  sw        $v0, 0x4($v1)
/* 12924 80037524 24A20008 */  addiu     $v0, $a1, 0x8
/* 12928 80037528 ACE20000 */  sw        $v0, 0x0($a3)
/* 1292C 8003752C 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* 12930 80037530 460C0001 */  sub.s     $f0, $f0, $f12
/* 12934 80037534 ACA20000 */  sw        $v0, 0x0($a1)
/* 12938 80037538 4600008D */  trunc.w.s $f2, $f0
/* 1293C 8003753C 44061000 */  mfc1      $a2, $f2
/* 12940 80037540 00000000 */  nop
/* 12944 80037544 28C200FF */  slti      $v0, $a2, 0xFF
/* 12948 80037548 10400011 */  beqz      $v0, .LIQUE_80037590
/* 1294C 8003754C ACA00004 */   sw       $zero, 0x4($a1)
/* 12950 80037550 04C20001 */  bltzl     $a2, .LIQUE_80037558
/* 12954 80037554 0000302D */   daddu    $a2, $zero, $zero
.LIQUE_80037558:
/* 12958 80037558 3C04FCFF */  lui       $a0, (0xFCFF97FF >> 16)
/* 1295C 8003755C 348497FF */  ori       $a0, $a0, (0xFCFF97FF & 0xFFFF)
/* 12960 80037560 3C03FF2C */  lui       $v1, (0xFF2CFE7F >> 16)
/* 12964 80037564 3463FE7F */  ori       $v1, $v1, (0xFF2CFE7F & 0xFFFF)
/* 12968 80037568 24A20010 */  addiu     $v0, $a1, 0x10
/* 1296C 8003756C ACE20000 */  sw        $v0, 0x0($a3)
/* 12970 80037570 24A20018 */  addiu     $v0, $a1, 0x18
/* 12974 80037574 ACA40008 */  sw        $a0, 0x8($a1)
/* 12978 80037578 ACA3000C */  sw        $v1, 0xC($a1)
/* 1297C 8003757C ACE20000 */  sw        $v0, 0x0($a3)
/* 12980 80037580 3C02FA00 */  lui       $v0, (0xFA000000 >> 16)
/* 12984 80037584 ACA20010 */  sw        $v0, 0x10($a1)
/* 12988 80037588 30C200FF */  andi      $v0, $a2, 0xFF
/* 1298C 8003758C ACA20014 */  sw        $v0, 0x14($a1)
.LIQUE_80037590:
/* 12990 80037590 0000682D */  daddu     $t5, $zero, $zero
/* 12994 80037594 3C09800A */  lui       $t1, %hi(gMasterGfxPos)
/* 12998 80037598 25299244 */  addiu     $t1, $t1, %lo(gMasterGfxPos)
/* 1299C 8003759C 3C10FD68 */  lui       $s0, (0xFD68008F >> 16)
/* 129A0 800375A0 3610008F */  ori       $s0, $s0, (0xFD68008F & 0xFFFF)
/* 129A4 800375A4 3C16800A */  lui       $s6, %hi(D_800A097C)
/* 129A8 800375A8 26D6D38C */  addiu     $s6, $s6, %lo(D_800A097C)
/* 129AC 800375AC 3C0EF568 */  lui       $t6, (0xF5682400 >> 16)
/* 129B0 800375B0 35CE2400 */  ori       $t6, $t6, (0xF5682400 & 0xFFFF)
/* 129B4 800375B4 3C150700 */  lui       $s5, (0x7000000 >> 16)
/* 129B8 800375B8 3C14E600 */  lui       $s4, (0xE6000000 >> 16)
/* 129BC 800375BC 3C13F400 */  lui       $s3, (0xF4000000 >> 16)
/* 129C0 800375C0 3C190723 */  lui       $t9, (0x723C024 >> 16)
/* 129C4 800375C4 3739C024 */  ori       $t9, $t9, (0x723C024 & 0xFFFF)
/* 129C8 800375C8 3C12E700 */  lui       $s2, (0xE7000000 >> 16)
/* 129CC 800375CC 3C11F200 */  lui       $s1, (0xF2000000 >> 16)
/* 129D0 800375D0 3C180023 */  lui       $t8, (0x23C024 >> 16)
/* 129D4 800375D4 3718C024 */  ori       $t8, $t8, (0x23C024 & 0xFFFF)
/* 129D8 800375D8 3C0FE43A */  lui       $t7, (0xE43A4000 >> 16)
/* 129DC 800375DC 35EF4000 */  ori       $t7, $t7, (0xE43A4000 & 0xFFFF)
/* 129E0 800375E0 240C02D4 */  addiu     $t4, $zero, 0x2D4
/* 129E4 800375E4 240B02FC */  addiu     $t3, $zero, 0x2FC
/* 129E8 800375E8 01A0502D */  daddu     $t2, $t5, $zero
.LIQUE_800375EC:
/* 129EC 800375EC 3C070016 */  lui       $a3, (0x164000 >> 16)
/* 129F0 800375F0 34E74000 */  ori       $a3, $a3, (0x164000 & 0xFFFF)
/* 129F4 800375F4 3C080400 */  lui       $t0, (0x4000400 >> 16)
/* 129F8 800375F8 35080400 */  ori       $t0, $t0, (0x4000400 & 0xFFFF)
/* 129FC 800375FC 31860FFF */  andi      $a2, $t4, 0xFFF
/* 12A00 80037600 258C0028 */  addiu     $t4, $t4, 0x28
/* 12A04 80037604 31650FFF */  andi      $a1, $t3, 0xFFF
/* 12A08 80037608 256B0028 */  addiu     $t3, $t3, 0x28
/* 12A0C 8003760C 25AD0001 */  addiu     $t5, $t5, 0x1
/* 12A10 80037610 00AF2825 */  or        $a1, $a1, $t7
/* 12A14 80037614 00C73025 */  or        $a2, $a2, $a3
/* 12A18 80037618 8D230000 */  lw        $v1, 0x0($t1)
/* 12A1C 8003761C 8EC20000 */  lw        $v0, 0x0($s6)
/* 12A20 80037620 0060202D */  daddu     $a0, $v1, $zero
/* 12A24 80037624 24630008 */  addiu     $v1, $v1, 0x8
/* 12A28 80037628 004A1021 */  addu      $v0, $v0, $t2
/* 12A2C 8003762C 254A05A0 */  addiu     $t2, $t2, 0x5A0
/* 12A30 80037630 AD230000 */  sw        $v1, 0x0($t1)
/* 12A34 80037634 AC820004 */  sw        $v0, 0x4($a0)
/* 12A38 80037638 24620008 */  addiu     $v0, $v1, 0x8
/* 12A3C 8003763C AC900000 */  sw        $s0, 0x0($a0)
/* 12A40 80037640 AD220000 */  sw        $v0, 0x0($t1)
/* 12A44 80037644 24620010 */  addiu     $v0, $v1, 0x10
/* 12A48 80037648 AC6E0000 */  sw        $t6, 0x0($v1)
/* 12A4C 8003764C AC750004 */  sw        $s5, 0x4($v1)
/* 12A50 80037650 AD220000 */  sw        $v0, 0x0($t1)
/* 12A54 80037654 24620018 */  addiu     $v0, $v1, 0x18
/* 12A58 80037658 AC740008 */  sw        $s4, 0x8($v1)
/* 12A5C 8003765C AC60000C */  sw        $zero, 0xC($v1)
/* 12A60 80037660 AD220000 */  sw        $v0, 0x0($t1)
/* 12A64 80037664 24620020 */  addiu     $v0, $v1, 0x20
/* 12A68 80037668 AC730010 */  sw        $s3, 0x10($v1)
/* 12A6C 8003766C AC790014 */  sw        $t9, 0x14($v1)
/* 12A70 80037670 AD220000 */  sw        $v0, 0x0($t1)
/* 12A74 80037674 24620028 */  addiu     $v0, $v1, 0x28
/* 12A78 80037678 AC720018 */  sw        $s2, 0x18($v1)
/* 12A7C 8003767C AC60001C */  sw        $zero, 0x1C($v1)
/* 12A80 80037680 AD220000 */  sw        $v0, 0x0($t1)
/* 12A84 80037684 24620030 */  addiu     $v0, $v1, 0x30
/* 12A88 80037688 AC6E0020 */  sw        $t6, 0x20($v1)
/* 12A8C 8003768C AC600024 */  sw        $zero, 0x24($v1)
/* 12A90 80037690 AD220000 */  sw        $v0, 0x0($t1)
/* 12A94 80037694 24620038 */  addiu     $v0, $v1, 0x38
/* 12A98 80037698 AC710028 */  sw        $s1, 0x28($v1)
/* 12A9C 8003769C AC78002C */  sw        $t8, 0x2C($v1)
/* 12AA0 800376A0 AD220000 */  sw        $v0, 0x0($t1)
/* 12AA4 800376A4 24620040 */  addiu     $v0, $v1, 0x40
/* 12AA8 800376A8 AC650030 */  sw        $a1, 0x30($v1)
/* 12AAC 800376AC AC660034 */  sw        $a2, 0x34($v1)
/* 12AB0 800376B0 AD220000 */  sw        $v0, 0x0($t1)
/* 12AB4 800376B4 3C02E100 */  lui       $v0, (0xE1000000 >> 16)
/* 12AB8 800376B8 AC620038 */  sw        $v0, 0x38($v1)
/* 12ABC 800376BC 24620048 */  addiu     $v0, $v1, 0x48
/* 12AC0 800376C0 AC60003C */  sw        $zero, 0x3C($v1)
/* 12AC4 800376C4 AD220000 */  sw        $v0, 0x0($t1)
/* 12AC8 800376C8 3C02F100 */  lui       $v0, (0xF1000000 >> 16)
/* 12ACC 800376CC AC620040 */  sw        $v0, 0x40($v1)
/* 12AD0 800376D0 29A20004 */  slti      $v0, $t5, 0x4
/* 12AD4 800376D4 1440FFC5 */  bnez      $v0, .LIQUE_800375EC
/* 12AD8 800376D8 AC680044 */   sw       $t0, 0x44($v1)
/* 12ADC 800376DC 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* 12AE0 800376E0 24639244 */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 12AE4 800376E4 8C620000 */  lw        $v0, 0x0($v1)
/* 12AE8 800376E8 0040202D */  daddu     $a0, $v0, $zero
/* 12AEC 800376EC 24420008 */  addiu     $v0, $v0, 0x8
/* 12AF0 800376F0 AC620000 */  sw        $v0, 0x0($v1)
/* 12AF4 800376F4 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* 12AF8 800376F8 AC820000 */  sw        $v0, 0x0($a0)
/* 12AFC 800376FC AC800004 */  sw        $zero, 0x4($a0)
/* 12B00 80037700 8FB7001C */  lw        $s7, 0x1C($sp)
/* 12B04 80037704 8FB60018 */  lw        $s6, 0x18($sp)
/* 12B08 80037708 8FB50014 */  lw        $s5, 0x14($sp)
/* 12B0C 8003770C 8FB40010 */  lw        $s4, 0x10($sp)
/* 12B10 80037710 8FB3000C */  lw        $s3, 0xC($sp)
/* 12B14 80037714 8FB20008 */  lw        $s2, 0x8($sp)
/* 12B18 80037718 8FB10004 */  lw        $s1, 0x4($sp)
/* 12B1C 8003771C 8FB00000 */  lw        $s0, 0x0($sp)
/* 12B20 80037720 03E00008 */  jr        $ra
/* 12B24 80037724 27BD0020 */   addiu    $sp, $sp, 0x20
/* 12B28 80037728 00000000 */  nop
/* 12B2C 8003772C 00000000 */  nop

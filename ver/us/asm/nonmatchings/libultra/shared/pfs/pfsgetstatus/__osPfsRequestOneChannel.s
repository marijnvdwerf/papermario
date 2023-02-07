.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsRequestOneChannel
/* 44888 80069488 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 4488C 8006948C 3C06800E */  lui        $a2, %hi(__osPfsPifRam+0x3C)
/* 44890 80069490 24C6839C */  addiu      $a2, $a2, %lo(__osPfsPifRam+0x3C)
/* 44894 80069494 24C7FFC4 */  addiu      $a3, $a2, -0x3C
/* 44898 80069498 00004021 */  addu       $t0, $zero, $zero
/* 4489C 8006949C 240200FE */  addiu      $v0, $zero, 0xFE
/* 448A0 800694A0 24030001 */  addiu      $v1, $zero, 0x1
/* 448A4 800694A4 3C01800A */  lui        $at, %hi(__osContLastCmd)
/* 448A8 800694A8 A02291F0 */  sb         $v0, %lo(__osContLastCmd)($at)
/* 448AC 800694AC 24020003 */  addiu      $v0, $zero, 0x3
/* 448B0 800694B0 30A500FF */  andi       $a1, $a1, 0xFF
/* 448B4 800694B4 ACC30000 */  sw         $v1, 0x0($a2)
/* 448B8 800694B8 A3A20001 */  sb         $v0, 0x1($sp)
/* 448BC 800694BC 240200FF */  addiu      $v0, $zero, 0xFF
/* 448C0 800694C0 A3A30000 */  sb         $v1, 0x0($sp)
/* 448C4 800694C4 A3A50002 */  sb         $a1, 0x2($sp)
/* 448C8 800694C8 A3A20003 */  sb         $v0, 0x3($sp)
/* 448CC 800694CC A3A20004 */  sb         $v0, 0x4($sp)
/* 448D0 800694D0 18800006 */  blez       $a0, .L800694EC
/* 448D4 800694D4 A3A20005 */   sb        $v0, 0x5($sp)
.L800694D8:
/* 448D8 800694D8 A0E00000 */  sb         $zero, 0x0($a3)
/* 448DC 800694DC 25080001 */  addiu      $t0, $t0, 0x1
/* 448E0 800694E0 0104102A */  slt        $v0, $t0, $a0
/* 448E4 800694E4 1440FFFC */  bnez       $v0, .L800694D8
/* 448E8 800694E8 24E70001 */   addiu     $a3, $a3, 0x1
.L800694EC:
/* 448EC 800694EC 240200FE */  addiu      $v0, $zero, 0xFE
/* 448F0 800694F0 8BA90000 */  lwl        $t1, 0x0($sp)
/* 448F4 800694F4 9BA90003 */  lwr        $t1, 0x3($sp)
/* 448F8 800694F8 83AA0004 */  lb         $t2, 0x4($sp)
/* 448FC 800694FC 83AB0005 */  lb         $t3, 0x5($sp)
/* 44900 80069500 A8E90000 */  swl        $t1, 0x0($a3)
/* 44904 80069504 B8E90003 */  swr        $t1, 0x3($a3)
/* 44908 80069508 A0EA0004 */  sb         $t2, 0x4($a3)
/* 4490C 8006950C A0EB0005 */  sb         $t3, 0x5($a3)
/* 44910 80069510 A0E20006 */  sb         $v0, 0x6($a3)
/* 44914 80069514 03E00008 */  jr         $ra
/* 44918 80069518 27BD0008 */   addiu     $sp, $sp, 0x8

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsRequestData
/* 47E14 8006CA14 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 47E18 8006CA18 3C07800E */  lui        $a3, %hi(__osPfsPifRam)
/* 47E1C 8006CA1C 24E78360 */  addiu      $a3, $a3, %lo(__osPfsPifRam)
/* 47E20 8006CA20 00004021 */  addu       $t0, $zero, $zero
/* 47E24 8006CA24 308400FF */  andi       $a0, $a0, 0xFF
/* 47E28 8006CA28 24050001 */  addiu      $a1, $zero, 0x1
/* 47E2C 8006CA2C 240300FF */  addiu      $v1, $zero, 0xFF
/* 47E30 8006CA30 ACE5003C */  sw         $a1, 0x3C($a3)
/* 47E34 8006CA34 3C06800A */  lui        $a2, %hi(__osMaxControllers)
/* 47E38 8006CA38 90C691D2 */  lbu        $a2, %lo(__osMaxControllers)($a2)
/* 47E3C 8006CA3C 24020003 */  addiu      $v0, $zero, 0x3
/* 47E40 8006CA40 3C01800A */  lui        $at, %hi(__osContLastCmd)
/* 47E44 8006CA44 A02491F0 */  sb         $a0, %lo(__osContLastCmd)($at)
/* 47E48 8006CA48 A3A30000 */  sb         $v1, 0x0($sp)
/* 47E4C 8006CA4C A3A50001 */  sb         $a1, 0x1($sp)
/* 47E50 8006CA50 A3A20002 */  sb         $v0, 0x2($sp)
/* 47E54 8006CA54 A3A40003 */  sb         $a0, 0x3($sp)
/* 47E58 8006CA58 A3A30004 */  sb         $v1, 0x4($sp)
/* 47E5C 8006CA5C A3A30005 */  sb         $v1, 0x5($sp)
/* 47E60 8006CA60 A3A30006 */  sb         $v1, 0x6($sp)
/* 47E64 8006CA64 10C0000F */  beqz       $a2, .L8006CAA4
/* 47E68 8006CA68 A3A30007 */   sb        $v1, 0x7($sp)
.L8006CA6C:
/* 47E6C 8006CA6C 8BA90000 */  lwl        $t1, 0x0($sp)
/* 47E70 8006CA70 9BA90003 */  lwr        $t1, 0x3($sp)
/* 47E74 8006CA74 8BAA0004 */  lwl        $t2, 0x4($sp)
/* 47E78 8006CA78 9BAA0007 */  lwr        $t2, 0x7($sp)
/* 47E7C 8006CA7C A8E90000 */  swl        $t1, 0x0($a3)
/* 47E80 8006CA80 B8E90003 */  swr        $t1, 0x3($a3)
/* 47E84 8006CA84 A8EA0004 */  swl        $t2, 0x4($a3)
/* 47E88 8006CA88 B8EA0007 */  swr        $t2, 0x7($a3)
/* 47E8C 8006CA8C 3C02800A */  lui        $v0, %hi(__osMaxControllers)
/* 47E90 8006CA90 904291D2 */  lbu        $v0, %lo(__osMaxControllers)($v0)
/* 47E94 8006CA94 25080001 */  addiu      $t0, $t0, 0x1
/* 47E98 8006CA98 0102102A */  slt        $v0, $t0, $v0
/* 47E9C 8006CA9C 1440FFF3 */  bnez       $v0, .L8006CA6C
/* 47EA0 8006CAA0 24E70008 */   addiu     $a3, $a3, 0x8
.L8006CAA4:
/* 47EA4 8006CAA4 240200FE */  addiu      $v0, $zero, 0xFE
/* 47EA8 8006CAA8 A0E20000 */  sb         $v0, 0x0($a3)
/* 47EAC 8006CAAC 03E00008 */  jr         $ra
/* 47EB0 8006CAB0 27BD0008 */   addiu     $sp, $sp, 0x8

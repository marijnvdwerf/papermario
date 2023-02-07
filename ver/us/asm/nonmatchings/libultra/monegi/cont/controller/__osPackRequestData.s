.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPackRequestData
/* 3C0F0 80060CF0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3C0F4 80060CF4 308800FF */  andi       $t0, $a0, 0xFF
/* 3C0F8 80060CF8 00003021 */  addu       $a2, $zero, $zero
/* 3C0FC 80060CFC 3C03800B */  lui        $v1, %hi(__osContPifRam)
/* 3C100 80060D00 2463F910 */  addiu      $v1, $v1, %lo(__osContPifRam)
.L80060D04:
/* 3C104 80060D04 AC600000 */  sw         $zero, 0x0($v1)
/* 3C108 80060D08 24C60001 */  addiu      $a2, $a2, 0x1
/* 3C10C 80060D0C 28C2000F */  slti       $v0, $a2, 0xF
/* 3C110 80060D10 1440FFFC */  bnez       $v0, .L80060D04
/* 3C114 80060D14 24630004 */   addiu     $v1, $v1, 0x4
/* 3C118 80060D18 3C02800B */  lui        $v0, %hi(__osContPifRam+0x3C)
/* 3C11C 80060D1C 2442F94C */  addiu      $v0, $v0, %lo(__osContPifRam+0x3C)
/* 3C120 80060D20 2447FFC4 */  addiu      $a3, $v0, -0x3C
/* 3C124 80060D24 00003021 */  addu       $a2, $zero, $zero
/* 3C128 80060D28 24040001 */  addiu      $a0, $zero, 0x1
/* 3C12C 80060D2C 240300FF */  addiu      $v1, $zero, 0xFF
/* 3C130 80060D30 AC440000 */  sw         $a0, 0x0($v0)
/* 3C134 80060D34 3C05800A */  lui        $a1, %hi(__osMaxControllers)
/* 3C138 80060D38 90A591D2 */  lbu        $a1, %lo(__osMaxControllers)($a1)
/* 3C13C 80060D3C 24020003 */  addiu      $v0, $zero, 0x3
/* 3C140 80060D40 A3A30000 */  sb         $v1, 0x0($sp)
/* 3C144 80060D44 A3A40001 */  sb         $a0, 0x1($sp)
/* 3C148 80060D48 A3A20002 */  sb         $v0, 0x2($sp)
/* 3C14C 80060D4C A3A80003 */  sb         $t0, 0x3($sp)
/* 3C150 80060D50 A3A30004 */  sb         $v1, 0x4($sp)
/* 3C154 80060D54 A3A30005 */  sb         $v1, 0x5($sp)
/* 3C158 80060D58 A3A30006 */  sb         $v1, 0x6($sp)
/* 3C15C 80060D5C 10A0000F */  beqz       $a1, .L80060D9C
/* 3C160 80060D60 A3A30007 */   sb        $v1, 0x7($sp)
.L80060D64:
/* 3C164 80060D64 8BA90000 */  lwl        $t1, 0x0($sp)
/* 3C168 80060D68 9BA90003 */  lwr        $t1, 0x3($sp)
/* 3C16C 80060D6C 8BAA0004 */  lwl        $t2, 0x4($sp)
/* 3C170 80060D70 9BAA0007 */  lwr        $t2, 0x7($sp)
/* 3C174 80060D74 A8E90000 */  swl        $t1, 0x0($a3)
/* 3C178 80060D78 B8E90003 */  swr        $t1, 0x3($a3)
/* 3C17C 80060D7C A8EA0004 */  swl        $t2, 0x4($a3)
/* 3C180 80060D80 B8EA0007 */  swr        $t2, 0x7($a3)
/* 3C184 80060D84 3C02800A */  lui        $v0, %hi(__osMaxControllers)
/* 3C188 80060D88 904291D2 */  lbu        $v0, %lo(__osMaxControllers)($v0)
/* 3C18C 80060D8C 24C60001 */  addiu      $a2, $a2, 0x1
/* 3C190 80060D90 00C2102A */  slt        $v0, $a2, $v0
/* 3C194 80060D94 1440FFF3 */  bnez       $v0, .L80060D64
/* 3C198 80060D98 24E70008 */   addiu     $a3, $a3, 0x8
.L80060D9C:
/* 3C19C 80060D9C 240200FE */  addiu      $v0, $zero, 0xFE
/* 3C1A0 80060DA0 A0E20000 */  sb         $v0, 0x0($a3)
/* 3C1A4 80060DA4 03E00008 */  jr         $ra
/* 3C1A8 80060DA8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3C1AC 80060DAC 00000000 */  nop

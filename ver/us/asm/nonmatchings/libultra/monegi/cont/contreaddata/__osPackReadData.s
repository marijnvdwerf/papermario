.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPackReadData
/* 3BD24 80060924 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3BD28 80060928 3C06800B */  lui        $a2, %hi(__osContPifRam)
/* 3BD2C 8006092C 24C6F910 */  addiu      $a2, $a2, %lo(__osContPifRam)
/* 3BD30 80060930 00002821 */  addu       $a1, $zero, $zero
/* 3BD34 80060934 00C01821 */  addu       $v1, $a2, $zero
.L80060938:
/* 3BD38 80060938 AC600000 */  sw         $zero, 0x0($v1)
/* 3BD3C 8006093C 24A50001 */  addiu      $a1, $a1, 0x1
/* 3BD40 80060940 28A2000F */  slti       $v0, $a1, 0xF
/* 3BD44 80060944 1440FFFC */  bnez       $v0, .L80060938
/* 3BD48 80060948 24630004 */   addiu     $v1, $v1, 0x4
/* 3BD4C 8006094C 00002821 */  addu       $a1, $zero, $zero
/* 3BD50 80060950 24040001 */  addiu      $a0, $zero, 0x1
/* 3BD54 80060954 240200FF */  addiu      $v0, $zero, 0xFF
/* 3BD58 80060958 3C01800B */  lui        $at, %hi(__osContPifRam+0x3C)
/* 3BD5C 8006095C AC24F94C */  sw         $a0, %lo(__osContPifRam+0x3C)($at)
/* 3BD60 80060960 A3A40001 */  sb         $a0, 0x1($sp)
/* 3BD64 80060964 A3A40003 */  sb         $a0, 0x3($sp)
/* 3BD68 80060968 3C04800A */  lui        $a0, %hi(__osMaxControllers)
/* 3BD6C 8006096C 908491D2 */  lbu        $a0, %lo(__osMaxControllers)($a0)
/* 3BD70 80060970 24030004 */  addiu      $v1, $zero, 0x4
/* 3BD74 80060974 A3A20000 */  sb         $v0, 0x0($sp)
/* 3BD78 80060978 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 3BD7C 8006097C A3A30002 */  sb         $v1, 0x2($sp)
/* 3BD80 80060980 2403FFFF */  addiu      $v1, $zero, -0x1
/* 3BD84 80060984 A7A20004 */  sh         $v0, 0x4($sp)
/* 3BD88 80060988 A3A30006 */  sb         $v1, 0x6($sp)
/* 3BD8C 8006098C 1080000F */  beqz       $a0, .L800609CC
/* 3BD90 80060990 A3A30007 */   sb        $v1, 0x7($sp)
.L80060994:
/* 3BD94 80060994 8BA70000 */  lwl        $a3, 0x0($sp)
/* 3BD98 80060998 9BA70003 */  lwr        $a3, 0x3($sp)
/* 3BD9C 8006099C 8BA80004 */  lwl        $t0, 0x4($sp)
/* 3BDA0 800609A0 9BA80007 */  lwr        $t0, 0x7($sp)
/* 3BDA4 800609A4 A8C70000 */  swl        $a3, 0x0($a2)
/* 3BDA8 800609A8 B8C70003 */  swr        $a3, 0x3($a2)
/* 3BDAC 800609AC A8C80004 */  swl        $t0, 0x4($a2)
/* 3BDB0 800609B0 B8C80007 */  swr        $t0, 0x7($a2)
/* 3BDB4 800609B4 3C02800A */  lui        $v0, %hi(__osMaxControllers)
/* 3BDB8 800609B8 904291D2 */  lbu        $v0, %lo(__osMaxControllers)($v0)
/* 3BDBC 800609BC 24A50001 */  addiu      $a1, $a1, 0x1
/* 3BDC0 800609C0 00A2102A */  slt        $v0, $a1, $v0
/* 3BDC4 800609C4 1440FFF3 */  bnez       $v0, .L80060994
/* 3BDC8 800609C8 24C60008 */   addiu     $a2, $a2, 0x8
.L800609CC:
/* 3BDCC 800609CC 240200FE */  addiu      $v0, $zero, 0xFE
/* 3BDD0 800609D0 A0C20000 */  sb         $v0, 0x0($a2)
/* 3BDD4 800609D4 03E00008 */  jr         $ra
/* 3BDD8 800609D8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3BDDC 800609DC 00000000 */  nop

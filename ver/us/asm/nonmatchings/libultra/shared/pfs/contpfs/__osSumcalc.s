.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSumcalc
/* 44A10 80069610 00003021 */  addu       $a2, $zero, $zero
/* 44A14 80069614 18A00007 */  blez       $a1, .L80069634
/* 44A18 80069618 00003821 */   addu      $a3, $zero, $zero
.L8006961C:
/* 44A1C 8006961C 90830000 */  lbu        $v1, 0x0($a0)
/* 44A20 80069620 24840001 */  addiu      $a0, $a0, 0x1
/* 44A24 80069624 24C60001 */  addiu      $a2, $a2, 0x1
/* 44A28 80069628 00C5102A */  slt        $v0, $a2, $a1
/* 44A2C 8006962C 1440FFFB */  bnez       $v0, .L8006961C
/* 44A30 80069630 00E33821 */   addu      $a3, $a3, $v1
.L80069634:
/* 44A34 80069634 03E00008 */  jr         $ra
/* 44A38 80069638 30E2FFFF */   andi      $v0, $a3, 0xFFFF

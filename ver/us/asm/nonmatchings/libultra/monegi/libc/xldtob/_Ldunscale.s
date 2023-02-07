.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel _Ldunscale
/* 462DC 8006AEDC 94A60000 */  lhu        $a2, 0x0($a1)
/* 462E0 8006AEE0 00803821 */  addu       $a3, $a0, $zero
/* 462E4 8006AEE4 240307FF */  addiu      $v1, $zero, 0x7FF
/* 462E8 8006AEE8 30C27FF0 */  andi       $v0, $a2, 0x7FF0
/* 462EC 8006AEEC 00022102 */  srl        $a0, $v0, 4
/* 462F0 8006AEF0 14830013 */  bne        $a0, $v1, .L8006AF40
/* 462F4 8006AEF4 00801021 */   addu      $v0, $a0, $zero
/* 462F8 8006AEF8 A4E00000 */  sh         $zero, 0x0($a3)
/* 462FC 8006AEFC 94A20000 */  lhu        $v0, 0x0($a1)
/* 46300 8006AF00 3042000F */  andi       $v0, $v0, 0xF
/* 46304 8006AF04 1440000A */  bnez       $v0, .L8006AF30
/* 46308 8006AF08 00000000 */   nop
/* 4630C 8006AF0C 94A20002 */  lhu        $v0, 0x2($a1)
/* 46310 8006AF10 14400007 */  bnez       $v0, .L8006AF30
/* 46314 8006AF14 00000000 */   nop
/* 46318 8006AF18 94A20004 */  lhu        $v0, 0x4($a1)
/* 4631C 8006AF1C 14400004 */  bnez       $v0, .L8006AF30
/* 46320 8006AF20 00000000 */   nop
/* 46324 8006AF24 94A20006 */  lhu        $v0, 0x6($a1)
/* 46328 8006AF28 10400003 */  beqz       $v0, .L8006AF38
/* 4632C 8006AF2C 00000000 */   nop
.L8006AF30:
/* 46330 8006AF30 03E00008 */  jr         $ra
/* 46334 8006AF34 24020002 */   addiu     $v0, $zero, 0x2
.L8006AF38:
/* 46338 8006AF38 03E00008 */  jr         $ra
/* 4633C 8006AF3C 24020001 */   addiu     $v0, $zero, 0x1
.L8006AF40:
/* 46340 8006AF40 18800007 */  blez       $a0, .L8006AF60
/* 46344 8006AF44 30C3800F */   andi      $v1, $a2, 0x800F
/* 46348 8006AF48 2402FFFF */  addiu      $v0, $zero, -0x1
/* 4634C 8006AF4C 34633FF0 */  ori        $v1, $v1, 0x3FF0
/* 46350 8006AF50 2484FC02 */  addiu      $a0, $a0, -0x3FE
/* 46354 8006AF54 A4A30000 */  sh         $v1, 0x0($a1)
/* 46358 8006AF58 03E00008 */  jr         $ra
/* 4635C 8006AF5C A4E40000 */   sh        $a0, 0x0($a3)
.L8006AF60:
/* 46360 8006AF60 04400003 */  bltz       $v0, .L8006AF70
/* 46364 8006AF64 00001021 */   addu      $v0, $zero, $zero
/* 46368 8006AF68 03E00008 */  jr         $ra
/* 4636C 8006AF6C A4E00000 */   sh        $zero, 0x0($a3)
.L8006AF70:
/* 46370 8006AF70 03E00008 */  jr         $ra
/* 46374 8006AF74 24020002 */   addiu     $v0, $zero, 0x2

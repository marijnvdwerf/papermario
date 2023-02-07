.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsReleasePages
/* 43B90 80068790 30C600FF */  andi       $a2, $a2, 0xFF
/* 43B94 80068794 30E700FF */  andi       $a3, $a3, 0xFF
/* 43B98 80068798 00071200 */  sll        $v0, $a3, 8
/* 43B9C 8006879C 00463025 */  or         $a2, $v0, $a2
/* 43BA0 800687A0 0801A1ED */  j          .L800687B4
/* 43BA4 800687A4 24080003 */   addiu     $t0, $zero, 0x3
.L800687A8:
/* 43BA8 800687A8 00021202 */  srl        $v0, $v0, 8
/* 43BAC 800687AC 14470010 */  bne        $v0, $a3, .L800687F0
/* 43BB0 800687B0 00001021 */   addu      $v0, $zero, $zero
.L800687B4:
/* 43BB4 800687B4 00C01021 */  addu       $v0, $a2, $zero
/* 43BB8 800687B8 304300FF */  andi       $v1, $v0, 0xFF
/* 43BBC 800687BC 00031840 */  sll        $v1, $v1, 1
/* 43BC0 800687C0 00A31821 */  addu       $v1, $a1, $v1
/* 43BC4 800687C4 304200FF */  andi       $v0, $v0, 0xFF
/* 43BC8 800687C8 00021040 */  sll        $v0, $v0, 1
/* 43BCC 800687CC 94660000 */  lhu        $a2, 0x0($v1)
/* 43BD0 800687D0 00A21021 */  addu       $v0, $a1, $v0
/* 43BD4 800687D4 A4480000 */  sh         $t0, 0x0($v0)
/* 43BD8 800687D8 8C830060 */  lw         $v1, 0x60($a0)
/* 43BDC 800687DC 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 43BE0 800687E0 0043182A */  slt        $v1, $v0, $v1
/* 43BE4 800687E4 1060FFF0 */  beqz       $v1, .L800687A8
/* 43BE8 800687E8 8FA30010 */   lw        $v1, 0x10($sp)
/* 43BEC 800687EC 00001021 */  addu       $v0, $zero, $zero
.L800687F0:
/* 43BF0 800687F0 03E00008 */  jr         $ra
/* 43BF4 800687F4 A4660000 */   sh        $a2, 0x0($v1)
/* 43BF8 800687F8 00000000 */  nop
/* 43BFC 800687FC 00000000 */  nop

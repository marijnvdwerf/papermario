.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSpSetPc
/* 46B80 8006B780 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 46B84 8006B784 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 46B88 8006B788 8C430000 */  lw         $v1, 0x0($v0)
/* 46B8C 8006B78C 30630001 */  andi       $v1, $v1, 0x1
/* 46B90 8006B790 10600004 */  beqz       $v1, .L8006B7A4
/* 46B94 8006B794 3C03A408 */   lui       $v1, %hi(D_A4080000)
/* 46B98 8006B798 AC640000 */  sw         $a0, %lo(D_A4080000)($v1)
/* 46B9C 8006B79C 03E00008 */  jr         $ra
/* 46BA0 8006B7A0 00001021 */   addu      $v0, $zero, $zero
.L8006B7A4:
/* 46BA4 8006B7A4 03E00008 */  jr         $ra
/* 46BA8 8006B7A8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 46BAC 8006B7AC 00000000 */  nop

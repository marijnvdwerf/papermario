.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiDeviceBusy
/* 481E0 8006CDE0 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 481E4 8006CDE4 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 481E8 8006CDE8 8C430000 */  lw         $v1, 0x0($v0)
/* 481EC 8006CDEC 30630003 */  andi       $v1, $v1, 0x3
/* 481F0 8006CDF0 10600003 */  beqz       $v1, .L8006CE00
/* 481F4 8006CDF4 00001021 */   addu      $v0, $zero, $zero
/* 481F8 8006CDF8 03E00008 */  jr         $ra
/* 481FC 8006CDFC 24020001 */   addiu     $v0, $zero, 0x1
.L8006CE00:
/* 48200 8006CE00 03E00008 */  jr         $ra
/* 48204 8006CE04 00000000 */   nop
/* 48208 8006CE08 00000000 */  nop
/* 4820C 8006CE0C 00000000 */  nop

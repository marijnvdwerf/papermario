.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osAiDeviceBus
/* 45B40 8006A740 3C02A450 */  lui        $v0, (0xA450000C >> 16)
/* 45B44 8006A744 3442000C */  ori        $v0, $v0, (0xA450000C & 0xFFFF)
/* 45B48 8006A748 8C430000 */  lw         $v1, 0x0($v0)
/* 45B4C 8006A74C 04610003 */  bgez       $v1, .L8006A75C
/* 45B50 8006A750 00001021 */   addu      $v0, $zero, $zero
/* 45B54 8006A754 03E00008 */  jr         $ra
/* 45B58 8006A758 24020001 */   addiu     $v0, $zero, 0x1
.L8006A75C:
/* 45B5C 8006A75C 03E00008 */  jr         $ra
/* 45B60 8006A760 00000000 */   nop
/* 45B64 8006A764 00000000 */  nop
/* 45B68 8006A768 00000000 */  nop
/* 45B6C 8006A76C 00000000 */  nop

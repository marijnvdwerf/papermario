.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSpDeviceBusy
/* 46B30 8006B730 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 46B34 8006B734 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 46B38 8006B738 8C430000 */  lw         $v1, 0x0($v0)
/* 46B3C 8006B73C 3063001C */  andi       $v1, $v1, 0x1C
/* 46B40 8006B740 10600003 */  beqz       $v1, .L8006B750
/* 46B44 8006B744 00001021 */   addu      $v0, $zero, $zero
/* 46B48 8006B748 03E00008 */  jr         $ra
/* 46B4C 8006B74C 24020001 */   addiu     $v0, $zero, 0x1
.L8006B750:
/* 46B50 8006B750 03E00008 */  jr         $ra
/* 46B54 8006B754 00000000 */   nop
/* 46B58 8006B758 00000000 */  nop
/* 46B5C 8006B75C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSpSetStatus
/* 46B70 8006B770 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 46B74 8006B774 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 46B78 8006B778 03E00008 */  jr         $ra
/* 46B7C 8006B77C AC440000 */   sw        $a0, 0x0($v0)

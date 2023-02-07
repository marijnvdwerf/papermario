.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSpGetStatus
/* 46B60 8006B760 3C03A404 */  lui        $v1, (0xA4040010 >> 16)
/* 46B64 8006B764 34630010 */  ori        $v1, $v1, (0xA4040010 & 0xFFFF)
/* 46B68 8006B768 03E00008 */  jr         $ra
/* 46B6C 8006B76C 8C620000 */   lw        $v0, 0x0($v1)

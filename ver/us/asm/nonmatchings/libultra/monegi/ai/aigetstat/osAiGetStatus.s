.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osAiGetStatus
/* 3B720 80060320 3C03A450 */  lui        $v1, (0xA450000C >> 16)
/* 3B724 80060324 3463000C */  ori        $v1, $v1, (0xA450000C & 0xFFFF)
/* 3B728 80060328 03E00008 */  jr         $ra
/* 3B72C 8006032C 8C620000 */   lw        $v0, 0x0($v1)

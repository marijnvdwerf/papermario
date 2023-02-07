.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osAiGetLength
/* 3B710 80060310 3C03A450 */  lui        $v1, (0xA4500004 >> 16)
/* 3B714 80060314 34630004 */  ori        $v1, $v1, (0xA4500004 & 0xFFFF)
/* 3B718 80060318 03E00008 */  jr         $ra
/* 3B71C 8006031C 8C620000 */   lw        $v0, 0x0($v1)

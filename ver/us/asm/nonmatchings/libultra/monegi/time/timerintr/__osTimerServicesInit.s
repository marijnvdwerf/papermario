.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osTimerServicesInit
/* 3FC40 80064840 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3FC44 80064844 AFBE0000 */  sw         $fp, 0x0($sp)
/* 3FC48 80064848 03A0F021 */  addu       $fp, $sp, $zero
/* 3FC4C 8006484C 00003021 */  addu       $a2, $zero, $zero
/* 3FC50 80064850 00003821 */  addu       $a3, $zero, $zero
/* 3FC54 80064854 3C01800A */  lui        $at, %hi(__osCurrentTime)
/* 3FC58 80064858 AC2691D8 */  sw         $a2, %lo(__osCurrentTime)($at)
/* 3FC5C 8006485C 3C01800A */  lui        $at, %hi(__osCurrentTime+4)
/* 3FC60 80064860 AC2791DC */  sw         $a3, %lo(__osCurrentTime+4)($at)
/* 3FC64 80064864 3C01800A */  lui        $at, %hi(__osBaseCounter)
/* 3FC68 80064868 AC20918C */  sw         $zero, %lo(__osBaseCounter)($at)
/* 3FC6C 8006486C 3C01800A */  lui        $at, %hi(__osViIntrCount)
/* 3FC70 80064870 AC2091B0 */  sw         $zero, %lo(__osViIntrCount)($at)
/* 3FC74 80064874 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FC78 80064878 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FC7C 8006487C 3C038009 */  lui        $v1, %hi(__osTimerList)
/* 3FC80 80064880 8C633290 */  lw         $v1, %lo(__osTimerList)($v1)
/* 3FC84 80064884 3C048009 */  lui        $a0, %hi(__osTimerList)
/* 3FC88 80064888 8C843290 */  lw         $a0, %lo(__osTimerList)($a0)
/* 3FC8C 8006488C AC640004 */  sw         $a0, 0x4($v1)
/* 3FC90 80064890 AC440000 */  sw         $a0, 0x0($v0)
/* 3FC94 80064894 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FC98 80064898 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FC9C 8006489C 3C038009 */  lui        $v1, %hi(__osTimerList)
/* 3FCA0 800648A0 8C633290 */  lw         $v1, %lo(__osTimerList)($v1)
/* 3FCA4 800648A4 00003021 */  addu       $a2, $zero, $zero
/* 3FCA8 800648A8 00003821 */  addu       $a3, $zero, $zero
/* 3FCAC 800648AC AC660010 */  sw         $a2, 0x10($v1)
/* 3FCB0 800648B0 AC670014 */  sw         $a3, 0x14($v1)
/* 3FCB4 800648B4 00003021 */  addu       $a2, $zero, $zero
/* 3FCB8 800648B8 00003821 */  addu       $a3, $zero, $zero
/* 3FCBC 800648BC AC460008 */  sw         $a2, 0x8($v0)
/* 3FCC0 800648C0 AC47000C */  sw         $a3, 0xC($v0)
/* 3FCC4 800648C4 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FCC8 800648C8 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FCCC 800648CC AC400018 */  sw         $zero, 0x18($v0)
/* 3FCD0 800648D0 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FCD4 800648D4 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FCD8 800648D8 AC40001C */  sw         $zero, 0x1C($v0)
/* 3FCDC 800648DC 03C0E821 */  addu       $sp, $fp, $zero
/* 3FCE0 800648E0 8FBE0000 */  lw         $fp, 0x0($sp)
/* 3FCE4 800648E4 03E00008 */  jr         $ra
/* 3FCE8 800648E8 27BD0008 */   addiu     $sp, $sp, 0x8

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osCreateMesgQueue
/* 3EAC0 800636C0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3EAC4 800636C4 AFBE0000 */  sw         $fp, 0x0($sp)
/* 3EAC8 800636C8 03A0F021 */  addu       $fp, $sp, $zero
/* 3EACC 800636CC AFC40008 */  sw         $a0, 0x8($fp)
/* 3EAD0 800636D0 AFC5000C */  sw         $a1, 0xC($fp)
/* 3EAD4 800636D4 AFC60010 */  sw         $a2, 0x10($fp)
/* 3EAD8 800636D8 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EADC 800636DC 3C038009 */  lui        $v1, %hi(__osThreadTail)
/* 3EAE0 800636E0 24633270 */  addiu      $v1, $v1, %lo(__osThreadTail)
/* 3EAE4 800636E4 AC430000 */  sw         $v1, 0x0($v0)
/* 3EAE8 800636E8 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EAEC 800636EC 3C038009 */  lui        $v1, %hi(__osThreadTail)
/* 3EAF0 800636F0 24633270 */  addiu      $v1, $v1, %lo(__osThreadTail)
/* 3EAF4 800636F4 AC430004 */  sw         $v1, 0x4($v0)
/* 3EAF8 800636F8 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EAFC 800636FC AC400008 */  sw         $zero, 0x8($v0)
/* 3EB00 80063700 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EB04 80063704 AC40000C */  sw         $zero, 0xC($v0)
/* 3EB08 80063708 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EB0C 8006370C 8FC30010 */  lw         $v1, 0x10($fp)
/* 3EB10 80063710 AC430010 */  sw         $v1, 0x10($v0)
/* 3EB14 80063714 8FC20008 */  lw         $v0, 0x8($fp)
/* 3EB18 80063718 8FC3000C */  lw         $v1, 0xC($fp)
/* 3EB1C 8006371C AC430014 */  sw         $v1, 0x14($v0)
/* 3EB20 80063720 03C0E821 */  addu       $sp, $fp, $zero
/* 3EB24 80063724 8FBE0000 */  lw         $fp, 0x0($sp)
/* 3EB28 80063728 03E00008 */  jr         $ra
/* 3EB2C 8006372C 27BD0008 */   addiu     $sp, $sp, 0x8

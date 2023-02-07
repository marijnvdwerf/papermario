.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSetTimer
/* 3FA80 80064680 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3FA84 80064684 AFBF002C */  sw         $ra, 0x2C($sp)
/* 3FA88 80064688 AFBE0028 */  sw         $fp, 0x28($sp)
/* 3FA8C 8006468C 03A0F021 */  addu       $fp, $sp, $zero
/* 3FA90 80064690 AFC40030 */  sw         $a0, 0x30($fp)
/* 3FA94 80064694 AFC60038 */  sw         $a2, 0x38($fp)
/* 3FA98 80064698 AFC7003C */  sw         $a3, 0x3C($fp)
/* 3FA9C 8006469C 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FAA0 800646A0 AC400000 */  sw         $zero, 0x0($v0)
/* 3FAA4 800646A4 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FAA8 800646A8 AC400004 */  sw         $zero, 0x4($v0)
/* 3FAAC 800646AC 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FAB0 800646B0 8FC40040 */  lw         $a0, 0x40($fp)
/* 3FAB4 800646B4 8FC50044 */  lw         $a1, 0x44($fp)
/* 3FAB8 800646B8 AC440008 */  sw         $a0, 0x8($v0)
/* 3FABC 800646BC AC45000C */  sw         $a1, 0xC($v0)
/* 3FAC0 800646C0 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FAC4 800646C4 8FC40038 */  lw         $a0, 0x38($fp)
/* 3FAC8 800646C8 8FC5003C */  lw         $a1, 0x3C($fp)
/* 3FACC 800646CC 8FC30038 */  lw         $v1, 0x38($fp)
/* 3FAD0 800646D0 8FC6003C */  lw         $a2, 0x3C($fp)
/* 3FAD4 800646D4 00661825 */  or         $v1, $v1, $a2
/* 3FAD8 800646D8 14600003 */  bnez       $v1, .L800646E8
/* 3FADC 800646DC 00000000 */   nop
/* 3FAE0 800646E0 8FC40040 */  lw         $a0, 0x40($fp)
/* 3FAE4 800646E4 8FC50044 */  lw         $a1, 0x44($fp)
.L800646E8:
/* 3FAE8 800646E8 AC440010 */  sw         $a0, 0x10($v0)
/* 3FAEC 800646EC AC450014 */  sw         $a1, 0x14($v0)
/* 3FAF0 800646F0 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FAF4 800646F4 8FC30048 */  lw         $v1, 0x48($fp)
/* 3FAF8 800646F8 AC430018 */  sw         $v1, 0x18($v0)
/* 3FAFC 800646FC 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FB00 80064700 8FC3004C */  lw         $v1, 0x4C($fp)
/* 3FB04 80064704 0C019B40 */  jal        __osDisableInt
/* 3FB08 80064708 AC43001C */   sw        $v1, 0x1C($v0)
/* 3FB0C 8006470C AFC20024 */  sw         $v0, 0x24($fp)
/* 3FB10 80064710 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FB14 80064714 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FB18 80064718 8C430000 */  lw         $v1, 0x0($v0)
/* 3FB1C 8006471C 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FB20 80064720 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FB24 80064724 14620003 */  bne        $v1, $v0, .L80064734
/* 3FB28 80064728 00000000 */   nop
/* 3FB2C 8006472C 080191FD */  j          .L800647F4
/* 3FB30 80064730 00000000 */   nop
.L80064734:
/* 3FB34 80064734 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FB38 80064738 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FB3C 8006473C 8C430000 */  lw         $v1, 0x0($v0)
/* 3FB40 80064740 0C018EB8 */  jal        osGetCount
/* 3FB44 80064744 AFC30018 */   sw        $v1, 0x18($fp)
/* 3FB48 80064748 AFC2001C */  sw         $v0, 0x1C($fp)
/* 3FB4C 8006474C 8FC2001C */  lw         $v0, 0x1C($fp)
/* 3FB50 80064750 3C03800A */  lui        $v1, %hi(__osTimerCounter)
/* 3FB54 80064754 8C639200 */  lw         $v1, %lo(__osTimerCounter)($v1)
/* 3FB58 80064758 00431023 */  subu       $v0, $v0, $v1
/* 3FB5C 8006475C AFC20020 */  sw         $v0, 0x20($fp)
/* 3FB60 80064760 8FC40018 */  lw         $a0, 0x18($fp)
/* 3FB64 80064764 8FC30020 */  lw         $v1, 0x20($fp)
/* 3FB68 80064768 00001021 */  addu       $v0, $zero, $zero
/* 3FB6C 8006476C 8C850010 */  lw         $a1, 0x10($a0)
/* 3FB70 80064770 0045302B */  sltu       $a2, $v0, $a1
/* 3FB74 80064774 14C0000D */  bnez       $a2, .L800647AC
/* 3FB78 80064778 00000000 */   nop
/* 3FB7C 8006477C 8C850010 */  lw         $a1, 0x10($a0)
/* 3FB80 80064780 14A20017 */  bne        $a1, $v0, .L800647E0
/* 3FB84 80064784 00000000 */   nop
/* 3FB88 80064788 8C850014 */  lw         $a1, 0x14($a0)
/* 3FB8C 8006478C 0065302B */  sltu       $a2, $v1, $a1
/* 3FB90 80064790 14C00006 */  bnez       $a2, .L800647AC
/* 3FB94 80064794 00000000 */   nop
/* 3FB98 80064798 8C840014 */  lw         $a0, 0x14($a0)
/* 3FB9C 8006479C 14830010 */  bne        $a0, $v1, .L800647E0
/* 3FBA0 800647A0 00000000 */   nop
/* 3FBA4 800647A4 080191F8 */  j          .L800647E0
/* 3FBA8 800647A8 00000000 */   nop
.L800647AC:
/* 3FBAC 800647AC 8FC20018 */  lw         $v0, 0x18($fp)
/* 3FBB0 800647B0 8FC30018 */  lw         $v1, 0x18($fp)
/* 3FBB4 800647B4 8FC50020 */  lw         $a1, 0x20($fp)
/* 3FBB8 800647B8 00002021 */  addu       $a0, $zero, $zero
/* 3FBBC 800647BC 8C660010 */  lw         $a2, 0x10($v1)
/* 3FBC0 800647C0 8C670014 */  lw         $a3, 0x14($v1)
/* 3FBC4 800647C4 00E5182B */  sltu       $v1, $a3, $a1
/* 3FBC8 800647C8 00E52823 */  subu       $a1, $a3, $a1
/* 3FBCC 800647CC 00C42023 */  subu       $a0, $a2, $a0
/* 3FBD0 800647D0 00832023 */  subu       $a0, $a0, $v1
/* 3FBD4 800647D4 AC440010 */  sw         $a0, 0x10($v0)
/* 3FBD8 800647D8 080191FD */  j          .L800647F4
/* 3FBDC 800647DC AC450014 */   sw        $a1, 0x14($v0)
.L800647E0:
/* 3FBE0 800647E0 8FC20018 */  lw         $v0, 0x18($fp)
/* 3FBE4 800647E4 24040000 */  addiu      $a0, $zero, 0x0
/* 3FBE8 800647E8 24050001 */  addiu      $a1, $zero, 0x1
/* 3FBEC 800647EC AC440010 */  sw         $a0, 0x10($v0)
/* 3FBF0 800647F0 AC450014 */  sw         $a1, 0x14($v0)
.L800647F4:
/* 3FBF4 800647F4 0C0192EA */  jal        __osInsertTimer
/* 3FBF8 800647F8 8FC40030 */   lw        $a0, 0x30($fp)
/* 3FBFC 800647FC AFC20010 */  sw         $v0, 0x10($fp)
/* 3FC00 80064800 AFC30014 */  sw         $v1, 0x14($fp)
/* 3FC04 80064804 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FC08 80064808 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FC0C 8006480C 8C430000 */  lw         $v1, 0x0($v0)
/* 3FC10 80064810 8C640010 */  lw         $a0, 0x10($v1)
/* 3FC14 80064814 0C0192B5 */  jal        __osSetTimerIntr
/* 3FC18 80064818 8C650014 */   lw        $a1, 0x14($v1)
/* 3FC1C 8006481C 0C019B5C */  jal        __osRestoreInt
/* 3FC20 80064820 8FC40024 */   lw        $a0, 0x24($fp)
/* 3FC24 80064824 0801920B */  j          .L8006482C
/* 3FC28 80064828 00001021 */   addu      $v0, $zero, $zero
.L8006482C:
/* 3FC2C 8006482C 03C0E821 */  addu       $sp, $fp, $zero
/* 3FC30 80064830 8FBF002C */  lw         $ra, 0x2C($sp)
/* 3FC34 80064834 8FBE0028 */  lw         $fp, 0x28($sp)
/* 3FC38 80064838 03E00008 */  jr         $ra
/* 3FC3C 8006483C 27BD0030 */   addiu     $sp, $sp, 0x30

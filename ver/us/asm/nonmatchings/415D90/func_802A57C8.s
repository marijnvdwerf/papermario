.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel func_802A57C8
/* 46D1A4 802A58F4 3C03802B */  lui        $v1, %hi(D_802AD850)
/* 46D1A8 802A58F8 8463D850 */  lh         $v1, %lo(D_802AD850)($v1)
/* 46D1AC 802A58FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 46D1B0 802A5900 AFB1001C */  sw         $s1, 0x1C($sp)
/* 46D1B4 802A5904 24D10006 */  addiu      $s1, $a2, 0x6
/* 46D1B8 802A5908 AFB20020 */  sw         $s2, 0x20($sp)
/* 46D1BC 802A590C 24B2000B */  addiu      $s2, $a1, 0xB
/* 46D1C0 802A5910 AFBF0024 */  sw         $ra, 0x24($sp)
/* 46D1C4 802A5914 14600004 */  bnez       $v1, .LPAL_802A5928
/* 46D1C8 802A5918 AFB00018 */   sw        $s0, 0x18($sp)
/* 46D1CC 802A591C 3C10001D */  lui        $s0, (0x1D00CB >> 16)
/* 46D1D0 802A5920 080A964C */  j          .LPAL_802A5930
/* 46D1D4 802A5924 361000CB */   ori       $s0, $s0, (0x1D00CB & 0xFFFF)
.LPAL_802A5928:
/* 46D1D8 802A5928 3C10001D */  lui        $s0, (0x1D00CC >> 16)
/* 46D1DC 802A592C 361000CC */  ori        $s0, $s0, (0x1D00CC & 0xFFFF)
.LPAL_802A5930:
/* 46D1E0 802A5930 0C0493F4 */  jal        func_PAL_80124FD0
/* 46D1E4 802A5934 0200202D */   daddu     $a0, $s0, $zero
/* 46D1E8 802A5938 0200202D */  daddu      $a0, $s0, $zero
/* 46D1EC 802A593C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 46D1F0 802A5940 00021040 */  sll        $v0, $v0, 1
/* 46D1F4 802A5944 3C06802B */  lui        $a2, %hi(D_PAL_802AB4C4)
/* 46D1F8 802A5948 00C23021 */  addu       $a2, $a2, $v0
/* 46D1FC 802A594C 84C6B4C4 */  lh         $a2, %lo(D_PAL_802AB4C4)($a2)
/* 46D200 802A5950 2402000F */  addiu      $v0, $zero, 0xF
/* 46D204 802A5954 0240282D */  daddu      $a1, $s2, $zero
/* 46D208 802A5958 240700FF */  addiu      $a3, $zero, 0xFF
/* 46D20C 802A595C AFA20010 */  sw         $v0, 0x10($sp)
/* 46D210 802A5960 AFA00014 */  sw         $zero, 0x14($sp)
/* 46D214 802A5964 0C049403 */  jal        func_PAL_8012500C
/* 46D218 802A5968 02263021 */   addu      $a2, $s1, $a2
/* 46D21C 802A596C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 46D220 802A5970 8FB20020 */  lw         $s2, 0x20($sp)
/* 46D224 802A5974 8FB1001C */  lw         $s1, 0x1C($sp)
/* 46D228 802A5978 8FB00018 */  lw         $s0, 0x18($sp)
/* 46D22C 802A597C 03E00008 */  jr         $ra
/* 46D230 802A5980 27BD0028 */   addiu     $sp, $sp, 0x28

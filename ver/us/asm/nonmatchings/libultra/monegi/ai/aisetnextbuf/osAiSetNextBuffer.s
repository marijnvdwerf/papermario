.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osAiSetNextBuffer
/* 3B830 80060430 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3B834 80060434 AFB00010 */  sw         $s0, 0x10($sp)
/* 3B838 80060438 00808021 */  addu       $s0, $a0, $zero
/* 3B83C 8006043C AFB10014 */  sw         $s1, 0x14($sp)
/* 3B840 80060440 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3B844 80060444 0C01A9D0 */  jal        __osAiDeviceBus
/* 3B848 80060448 00A08821 */   addu      $s1, $a1, $zero
/* 3B84C 8006044C 14400018 */  bnez       $v0, .L800604B0
/* 3B850 80060450 2402FFFF */   addiu     $v0, $zero, -0x1
/* 3B854 80060454 3C028009 */  lui        $v0, %hi(aisetnextbuf_hdwrBugFlag)
/* 3B858 80060458 904229C0 */  lbu        $v0, %lo(aisetnextbuf_hdwrBugFlag)($v0)
/* 3B85C 8006045C 10400002 */  beqz       $v0, .L80060468
/* 3B860 80060460 02002021 */   addu      $a0, $s0, $zero
/* 3B864 80060464 2484E000 */  addiu      $a0, $a0, -0x2000
.L80060468:
/* 3B868 80060468 02111021 */  addu       $v0, $s0, $s1
/* 3B86C 8006046C 30421FFF */  andi       $v0, $v0, 0x1FFF
/* 3B870 80060470 14400004 */  bnez       $v0, .L80060484
/* 3B874 80060474 24020001 */   addiu     $v0, $zero, 0x1
/* 3B878 80060478 3C018009 */  lui        $at, %hi(aisetnextbuf_hdwrBugFlag)
/* 3B87C 8006047C 08018123 */  j          .L8006048C
/* 3B880 80060480 A02229C0 */   sb        $v0, %lo(aisetnextbuf_hdwrBugFlag)($at)
.L80060484:
/* 3B884 80060484 3C018009 */  lui        $at, %hi(aisetnextbuf_hdwrBugFlag)
/* 3B888 80060488 A02029C0 */  sb         $zero, %lo(aisetnextbuf_hdwrBugFlag)($at)
.L8006048C:
/* 3B88C 8006048C 0C01836C */  jal        osVirtualToPhysical
/* 3B890 80060490 00000000 */   nop
/* 3B894 80060494 3C03A450 */  lui        $v1, (0xA4500004 >> 16)
/* 3B898 80060498 34630004 */  ori        $v1, $v1, (0xA4500004 & 0xFFFF)
/* 3B89C 8006049C 00402821 */  addu       $a1, $v0, $zero
/* 3B8A0 800604A0 00001021 */  addu       $v0, $zero, $zero
/* 3B8A4 800604A4 3C04A450 */  lui        $a0, %hi(D_A4500000)
/* 3B8A8 800604A8 AC850000 */  sw         $a1, %lo(D_A4500000)($a0)
/* 3B8AC 800604AC AC710000 */  sw         $s1, 0x0($v1)
.L800604B0:
/* 3B8B0 800604B0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3B8B4 800604B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 3B8B8 800604B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3B8BC 800604BC 03E00008 */  jr         $ra
/* 3B8C0 800604C0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3B8C4 800604C4 00000000 */  nop
/* 3B8C8 800604C8 00000000 */  nop
/* 3B8CC 800604CC 00000000 */  nop

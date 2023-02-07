.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osEPiStartDma
/* 42840 80067440 3C028009 */  lui        $v0, %hi(__osPiDevMgr)
/* 42844 80067444 8C424520 */  lw         $v0, %lo(__osPiDevMgr)($v0)
/* 42848 80067448 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4284C 8006744C AFB00010 */  sw         $s0, 0x10($sp)
/* 42850 80067450 00A08021 */  addu       $s0, $a1, $zero
/* 42854 80067454 14400003 */  bnez       $v0, .L80067464
/* 42858 80067458 AFBF0014 */   sw        $ra, 0x14($sp)
/* 4285C 8006745C 08019D31 */  j          .L800674C4
/* 42860 80067460 2402FFFF */   addiu     $v0, $zero, -0x1
.L80067464:
/* 42864 80067464 14C00003 */  bnez       $a2, .L80067474
/* 42868 80067468 AE040014 */   sw        $a0, 0x14($s0)
/* 4286C 8006746C 08019D1E */  j          .L80067478
/* 42870 80067470 2402000F */   addiu     $v0, $zero, 0xF
.L80067474:
/* 42874 80067474 24020010 */  addiu      $v0, $zero, 0x10
.L80067478:
/* 42878 80067478 A6020000 */  sh         $v0, 0x0($s0)
/* 4287C 8006747C 92030002 */  lbu        $v1, 0x2($s0)
/* 42880 80067480 24020001 */  addiu      $v0, $zero, 0x1
/* 42884 80067484 14620009 */  bne        $v1, $v0, .L800674AC
/* 42888 80067488 00000000 */   nop
/* 4288C 8006748C 0C01AF94 */  jal        osPiGetCmdQueue
/* 42890 80067490 00000000 */   nop
/* 42894 80067494 00402021 */  addu       $a0, $v0, $zero
/* 42898 80067498 02002821 */  addu       $a1, $s0, $zero
/* 4289C 8006749C 0C01AD2C */  jal        osJamMesg
/* 428A0 800674A0 00003021 */   addu      $a2, $zero, $zero
/* 428A4 800674A4 08019D32 */  j          .L800674C8
/* 428A8 800674A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800674AC:
/* 428AC 800674AC 0C01AF94 */  jal        osPiGetCmdQueue
/* 428B0 800674B0 00000000 */   nop
/* 428B4 800674B4 00402021 */  addu       $a0, $v0, $zero
/* 428B8 800674B8 02002821 */  addu       $a1, $s0, $zero
/* 428BC 800674BC 0C018E28 */  jal        osSendMesg
/* 428C0 800674C0 00003021 */   addu      $a2, $zero, $zero
.L800674C4:
/* 428C4 800674C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800674C8:
/* 428C8 800674C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 428CC 800674CC 03E00008 */  jr         $ra
/* 428D0 800674D0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 428D4 800674D4 00000000 */  nop
/* 428D8 800674D8 00000000 */  nop
/* 428DC 800674DC 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osStopThread
/* 3F810 80064410 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F814 80064414 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3F818 80064418 AFBE0018 */  sw         $fp, 0x18($sp)
/* 3F81C 8006441C AFB10014 */  sw         $s1, 0x14($sp)
/* 3F820 80064420 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F824 80064424 03A0F021 */  addu       $fp, $sp, $zero
/* 3F828 80064428 0C019B40 */  jal        __osDisableInt
/* 3F82C 8006442C AFC40020 */   sw        $a0, 0x20($fp)
/* 3F830 80064430 00408021 */  addu       $s0, $v0, $zero
/* 3F834 80064434 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F838 80064438 10400004 */  beqz       $v0, .L8006444C
/* 3F83C 8006443C 00000000 */   nop
/* 3F840 80064440 8FC30020 */  lw         $v1, 0x20($fp)
/* 3F844 80064444 08019114 */  j          .L80064450
/* 3F848 80064448 94620010 */   lhu       $v0, 0x10($v1)
.L8006444C:
/* 3F84C 8006444C 24020004 */  addiu      $v0, $zero, 0x4
.L80064450:
/* 3F850 80064450 00408821 */  addu       $s1, $v0, $zero
/* 3F854 80064454 24020004 */  addiu      $v0, $zero, 0x4
/* 3F858 80064458 1222000E */  beq        $s1, $v0, .L80064494
/* 3F85C 8006445C 00000000 */   nop
/* 3F860 80064460 2A220005 */  slti       $v0, $s1, 0x5
/* 3F864 80064464 10400006 */  beqz       $v0, .L80064480
/* 3F868 80064468 00000000 */   nop
/* 3F86C 8006446C 24020002 */  addiu      $v0, $zero, 0x2
/* 3F870 80064470 12220010 */  beq        $s1, $v0, .L800644B4
/* 3F874 80064474 00000000 */   nop
/* 3F878 80064478 08019136 */  j          .L800644D8
/* 3F87C 8006447C 00000000 */   nop
.L80064480:
/* 3F880 80064480 24020008 */  addiu      $v0, $zero, 0x8
/* 3F884 80064484 1222000B */  beq        $s1, $v0, .L800644B4
/* 3F888 80064488 00000000 */   nop
/* 3F88C 8006448C 08019136 */  j          .L800644D8
/* 3F890 80064490 00000000 */   nop
.L80064494:
/* 3F894 80064494 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 3F898 80064498 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 3F89C 8006449C 24030001 */  addiu      $v1, $zero, 0x1
/* 3F8A0 800644A0 A4430010 */  sh         $v1, 0x10($v0)
/* 3F8A4 800644A4 0C019A81 */  jal        __osEnqueueAndYield
/* 3F8A8 800644A8 00002021 */   addu      $a0, $zero, $zero
/* 3F8AC 800644AC 08019136 */  j          .L800644D8
/* 3F8B0 800644B0 00000000 */   nop
.L800644B4:
/* 3F8B4 800644B4 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F8B8 800644B8 24030001 */  addiu      $v1, $zero, 0x1
/* 3F8BC 800644BC A4430010 */  sh         $v1, 0x10($v0)
/* 3F8C0 800644C0 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F8C4 800644C4 8C440008 */  lw         $a0, 0x8($v0)
/* 3F8C8 800644C8 0C019140 */  jal        __osDequeueThread
/* 3F8CC 800644CC 8FC50020 */   lw        $a1, 0x20($fp)
/* 3F8D0 800644D0 08019136 */  j          .L800644D8
/* 3F8D4 800644D4 00000000 */   nop
.L800644D8:
/* 3F8D8 800644D8 0C019B5C */  jal        __osRestoreInt
/* 3F8DC 800644DC 02002021 */   addu      $a0, $s0, $zero
/* 3F8E0 800644E0 03C0E821 */  addu       $sp, $fp, $zero
/* 3F8E4 800644E4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3F8E8 800644E8 8FBE0018 */  lw         $fp, 0x18($sp)
/* 3F8EC 800644EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 3F8F0 800644F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F8F4 800644F4 03E00008 */  jr         $ra
/* 3F8F8 800644F8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3F8FC 800644FC 00000000 */  nop

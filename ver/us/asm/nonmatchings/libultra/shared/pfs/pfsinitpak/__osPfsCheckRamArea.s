.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsCheckRamArea
/* 44714 80069314 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 44718 80069318 AFB1007C */  sw         $s1, 0x7C($sp)
/* 4471C 8006931C 00808821 */  addu       $s1, $a0, $zero
/* 44720 80069320 00002821 */  addu       $a1, $zero, $zero
/* 44724 80069324 AFBF0080 */  sw         $ra, 0x80($sp)
/* 44728 80069328 0C01A568 */  jal        __osPfsSelectBank
/* 4472C 8006932C AFB00078 */   sw        $s0, 0x78($sp)
/* 44730 80069330 1440002F */  bnez       $v0, .L800693F0
/* 44734 80069334 8FBF0080 */   lw        $ra, 0x80($sp)
/* 44738 80069338 00003021 */  addu       $a2, $zero, $zero
/* 4473C 8006933C 8E240004 */  lw         $a0, 0x4($s1)
/* 44740 80069340 8E250008 */  lw         $a1, 0x8($s1)
/* 44744 80069344 0C01A7D8 */  jal        __osContRamRead
/* 44748 80069348 27A70058 */   addiu     $a3, $sp, 0x58
/* 4474C 8006934C 14400028 */  bnez       $v0, .L800693F0
/* 44750 80069350 8FBF0080 */   lw        $ra, 0x80($sp)
/* 44754 80069354 00002021 */  addu       $a0, $zero, $zero
/* 44758 80069358 27A50018 */  addiu      $a1, $sp, 0x18
/* 4475C 8006935C 00A41021 */  addu       $v0, $a1, $a0
.L80069360:
/* 44760 80069360 A0440000 */  sb         $a0, 0x0($v0)
/* 44764 80069364 24840001 */  addiu      $a0, $a0, 0x1
/* 44768 80069368 28830020 */  slti       $v1, $a0, 0x20
/* 4476C 8006936C 1460FFFC */  bnez       $v1, .L80069360
/* 44770 80069370 00A41021 */   addu      $v0, $a1, $a0
/* 44774 80069374 00003021 */  addu       $a2, $zero, $zero
/* 44778 80069378 8E240004 */  lw         $a0, 0x4($s1)
/* 4477C 8006937C 8E250008 */  lw         $a1, 0x8($s1)
/* 44780 80069380 27A70018 */  addiu      $a3, $sp, 0x18
/* 44784 80069384 0C01A808 */  jal        __osContRamWrite
/* 44788 80069388 AFA00010 */   sw        $zero, 0x10($sp)
/* 4478C 8006938C 14400018 */  bnez       $v0, .L800693F0
/* 44790 80069390 8FBF0080 */   lw        $ra, 0x80($sp)
/* 44794 80069394 00003021 */  addu       $a2, $zero, $zero
/* 44798 80069398 27B00038 */  addiu      $s0, $sp, 0x38
/* 4479C 8006939C 8E240004 */  lw         $a0, 0x4($s1)
/* 447A0 800693A0 8E250008 */  lw         $a1, 0x8($s1)
/* 447A4 800693A4 0C01A7D8 */  jal        __osContRamRead
/* 447A8 800693A8 02003821 */   addu      $a3, $s0, $zero
/* 447AC 800693AC 14400010 */  bnez       $v0, .L800693F0
/* 447B0 800693B0 8FBF0080 */   lw        $ra, 0x80($sp)
/* 447B4 800693B4 27A40018 */  addiu      $a0, $sp, 0x18
/* 447B8 800693B8 02002821 */  addu       $a1, $s0, $zero
/* 447BC 800693BC 0C01A9DC */  jal        bcmp
/* 447C0 800693C0 24060020 */   addiu     $a2, $zero, 0x20
/* 447C4 800693C4 14400009 */  bnez       $v0, .L800693EC
/* 447C8 800693C8 2402000B */   addiu     $v0, $zero, 0xB
/* 447CC 800693CC 00003021 */  addu       $a2, $zero, $zero
/* 447D0 800693D0 8E240004 */  lw         $a0, 0x4($s1)
/* 447D4 800693D4 8E250008 */  lw         $a1, 0x8($s1)
/* 447D8 800693D8 27A70058 */  addiu      $a3, $sp, 0x58
/* 447DC 800693DC 0C01A808 */  jal        __osContRamWrite
/* 447E0 800693E0 AFA00010 */   sw        $zero, 0x10($sp)
/* 447E4 800693E4 0801A4FC */  j          .L800693F0
/* 447E8 800693E8 8FBF0080 */   lw        $ra, 0x80($sp)
.L800693EC:
/* 447EC 800693EC 8FBF0080 */  lw         $ra, 0x80($sp)
.L800693F0:
/* 447F0 800693F0 8FB1007C */  lw         $s1, 0x7C($sp)
/* 447F4 800693F4 8FB00078 */  lw         $s0, 0x78($sp)
/* 447F8 800693F8 03E00008 */  jr         $ra
/* 447FC 800693FC 27BD0088 */   addiu     $sp, $sp, 0x88

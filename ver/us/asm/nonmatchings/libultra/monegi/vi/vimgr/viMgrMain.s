.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel viMgrMain
/* 405A8 800651A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 405AC 800651AC AFB40028 */  sw         $s4, 0x28($sp)
/* 405B0 800651B0 0080A021 */  addu       $s4, $a0, $zero
/* 405B4 800651B4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 405B8 800651B8 AFB30024 */  sw         $s3, 0x24($sp)
/* 405BC 800651BC AFB20020 */  sw         $s2, 0x20($sp)
/* 405C0 800651C0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 405C4 800651C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 405C8 800651C8 0C01AF08 */  jal        __osViGetCurrentContext
/* 405CC 800651CC AFA00010 */   sw        $zero, 0x10($sp)
/* 405D0 800651D0 94430002 */  lhu        $v1, 0x2($v0)
/* 405D4 800651D4 3C01800B */  lui        $at, %hi(retrace)
/* 405D8 800651D8 A423D310 */  sh         $v1, %lo(retrace)($at)
/* 405DC 800651DC 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 405E0 800651E0 14600004 */  bnez       $v1, .L800651F4
/* 405E4 800651E4 00008821 */   addu      $s1, $zero, $zero
/* 405E8 800651E8 24020001 */  addiu      $v0, $zero, 0x1
/* 405EC 800651EC 3C01800B */  lui        $at, %hi(retrace)
/* 405F0 800651F0 A422D310 */  sh         $v0, %lo(retrace)($at)
.L800651F4:
/* 405F4 800651F4 2413000D */  addiu      $s3, $zero, 0xD
/* 405F8 800651F8 2412000E */  addiu      $s2, $zero, 0xE
/* 405FC 800651FC 27A50010 */  addiu      $a1, $sp, 0x10
.L80065200:
/* 40600 80065200 8E84000C */  lw         $a0, 0xC($s4)
.L80065204:
/* 40604 80065204 0C018DCC */  jal        osRecvMesg
/* 40608 80065208 24060001 */   addiu     $a2, $zero, 0x1
/* 4060C 8006520C 8FA30010 */  lw         $v1, 0x10($sp)
/* 40610 80065210 94620000 */  lhu        $v0, 0x0($v1)
/* 40614 80065214 10530005 */  beq        $v0, $s3, .L8006522C
/* 40618 80065218 00000000 */   nop
/* 4061C 8006521C 10520040 */  beq        $v0, $s2, .L80065320
/* 40620 80065220 27A50010 */   addiu     $a1, $sp, 0x10
/* 40624 80065224 08019481 */  j          .L80065204
/* 40628 80065228 8E84000C */   lw        $a0, 0xC($s4)
.L8006522C:
/* 4062C 8006522C 0C01958C */  jal        __osViSwapContext
/* 40630 80065230 00000000 */   nop
/* 40634 80065234 3C02800B */  lui        $v0, %hi(retrace)
/* 40638 80065238 9442D310 */  lhu        $v0, %lo(retrace)($v0)
/* 4063C 8006523C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 40640 80065240 3C01800B */  lui        $at, %hi(retrace)
/* 40644 80065244 A422D310 */  sh         $v0, %lo(retrace)($at)
/* 40648 80065248 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 4064C 8006524C 1440000D */  bnez       $v0, .L80065284
/* 40650 80065250 00000000 */   nop
/* 40654 80065254 0C01AF08 */  jal        __osViGetCurrentContext
/* 40658 80065258 00000000 */   nop
/* 4065C 8006525C 00408021 */  addu       $s0, $v0, $zero
/* 40660 80065260 8C440010 */  lw         $a0, 0x10($v0)
/* 40664 80065264 50800005 */  beql       $a0, $zero, .L8006527C
/* 40668 80065268 96020002 */   lhu       $v0, 0x2($s0)
/* 4066C 8006526C 8E050014 */  lw         $a1, 0x14($s0)
/* 40670 80065270 0C018E28 */  jal        osSendMesg
/* 40674 80065274 00003021 */   addu      $a2, $zero, $zero
/* 40678 80065278 96020002 */  lhu        $v0, 0x2($s0)
.L8006527C:
/* 4067C 8006527C 3C01800B */  lui        $at, %hi(retrace)
/* 40680 80065280 A422D310 */  sh         $v0, %lo(retrace)($at)
.L80065284:
/* 40684 80065284 3C02800A */  lui        $v0, %hi(__osViIntrCount)
/* 40688 80065288 8C4291B0 */  lw         $v0, %lo(__osViIntrCount)($v0)
/* 4068C 8006528C 24420001 */  addiu      $v0, $v0, 0x1
/* 40690 80065290 3C01800A */  lui        $at, %hi(__osViIntrCount)
/* 40694 80065294 AC2291B0 */  sw         $v0, %lo(__osViIntrCount)($at)
/* 40698 80065298 1220000A */  beqz       $s1, .L800652C4
/* 4069C 8006529C 00000000 */   nop
/* 406A0 800652A0 0C018EB8 */  jal        osGetCount
/* 406A4 800652A4 00008821 */   addu      $s1, $zero, $zero
/* 406A8 800652A8 00408021 */  addu       $s0, $v0, $zero
/* 406AC 800652AC 02002821 */  addu       $a1, $s0, $zero
/* 406B0 800652B0 00002021 */  addu       $a0, $zero, $zero
/* 406B4 800652B4 3C01800A */  lui        $at, %hi(__osCurrentTime)
/* 406B8 800652B8 AC2491D8 */  sw         $a0, %lo(__osCurrentTime)($at)
/* 406BC 800652BC 3C01800A */  lui        $at, %hi(__osCurrentTime+4)
/* 406C0 800652C0 AC2591DC */  sw         $a1, %lo(__osCurrentTime+4)($at)
.L800652C4:
/* 406C4 800652C4 3C10800A */  lui        $s0, %hi(__osBaseCounter)
/* 406C8 800652C8 8E10918C */  lw         $s0, %lo(__osBaseCounter)($s0)
/* 406CC 800652CC 0C018EB8 */  jal        osGetCount
/* 406D0 800652D0 00000000 */   nop
/* 406D4 800652D4 3C01800A */  lui        $at, %hi(__osBaseCounter)
/* 406D8 800652D8 AC22918C */  sw         $v0, %lo(__osBaseCounter)($at)
/* 406DC 800652DC 00508023 */  subu       $s0, $v0, $s0
/* 406E0 800652E0 02002821 */  addu       $a1, $s0, $zero
/* 406E4 800652E4 3C02800A */  lui        $v0, %hi(__osCurrentTime)
/* 406E8 800652E8 8C4291D8 */  lw         $v0, %lo(__osCurrentTime)($v0)
/* 406EC 800652EC 3C03800A */  lui        $v1, %hi(__osCurrentTime+4)
/* 406F0 800652F0 8C6391DC */  lw         $v1, %lo(__osCurrentTime+4)($v1)
/* 406F4 800652F4 00002021 */  addu       $a0, $zero, $zero
/* 406F8 800652F8 00651821 */  addu       $v1, $v1, $a1
/* 406FC 800652FC 0065302B */  sltu       $a2, $v1, $a1
/* 40700 80065300 00441021 */  addu       $v0, $v0, $a0
/* 40704 80065304 00461021 */  addu       $v0, $v0, $a2
/* 40708 80065308 3C01800A */  lui        $at, %hi(__osCurrentTime)
/* 4070C 8006530C AC2291D8 */  sw         $v0, %lo(__osCurrentTime)($at)
/* 40710 80065310 3C01800A */  lui        $at, %hi(__osCurrentTime+4)
/* 40714 80065314 AC2391DC */  sw         $v1, %lo(__osCurrentTime+4)($at)
/* 40718 80065318 08019480 */  j          .L80065200
/* 4071C 8006531C 27A50010 */   addiu     $a1, $sp, 0x10
.L80065320:
/* 40720 80065320 0C01923B */  jal        __osTimerInterrupt
/* 40724 80065324 00000000 */   nop
/* 40728 80065328 08019480 */  j          .L80065200
/* 4072C 8006532C 27A50010 */   addiu     $a1, $sp, 0x10

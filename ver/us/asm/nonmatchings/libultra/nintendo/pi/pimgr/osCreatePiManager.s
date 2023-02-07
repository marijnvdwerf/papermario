.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osCreatePiManager
/* 42240 80066E40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 42244 80066E44 AFB40028 */  sw         $s4, 0x28($sp)
/* 42248 80066E48 0080A021 */  addu       $s4, $a0, $zero
/* 4224C 80066E4C AFB5002C */  sw         $s5, 0x2C($sp)
/* 42250 80066E50 00A0A821 */  addu       $s5, $a1, $zero
/* 42254 80066E54 00C02821 */  addu       $a1, $a2, $zero
/* 42258 80066E58 AFB20020 */  sw         $s2, 0x20($sp)
/* 4225C 80066E5C 3C128009 */  lui        $s2, %hi(__osPiDevMgr)
/* 42260 80066E60 26524520 */  addiu      $s2, $s2, %lo(__osPiDevMgr)
/* 42264 80066E64 AFBF0030 */  sw         $ra, 0x30($sp)
/* 42268 80066E68 AFB30024 */  sw         $s3, 0x24($sp)
/* 4226C 80066E6C AFB1001C */  sw         $s1, 0x1C($sp)
/* 42270 80066E70 AFB00018 */  sw         $s0, 0x18($sp)
/* 42274 80066E74 8E420000 */  lw         $v0, 0x0($s2)
/* 42278 80066E78 14400045 */  bnez       $v0, .L80066F90
/* 4227C 80066E7C 00E03021 */   addu      $a2, $a3, $zero
/* 42280 80066E80 0C018DB0 */  jal        osCreateMesgQueue
/* 42284 80066E84 02A02021 */   addu      $a0, $s5, $zero
/* 42288 80066E88 3C10800B */  lui        $s0, %hi(piEventQueue)
/* 4228C 80066E8C 2610F6E0 */  addiu      $s0, $s0, %lo(piEventQueue)
/* 42290 80066E90 02002021 */  addu       $a0, $s0, $zero
/* 42294 80066E94 3C05800B */  lui        $a1, %hi(piEventBuf)
/* 42298 80066E98 24A5F6F8 */  addiu      $a1, $a1, %lo(piEventBuf)
/* 4229C 80066E9C 0C018DB0 */  jal        osCreateMesgQueue
/* 422A0 80066EA0 24060001 */   addiu     $a2, $zero, 0x1
/* 422A4 80066EA4 3C028009 */  lui        $v0, %hi(__osPiAccessQueueEnabled)
/* 422A8 80066EA8 8C424560 */  lw         $v0, %lo(__osPiAccessQueueEnabled)($v0)
/* 422AC 80066EAC 54400004 */  bnel       $v0, $zero, .L80066EC0
/* 422B0 80066EB0 24040008 */   addiu     $a0, $zero, 0x8
/* 422B4 80066EB4 0C019ECC */  jal        __osPiCreateAccessQueue
/* 422B8 80066EB8 00000000 */   nop
/* 422BC 80066EBC 24040008 */  addiu      $a0, $zero, 0x8
.L80066EC0:
/* 422C0 80066EC0 02002821 */  addu       $a1, $s0, $zero
/* 422C4 80066EC4 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 422C8 80066EC8 0C018E84 */  jal        osSetEventMesg
/* 422CC 80066ECC 34C62222 */   ori       $a2, $a2, (0x22222222 & 0xFFFF)
/* 422D0 80066ED0 2413FFFF */  addiu      $s3, $zero, -0x1
/* 422D4 80066ED4 0C01AE84 */  jal        osGetThreadPri
/* 422D8 80066ED8 00002021 */   addu      $a0, $zero, $zero
/* 422DC 80066EDC 0054182A */  slt        $v1, $v0, $s4
/* 422E0 80066EE0 10600005 */  beqz       $v1, .L80066EF8
/* 422E4 80066EE4 00000000 */   nop
/* 422E8 80066EE8 00409821 */  addu       $s3, $v0, $zero
/* 422EC 80066EEC 00002021 */  addu       $a0, $zero, $zero
/* 422F0 80066EF0 0C01905C */  jal        osSetThreadPri
/* 422F4 80066EF4 02802821 */   addu      $a1, $s4, $zero
.L80066EF8:
/* 422F8 80066EF8 0C019B40 */  jal        __osDisableInt
/* 422FC 80066EFC 00000000 */   nop
/* 42300 80066F00 3C11800B */  lui        $s1, %hi(piThread)
/* 42304 80066F04 2631E530 */  addiu      $s1, $s1, %lo(piThread)
/* 42308 80066F08 02202021 */  addu       $a0, $s1, $zero
/* 4230C 80066F0C 24050CE5 */  addiu      $a1, $zero, 0xCE5
/* 42310 80066F10 3C068006 */  lui        $a2, %hi(__osDevMgrMain)
/* 42314 80066F14 24C67690 */  addiu      $a2, $a2, %lo(__osDevMgrMain)
/* 42318 80066F18 24030001 */  addiu      $v1, $zero, 0x1
/* 4231C 80066F1C AE430000 */  sw         $v1, 0x0($s2)
/* 42320 80066F20 3C03800B */  lui        $v1, %hi(__osPiAccessQueue)
/* 42324 80066F24 24632DCC */  addiu      $v1, $v1, %lo(__osPiAccessQueue)
/* 42328 80066F28 3C078007 */  lui        $a3, %hi(__osPiRawStartDma)
/* 4232C 80066F2C 24E7BD70 */  addiu      $a3, $a3, %lo(__osPiRawStartDma)
/* 42330 80066F30 AE430010 */  sw         $v1, 0x10($s2)
/* 42334 80066F34 3C038006 */  lui        $v1, %hi(__osEPiRawStartDma)
/* 42338 80066F38 24636FC0 */  addiu      $v1, $v1, %lo(__osEPiRawStartDma)
/* 4233C 80066F3C AE470014 */  sw         $a3, 0x14($s2)
/* 42340 80066F40 3C07800B */  lui        $a3, %hi(piEventQueue)
/* 42344 80066F44 24E7F6E0 */  addiu      $a3, $a3, %lo(piEventQueue)
/* 42348 80066F48 AE50000C */  sw         $s0, 0xC($s2)
/* 4234C 80066F4C 00408021 */  addu       $s0, $v0, $zero
/* 42350 80066F50 AE510004 */  sw         $s1, 0x4($s2)
/* 42354 80066F54 AE550008 */  sw         $s5, 0x8($s2)
/* 42358 80066F58 AE430018 */  sw         $v1, 0x18($s2)
/* 4235C 80066F5C AFA70010 */  sw         $a3, 0x10($sp)
/* 42360 80066F60 02403821 */  addu       $a3, $s2, $zero
/* 42364 80066F64 0C019000 */  jal        osCreateThread
/* 42368 80066F68 AFB40014 */   sw        $s4, 0x14($sp)
/* 4236C 80066F6C 0C0190A0 */  jal        osStartThread
/* 42370 80066F70 02202021 */   addu      $a0, $s1, $zero
/* 42374 80066F74 0C019B5C */  jal        __osRestoreInt
/* 42378 80066F78 02002021 */   addu      $a0, $s0, $zero
/* 4237C 80066F7C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 42380 80066F80 12620003 */  beq        $s3, $v0, .L80066F90
/* 42384 80066F84 00002021 */   addu      $a0, $zero, $zero
/* 42388 80066F88 0C01905C */  jal        osSetThreadPri
/* 4238C 80066F8C 02602821 */   addu      $a1, $s3, $zero
.L80066F90:
/* 42390 80066F90 8FBF0030 */  lw         $ra, 0x30($sp)
/* 42394 80066F94 8FB5002C */  lw         $s5, 0x2C($sp)
/* 42398 80066F98 8FB40028 */  lw         $s4, 0x28($sp)
/* 4239C 80066F9C 8FB30024 */  lw         $s3, 0x24($sp)
/* 423A0 80066FA0 8FB20020 */  lw         $s2, 0x20($sp)
/* 423A4 80066FA4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 423A8 80066FA8 8FB00018 */  lw         $s0, 0x18($sp)
/* 423AC 80066FAC 03E00008 */  jr         $ra
/* 423B0 80066FB0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 423B4 80066FB4 00000000 */  nop
/* 423B8 80066FB8 00000000 */  nop
/* 423BC 80066FBC 00000000 */  nop

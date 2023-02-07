.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osCreateViManager
/* 40430 80065030 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 40434 80065034 AFB20020 */  sw         $s2, 0x20($sp)
/* 40438 80065038 3C128009 */  lui        $s2, %hi(__osViDevMgr)
/* 4043C 8006503C 265232A0 */  addiu      $s2, $s2, %lo(__osViDevMgr)
/* 40440 80065040 AFBF002C */  sw         $ra, 0x2C($sp)
/* 40444 80065044 AFB40028 */  sw         $s4, 0x28($sp)
/* 40448 80065048 AFB30024 */  sw         $s3, 0x24($sp)
/* 4044C 8006504C AFB1001C */  sw         $s1, 0x1C($sp)
/* 40450 80065050 AFB00018 */  sw         $s0, 0x18($sp)
/* 40454 80065054 8E420000 */  lw         $v0, 0x0($s2)
/* 40458 80065058 1440004B */  bnez       $v0, .L80065188
/* 4045C 8006505C 0080A021 */   addu      $s4, $a0, $zero
/* 40460 80065060 0C019210 */  jal        __osTimerServicesInit
/* 40464 80065064 2413FFFF */   addiu     $s3, $zero, -0x1
/* 40468 80065068 3C11800B */  lui        $s1, %hi(viEventQueue)
/* 4046C 8006506C 2631E4C8 */  addiu      $s1, $s1, %lo(viEventQueue)
/* 40470 80065070 02202021 */  addu       $a0, $s1, $zero
/* 40474 80065074 3C05800B */  lui        $a1, %hi(viEventBuf)
/* 40478 80065078 24A5E4E0 */  addiu      $a1, $a1, %lo(viEventBuf)
/* 4047C 8006507C 3C018009 */  lui        $at, %hi(__additional_scanline)
/* 40480 80065080 AC2032BC */  sw         $zero, %lo(__additional_scanline)($at)
/* 40484 80065084 0C018DB0 */  jal        osCreateMesgQueue
/* 40488 80065088 24060005 */   addiu     $a2, $zero, 0x5
/* 4048C 8006508C 24040007 */  addiu      $a0, $zero, 0x7
/* 40490 80065090 02202821 */  addu       $a1, $s1, $zero
/* 40494 80065094 3C02800B */  lui        $v0, %hi(viRetraceMsg)
/* 40498 80065098 2442E4F4 */  addiu      $v0, $v0, %lo(viRetraceMsg)
/* 4049C 8006509C 00403021 */  addu       $a2, $v0, $zero
/* 404A0 800650A0 2403000D */  addiu      $v1, $zero, 0xD
/* 404A4 800650A4 3C10800B */  lui        $s0, %hi(viCounterMsg)
/* 404A8 800650A8 2610E50C */  addiu      $s0, $s0, %lo(viCounterMsg)
/* 404AC 800650AC A4430000 */  sh         $v1, 0x0($v0)
/* 404B0 800650B0 2403000E */  addiu      $v1, $zero, 0xE
/* 404B4 800650B4 A0400002 */  sb         $zero, 0x2($v0)
/* 404B8 800650B8 AC400004 */  sw         $zero, 0x4($v0)
/* 404BC 800650BC A6030000 */  sh         $v1, 0x0($s0)
/* 404C0 800650C0 A2000002 */  sb         $zero, 0x2($s0)
/* 404C4 800650C4 0C018E84 */  jal        osSetEventMesg
/* 404C8 800650C8 AE000004 */   sw        $zero, 0x4($s0)
/* 404CC 800650CC 24040003 */  addiu      $a0, $zero, 0x3
/* 404D0 800650D0 02202821 */  addu       $a1, $s1, $zero
/* 404D4 800650D4 0C018E84 */  jal        osSetEventMesg
/* 404D8 800650D8 02003021 */   addu      $a2, $s0, $zero
/* 404DC 800650DC 0C01AE84 */  jal        osGetThreadPri
/* 404E0 800650E0 00002021 */   addu      $a0, $zero, $zero
/* 404E4 800650E4 0054182A */  slt        $v1, $v0, $s4
/* 404E8 800650E8 10600005 */  beqz       $v1, .L80065100
/* 404EC 800650EC 00000000 */   nop
/* 404F0 800650F0 00409821 */  addu       $s3, $v0, $zero
/* 404F4 800650F4 00002021 */  addu       $a0, $zero, $zero
/* 404F8 800650F8 0C01905C */  jal        osSetThreadPri
/* 404FC 800650FC 02802821 */   addu      $a1, $s4, $zero
.L80065100:
/* 40500 80065100 0C019B40 */  jal        __osDisableInt
/* 40504 80065104 00000000 */   nop
/* 40508 80065108 3C10800B */  lui        $s0, %hi(viThread)
/* 4050C 8006510C 2610D318 */  addiu      $s0, $s0, %lo(viThread)
/* 40510 80065110 02002021 */  addu       $a0, $s0, $zero
/* 40514 80065114 24050D49 */  addiu      $a1, $zero, 0xD49
/* 40518 80065118 3C068006 */  lui        $a2, %hi(viMgrMain)
/* 4051C 8006511C 24C651A8 */  addiu      $a2, $a2, %lo(viMgrMain)
/* 40520 80065120 24030001 */  addiu      $v1, $zero, 0x1
/* 40524 80065124 AE430000 */  sw         $v1, 0x0($s2)
/* 40528 80065128 3C03800B */  lui        $v1, %hi(viEventQueue)
/* 4052C 8006512C 2463E4C8 */  addiu      $v1, $v1, %lo(viEventQueue)
/* 40530 80065130 AE510008 */  sw         $s1, 0x8($s2)
/* 40534 80065134 AE51000C */  sw         $s1, 0xC($s2)
/* 40538 80065138 00408821 */  addu       $s1, $v0, $zero
/* 4053C 8006513C 02403821 */  addu       $a3, $s2, $zero
/* 40540 80065140 AE500004 */  sw         $s0, 0x4($s2)
/* 40544 80065144 AE400010 */  sw         $zero, 0x10($s2)
/* 40548 80065148 AE400014 */  sw         $zero, 0x14($s2)
/* 4054C 8006514C AE400018 */  sw         $zero, 0x18($s2)
/* 40550 80065150 AFA30010 */  sw         $v1, 0x10($sp)
/* 40554 80065154 0C019000 */  jal        osCreateThread
/* 40558 80065158 AFB40014 */   sw        $s4, 0x14($sp)
/* 4055C 8006515C 0C01AEC8 */  jal        __osViInit
/* 40560 80065160 00000000 */   nop
/* 40564 80065164 0C0190A0 */  jal        osStartThread
/* 40568 80065168 02002021 */   addu      $a0, $s0, $zero
/* 4056C 8006516C 0C019B5C */  jal        __osRestoreInt
/* 40570 80065170 02202021 */   addu      $a0, $s1, $zero
/* 40574 80065174 2402FFFF */  addiu      $v0, $zero, -0x1
/* 40578 80065178 12620003 */  beq        $s3, $v0, .L80065188
/* 4057C 8006517C 00002021 */   addu      $a0, $zero, $zero
/* 40580 80065180 0C01905C */  jal        osSetThreadPri
/* 40584 80065184 02602821 */   addu      $a1, $s3, $zero
.L80065188:
/* 40588 80065188 8FBF002C */  lw         $ra, 0x2C($sp)
/* 4058C 8006518C 8FB40028 */  lw         $s4, 0x28($sp)
/* 40590 80065190 8FB30024 */  lw         $s3, 0x24($sp)
/* 40594 80065194 8FB20020 */  lw         $s2, 0x20($sp)
/* 40598 80065198 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4059C 8006519C 8FB00018 */  lw         $s0, 0x18($sp)
/* 405A0 800651A0 03E00008 */  jr         $ra
/* 405A4 800651A4 27BD0030 */   addiu     $sp, $sp, 0x30

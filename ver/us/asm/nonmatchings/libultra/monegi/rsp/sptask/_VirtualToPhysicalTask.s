.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel _VirtualToPhysicalTask
/* 3EFE0 80063BE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3EFE4 80063BE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3EFE8 80063BE8 3C10800B */  lui        $s0, %hi(tmp_task)
/* 3EFEC 80063BEC 2610D2C0 */  addiu      $s0, $s0, %lo(tmp_task)
/* 3EFF0 80063BF0 02002821 */  addu       $a1, $s0, $zero
/* 3EFF4 80063BF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EFF8 80063BF8 0C018A04 */  jal        bcopy
/* 3EFFC 80063BFC 24060040 */   addiu     $a2, $zero, 0x40
/* 3F000 80063C00 8E040010 */  lw         $a0, 0x10($s0)
/* 3F004 80063C04 50800005 */  beql       $a0, $zero, .L80063C1C
/* 3F008 80063C08 8E040018 */   lw        $a0, 0x18($s0)
/* 3F00C 80063C0C 0C01836C */  jal        osVirtualToPhysical
/* 3F010 80063C10 00000000 */   nop
/* 3F014 80063C14 AE020010 */  sw         $v0, 0x10($s0)
/* 3F018 80063C18 8E040018 */  lw         $a0, 0x18($s0)
.L80063C1C:
/* 3F01C 80063C1C 50800005 */  beql       $a0, $zero, .L80063C34
/* 3F020 80063C20 8E040020 */   lw        $a0, 0x20($s0)
/* 3F024 80063C24 0C01836C */  jal        osVirtualToPhysical
/* 3F028 80063C28 00000000 */   nop
/* 3F02C 80063C2C AE020018 */  sw         $v0, 0x18($s0)
/* 3F030 80063C30 8E040020 */  lw         $a0, 0x20($s0)
.L80063C34:
/* 3F034 80063C34 50800005 */  beql       $a0, $zero, .L80063C4C
/* 3F038 80063C38 8E040028 */   lw        $a0, 0x28($s0)
/* 3F03C 80063C3C 0C01836C */  jal        osVirtualToPhysical
/* 3F040 80063C40 00000000 */   nop
/* 3F044 80063C44 AE020020 */  sw         $v0, 0x20($s0)
/* 3F048 80063C48 8E040028 */  lw         $a0, 0x28($s0)
.L80063C4C:
/* 3F04C 80063C4C 50800005 */  beql       $a0, $zero, .L80063C64
/* 3F050 80063C50 8E04002C */   lw        $a0, 0x2C($s0)
/* 3F054 80063C54 0C01836C */  jal        osVirtualToPhysical
/* 3F058 80063C58 00000000 */   nop
/* 3F05C 80063C5C AE020028 */  sw         $v0, 0x28($s0)
/* 3F060 80063C60 8E04002C */  lw         $a0, 0x2C($s0)
.L80063C64:
/* 3F064 80063C64 50800005 */  beql       $a0, $zero, .L80063C7C
/* 3F068 80063C68 8E040030 */   lw        $a0, 0x30($s0)
/* 3F06C 80063C6C 0C01836C */  jal        osVirtualToPhysical
/* 3F070 80063C70 00000000 */   nop
/* 3F074 80063C74 AE02002C */  sw         $v0, 0x2C($s0)
/* 3F078 80063C78 8E040030 */  lw         $a0, 0x30($s0)
.L80063C7C:
/* 3F07C 80063C7C 50800005 */  beql       $a0, $zero, .L80063C94
/* 3F080 80063C80 8E040038 */   lw        $a0, 0x38($s0)
/* 3F084 80063C84 0C01836C */  jal        osVirtualToPhysical
/* 3F088 80063C88 00000000 */   nop
/* 3F08C 80063C8C AE020030 */  sw         $v0, 0x30($s0)
/* 3F090 80063C90 8E040038 */  lw         $a0, 0x38($s0)
.L80063C94:
/* 3F094 80063C94 10800005 */  beqz       $a0, .L80063CAC
/* 3F098 80063C98 02001021 */   addu      $v0, $s0, $zero
/* 3F09C 80063C9C 0C01836C */  jal        osVirtualToPhysical
/* 3F0A0 80063CA0 00000000 */   nop
/* 3F0A4 80063CA4 AE020038 */  sw         $v0, 0x38($s0)
/* 3F0A8 80063CA8 02001021 */  addu       $v0, $s0, $zero
.L80063CAC:
/* 3F0AC 80063CAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F0B0 80063CB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F0B4 80063CB4 03E00008 */  jr         $ra
/* 3F0B8 80063CB8 27BD0018 */   addiu     $sp, $sp, 0x18

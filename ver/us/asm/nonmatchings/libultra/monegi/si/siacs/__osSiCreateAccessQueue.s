.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiCreateAccessQueue
/* 3F340 80063F40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F344 80063F44 24020001 */  addiu      $v0, $zero, 0x1
/* 3F348 80063F48 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F34C 80063F4C 3C10800E */  lui        $s0, %hi(__osSiAccessQueue)
/* 3F350 80063F50 26109008 */  addiu      $s0, $s0, %lo(__osSiAccessQueue)
/* 3F354 80063F54 02002021 */  addu       $a0, $s0, $zero
/* 3F358 80063F58 3C05800B */  lui        $a1, %hi(siAccessBuf)
/* 3F35C 80063F5C 24A5D300 */  addiu      $a1, $a1, %lo(siAccessBuf)
/* 3F360 80063F60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F364 80063F64 3C018009 */  lui        $at, %hi(__osSiAccessQueueEnabled)
/* 3F368 80063F68 AC223260 */  sw         $v0, %lo(__osSiAccessQueueEnabled)($at)
/* 3F36C 80063F6C 0C018DB0 */  jal        osCreateMesgQueue
/* 3F370 80063F70 24060001 */   addiu     $a2, $zero, 0x1
/* 3F374 80063F74 02002021 */  addu       $a0, $s0, $zero
/* 3F378 80063F78 00002821 */  addu       $a1, $zero, $zero
/* 3F37C 80063F7C 0C018E28 */  jal        osSendMesg
/* 3F380 80063F80 00003021 */   addu      $a2, $zero, $zero
/* 3F384 80063F84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F388 80063F88 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F38C 80063F8C 03E00008 */  jr         $ra
/* 3F390 80063F90 27BD0018 */   addiu     $sp, $sp, 0x18

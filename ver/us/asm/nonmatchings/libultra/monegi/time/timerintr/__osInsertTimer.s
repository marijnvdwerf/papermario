.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osInsertTimer
/* 3FFA8 80064BA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3FFAC 80064BAC AFBF002C */  sw         $ra, 0x2C($sp)
/* 3FFB0 80064BB0 AFBE0028 */  sw         $fp, 0x28($sp)
/* 3FFB4 80064BB4 03A0F021 */  addu       $fp, $sp, $zero
/* 3FFB8 80064BB8 0C019B40 */  jal        __osDisableInt
/* 3FFBC 80064BBC AFC40030 */   sw        $a0, 0x30($fp)
/* 3FFC0 80064BC0 AFC20020 */  sw         $v0, 0x20($fp)
/* 3FFC4 80064BC4 3C028009 */  lui        $v0, %hi(__osTimerList)
/* 3FFC8 80064BC8 8C423290 */  lw         $v0, %lo(__osTimerList)($v0)
/* 3FFCC 80064BCC 8C430000 */  lw         $v1, 0x0($v0)
/* 3FFD0 80064BD0 AFC30010 */  sw         $v1, 0x10($fp)
/* 3FFD4 80064BD4 8FC20030 */  lw         $v0, 0x30($fp)
/* 3FFD8 80064BD8 8C440010 */  lw         $a0, 0x10($v0)
/* 3FFDC 80064BDC 8C450014 */  lw         $a1, 0x14($v0)
/* 3FFE0 80064BE0 AFC40018 */  sw         $a0, 0x18($fp)
/* 3FFE4 80064BE4 AFC5001C */  sw         $a1, 0x1C($fp)
.L80064BE8:
/* 3FFE8 80064BE8 8FC20010 */  lw         $v0, 0x10($fp)
/* 3FFEC 80064BEC 3C038009 */  lui        $v1, %hi(__osTimerList)
/* 3FFF0 80064BF0 8C633290 */  lw         $v1, %lo(__osTimerList)($v1)
/* 3FFF4 80064BF4 10430016 */  beq        $v0, $v1, .L80064C50
/* 3FFF8 80064BF8 00000000 */   nop
/* 3FFFC 80064BFC 8FC20010 */  lw         $v0, 0x10($fp)
/* 40000 80064C00 8FC30018 */  lw         $v1, 0x18($fp)
/* 40004 80064C04 8C440010 */  lw         $a0, 0x10($v0)
/* 40008 80064C08 0083182B */  sltu       $v1, $a0, $v1
/* 4000C 80064C0C 14600012 */  bnez       $v1, .L80064C58
/* 40010 80064C10 00000000 */   nop
/* 40014 80064C14 8FC30018 */  lw         $v1, 0x18($fp)
/* 40018 80064C18 8C440010 */  lw         $a0, 0x10($v0)
/* 4001C 80064C1C 1464000C */  bne        $v1, $a0, .L80064C50
/* 40020 80064C20 00000000 */   nop
/* 40024 80064C24 8FC3001C */  lw         $v1, 0x1C($fp)
/* 40028 80064C28 8C440014 */  lw         $a0, 0x14($v0)
/* 4002C 80064C2C 0083182B */  sltu       $v1, $a0, $v1
/* 40030 80064C30 14600009 */  bnez       $v1, .L80064C58
/* 40034 80064C34 00000000 */   nop
/* 40038 80064C38 8FC3001C */  lw         $v1, 0x1C($fp)
/* 4003C 80064C3C 8C420014 */  lw         $v0, 0x14($v0)
/* 40040 80064C40 14620003 */  bne        $v1, $v0, .L80064C50
/* 40044 80064C44 00000000 */   nop
/* 40048 80064C48 08019314 */  j          .L80064C50
/* 4004C 80064C4C 00000000 */   nop
.L80064C50:
/* 40050 80064C50 08019325 */  j          .L80064C94
/* 40054 80064C54 00000000 */   nop
.L80064C58:
/* 40058 80064C58 8FC20010 */  lw         $v0, 0x10($fp)
/* 4005C 80064C5C 8FC40018 */  lw         $a0, 0x18($fp)
/* 40060 80064C60 8FC5001C */  lw         $a1, 0x1C($fp)
/* 40064 80064C64 8C460010 */  lw         $a2, 0x10($v0)
/* 40068 80064C68 8C470014 */  lw         $a3, 0x14($v0)
/* 4006C 80064C6C 00A7102B */  sltu       $v0, $a1, $a3
/* 40070 80064C70 00A72823 */  subu       $a1, $a1, $a3
/* 40074 80064C74 00862023 */  subu       $a0, $a0, $a2
/* 40078 80064C78 00822023 */  subu       $a0, $a0, $v0
/* 4007C 80064C7C AFC40018 */  sw         $a0, 0x18($fp)
/* 40080 80064C80 AFC5001C */  sw         $a1, 0x1C($fp)
/* 40084 80064C84 8FC20010 */  lw         $v0, 0x10($fp)
/* 40088 80064C88 8C430000 */  lw         $v1, 0x0($v0)
/* 4008C 80064C8C 080192FA */  j          .L80064BE8
/* 40090 80064C90 AFC30010 */   sw        $v1, 0x10($fp)
.L80064C94:
/* 40094 80064C94 8FC20030 */  lw         $v0, 0x30($fp)
/* 40098 80064C98 8FC40018 */  lw         $a0, 0x18($fp)
/* 4009C 80064C9C 8FC5001C */  lw         $a1, 0x1C($fp)
/* 400A0 80064CA0 AC440010 */  sw         $a0, 0x10($v0)
/* 400A4 80064CA4 AC450014 */  sw         $a1, 0x14($v0)
/* 400A8 80064CA8 8FC20010 */  lw         $v0, 0x10($fp)
/* 400AC 80064CAC 3C038009 */  lui        $v1, %hi(__osTimerList)
/* 400B0 80064CB0 8C633290 */  lw         $v1, %lo(__osTimerList)($v1)
/* 400B4 80064CB4 1043000D */  beq        $v0, $v1, .L80064CEC
/* 400B8 80064CB8 00000000 */   nop
/* 400BC 80064CBC 8FC20010 */  lw         $v0, 0x10($fp)
/* 400C0 80064CC0 8FC30010 */  lw         $v1, 0x10($fp)
/* 400C4 80064CC4 8C640010 */  lw         $a0, 0x10($v1)
/* 400C8 80064CC8 8C650014 */  lw         $a1, 0x14($v1)
/* 400CC 80064CCC 8FC60018 */  lw         $a2, 0x18($fp)
/* 400D0 80064CD0 8FC7001C */  lw         $a3, 0x1C($fp)
/* 400D4 80064CD4 00A7182B */  sltu       $v1, $a1, $a3
/* 400D8 80064CD8 00A72823 */  subu       $a1, $a1, $a3
/* 400DC 80064CDC 00862023 */  subu       $a0, $a0, $a2
/* 400E0 80064CE0 00832023 */  subu       $a0, $a0, $v1
/* 400E4 80064CE4 AC440010 */  sw         $a0, 0x10($v0)
/* 400E8 80064CE8 AC450014 */  sw         $a1, 0x14($v0)
.L80064CEC:
/* 400EC 80064CEC 8FC20030 */  lw         $v0, 0x30($fp)
/* 400F0 80064CF0 8FC30010 */  lw         $v1, 0x10($fp)
/* 400F4 80064CF4 AC430000 */  sw         $v1, 0x0($v0)
/* 400F8 80064CF8 8FC20030 */  lw         $v0, 0x30($fp)
/* 400FC 80064CFC 8FC30010 */  lw         $v1, 0x10($fp)
/* 40100 80064D00 8C640004 */  lw         $a0, 0x4($v1)
/* 40104 80064D04 AC440004 */  sw         $a0, 0x4($v0)
/* 40108 80064D08 8FC20010 */  lw         $v0, 0x10($fp)
/* 4010C 80064D0C 8C430004 */  lw         $v1, 0x4($v0)
/* 40110 80064D10 8FC20030 */  lw         $v0, 0x30($fp)
/* 40114 80064D14 AC620000 */  sw         $v0, 0x0($v1)
/* 40118 80064D18 8FC20010 */  lw         $v0, 0x10($fp)
/* 4011C 80064D1C 8FC30030 */  lw         $v1, 0x30($fp)
/* 40120 80064D20 AC430004 */  sw         $v1, 0x4($v0)
/* 40124 80064D24 0C019B5C */  jal        __osRestoreInt
/* 40128 80064D28 8FC40020 */   lw        $a0, 0x20($fp)
/* 4012C 80064D2C 8FC40018 */  lw         $a0, 0x18($fp)
/* 40130 80064D30 8FC5001C */  lw         $a1, 0x1C($fp)
/* 40134 80064D34 00801021 */  addu       $v0, $a0, $zero
/* 40138 80064D38 08019350 */  j          .L80064D40
/* 4013C 80064D3C 00A01821 */   addu      $v1, $a1, $zero
.L80064D40:
/* 40140 80064D40 03C0E821 */  addu       $sp, $fp, $zero
/* 40144 80064D44 8FBF002C */  lw         $ra, 0x2C($sp)
/* 40148 80064D48 8FBE0028 */  lw         $fp, 0x28($sp)
/* 4014C 80064D4C 03E00008 */  jr         $ra
/* 40150 80064D50 27BD0030 */   addiu     $sp, $sp, 0x30
/* 40154 80064D54 00000000 */  nop
/* 40158 80064D58 00000000 */  nop
/* 4015C 80064D5C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osCheckId
/* 45004 80069C04 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 45008 80069C08 AFB00030 */  sw         $s0, 0x30($sp)
/* 4500C 80069C0C 00808021 */  addu       $s0, $a0, $zero
/* 45010 80069C10 AFBF0034 */  sw         $ra, 0x34($sp)
/* 45014 80069C14 92020065 */  lbu        $v0, 0x65($s0)
/* 45018 80069C18 1040000E */  beqz       $v0, .L80069C54
/* 4501C 80069C1C 24060001 */   addiu     $a2, $zero, 0x1
/* 45020 80069C20 0C01A568 */  jal        __osPfsSelectBank
/* 45024 80069C24 00002821 */   addu      $a1, $zero, $zero
/* 45028 80069C28 00402021 */  addu       $a0, $v0, $zero
/* 4502C 80069C2C 24030002 */  addiu      $v1, $zero, 0x2
/* 45030 80069C30 14830005 */  bne        $a0, $v1, .L80069C48
/* 45034 80069C34 00000000 */   nop
/* 45038 80069C38 02002021 */  addu       $a0, $s0, $zero
/* 4503C 80069C3C 0C01A568 */  jal        __osPfsSelectBank
/* 45040 80069C40 00002821 */   addu      $a1, $zero, $zero
/* 45044 80069C44 00402021 */  addu       $a0, $v0, $zero
.L80069C48:
/* 45048 80069C48 1480001A */  bnez       $a0, .L80069CB4
/* 4504C 80069C4C 00801021 */   addu      $v0, $a0, $zero
/* 45050 80069C50 24060001 */  addiu      $a2, $zero, 0x1
.L80069C54:
/* 45054 80069C54 8E040004 */  lw         $a0, 0x4($s0)
/* 45058 80069C58 8E050008 */  lw         $a1, 0x8($s0)
/* 4505C 80069C5C 0C01A7D8 */  jal        __osContRamRead
/* 45060 80069C60 27A70010 */   addiu     $a3, $sp, 0x10
/* 45064 80069C64 00402021 */  addu       $a0, $v0, $zero
/* 45068 80069C68 1080000B */  beqz       $a0, .L80069C98
/* 4506C 80069C6C 24020002 */   addiu     $v0, $zero, 0x2
/* 45070 80069C70 14820010 */  bne        $a0, $v0, .L80069CB4
/* 45074 80069C74 00801021 */   addu      $v0, $a0, $zero
/* 45078 80069C78 24060001 */  addiu      $a2, $zero, 0x1
/* 4507C 80069C7C 8E040004 */  lw         $a0, 0x4($s0)
/* 45080 80069C80 8E050008 */  lw         $a1, 0x8($s0)
/* 45084 80069C84 0C01A7D8 */  jal        __osContRamRead
/* 45088 80069C88 27A70010 */   addiu     $a3, $sp, 0x10
/* 4508C 80069C8C 00402021 */  addu       $a0, $v0, $zero
/* 45090 80069C90 14800009 */  bnez       $a0, .L80069CB8
/* 45094 80069C94 8FBF0034 */   lw        $ra, 0x34($sp)
.L80069C98:
/* 45098 80069C98 2604000C */  addiu      $a0, $s0, 0xC
/* 4509C 80069C9C 27A50010 */  addiu      $a1, $sp, 0x10
/* 450A0 80069CA0 0C01A9DC */  jal        bcmp
/* 450A4 80069CA4 24060020 */   addiu     $a2, $zero, 0x20
/* 450A8 80069CA8 14400002 */  bnez       $v0, .L80069CB4
/* 450AC 80069CAC 24020002 */   addiu     $v0, $zero, 0x2
/* 450B0 80069CB0 00001021 */  addu       $v0, $zero, $zero
.L80069CB4:
/* 450B4 80069CB4 8FBF0034 */  lw         $ra, 0x34($sp)
.L80069CB8:
/* 450B8 80069CB8 8FB00030 */  lw         $s0, 0x30($sp)
/* 450BC 80069CBC 03E00008 */  jr         $ra
/* 450C0 80069CC0 27BD0038 */   addiu     $sp, $sp, 0x38

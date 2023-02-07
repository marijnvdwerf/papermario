.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osFlashInit
/* 42FF0 80067BF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42FF4 80067BF4 3C04800D */  lui        $a0, %hi(__osFlashMessageQ)
/* 42FF8 80067BF8 24847D20 */  addiu      $a0, $a0, %lo(__osFlashMessageQ)
/* 42FFC 80067BFC 3C05800A */  lui        $a1, %hi(__osFlashMsgBuf)
/* 43000 80067C00 24A591D4 */  addiu      $a1, $a1, %lo(__osFlashMsgBuf)
/* 43004 80067C04 24060001 */  addiu      $a2, $zero, 0x1
/* 43008 80067C08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4300C 80067C0C 0C018DB0 */  jal        osCreateMesgQueue
/* 43010 80067C10 AFB00010 */   sw        $s0, 0x10($sp)
/* 43014 80067C14 3C10800D */  lui        $s0, %hi(__osFlashHandler+0xC)
/* 43018 80067C18 26107C2C */  addiu      $s0, $s0, %lo(__osFlashHandler+0xC)
/* 4301C 80067C1C 8E020000 */  lw         $v0, 0x0($s0)
/* 43020 80067C20 3C03A800 */  lui        $v1, (0xA8000000 >> 16)
/* 43024 80067C24 10430019 */  beq        $v0, $v1, .L80067C8C
/* 43028 80067C28 26040008 */   addiu     $a0, $s0, 0x8
/* 4302C 80067C2C 24050060 */  addiu      $a1, $zero, 0x60
/* 43030 80067C30 24020008 */  addiu      $v0, $zero, 0x8
/* 43034 80067C34 AE030000 */  sw         $v1, 0x0($s0)
/* 43038 80067C38 24030005 */  addiu      $v1, $zero, 0x5
/* 4303C 80067C3C A202FFF8 */  sb         $v0, -0x8($s0)
/* 43040 80067C40 2402000C */  addiu      $v0, $zero, 0xC
/* 43044 80067C44 A203FFF9 */  sb         $v1, -0x7($s0)
/* 43048 80067C48 2403000F */  addiu      $v1, $zero, 0xF
/* 4304C 80067C4C A202FFFC */  sb         $v0, -0x4($s0)
/* 43050 80067C50 24020002 */  addiu      $v0, $zero, 0x2
/* 43054 80067C54 A203FFFA */  sb         $v1, -0x6($s0)
/* 43058 80067C58 24030001 */  addiu      $v1, $zero, 0x1
/* 4305C 80067C5C A202FFFB */  sb         $v0, -0x5($s0)
/* 43060 80067C60 A203FFFD */  sb         $v1, -0x3($s0)
/* 43064 80067C64 0C018ACC */  jal        bzero
/* 43068 80067C68 AE000004 */   sw        $zero, 0x4($s0)
/* 4306C 80067C6C 2610FFF4 */  addiu      $s0, $s0, -0xC
/* 43070 80067C70 0C019D38 */  jal        osEPiLinkHandle
/* 43074 80067C74 02002021 */   addu      $a0, $s0, $zero
/* 43078 80067C78 24030001 */  addiu      $v1, $zero, 0x1
/* 4307C 80067C7C 3C01800A */  lui        $at, %hi(__osFlashVersion)
/* 43080 80067C80 AC239180 */  sw         $v1, %lo(__osFlashVersion)($at)
/* 43084 80067C84 08019F24 */  j          .L80067C90
/* 43088 80067C88 02001021 */   addu      $v0, $s0, $zero
.L80067C8C:
/* 4308C 80067C8C 2602FFF4 */  addiu      $v0, $s0, -0xC
.L80067C90:
/* 43090 80067C90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43094 80067C94 8FB00010 */  lw         $s0, 0x10($sp)
/* 43098 80067C98 03E00008 */  jr         $ra
/* 4309C 80067C9C 27BD0018 */   addiu     $sp, $sp, 0x18

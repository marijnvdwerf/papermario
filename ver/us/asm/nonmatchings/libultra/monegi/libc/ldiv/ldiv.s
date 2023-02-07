.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ldiv
/* 48020 8006CC20 14C00002 */  bnez       $a2, .L8006CC2C
/* 48024 8006CC24 00A6001A */   div       $zero, $a1, $a2
/* 48028 8006CC28 0007000D */  break      7
.L8006CC2C:
/* 4802C 8006CC2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 48030 8006CC30 14C10004 */  bne        $a2, $at, .L8006CC44
/* 48034 8006CC34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 48038 8006CC38 14A10002 */  bne        $a1, $at, .L8006CC44
/* 4803C 8006CC3C 00000000 */   nop
/* 48040 8006CC40 0006000D */  break      6
.L8006CC44:
/* 48044 8006CC44 00003812 */  mflo       $a3
/* 48048 8006CC48 00000000 */  nop
/* 4804C 8006CC4C 00000000 */  nop
/* 48050 8006CC50 00C70018 */  mult       $a2, $a3
/* 48054 8006CC54 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 48058 8006CC58 AFA70000 */  sw         $a3, 0x0($sp)
/* 4805C 8006CC5C 00001012 */  mflo       $v0
/* 48060 8006CC60 00A21823 */  subu       $v1, $a1, $v0
/* 48064 8006CC64 04E10006 */  bgez       $a3, .L8006CC80
/* 48068 8006CC68 AFA30004 */   sw        $v1, 0x4($sp)
/* 4806C 8006CC6C 18600004 */  blez       $v1, .L8006CC80
/* 48070 8006CC70 24E20001 */   addiu     $v0, $a3, 0x1
/* 48074 8006CC74 00661823 */  subu       $v1, $v1, $a2
/* 48078 8006CC78 AFA20000 */  sw         $v0, 0x0($sp)
/* 4807C 8006CC7C AFA30004 */  sw         $v1, 0x4($sp)
.L8006CC80:
/* 48080 8006CC80 8FA80000 */  lw         $t0, 0x0($sp)
/* 48084 8006CC84 8FA90004 */  lw         $t1, 0x4($sp)
/* 48088 8006CC88 AC880000 */  sw         $t0, 0x0($a0)
/* 4808C 8006CC8C AC890004 */  sw         $t1, 0x4($a0)
/* 48090 8006CC90 00801021 */  addu       $v0, $a0, $zero
/* 48094 8006CC94 03E00008 */  jr         $ra
/* 48098 8006CC98 27BD0008 */   addiu     $sp, $sp, 0x8

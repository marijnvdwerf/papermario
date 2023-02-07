.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osViGetNextFramebuffer
/* 403B0 80064FB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 403B4 80064FB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 403B8 80064FB8 0C019B40 */  jal        __osDisableInt
/* 403BC 80064FBC AFB00010 */   sw        $s0, 0x10($sp)
/* 403C0 80064FC0 3C038009 */  lui        $v1, %hi(__osViNext)
/* 403C4 80064FC4 8C634654 */  lw         $v1, %lo(__osViNext)($v1)
/* 403C8 80064FC8 00402021 */  addu       $a0, $v0, $zero
/* 403CC 80064FCC 0C019B5C */  jal        __osRestoreInt
/* 403D0 80064FD0 8C700004 */   lw        $s0, 0x4($v1)
/* 403D4 80064FD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 403D8 80064FD8 02001021 */  addu       $v0, $s0, $zero
/* 403DC 80064FDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 403E0 80064FE0 03E00008 */  jr         $ra
/* 403E4 80064FE4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 403E8 80064FE8 00000000 */  nop
/* 403EC 80064FEC 00000000 */  nop

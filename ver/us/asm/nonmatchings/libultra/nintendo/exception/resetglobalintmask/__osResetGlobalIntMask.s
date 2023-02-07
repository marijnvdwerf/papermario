.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osResetGlobalIntMask
/* 47100 8006BD00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 47104 8006BD04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 47108 8006BD08 AFBE0014 */  sw         $fp, 0x14($sp)
/* 4710C 8006BD0C AFB00010 */  sw         $s0, 0x10($sp)
/* 47110 8006BD10 03A0F021 */  addu       $fp, $sp, $zero
/* 47114 8006BD14 0C019B40 */  jal        __osDisableInt
/* 47118 8006BD18 AFC40020 */   sw        $a0, 0x20($fp)
/* 4711C 8006BD1C 00408021 */  addu       $s0, $v0, $zero
/* 47120 8006BD20 8FC20020 */  lw         $v0, 0x20($fp)
/* 47124 8006BD24 2403FBFE */  addiu      $v1, $zero, -0x402
/* 47128 8006BD28 00431024 */  and        $v0, $v0, $v1
/* 4712C 8006BD2C 00021827 */  nor        $v1, $zero, $v0
/* 47130 8006BD30 3C028009 */  lui        $v0, %hi(__OSGlobalIntMask)
/* 47134 8006BD34 8C4245B4 */  lw         $v0, %lo(__OSGlobalIntMask)($v0)
/* 47138 8006BD38 00431824 */  and        $v1, $v0, $v1
/* 4713C 8006BD3C 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 47140 8006BD40 AC2345B4 */  sw         $v1, %lo(__OSGlobalIntMask)($at)
/* 47144 8006BD44 0C019B5C */  jal        __osRestoreInt
/* 47148 8006BD48 02002021 */   addu      $a0, $s0, $zero
/* 4714C 8006BD4C 03C0E821 */  addu       $sp, $fp, $zero
/* 47150 8006BD50 8FBF0018 */  lw         $ra, 0x18($sp)
/* 47154 8006BD54 8FBE0014 */  lw         $fp, 0x14($sp)
/* 47158 8006BD58 8FB00010 */  lw         $s0, 0x10($sp)
/* 4715C 8006BD5C 03E00008 */  jr         $ra
/* 47160 8006BD60 27BD0020 */   addiu     $sp, $sp, 0x20
/* 47164 8006BD64 00000000 */  nop
/* 47168 8006BD68 00000000 */  nop
/* 4716C 8006BD6C 00000000 */  nop

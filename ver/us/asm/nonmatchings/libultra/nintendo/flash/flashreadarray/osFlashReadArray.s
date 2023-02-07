.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osFlashReadArray
/* 431B0 80067DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 431B4 80067DB4 00C04021 */  addu       $t0, $a2, $zero
/* 431B8 80067DB8 8FA60028 */  lw         $a2, 0x28($sp)
/* 431BC 80067DBC 3C038000 */  lui        $v1, %hi(__osBbFlashSize)
/* 431C0 80067DC0 8C630368 */  lw         $v1, %lo(__osBbFlashSize)($v1)
/* 431C4 80067DC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 431C8 80067DC8 8FB0002C */  lw         $s0, 0x2C($sp)
/* 431CC 80067DCC 00E02021 */  addu       $a0, $a3, $zero
/* 431D0 80067DD0 1060000E */  beqz       $v1, .L80067E0C
/* 431D4 80067DD4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 431D8 80067DD8 01061021 */  addu       $v0, $t0, $a2
/* 431DC 80067DDC 000211C0 */  sll        $v0, $v0, 7
/* 431E0 80067DE0 0062102B */  sltu       $v0, $v1, $v0
/* 431E4 80067DE4 14400009 */  bnez       $v0, .L80067E0C
/* 431E8 80067DE8 00802821 */   addu      $a1, $a0, $zero
/* 431EC 80067DEC 000631C0 */  sll        $a2, $a2, 7
/* 431F0 80067DF0 3C028000 */  lui        $v0, %hi(__osBbFlashAddress)
/* 431F4 80067DF4 8C420364 */  lw         $v0, %lo(__osBbFlashAddress)($v0)
/* 431F8 80067DF8 000821C0 */  sll        $a0, $t0, 7
/* 431FC 80067DFC 0C018A04 */  jal        bcopy
/* 43200 80067E00 00442021 */   addu      $a0, $v0, $a0
/* 43204 80067E04 08019F86 */  j          .L80067E18
/* 43208 80067E08 02002021 */   addu      $a0, $s0, $zero
.L80067E0C:
/* 4320C 80067E0C 0C018ACC */  jal        bzero
/* 43210 80067E10 000629C0 */   sll       $a1, $a2, 7
/* 43214 80067E14 02002021 */  addu       $a0, $s0, $zero
.L80067E18:
/* 43218 80067E18 00002821 */  addu       $a1, $zero, $zero
/* 4321C 80067E1C 0C018E28 */  jal        osSendMesg
/* 43220 80067E20 00003021 */   addu      $a2, $zero, $zero
/* 43224 80067E24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43228 80067E28 8FB00010 */  lw         $s0, 0x10($sp)
/* 4322C 80067E2C 03E00008 */  jr         $ra
/* 43230 80067E30 27BD0018 */   addiu     $sp, $sp, 0x18
/* 43234 80067E34 00000000 */  nop
/* 43238 80067E38 00000000 */  nop
/* 4323C 80067E3C 00000000 */  nop

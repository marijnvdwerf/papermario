.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSiRawReadIo
/* 46C40 8006B840 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 46C44 8006B844 AFB00010 */  sw         $s0, 0x10($sp)
/* 46C48 8006B848 00808021 */  addu       $s0, $a0, $zero
/* 46C4C 8006B84C AFB10014 */  sw         $s1, 0x14($sp)
/* 46C50 8006B850 AFBF0018 */  sw         $ra, 0x18($sp)
/* 46C54 8006B854 0C01B378 */  jal        __osSiDeviceBusy
/* 46C58 8006B858 00A08821 */   addu      $s1, $a1, $zero
/* 46C5C 8006B85C 14400006 */  bnez       $v0, .L8006B878
/* 46C60 8006B860 2402FFFF */   addiu     $v0, $zero, -0x1
/* 46C64 8006B864 3C03A000 */  lui        $v1, %hi(D_A0000000)
/* 46C68 8006B868 02031825 */  or         $v1, $s0, $v1
/* 46C6C 8006B86C 8C640000 */  lw         $a0, %lo(D_A0000000)($v1)
/* 46C70 8006B870 00001021 */  addu       $v0, $zero, $zero
/* 46C74 8006B874 AE240000 */  sw         $a0, 0x0($s1)
.L8006B878:
/* 46C78 8006B878 8FBF0018 */  lw         $ra, 0x18($sp)
/* 46C7C 8006B87C 8FB10014 */  lw         $s1, 0x14($sp)
/* 46C80 8006B880 8FB00010 */  lw         $s0, 0x10($sp)
/* 46C84 8006B884 03E00008 */  jr         $ra
/* 46C88 8006B888 27BD0020 */   addiu     $sp, $sp, 0x20
/* 46C8C 8006B88C 00000000 */  nop

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guRotateRPYF
/* 3DA40 80062640 3C018009 */  lui        $at, %hi(rotaterpy_800929f0)
/* 3DA44 80062644 C42229F0 */  lwc1       $f2, %lo(rotaterpy_800929f0)($at)
/* 3DA48 80062648 44854000 */  mtc1       $a1, $f8
/* 3DA4C 8006264C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 3DA50 80062650 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 3DA54 80062654 46024502 */  mul.s      $f20, $f8, $f2
/* 3DA58 80062658 44864000 */  mtc1       $a2, $f8
/* 3DA5C 8006265C AFB00020 */  sw         $s0, 0x20($sp)
/* 3DA60 80062660 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 3DA64 80062664 46024582 */  mul.s      $f22, $f8, $f2
/* 3DA68 80062668 44874000 */  mtc1       $a3, $f8
/* 3DA6C 8006266C 00808021 */  addu       $s0, $a0, $zero
/* 3DA70 80062670 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3DA74 80062674 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* 3DA78 80062678 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* 3DA7C 8006267C F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 3DA80 80062680 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 3DA84 80062684 46024782 */  mul.s      $f30, $f8, $f2
/* 3DA88 80062688 0C00A78F */  jal        sin_rad
/* 3DA8C 8006268C 4600A306 */   mov.s     $f12, $f20
/* 3DA90 80062690 4600A306 */  mov.s      $f12, $f20
/* 3DA94 80062694 0C00A7A8 */  jal        cos_rad
/* 3DA98 80062698 E7A00010 */   swc1      $f0, 0x10($sp)
/* 3DA9C 8006269C 46000706 */  mov.s      $f28, $f0
/* 3DAA0 800626A0 0C00A78F */  jal        sin_rad
/* 3DAA4 800626A4 4600B306 */   mov.s     $f12, $f22
/* 3DAA8 800626A8 4600B306 */  mov.s      $f12, $f22
/* 3DAAC 800626AC 0C00A7A8 */  jal        cos_rad
/* 3DAB0 800626B0 46000686 */   mov.s     $f26, $f0
/* 3DAB4 800626B4 46000606 */  mov.s      $f24, $f0
/* 3DAB8 800626B8 0C00A78F */  jal        sin_rad
/* 3DABC 800626BC 4600F306 */   mov.s     $f12, $f30
/* 3DAC0 800626C0 4600F306 */  mov.s      $f12, $f30
/* 3DAC4 800626C4 0C00A7A8 */  jal        cos_rad
/* 3DAC8 800626C8 46000586 */   mov.s     $f22, $f0
/* 3DACC 800626CC 46000506 */  mov.s      $f20, $f0
/* 3DAD0 800626D0 0C019698 */  jal        guMtxIdentF
/* 3DAD4 800626D4 02002021 */   addu      $a0, $s0, $zero
/* 3DAD8 800626D8 4614C402 */  mul.s      $f16, $f24, $f20
/* 3DADC 800626DC 4616C482 */  mul.s      $f18, $f24, $f22
/* 3DAE0 800626E0 4614E302 */  mul.s      $f12, $f28, $f20
/* 3DAE4 800626E4 461AE002 */  mul.s      $f0, $f28, $f26
/* 3DAE8 800626E8 C7A80010 */  lwc1       $f8, 0x10($sp)
/* 3DAEC 800626EC 461A4082 */  mul.s      $f2, $f8, $f26
/* 3DAF0 800626F0 4616E202 */  mul.s      $f8, $f28, $f22
/* 3DAF4 800626F4 4618E702 */  mul.s      $f28, $f28, $f24
/* 3DAF8 800626F8 46140102 */  mul.s      $f4, $f0, $f20
/* 3DAFC 800626FC 46160002 */  mul.s      $f0, $f0, $f22
/* 3DB00 80062700 46141182 */  mul.s      $f6, $f2, $f20
/* 3DB04 80062704 46161082 */  mul.s      $f2, $f2, $f22
/* 3DB08 80062708 E7A80018 */  swc1       $f8, 0x18($sp)
/* 3DB0C 8006270C C7A80010 */  lwc1       $f8, 0x10($sp)
/* 3DB10 80062710 46184382 */  mul.s      $f14, $f8, $f24
/* 3DB14 80062714 46164282 */  mul.s      $f10, $f8, $f22
/* 3DB18 80062718 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3DB1C 8006271C 46144502 */  mul.s      $f20, $f8, $f20
/* 3DB20 80062720 D7BE0050 */  ldc1       $f30, 0x50($sp)
/* 3DB24 80062724 C7A80018 */  lwc1       $f8, 0x18($sp)
/* 3DB28 80062728 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 3DB2C 8006272C D7B60030 */  ldc1       $f22, 0x30($sp)
/* 3DB30 80062730 46083181 */  sub.s      $f6, $f6, $f8
/* 3DB34 80062734 E61C0028 */  swc1       $f28, 0x28($s0)
/* 3DB38 80062738 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* 3DB3C 8006273C 4600D687 */  neg.s      $f26, $f26
/* 3DB40 80062740 E61A0008 */  swc1       $f26, 0x8($s0)
/* 3DB44 80062744 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 3DB48 80062748 46140001 */  sub.s      $f0, $f0, $f20
/* 3DB4C 8006274C E6100000 */  swc1       $f16, 0x0($s0)
/* 3DB50 80062750 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 3DB54 80062754 460C1080 */  add.s      $f2, $f2, $f12
/* 3DB58 80062758 E6120004 */  swc1       $f18, 0x4($s0)
/* 3DB5C 8006275C E60E0018 */  swc1       $f14, 0x18($s0)
/* 3DB60 80062760 460A2100 */  add.s      $f4, $f4, $f10
/* 3DB64 80062764 E6060010 */  swc1       $f6, 0x10($s0)
/* 3DB68 80062768 E6020014 */  swc1       $f2, 0x14($s0)
/* 3DB6C 8006276C E6040020 */  swc1       $f4, 0x20($s0)
/* 3DB70 80062770 E6000024 */  swc1       $f0, 0x24($s0)
/* 3DB74 80062774 8FB00020 */  lw         $s0, 0x20($sp)
/* 3DB78 80062778 03E00008 */  jr         $ra
/* 3DB7C 8006277C 27BD0058 */   addiu     $sp, $sp, 0x58

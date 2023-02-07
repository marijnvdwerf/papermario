.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osSpRawStartDma
/* 46BB0 8006B7B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 46BB4 8006B7B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 46BB8 8006B7B8 00809821 */  addu       $s3, $a0, $zero
/* 46BBC 8006B7BC AFB00010 */  sw         $s0, 0x10($sp)
/* 46BC0 8006B7C0 00A08021 */  addu       $s0, $a1, $zero
/* 46BC4 8006B7C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 46BC8 8006B7C8 00C08821 */  addu       $s1, $a2, $zero
/* 46BCC 8006B7CC AFB20018 */  sw         $s2, 0x18($sp)
/* 46BD0 8006B7D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 46BD4 8006B7D4 0C01ADCC */  jal        __osSpDeviceBusy
/* 46BD8 8006B7D8 00E09021 */   addu      $s2, $a3, $zero
/* 46BDC 8006B7DC 14400010 */  bnez       $v0, .L8006B820
/* 46BE0 8006B7E0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 46BE4 8006B7E4 3C02A404 */  lui        $v0, %hi(D_A4040000)
/* 46BE8 8006B7E8 02202021 */  addu       $a0, $s1, $zero
/* 46BEC 8006B7EC 0C01836C */  jal        osVirtualToPhysical
/* 46BF0 8006B7F0 AC500000 */   sw        $s0, %lo(D_A4040000)($v0)
/* 46BF4 8006B7F4 3C03A404 */  lui        $v1, (0xA4040004 >> 16)
/* 46BF8 8006B7F8 34630004 */  ori        $v1, $v1, (0xA4040004 & 0xFFFF)
/* 46BFC 8006B7FC AC620000 */  sw         $v0, 0x0($v1)
/* 46C00 8006B800 16600003 */  bnez       $s3, .L8006B810
/* 46C04 8006B804 3C02A404 */   lui       $v0, (0xA4040008 >> 16)
/* 46C08 8006B808 0801AE05 */  j          .L8006B814
/* 46C0C 8006B80C 3442000C */   ori       $v0, $v0, (0xA404000C & 0xFFFF)
.L8006B810:
/* 46C10 8006B810 34420008 */  ori        $v0, $v0, (0xA4040008 & 0xFFFF)
.L8006B814:
/* 46C14 8006B814 2643FFFF */  addiu      $v1, $s2, -0x1
/* 46C18 8006B818 AC430000 */  sw         $v1, 0x0($v0)
/* 46C1C 8006B81C 00001021 */  addu       $v0, $zero, $zero
.L8006B820:
/* 46C20 8006B820 8FBF0020 */  lw         $ra, 0x20($sp)
/* 46C24 8006B824 8FB3001C */  lw         $s3, 0x1C($sp)
/* 46C28 8006B828 8FB20018 */  lw         $s2, 0x18($sp)
/* 46C2C 8006B82C 8FB10014 */  lw         $s1, 0x14($sp)
/* 46C30 8006B830 8FB00010 */  lw         $s0, 0x10($sp)
/* 46C34 8006B834 03E00008 */  jr         $ra
/* 46C38 8006B838 27BD0028 */   addiu     $sp, $sp, 0x28
/* 46C3C 8006B83C 00000000 */  nop

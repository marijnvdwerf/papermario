.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osVirtualToPhysical
/* 3C1B0 80060DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C1B4 80060DB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C1B8 80060DB8 AFBE0010 */  sw         $fp, 0x10($sp)
/* 3C1BC 80060DBC 03A0F021 */  addu       $fp, $sp, $zero
/* 3C1C0 80060DC0 AFC40018 */  sw         $a0, 0x18($fp)
/* 3C1C4 80060DC4 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C1C8 80060DC8 0441000F */  bgez       $v0, .L80060E08
/* 3C1CC 80060DCC 00000000 */   nop
/* 3C1D0 80060DD0 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C1D4 80060DD4 3C039FFF */  lui        $v1, (0x9FFFFFFF >> 16)
/* 3C1D8 80060DD8 3463FFFF */  ori        $v1, $v1, (0x9FFFFFFF & 0xFFFF)
/* 3C1DC 80060DDC 0062102B */  sltu       $v0, $v1, $v0
/* 3C1E0 80060DE0 14400009 */  bnez       $v0, .L80060E08
/* 3C1E4 80060DE4 00000000 */   nop
/* 3C1E8 80060DE8 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C1EC 80060DEC 3C041FFF */  lui        $a0, (0x1FFFFFFF >> 16)
/* 3C1F0 80060DF0 3484FFFF */  ori        $a0, $a0, (0x1FFFFFFF & 0xFFFF)
/* 3C1F4 80060DF4 00441824 */  and        $v1, $v0, $a0
/* 3C1F8 80060DF8 0801839B */  j          .L80060E6C
/* 3C1FC 80060DFC 00601021 */   addu      $v0, $v1, $zero
/* 3C200 80060E00 0801839B */  j          .L80060E6C
/* 3C204 80060E04 00000000 */   nop
.L80060E08:
/* 3C208 80060E08 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C20C 80060E0C 3C039FFF */  lui        $v1, (0x9FFFFFFF >> 16)
/* 3C210 80060E10 3463FFFF */  ori        $v1, $v1, (0x9FFFFFFF & 0xFFFF)
/* 3C214 80060E14 0062102B */  sltu       $v0, $v1, $v0
/* 3C218 80060E18 1040000F */  beqz       $v0, .L80060E58
/* 3C21C 80060E1C 00000000 */   nop
/* 3C220 80060E20 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C224 80060E24 3C03BFFF */  lui        $v1, (0xBFFFFFFF >> 16)
/* 3C228 80060E28 3463FFFF */  ori        $v1, $v1, (0xBFFFFFFF & 0xFFFF)
/* 3C22C 80060E2C 0062102B */  sltu       $v0, $v1, $v0
/* 3C230 80060E30 14400009 */  bnez       $v0, .L80060E58
/* 3C234 80060E34 00000000 */   nop
/* 3C238 80060E38 8FC20018 */  lw         $v0, 0x18($fp)
/* 3C23C 80060E3C 3C041FFF */  lui        $a0, (0x1FFFFFFF >> 16)
/* 3C240 80060E40 3484FFFF */  ori        $a0, $a0, (0x1FFFFFFF & 0xFFFF)
/* 3C244 80060E44 00441824 */  and        $v1, $v0, $a0
/* 3C248 80060E48 0801839B */  j          .L80060E6C
/* 3C24C 80060E4C 00601021 */   addu      $v0, $v1, $zero
/* 3C250 80060E50 0801839B */  j          .L80060E6C
/* 3C254 80060E54 00000000 */   nop
.L80060E58:
/* 3C258 80060E58 0C019388 */  jal        __osProbeTLB
/* 3C25C 80060E5C 8FC40018 */   lw        $a0, 0x18($fp)
/* 3C260 80060E60 00401821 */  addu       $v1, $v0, $zero
/* 3C264 80060E64 0801839B */  j          .L80060E6C
/* 3C268 80060E68 00601021 */   addu      $v0, $v1, $zero
.L80060E6C:
/* 3C26C 80060E6C 03C0E821 */  addu       $sp, $fp, $zero
/* 3C270 80060E70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C274 80060E74 8FBE0010 */  lw         $fp, 0x10($sp)
/* 3C278 80060E78 03E00008 */  jr         $ra
/* 3C27C 80060E7C 27BD0018 */   addiu     $sp, $sp, 0x18

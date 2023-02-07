.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel guFrustum
/* 3C3CC 80060FCC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3C3D0 80060FD0 AFB00060 */  sw         $s0, 0x60($sp)
/* 3C3D4 80060FD4 00808021 */  addu       $s0, $a0, $zero
/* 3C3D8 80060FD8 C7A00078 */  lwc1       $f0, 0x78($sp)
/* 3C3DC 80060FDC C7A2007C */  lwc1       $f2, 0x7C($sp)
/* 3C3E0 80060FE0 C7A40080 */  lwc1       $f4, 0x80($sp)
/* 3C3E4 80060FE4 C7A60084 */  lwc1       $f6, 0x84($sp)
/* 3C3E8 80060FE8 27A40020 */  addiu      $a0, $sp, 0x20
/* 3C3EC 80060FEC AFBF0064 */  sw         $ra, 0x64($sp)
/* 3C3F0 80060FF0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 3C3F4 80060FF4 E7A20014 */  swc1       $f2, 0x14($sp)
/* 3C3F8 80060FF8 E7A40018 */  swc1       $f4, 0x18($sp)
/* 3C3FC 80060FFC 0C0183AC */  jal        guFrustumF
/* 3C400 80061000 E7A6001C */   swc1      $f6, 0x1C($sp)
/* 3C404 80061004 27A40020 */  addiu      $a0, $sp, 0x20
/* 3C408 80061008 0C0196B0 */  jal        guMtxF2L
/* 3C40C 8006100C 02002821 */   addu      $a1, $s0, $zero
/* 3C410 80061010 8FBF0064 */  lw         $ra, 0x64($sp)
/* 3C414 80061014 8FB00060 */  lw         $s0, 0x60($sp)
/* 3C418 80061018 03E00008 */  jr         $ra
/* 3C41C 8006101C 27BD0068 */   addiu     $sp, $sp, 0x68

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPiRawStartDma
/* 47170 8006BD70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 47174 8006BD74 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 47178 8006BD78 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 4717C 8006BD7C AFB00010 */  sw         $s0, 0x10($sp)
/* 47180 8006BD80 00808021 */  addu       $s0, $a0, $zero
/* 47184 8006BD84 AFB20018 */  sw         $s2, 0x18($sp)
/* 47188 8006BD88 00A09021 */  addu       $s2, $a1, $zero
/* 4718C 8006BD8C 00C02021 */  addu       $a0, $a2, $zero
/* 47190 8006BD90 AFBF001C */  sw         $ra, 0x1C($sp)
/* 47194 8006BD94 AFB10014 */  sw         $s1, 0x14($sp)
/* 47198 8006BD98 8C420000 */  lw         $v0, 0x0($v0)
/* 4719C 8006BD9C 30420003 */  andi       $v0, $v0, 0x3
/* 471A0 8006BDA0 10400007 */  beqz       $v0, .L8006BDC0
/* 471A4 8006BDA4 00E08821 */   addu      $s1, $a3, $zero
/* 471A8 8006BDA8 3C03A460 */  lui        $v1, (0xA4600010 >> 16)
/* 471AC 8006BDAC 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
.L8006BDB0:
/* 471B0 8006BDB0 8C620000 */  lw         $v0, 0x0($v1)
/* 471B4 8006BDB4 30420003 */  andi       $v0, $v0, 0x3
/* 471B8 8006BDB8 1440FFFD */  bnez       $v0, .L8006BDB0
/* 471BC 8006BDBC 00000000 */   nop
.L8006BDC0:
/* 471C0 8006BDC0 0C01836C */  jal        osVirtualToPhysical
/* 471C4 8006BDC4 00000000 */   nop
/* 471C8 8006BDC8 3C06A460 */  lui        $a2, (0xA4600004 >> 16)
/* 471CC 8006BDCC 34C60004 */  ori        $a2, $a2, (0xA4600004 & 0xFFFF)
/* 471D0 8006BDD0 3C051FFF */  lui        $a1, (0x1FFFFFFF >> 16)
/* 471D4 8006BDD4 34A5FFFF */  ori        $a1, $a1, (0x1FFFFFFF & 0xFFFF)
/* 471D8 8006BDD8 3C038000 */  lui        $v1, %hi(osRomBase)
/* 471DC 8006BDDC 8C630308 */  lw         $v1, %lo(osRomBase)($v1)
/* 471E0 8006BDE0 3C04A460 */  lui        $a0, %hi(D_A4600000)
/* 471E4 8006BDE4 AC820000 */  sw         $v0, %lo(D_A4600000)($a0)
/* 471E8 8006BDE8 00721825 */  or         $v1, $v1, $s2
/* 471EC 8006BDEC 00651824 */  and        $v1, $v1, $a1
/* 471F0 8006BDF0 ACC30000 */  sw         $v1, 0x0($a2)
/* 471F4 8006BDF4 12000006 */  beqz       $s0, .L8006BE10
/* 471F8 8006BDF8 3C02A460 */   lui       $v0, (0xA460000C >> 16)
/* 471FC 8006BDFC 24020001 */  addiu      $v0, $zero, 0x1
/* 47200 8006BE00 12020005 */  beq        $s0, $v0, .L8006BE18
/* 47204 8006BE04 2402FFFF */   addiu     $v0, $zero, -0x1
/* 47208 8006BE08 0801AF8C */  j          .L8006BE30
/* 4720C 8006BE0C 8FBF001C */   lw        $ra, 0x1C($sp)
.L8006BE10:
/* 47210 8006BE10 0801AF88 */  j          .L8006BE20
/* 47214 8006BE14 3442000C */   ori       $v0, $v0, (0xA460000C & 0xFFFF)
.L8006BE18:
/* 47218 8006BE18 3C02A460 */  lui        $v0, (0xA4600008 >> 16)
/* 4721C 8006BE1C 34420008 */  ori        $v0, $v0, (0xA4600008 & 0xFFFF)
.L8006BE20:
/* 47220 8006BE20 2623FFFF */  addiu      $v1, $s1, -0x1
/* 47224 8006BE24 AC430000 */  sw         $v1, 0x0($v0)
/* 47228 8006BE28 00001021 */  addu       $v0, $zero, $zero
/* 4722C 8006BE2C 8FBF001C */  lw         $ra, 0x1C($sp)
.L8006BE30:
/* 47230 8006BE30 8FB20018 */  lw         $s2, 0x18($sp)
/* 47234 8006BE34 8FB10014 */  lw         $s1, 0x14($sp)
/* 47238 8006BE38 8FB00010 */  lw         $s0, 0x10($sp)
/* 4723C 8006BE3C 03E00008 */  jr         $ra
/* 47240 8006BE40 27BD0020 */   addiu     $sp, $sp, 0x20
/* 47244 8006BE44 00000000 */  nop
/* 47248 8006BE48 00000000 */  nop
/* 4724C 8006BE4C 00000000 */  nop

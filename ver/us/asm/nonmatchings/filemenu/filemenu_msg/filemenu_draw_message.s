.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */


glabel filemenu_draw_message
/* 1B3268 80249D08 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1B326C 80249D0C 8FA2004C */  lw         $v0, 0x4C($sp)
/* 1B3270 80249D10 AFB5002C */  sw         $s5, 0x2C($sp)
.L80249D14:
/* 1B3274 80249D14 8FB50048 */  lw         $s5, 0x48($sp)
/* 1B3278 80249D18 AFB00018 */  sw         $s0, 0x18($sp)
/* 1B327C 80249D1C 0080802D */  daddu      $s0, $a0, $zero
/* 1B3280 80249D20 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1B3284 80249D24 00A0882D */  daddu      $s1, $a1, $zero
/* 1B3288 80249D28 AFB20020 */  sw         $s2, 0x20($sp)
/* 1B328C 80249D2C 00C0902D */  daddu      $s2, $a2, $zero
/* 1B3290 80249D30 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1B3294 80249D34 AFB60030 */  sw         $s6, 0x30($sp)
.L80249D38:
/* 1B3298 80249D38 AFB40028 */  sw         $s4, 0x28($sp)
/* 1B329C 80249D3C AFB30024 */  sw         $s3, 0x24($sp)
/* 1B32A0 80249D40 000298C2 */  srl        $s3, $v0, 3
/* 1B32A4 80249D44 30540001 */  andi       $s4, $v0, 0x1
/* 1B32A8 80249D48 24020001 */  addiu      $v0, $zero, 0x1
/* 1B32AC 80249D4C 16820002 */  bne        $s4, $v0, .L80249D58
/* 1B32B0 80249D50 32730001 */   andi      $s3, $s3, 0x1
/* 1B32B4 80249D54 2652FFFE */  addiu      $s2, $s2, -0x2
.L80249D58:
/* 1B32B8 80249D58 2E020100 */  sltiu      $v0, $s0, 0x100
/* 1B32BC 80249D5C 10400013 */  beqz       $v0, .L80249DAC
/* 1B32C0 80249D60 2602FF5E */   addiu     $v0, $s0, -0xA2
/* 1B32C4 80249D64 2C42004E */  sltiu      $v0, $v0, 0x4E
/* 1B32C8 80249D68 1440000A */  bnez       $v0, .L80249D94
/* 1B32CC 80249D6C 2A0200C6 */   slti      $v0, $s0, 0xC6
/* 1B32D0 80249D70 0200202D */  daddu      $a0, $s0, $zero
/* 1B32D4 80249D74 0220282D */  daddu      $a1, $s1, $zero
/* 1B32D8 80249D78 0240302D */  daddu      $a2, $s2, $zero
/* 1B32DC 80249D7C 0280382D */  daddu      $a3, $s4, $zero
/* 1B32E0 80249D80 AFB50010 */  sw         $s5, 0x10($sp)
/* 1B32E4 80249D84 0C0924E8 */  jal        filemenu_draw_char
/* 1B32E8 80249D88 AFB30014 */   sw        $s3, 0x14($sp)
/* 1B32EC 80249D8C 08092790 */  j          .L80249E40
/* 1B32F0 80249D90 00000000 */   nop
.L80249D94:
/* 1B32F4 80249D94 14400005 */  bnez       $v0, .L80249DAC
/* 1B32F8 80249D98 2602FF3A */   addiu     $v0, $s0, -0xC6
/* 1B32FC 80249D9C 00021080 */  sll        $v0, $v0, 2
/* 1B3300 80249DA0 3C108025 */  lui        $s0, %hi(filemenu_specialSymbols)
/* 1B3304 80249DA4 02028021 */  addu       $s0, $s0, $v0
/* 1B3308 80249DA8 8E10BB30 */  lw         $s0, %lo(filemenu_specialSymbols)($s0)
.L80249DAC:
/* 1B330C 80249DAC 06010024 */  bgez       $s0, .L80249E40
/* 1B3310 80249DB0 240400F3 */   addiu     $a0, $zero, 0xF3
.L80249DB4:
/* 1B3314 80249DB4 0220282D */  daddu      $a1, $s1, $zero
/* 1B3318 80249DB8 0240302D */  daddu      $a2, $s2, $zero
/* 1B331C 80249DBC 0280382D */  daddu      $a3, $s4, $zero
/* 1B3320 80249DC0 AFB50010 */  sw         $s5, 0x10($sp)
/* 1B3324 80249DC4 0C0924E8 */  jal        filemenu_draw_char
/* 1B3328 80249DC8 AFB30014 */   sw        $s3, 0x14($sp)
/* 1B332C 80249DCC 92030000 */  lbu        $v1, 0x0($s0)
/* 1B3330 80249DD0 240200FD */  addiu      $v0, $zero, 0xFD
/* 1B3334 80249DD4 1062001A */  beq        $v1, $v0, .L80249E40
/* 1B3338 80249DD8 0040B02D */   daddu     $s6, $v0, $zero
.L80249DDC:
/* 1B333C 80249DDC 92030000 */  lbu        $v1, 0x0($s0)
/* 1B3340 80249DE0 2462FFA1 */  addiu      $v0, $v1, -0x5F
/* 1B3344 80249DE4 2C420031 */  sltiu      $v0, $v0, 0x31
/* 1B3348 80249DE8 1040000A */  beqz       $v0, .L80249E14
/* 1B334C 80249DEC 0220282D */   daddu     $a1, $s1, $zero
/* 1B3350 80249DF0 26100001 */  addiu      $s0, $s0, 0x1
/* 1B3354 80249DF4 26460001 */  addiu      $a2, $s2, 0x1
/* 1B3358 80249DF8 92040000 */  lbu        $a0, 0x0($s0)
/* 1B335C 80249DFC 0280382D */  daddu      $a3, $s4, $zero
/* 1B3360 80249E00 AFB50010 */  sw         $s5, 0x10($sp)
/* 1B3364 80249E04 AFB30014 */  sw         $s3, 0x14($sp)
/* 1B3368 80249E08 00042200 */  sll        $a0, $a0, 8
/* 1B336C 80249E0C 0809278A */  j          .L80249E28
/* 1B3370 80249E10 00642021 */   addu      $a0, $v1, $a0
.L80249E14:
/* 1B3374 80249E14 0060202D */  daddu      $a0, $v1, $zero
/* 1B3378 80249E18 0240302D */  daddu      $a2, $s2, $zero
.L80249E1C:
/* 1B337C 80249E1C 0280382D */  daddu      $a3, $s4, $zero
/* 1B3380 80249E20 AFB50010 */  sw         $s5, 0x10($sp)
.L80249E24:
/* 1B3384 80249E24 AFB30014 */  sw         $s3, 0x14($sp)
.L80249E28:
/* 1B3388 80249E28 0C0924E8 */  jal        filemenu_draw_char
/* 1B338C 80249E2C 26100001 */   addiu     $s0, $s0, 0x1
/* 1B3390 80249E30 02228821 */  addu       $s1, $s1, $v0
/* 1B3394 80249E34 92020000 */  lbu        $v0, 0x0($s0)
/* 1B3398 80249E38 1456FFE8 */  bne        $v0, $s6, .L80249DDC
/* 1B339C 80249E3C 00000000 */   nop
.L80249E40:
/* 1B33A0 80249E40 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1B33A4 80249E44 8FB60030 */  lw         $s6, 0x30($sp)
/* 1B33A8 80249E48 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1B33AC 80249E4C 8FB40028 */  lw         $s4, 0x28($sp)
/* 1B33B0 80249E50 8FB30024 */  lw         $s3, 0x24($sp)
/* 1B33B4 80249E54 8FB20020 */  lw         $s2, 0x20($sp)
/* 1B33B8 80249E58 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1B33BC 80249E5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1B33C0 80249E60 03E00008 */  jr         $ra
/* 1B33C4 80249E64 27BD0038 */   addiu     $sp, $sp, 0x38

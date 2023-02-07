.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel filemenu_info_draw_message_contents
/* 1B1290 80247D30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B1294 80247D34 AFB50034 */  sw         $s5, 0x34($sp)
/* 1B1298 80247D38 00A0A82D */  daddu      $s5, $a1, $zero
.L80247D3C:
/* 1B129C 80247D3C AFB3002C */  sw         $s3, 0x2C($sp)
/* 1B12A0 80247D40 AFBF0038 */  sw         $ra, 0x38($sp)
/* 1B12A4 80247D44 AFB40030 */  sw         $s4, 0x30($sp)
/* 1B12A8 80247D48 AFB20028 */  sw         $s2, 0x28($sp)
/* 1B12AC 80247D4C AFB10024 */  sw         $s1, 0x24($sp)
/* 1B12B0 80247D50 AFB00020 */  sw         $s0, 0x20($sp)
.L80247D54:
/* 1B12B4 80247D54 80920004 */  lb         $s2, 0x4($a0)
/* 1B12B8 80247D58 24020001 */  addiu      $v0, $zero, 0x1
/* 1B12BC 80247D5C 12420070 */  beq        $s2, $v0, .L80247F20
/* 1B12C0 80247D60 00C0982D */   daddu     $s3, $a2, $zero
/* 1B12C4 80247D64 2A420002 */  slti       $v0, $s2, 0x2
/* 1B12C8 80247D68 10400005 */  beqz       $v0, .L80247D80
/* 1B12CC 80247D6C 24020002 */   addiu     $v0, $zero, 0x2
/* 1B12D0 80247D70 12400009 */  beqz       $s2, .L80247D98
/* 1B12D4 80247D74 00000000 */   nop
/* 1B12D8 80247D78 08091FEE */  j          .L80247FB8
/* 1B12DC 80247D7C 00000000 */   nop
.L80247D80:
/* 1B12E0 80247D80 12420022 */  beq        $s2, $v0, .L80247E0C
/* 1B12E4 80247D84 24020003 */   addiu     $v0, $zero, 0x3
/* 1B12E8 80247D88 1242006B */  beq        $s2, $v0, .L80247F38
/* 1B12EC 80247D8C 00000000 */   nop
/* 1B12F0 80247D90 08091FEE */  j          .L80247FB8
/* 1B12F4 80247D94 00000000 */   nop
.L80247D98:
/* 1B12F8 80247D98 0C09279A */  jal        filemenu_get_menu_message
/* 1B12FC 80247D9C 2404001A */   addiu     $a0, $zero, 0x1A
/* 1B1300 80247DA0 0040202D */  daddu      $a0, $v0, $zero
/* 1B1304 80247DA4 26A5000A */  addiu      $a1, $s5, 0xA
/* 1B1308 80247DA8 26700004 */  addiu      $s0, $s3, 0x4
.L80247DAC:
/* 1B130C 80247DAC 0200302D */  daddu      $a2, $s0, $zero
/* 1B1310 80247DB0 240700FF */  addiu      $a3, $zero, 0xFF
.L80247DB4:
/* 1B1314 80247DB4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B1318 80247DB8 0C092742 */  jal        filemenu_draw_message
/* 1B131C 80247DBC AFA00014 */   sw        $zero, 0x14($sp)
.L80247DC0:
/* 1B1320 80247DC0 26A50030 */  addiu      $a1, $s5, 0x30
/* 1B1324 80247DC4 26660007 */  addiu      $a2, $s3, 0x7
/* 1B1328 80247DC8 3C028025 */  lui        $v0, %hi(filemenu_menus)
/* 1B132C 80247DCC 8C429F64 */  lw         $v0, %lo(filemenu_menus)($v0)
/* 1B1330 80247DD0 0000382D */  daddu      $a3, $zero, $zero
/* 1B1334 80247DD4 90440003 */  lbu        $a0, 0x3($v0)
/* 1B1338 80247DD8 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B133C 80247DDC AFA20014 */  sw         $v0, 0x14($sp)
/* 1B1340 80247DE0 24020003 */  addiu      $v0, $zero, 0x3
/* 1B1344 80247DE4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B1348 80247DE8 AFA20018 */  sw         $v0, 0x18($sp)
/* 1B134C 80247DEC 0C049693 */  jal        draw_number
/* 1B1350 80247DF0 24840001 */   addiu     $a0, $a0, 0x1
/* 1B1354 80247DF4 0C09279A */  jal        filemenu_get_menu_message
/* 1B1358 80247DF8 2404001B */   addiu     $a0, $zero, 0x1B
/* 1B135C 80247DFC 0040202D */  daddu      $a0, $v0, $zero
/* 1B1360 80247E00 26A50031 */  addiu      $a1, $s5, 0x31
/* 1B1364 80247E04 08091FEA */  j          .L80247FA8
/* 1B1368 80247E08 0200302D */   daddu     $a2, $s0, $zero
.L80247E0C:
/* 1B136C 80247E0C 0C09279A */  jal        filemenu_get_menu_message
/* 1B1370 80247E10 2404001D */   addiu     $a0, $zero, 0x1D
/* 1B1374 80247E14 0040202D */  daddu      $a0, $v0, $zero
/* 1B1378 80247E18 26A5000A */  addiu      $a1, $s5, 0xA
.L80247E1C:
/* 1B137C 80247E1C 26710007 */  addiu      $s1, $s3, 0x7
/* 1B1380 80247E20 0220302D */  daddu      $a2, $s1, $zero
/* 1B1384 80247E24 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B1388 80247E28 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B138C 80247E2C 0C092742 */  jal        filemenu_draw_message
/* 1B1390 80247E30 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B1394 80247E34 0C09279A */  jal        filemenu_get_menu_message
/* 1B1398 80247E38 2404001A */   addiu     $a0, $zero, 0x1A
/* 1B139C 80247E3C 0040202D */  daddu      $a0, $v0, $zero
/* 1B13A0 80247E40 26A5002A */  addiu      $a1, $s5, 0x2A
/* 1B13A4 80247E44 0220302D */  daddu      $a2, $s1, $zero
/* 1B13A8 80247E48 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B13AC 80247E4C AFA00010 */  sw         $zero, 0x10($sp)
/* 1B13B0 80247E50 0C092742 */  jal        filemenu_draw_message
/* 1B13B4 80247E54 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B13B8 80247E58 26B00054 */  addiu      $s0, $s5, 0x54
/* 1B13BC 80247E5C 0200282D */  daddu      $a1, $s0, $zero
/* 1B13C0 80247E60 2673000A */  addiu      $s3, $s3, 0xA
/* 1B13C4 80247E64 0260302D */  daddu      $a2, $s3, $zero
/* 1B13C8 80247E68 0000382D */  daddu      $a3, $zero, $zero
/* 1B13CC 80247E6C 241400FF */  addiu      $s4, $zero, 0xFF
/* 1B13D0 80247E70 3C048025 */  lui        $a0, %hi(filemenu_loadedFileIdx)
/* 1B13D4 80247E74 8C84C454 */  lw         $a0, %lo(filemenu_loadedFileIdx)($a0)
/* 1B13D8 80247E78 24120003 */  addiu      $s2, $zero, 0x3
/* 1B13DC 80247E7C AFA00010 */  sw         $zero, 0x10($sp)
.L80247E80:
/* 1B13E0 80247E80 AFB40014 */  sw         $s4, 0x14($sp)
/* 1B13E4 80247E84 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B13E8 80247E88 0C049693 */  jal        draw_number
/* 1B13EC 80247E8C 24840001 */   addiu     $a0, $a0, 0x1
/* 1B13F0 80247E90 0C09279A */  jal        filemenu_get_menu_message
/* 1B13F4 80247E94 2404001E */   addiu     $a0, $zero, 0x1E
/* 1B13F8 80247E98 0040202D */  daddu      $a0, $v0, $zero
/* 1B13FC 80247E9C 0200282D */  daddu      $a1, $s0, $zero
/* 1B1400 80247EA0 0220302D */  daddu      $a2, $s1, $zero
/* 1B1404 80247EA4 0280382D */  daddu      $a3, $s4, $zero
/* 1B1408 80247EA8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B140C 80247EAC 0C092742 */  jal        filemenu_draw_message
/* 1B1410 80247EB0 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B1414 80247EB4 0C09279A */  jal        filemenu_get_menu_message
/* 1B1418 80247EB8 2404001A */   addiu     $a0, $zero, 0x1A
/* 1B141C 80247EBC 0040202D */  daddu      $a0, $v0, $zero
/* 1B1420 80247EC0 26A50064 */  addiu      $a1, $s5, 0x64
/* 1B1424 80247EC4 0220302D */  daddu      $a2, $s1, $zero
/* 1B1428 80247EC8 0280382D */  daddu      $a3, $s4, $zero
/* 1B142C 80247ECC AFA00010 */  sw         $zero, 0x10($sp)
/* 1B1430 80247ED0 0C092742 */  jal        filemenu_draw_message
/* 1B1434 80247ED4 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B1438 80247ED8 26B0008C */  addiu      $s0, $s5, 0x8C
/* 1B143C 80247EDC 0200282D */  daddu      $a1, $s0, $zero
/* 1B1440 80247EE0 0260302D */  daddu      $a2, $s3, $zero
/* 1B1444 80247EE4 3C048025 */  lui        $a0, %hi(filemenu_iterFileIdx)
/* 1B1448 80247EE8 8C84C440 */  lw         $a0, %lo(filemenu_iterFileIdx)($a0)
/* 1B144C 80247EEC 0000382D */  daddu      $a3, $zero, $zero
/* 1B1450 80247EF0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B1454 80247EF4 AFB40014 */  sw         $s4, 0x14($sp)
/* 1B1458 80247EF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B145C 80247EFC 0C049693 */  jal        draw_number
/* 1B1460 80247F00 24840001 */   addiu     $a0, $a0, 0x1
/* 1B1464 80247F04 0C09279A */  jal        filemenu_get_menu_message
/* 1B1468 80247F08 24040022 */   addiu     $a0, $zero, 0x22
/* 1B146C 80247F0C 0040202D */  daddu      $a0, $v0, $zero
/* 1B1470 80247F10 0200282D */  daddu      $a1, $s0, $zero
/* 1B1474 80247F14 0220302D */  daddu      $a2, $s1, $zero
/* 1B1478 80247F18 08091FEB */  j          .L80247FAC
/* 1B147C 80247F1C 0280382D */   daddu     $a3, $s4, $zero
.L80247F20:
/* 1B1480 80247F20 0C09279A */  jal        filemenu_get_menu_message
.L80247F24:
/* 1B1484 80247F24 2404001C */   addiu     $a0, $zero, 0x1C
/* 1B1488 80247F28 0040202D */  daddu      $a0, $v0, $zero
/* 1B148C 80247F2C 26A5000A */  addiu      $a1, $s5, 0xA
/* 1B1490 80247F30 08091FEA */  j          .L80247FA8
/* 1B1494 80247F34 26660004 */   addiu     $a2, $s3, 0x4
.L80247F38:
/* 1B1498 80247F38 0C09279A */  jal        filemenu_get_menu_message
/* 1B149C 80247F3C 2404001A */   addiu     $a0, $zero, 0x1A
.L80247F40:
/* 1B14A0 80247F40 0040202D */  daddu      $a0, $v0, $zero
/* 1B14A4 80247F44 26A5000A */  addiu      $a1, $s5, 0xA
/* 1B14A8 80247F48 26710004 */  addiu      $s1, $s3, 0x4
/* 1B14AC 80247F4C 0220302D */  daddu      $a2, $s1, $zero
/* 1B14B0 80247F50 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B14B4 80247F54 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B14B8 80247F58 0C092742 */  jal        filemenu_draw_message
/* 1B14BC 80247F5C AFA00014 */   sw        $zero, 0x14($sp)
/* 1B14C0 80247F60 26B00031 */  addiu      $s0, $s5, 0x31
/* 1B14C4 80247F64 0200282D */  daddu      $a1, $s0, $zero
/* 1B14C8 80247F68 26660007 */  addiu      $a2, $s3, 0x7
/* 1B14CC 80247F6C 3C028025 */  lui        $v0, %hi(filemenu_menus)
/* 1B14D0 80247F70 8C429F64 */  lw         $v0, %lo(filemenu_menus)($v0)
/* 1B14D4 80247F74 0000382D */  daddu      $a3, $zero, $zero
/* 1B14D8 80247F78 90440003 */  lbu        $a0, 0x3($v0)
/* 1B14DC 80247F7C 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B14E0 80247F80 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B14E4 80247F84 AFA20014 */  sw         $v0, 0x14($sp)
/* 1B14E8 80247F88 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B14EC 80247F8C 0C049693 */  jal        draw_number
/* 1B14F0 80247F90 24840001 */   addiu     $a0, $a0, 0x1
/* 1B14F4 80247F94 0C09279A */  jal        filemenu_get_menu_message
/* 1B14F8 80247F98 2404001F */   addiu     $a0, $zero, 0x1F
/* 1B14FC 80247F9C 0040202D */  daddu      $a0, $v0, $zero
/* 1B1500 80247FA0 0200282D */  daddu      $a1, $s0, $zero
/* 1B1504 80247FA4 0220302D */  daddu      $a2, $s1, $zero
.L80247FA8:
/* 1B1508 80247FA8 240700FF */  addiu      $a3, $zero, 0xFF
.L80247FAC:
/* 1B150C 80247FAC AFA00010 */  sw         $zero, 0x10($sp)
/* 1B1510 80247FB0 0C092742 */  jal        filemenu_draw_message
/* 1B1514 80247FB4 AFA00014 */   sw        $zero, 0x14($sp)
.L80247FB8:
/* 1B1518 80247FB8 0C090B7B */  jal        filemenu_set_cursor_alpha
/* 1B151C 80247FBC 0000202D */   daddu     $a0, $zero, $zero
/* 1B1520 80247FC0 8FBF0038 */  lw         $ra, 0x38($sp)
.L80247FC4:
/* 1B1524 80247FC4 8FB50034 */  lw         $s5, 0x34($sp)
/* 1B1528 80247FC8 8FB40030 */  lw         $s4, 0x30($sp)
/* 1B152C 80247FCC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1B1530 80247FD0 8FB20028 */  lw         $s2, 0x28($sp)
/* 1B1534 80247FD4 8FB10024 */  lw         $s1, 0x24($sp)
/* 1B1538 80247FD8 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B153C 80247FDC 03E00008 */  jr         $ra
/* 1B1540 80247FE0 27BD0040 */   addiu     $sp, $sp, 0x40

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pause_stats_draw_contents
/* 181940 80245980 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 181944 80245984 AFBE0088 */  sw         $fp, 0x88($sp)
/* 181948 80245988 00C0F02D */  daddu      $fp, $a2, $zero
/* 18194C 8024598C AFA50094 */  sw         $a1, 0x94($sp)
/* 181950 80245990 24A8008F */  addiu      $t0, $a1, 0x8F
/* 181954 80245994 0100282D */  daddu      $a1, $t0, $zero
/* 181958 80245998 AFB00068 */  sw         $s0, 0x68($sp)
/* 18195C 8024599C 3C108027 */  lui        $s0, %hi(gPauseStatsIconIDs)
/* 181960 802459A0 261001D0 */  addiu      $s0, $s0, %lo(gPauseStatsIconIDs)
/* 181964 802459A4 AFBF008C */  sw         $ra, 0x8C($sp)
/* 181968 802459A8 AFB70084 */  sw         $s7, 0x84($sp)
/* 18196C 802459AC AFB60080 */  sw         $s6, 0x80($sp)
/* 181970 802459B0 AFB5007C */  sw         $s5, 0x7C($sp)
/* 181974 802459B4 AFB40078 */  sw         $s4, 0x78($sp)
/* 181978 802459B8 AFB30074 */  sw         $s3, 0x74($sp)
/* 18197C 802459BC AFB20070 */  sw         $s2, 0x70($sp)
/* 181980 802459C0 AFB1006C */  sw         $s1, 0x6C($sp)
/* 181984 802459C4 AFA40090 */  sw         $a0, 0x90($sp)
/* 181988 802459C8 AFA80050 */  sw         $t0, 0x50($sp)
/* 18198C 802459CC 8E04000C */  lw         $a0, 0xC($s0)
/* 181990 802459D0 0C050C45 */  jal        hud_element_set_render_pos
/* 181994 802459D4 27C6006D */   addiu     $a2, $fp, 0x6D
/* 181998 802459D8 8E04000C */  lw         $a0, 0xC($s0)
/* 18199C 802459DC 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1819A0 802459E0 24130003 */   addiu     $s3, $zero, 0x3
/* 1819A4 802459E4 0C093BA4 */  jal        pause_get_menu_msg
/* 1819A8 802459E8 24040032 */   addiu     $a0, $zero, 0x32
/* 1819AC 802459EC 0040202D */  daddu      $a0, $v0, $zero
/* 1819B0 802459F0 27C60065 */  addiu      $a2, $fp, 0x65
/* 1819B4 802459F4 8FA80094 */  lw         $t0, 0x94($sp)
/* 1819B8 802459F8 240700FF */  addiu      $a3, $zero, 0xFF
/* 1819BC 802459FC 2508009B */  addiu      $t0, $t0, 0x9B
/* 1819C0 80245A00 0100282D */  daddu      $a1, $t0, $zero
/* 1819C4 80245A04 AFA80054 */  sw         $t0, 0x54($sp)
/* 1819C8 80245A08 2408000A */  addiu      $t0, $zero, 0xA
/* 1819CC 80245A0C AFA80010 */  sw         $t0, 0x10($sp)
/* 1819D0 80245A10 24080001 */  addiu      $t0, $zero, 0x1
/* 1819D4 80245A14 0C049227 */  jal        draw_msg
/* 1819D8 80245A18 AFA80014 */   sw        $t0, 0x14($sp)
/* 1819DC 80245A1C 24070001 */  addiu      $a3, $zero, 0x1
/* 1819E0 80245A20 8FA80094 */  lw         $t0, 0x94($sp)
/* 1819E4 80245A24 3C048011 */  lui        $a0, %hi(gPlayerData + 0xC)
/* 1819E8 80245A28 8484D67C */  lh         $a0, %lo(gPlayerData + 0xC)($a0)
/* 1819EC 80245A2C AFB30018 */  sw         $s3, 0x18($sp)
/* 1819F0 80245A30 25120119 */  addiu      $s2, $t0, 0x119
/* 1819F4 80245A34 0240282D */  daddu      $a1, $s2, $zero
/* 1819F8 80245A38 27C80067 */  addiu      $t0, $fp, 0x67
/* 1819FC 80245A3C 0100302D */  daddu      $a2, $t0, $zero
/* 181A00 80245A40 AFA80058 */  sw         $t0, 0x58($sp)
/* 181A04 80245A44 2408000A */  addiu      $t0, $zero, 0xA
/* 181A08 80245A48 AFA80010 */  sw         $t0, 0x10($sp)
/* 181A0C 80245A4C 240800FF */  addiu      $t0, $zero, 0xFF
/* 181A10 80245A50 0C049693 */  jal        draw_number
/* 181A14 80245A54 AFA80014 */   sw        $t0, 0x14($sp)
/* 181A18 80245A58 27C6006C */  addiu      $a2, $fp, 0x6C
/* 181A1C 80245A5C 8FA80094 */  lw         $t0, 0x94($sp)
/* 181A20 80245A60 8E04002C */  lw         $a0, 0x2C($s0)
/* 181A24 80245A64 251100F8 */  addiu      $s1, $t0, 0xF8
/* 181A28 80245A68 0C050C45 */  jal        hud_element_set_render_pos
/* 181A2C 80245A6C 0220282D */   daddu     $a1, $s1, $zero
/* 181A30 80245A70 8E04002C */  lw         $a0, 0x2C($s0)
/* 181A34 80245A74 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181A38 80245A78 27D4007B */   addiu     $s4, $fp, 0x7B
/* 181A3C 80245A7C 8FA50050 */  lw         $a1, 0x50($sp)
/* 181A40 80245A80 8E040010 */  lw         $a0, 0x10($s0)
/* 181A44 80245A84 0C050C45 */  jal        hud_element_set_render_pos
/* 181A48 80245A88 27C6005E */   addiu     $a2, $fp, 0x5E
/* 181A4C 80245A8C 8E040010 */  lw         $a0, 0x10($s0)
/* 181A50 80245A90 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181A54 80245A94 00000000 */   nop
/* 181A58 80245A98 0C093BA4 */  jal        pause_get_menu_msg
/* 181A5C 80245A9C 24040033 */   addiu     $a0, $zero, 0x33
/* 181A60 80245AA0 0040202D */  daddu      $a0, $v0, $zero
/* 181A64 80245AA4 27C60056 */  addiu      $a2, $fp, 0x56
/* 181A68 80245AA8 240700FF */  addiu      $a3, $zero, 0xFF
/* 181A6C 80245AAC 8FA50054 */  lw         $a1, 0x54($sp)
/* 181A70 80245AB0 2408000A */  addiu      $t0, $zero, 0xA
/* 181A74 80245AB4 AFA80010 */  sw         $t0, 0x10($sp)
/* 181A78 80245AB8 24080001 */  addiu      $t0, $zero, 0x1
/* 181A7C 80245ABC 0C049227 */  jal        draw_msg
/* 181A80 80245AC0 AFA80014 */   sw        $t0, 0x14($sp)
/* 181A84 80245AC4 0240282D */  daddu      $a1, $s2, $zero
/* 181A88 80245AC8 27C60058 */  addiu      $a2, $fp, 0x58
/* 181A8C 80245ACC 24070001 */  addiu      $a3, $zero, 0x1
/* 181A90 80245AD0 3C048011 */  lui        $a0, %hi(gPlayerData+0x010)
/* 181A94 80245AD4 8084D680 */  lb         $a0, %lo(gPlayerData+0x010)($a0)
/* 181A98 80245AD8 2408000A */  addiu      $t0, $zero, 0xA
/* 181A9C 80245ADC AFA80010 */  sw         $t0, 0x10($sp)
/* 181AA0 80245AE0 240800FF */  addiu      $t0, $zero, 0xFF
/* 181AA4 80245AE4 AFA80014 */  sw         $t0, 0x14($sp)
/* 181AA8 80245AE8 0C049693 */  jal        draw_number
/* 181AAC 80245AEC AFB30018 */   sw        $s3, 0x18($sp)
/* 181AB0 80245AF0 0220282D */  daddu      $a1, $s1, $zero
/* 181AB4 80245AF4 8E04002C */  lw         $a0, 0x2C($s0)
/* 181AB8 80245AF8 0C050C45 */  jal        hud_element_set_render_pos
/* 181ABC 80245AFC 27C6005D */   addiu     $a2, $fp, 0x5D
/* 181AC0 80245B00 8E04002C */  lw         $a0, 0x2C($s0)
/* 181AC4 80245B04 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181AC8 80245B08 00000000 */   nop
/* 181ACC 80245B0C 8FA50050 */  lw         $a1, 0x50($sp)
/* 181AD0 80245B10 8E040014 */  lw         $a0, 0x14($s0)
/* 181AD4 80245B14 0C050C45 */  jal        hud_element_set_render_pos
/* 181AD8 80245B18 0280302D */   daddu     $a2, $s4, $zero
/* 181ADC 80245B1C 8E040014 */  lw         $a0, 0x14($s0)
/* 181AE0 80245B20 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181AE4 80245B24 00000000 */   nop
/* 181AE8 80245B28 0C093BA4 */  jal        pause_get_menu_msg
/* 181AEC 80245B2C 24040034 */   addiu     $a0, $zero, 0x34
/* 181AF0 80245B30 0040202D */  daddu      $a0, $v0, $zero
/* 181AF4 80245B34 27C80074 */  addiu      $t0, $fp, 0x74
/* 181AF8 80245B38 0100302D */  daddu      $a2, $t0, $zero
/* 181AFC 80245B3C 8FA50054 */  lw         $a1, 0x54($sp)
/* 181B00 80245B40 240700FF */  addiu      $a3, $zero, 0xFF
/* 181B04 80245B44 AFA8005C */  sw         $t0, 0x5C($sp)
/* 181B08 80245B48 2408000A */  addiu      $t0, $zero, 0xA
/* 181B0C 80245B4C AFA80010 */  sw         $t0, 0x10($sp)
/* 181B10 80245B50 24080001 */  addiu      $t0, $zero, 0x1
/* 181B14 80245B54 0C049227 */  jal        draw_msg
/* 181B18 80245B58 AFA80014 */   sw        $t0, 0x14($sp)
/* 181B1C 80245B5C 0240282D */  daddu      $a1, $s2, $zero
/* 181B20 80245B60 27C60076 */  addiu      $a2, $fp, 0x76
/* 181B24 80245B64 24070001 */  addiu      $a3, $zero, 0x1
/* 181B28 80245B68 3C048011 */  lui        $a0, %hi(gPlayerData + 0xF)
/* 181B2C 80245B6C 9084D67F */  lbu        $a0, %lo(gPlayerData + 0xF)($a0)
/* 181B30 80245B70 2408000A */  addiu      $t0, $zero, 0xA
/* 181B34 80245B74 AFA80010 */  sw         $t0, 0x10($sp)
/* 181B38 80245B78 240800FF */  addiu      $t0, $zero, 0xFF
/* 181B3C 80245B7C AFA80014 */  sw         $t0, 0x14($sp)
/* 181B40 80245B80 0C049693 */  jal        draw_number
/* 181B44 80245B84 AFB30018 */   sw        $s3, 0x18($sp)
/* 181B48 80245B88 0220282D */  daddu      $a1, $s1, $zero
/* 181B4C 80245B8C 8E04002C */  lw         $a0, 0x2C($s0)
/* 181B50 80245B90 0C050C45 */  jal        hud_element_set_render_pos
/* 181B54 80245B94 0280302D */   daddu     $a2, $s4, $zero
/* 181B58 80245B98 8E04002C */  lw         $a0, 0x2C($s0)
/* 181B5C 80245B9C 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181B60 80245BA0 27D10033 */   addiu     $s1, $fp, 0x33
/* 181B64 80245BA4 0000202D */  daddu      $a0, $zero, $zero
/* 181B68 80245BA8 8FA80094 */  lw         $t0, 0x94($sp)
/* 181B6C 80245BAC 27C60023 */  addiu      $a2, $fp, 0x23
/* 181B70 80245BB0 25170015 */  addiu      $s7, $t0, 0x15
/* 181B74 80245BB4 0C093BA9 */  jal        pause_draw_menu_label
/* 181B78 80245BB8 02E0282D */   daddu     $a1, $s7, $zero
/* 181B7C 80245BBC 27C60039 */  addiu      $a2, $fp, 0x39
/* 181B80 80245BC0 8FA80094 */  lw         $t0, 0x94($sp)
/* 181B84 80245BC4 8E04001C */  lw         $a0, 0x1C($s0)
/* 181B88 80245BC8 25160034 */  addiu      $s6, $t0, 0x34
/* 181B8C 80245BCC 0C050C45 */  jal        hud_element_set_render_pos
/* 181B90 80245BD0 02C0282D */   daddu     $a1, $s6, $zero
/* 181B94 80245BD4 8E04001C */  lw         $a0, 0x1C($s0)
/* 181B98 80245BD8 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181B9C 80245BDC 27D20053 */   addiu     $s2, $fp, 0x53
/* 181BA0 80245BE0 0C093BA4 */  jal        pause_get_menu_msg
/* 181BA4 80245BE4 24040036 */   addiu     $a0, $zero, 0x36
/* 181BA8 80245BE8 0040202D */  daddu      $a0, $v0, $zero
/* 181BAC 80245BEC 27C60030 */  addiu      $a2, $fp, 0x30
/* 181BB0 80245BF0 8FA80094 */  lw         $t0, 0x94($sp)
/* 181BB4 80245BF4 240700FF */  addiu      $a3, $zero, 0xFF
/* 181BB8 80245BF8 AFA00010 */  sw         $zero, 0x10($sp)
/* 181BBC 80245BFC 25150011 */  addiu      $s5, $t0, 0x11
/* 181BC0 80245C00 02A0282D */  daddu      $a1, $s5, $zero
/* 181BC4 80245C04 24080001 */  addiu      $t0, $zero, 0x1
/* 181BC8 80245C08 0C049227 */  jal        draw_msg
/* 181BCC 80245C0C AFA80014 */   sw        $t0, 0x14($sp)
/* 181BD0 80245C10 0220302D */  daddu      $a2, $s1, $zero
/* 181BD4 80245C14 8FA80094 */  lw         $t0, 0x94($sp)
/* 181BD8 80245C18 3C048011 */  lui        $a0, %hi(gPlayerData + 0x2)
/* 181BDC 80245C1C 8084D672 */  lb         $a0, %lo(gPlayerData + 0x2)($a0)
/* 181BE0 80245C20 24070001 */  addiu      $a3, $zero, 0x1
/* 181BE4 80245C24 AFA00010 */  sw         $zero, 0x10($sp)
/* 181BE8 80245C28 AFB30018 */  sw         $s3, 0x18($sp)
/* 181BEC 80245C2C 2514004E */  addiu      $s4, $t0, 0x4E
/* 181BF0 80245C30 0280282D */  daddu      $a1, $s4, $zero
/* 181BF4 80245C34 240800FF */  addiu      $t0, $zero, 0xFF
/* 181BF8 80245C38 0C049693 */  jal        draw_number
/* 181BFC 80245C3C AFA80014 */   sw        $t0, 0x14($sp)
/* 181C00 80245C40 0C093BA4 */  jal        pause_get_menu_msg
/* 181C04 80245C44 24040039 */   addiu     $a0, $zero, 0x39
/* 181C08 80245C48 0040202D */  daddu      $a0, $v0, $zero
/* 181C0C 80245C4C 27C60031 */  addiu      $a2, $fp, 0x31
/* 181C10 80245C50 8FA80094 */  lw         $t0, 0x94($sp)
/* 181C14 80245C54 240700FF */  addiu      $a3, $zero, 0xFF
/* 181C18 80245C58 AFA00010 */  sw         $zero, 0x10($sp)
/* 181C1C 80245C5C 25080050 */  addiu      $t0, $t0, 0x50
/* 181C20 80245C60 0100282D */  daddu      $a1, $t0, $zero
/* 181C24 80245C64 AFA80060 */  sw         $t0, 0x60($sp)
/* 181C28 80245C68 24080001 */  addiu      $t0, $zero, 0x1
/* 181C2C 80245C6C 0C049227 */  jal        draw_msg
/* 181C30 80245C70 AFA80014 */   sw        $t0, 0x14($sp)
/* 181C34 80245C74 0220302D */  daddu      $a2, $s1, $zero
/* 181C38 80245C78 8FA80094 */  lw         $t0, 0x94($sp)
/* 181C3C 80245C7C 3C048011 */  lui        $a0, %hi(gPlayerData + 0x3)
/* 181C40 80245C80 8084D673 */  lb         $a0, %lo(gPlayerData + 0x3)($a0)
/* 181C44 80245C84 24070001 */  addiu      $a3, $zero, 0x1
/* 181C48 80245C88 AFA00010 */  sw         $zero, 0x10($sp)
/* 181C4C 80245C8C AFB30018 */  sw         $s3, 0x18($sp)
/* 181C50 80245C90 2508006E */  addiu      $t0, $t0, 0x6E
/* 181C54 80245C94 0100282D */  daddu      $a1, $t0, $zero
/* 181C58 80245C98 AFA80064 */  sw         $t0, 0x64($sp)
/* 181C5C 80245C9C 240800FF */  addiu      $t0, $zero, 0xFF
/* 181C60 80245CA0 0C049693 */  jal        draw_number
/* 181C64 80245CA4 AFA80014 */   sw        $t0, 0x14($sp)
/* 181C68 80245CA8 24040001 */  addiu      $a0, $zero, 0x1
/* 181C6C 80245CAC 02E0282D */  daddu      $a1, $s7, $zero
/* 181C70 80245CB0 0C093BA9 */  jal        pause_draw_menu_label
/* 181C74 80245CB4 27C60045 */   addiu     $a2, $fp, 0x45
/* 181C78 80245CB8 02C0282D */  daddu      $a1, $s6, $zero
/* 181C7C 80245CBC 8E040020 */  lw         $a0, 0x20($s0)
/* 181C80 80245CC0 0C050C45 */  jal        hud_element_set_render_pos
/* 181C84 80245CC4 27C6005C */   addiu     $a2, $fp, 0x5C
/* 181C88 80245CC8 8E040020 */  lw         $a0, 0x20($s0)
/* 181C8C 80245CCC 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181C90 80245CD0 27D10055 */   addiu     $s1, $fp, 0x55
/* 181C94 80245CD4 0C093BA4 */  jal        pause_get_menu_msg
/* 181C98 80245CD8 24040037 */   addiu     $a0, $zero, 0x37
/* 181C9C 80245CDC 0040202D */  daddu      $a0, $v0, $zero
/* 181CA0 80245CE0 02A0282D */  daddu      $a1, $s5, $zero
/* 181CA4 80245CE4 0240302D */  daddu      $a2, $s2, $zero
/* 181CA8 80245CE8 240700FF */  addiu      $a3, $zero, 0xFF
/* 181CAC 80245CEC 24080001 */  addiu      $t0, $zero, 0x1
/* 181CB0 80245CF0 AFA00010 */  sw         $zero, 0x10($sp)
/* 181CB4 80245CF4 0C049227 */  jal        draw_msg
/* 181CB8 80245CF8 AFA80014 */   sw        $t0, 0x14($sp)
/* 181CBC 80245CFC 0280282D */  daddu      $a1, $s4, $zero
/* 181CC0 80245D00 0220302D */  daddu      $a2, $s1, $zero
/* 181CC4 80245D04 24070001 */  addiu      $a3, $zero, 0x1
/* 181CC8 80245D08 3C048011 */  lui        $a0, %hi(gPlayerData + 0x5)
/* 181CCC 80245D0C 8084D675 */  lb         $a0, %lo(gPlayerData + 0x5)($a0)
/* 181CD0 80245D10 240800FF */  addiu      $t0, $zero, 0xFF
/* 181CD4 80245D14 AFA00010 */  sw         $zero, 0x10($sp)
/* 181CD8 80245D18 AFA80014 */  sw         $t0, 0x14($sp)
/* 181CDC 80245D1C 0C049693 */  jal        draw_number
/* 181CE0 80245D20 AFB30018 */   sw        $s3, 0x18($sp)
/* 181CE4 80245D24 0C093BA4 */  jal        pause_get_menu_msg
/* 181CE8 80245D28 24040039 */   addiu     $a0, $zero, 0x39
/* 181CEC 80245D2C 0040202D */  daddu      $a0, $v0, $zero
/* 181CF0 80245D30 0240302D */  daddu      $a2, $s2, $zero
/* 181CF4 80245D34 240700FF */  addiu      $a3, $zero, 0xFF
/* 181CF8 80245D38 8FA50060 */  lw         $a1, 0x60($sp)
/* 181CFC 80245D3C 24080001 */  addiu      $t0, $zero, 0x1
/* 181D00 80245D40 AFA00010 */  sw         $zero, 0x10($sp)
/* 181D04 80245D44 0C049227 */  jal        draw_msg
/* 181D08 80245D48 AFA80014 */   sw        $t0, 0x14($sp)
/* 181D0C 80245D4C 0220302D */  daddu      $a2, $s1, $zero
/* 181D10 80245D50 24070001 */  addiu      $a3, $zero, 0x1
/* 181D14 80245D54 8FA50064 */  lw         $a1, 0x64($sp)
/* 181D18 80245D58 3C048011 */  lui        $a0, %hi(gPlayerData + 0x6)
/* 181D1C 80245D5C 8084D676 */  lb         $a0, %lo(gPlayerData + 0x6)($a0)
/* 181D20 80245D60 240800FF */  addiu      $t0, $zero, 0xFF
/* 181D24 80245D64 AFA00010 */  sw         $zero, 0x10($sp)
/* 181D28 80245D68 AFA80014 */  sw         $t0, 0x14($sp)
/* 181D2C 80245D6C 0C049693 */  jal        draw_number
/* 181D30 80245D70 AFB30018 */   sw        $s3, 0x18($sp)
/* 181D34 80245D74 24040002 */  addiu      $a0, $zero, 0x2
/* 181D38 80245D78 8FA60058 */  lw         $a2, 0x58($sp)
/* 181D3C 80245D7C 0C093BA9 */  jal        pause_draw_menu_label
/* 181D40 80245D80 02E0282D */   daddu     $a1, $s7, $zero
/* 181D44 80245D84 02C0282D */  daddu      $a1, $s6, $zero
/* 181D48 80245D88 8E040024 */  lw         $a0, 0x24($s0)
/* 181D4C 80245D8C 0C050C45 */  jal        hud_element_set_render_pos
/* 181D50 80245D90 27C6007E */   addiu     $a2, $fp, 0x7E
/* 181D54 80245D94 8E040024 */  lw         $a0, 0x24($s0)
/* 181D58 80245D98 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181D5C 80245D9C 00000000 */   nop
/* 181D60 80245DA0 0C093BA4 */  jal        pause_get_menu_msg
/* 181D64 80245DA4 24040038 */   addiu     $a0, $zero, 0x38
/* 181D68 80245DA8 0040202D */  daddu      $a0, $v0, $zero
/* 181D6C 80245DAC 02A0282D */  daddu      $a1, $s5, $zero
/* 181D70 80245DB0 240700FF */  addiu      $a3, $zero, 0xFF
/* 181D74 80245DB4 8FA6005C */  lw         $a2, 0x5C($sp)
/* 181D78 80245DB8 24080001 */  addiu      $t0, $zero, 0x1
/* 181D7C 80245DBC AFA00010 */  sw         $zero, 0x10($sp)
/* 181D80 80245DC0 0C049227 */  jal        draw_msg
/* 181D84 80245DC4 AFA80014 */   sw        $t0, 0x14($sp)
/* 181D88 80245DC8 0280282D */  daddu      $a1, $s4, $zero
/* 181D8C 80245DCC 27C60077 */  addiu      $a2, $fp, 0x77
/* 181D90 80245DD0 24070001 */  addiu      $a3, $zero, 0x1
/* 181D94 80245DD4 3C048011 */  lui        $a0, %hi(gPlayerData + 0x8)
/* 181D98 80245DD8 8084D678 */  lb         $a0, %lo(gPlayerData + 0x8)($a0)
/* 181D9C 80245DDC 240800FF */  addiu      $t0, $zero, 0xFF
/* 181DA0 80245DE0 AFA00010 */  sw         $zero, 0x10($sp)
/* 181DA4 80245DE4 AFA80014 */  sw         $t0, 0x14($sp)
/* 181DA8 80245DE8 0C049693 */  jal        draw_number
/* 181DAC 80245DEC AFB30018 */   sw        $s3, 0x18($sp)
/* 181DB0 80245DF0 8FA50050 */  lw         $a1, 0x50($sp)
/* 181DB4 80245DF4 8E040018 */  lw         $a0, 0x18($s0)
/* 181DB8 80245DF8 0C050C45 */  jal        hud_element_set_render_pos
/* 181DBC 80245DFC 27C6008C */   addiu     $a2, $fp, 0x8C
/* 181DC0 80245E00 8E040018 */  lw         $a0, 0x18($s0)
/* 181DC4 80245E04 0C050BDC */  jal        hud_element_draw_without_clipping
/* 181DC8 80245E08 00000000 */   nop
/* 181DCC 80245E0C 0C093BA4 */  jal        pause_get_menu_msg
/* 181DD0 80245E10 24040035 */   addiu     $a0, $zero, 0x35
/* 181DD4 80245E14 0040202D */  daddu      $a0, $v0, $zero
/* 181DD8 80245E18 27C60085 */  addiu      $a2, $fp, 0x85
/* 181DDC 80245E1C 240700FF */  addiu      $a3, $zero, 0xFF
/* 181DE0 80245E20 8FA50054 */  lw         $a1, 0x54($sp)
/* 181DE4 80245E24 2408000A */  addiu      $t0, $zero, 0xA
/* 181DE8 80245E28 AFA80010 */  sw         $t0, 0x10($sp)
/* 181DEC 80245E2C 24080001 */  addiu      $t0, $zero, 0x1
/* 181DF0 80245E30 0C049227 */  jal        draw_msg
/* 181DF4 80245E34 AFA80014 */   sw        $t0, 0x14($sp)
/* 181DF8 80245E38 3C020149 */  lui        $v0, (0x14996FF >> 16)
/* 181DFC 80245E3C 3C158011 */  lui        $s5, %hi(gPlayerData + 0x2BC)
/* 181E00 80245E40 8EB5D92C */  lw         $s5, %lo(gPlayerData + 0x2BC)($s5)
/* 181E04 80245E44 344296FF */  ori        $v0, $v0, (0x14996FF & 0xFFFF)
/* 181E08 80245E48 0055102A */  slt        $v0, $v0, $s5
/* 181E0C 80245E4C 10400003 */  beqz       $v0, .L80245E5C
/* 181E10 80245E50 3C021F11 */   lui       $v0, (0x1F11A4A5 >> 16)
/* 181E14 80245E54 3C150149 */  lui        $s5, (0x14996FF >> 16)
/* 181E18 80245E58 36B596FF */  ori        $s5, $s5, (0x14996FF & 0xFFFF)
.L80245E5C:
/* 181E1C 80245E5C 3442A4A5 */  ori        $v0, $v0, (0x1F11A4A5 & 0xFFFF)
/* 181E20 80245E60 3C036666 */  lui        $v1, (0x66666667 >> 16)
/* 181E24 80245E64 34636667 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* 181E28 80245E68 27D30087 */  addiu      $s3, $fp, 0x87
/* 181E2C 80245E6C 0260302D */  daddu      $a2, $s3, $zero
/* 181E30 80245E70 24070001 */  addiu      $a3, $zero, 0x1
/* 181E34 80245E74 0015A7C3 */  sra        $s4, $s5, 31
/* 181E38 80245E78 02A20018 */  mult       $s5, $v0
/* 181E3C 80245E7C 8FA80094 */  lw         $t0, 0x94($sp)
/* 181E40 80245E80 24120002 */  addiu      $s2, $zero, 0x2
/* 181E44 80245E84 AFB20018 */  sw         $s2, 0x18($sp)
/* 181E48 80245E88 250500ED */  addiu      $a1, $t0, 0xED
/* 181E4C 80245E8C 00004010 */  mfhi       $t0
/* 181E50 80245E90 00088483 */  sra        $s0, $t0, 18
/* 181E54 80245E94 02148023 */  subu       $s0, $s0, $s4
/* 181E58 80245E98 2408000A */  addiu      $t0, $zero, 0xA
/* 181E5C 80245E9C 02030018 */  mult       $s0, $v1
/* 181E60 80245EA0 AFA80010 */  sw         $t0, 0x10($sp)
/* 181E64 80245EA4 240800FF */  addiu      $t0, $zero, 0xFF
/* 181E68 80245EA8 00101FC3 */  sra        $v1, $s0, 31
/* 181E6C 80245EAC AFA80014 */  sw         $t0, 0x14($sp)
/* 181E70 80245EB0 00004010 */  mfhi       $t0
/* 181E74 80245EB4 02481007 */  srav       $v0, $t0, $s2
/* 181E78 80245EB8 00431023 */  subu       $v0, $v0, $v1
/* 181E7C 80245EBC 02422004 */  sllv       $a0, $v0, $s2
/* 181E80 80245EC0 00822021 */  addu       $a0, $a0, $v0
/* 181E84 80245EC4 00E42004 */  sllv       $a0, $a0, $a3
/* 181E88 80245EC8 0C049693 */  jal        draw_number
/* 181E8C 80245ECC 02042023 */   subu      $a0, $s0, $a0
/* 181E90 80245ED0 3C029B58 */  lui        $v0, (0x9B583739 >> 16)
/* 181E94 80245ED4 34423739 */  ori        $v0, $v0, (0x9B583739 & 0xFFFF)
/* 181E98 80245ED8 0260302D */  daddu      $a2, $s3, $zero
/* 181E9C 80245EDC 24070001 */  addiu      $a3, $zero, 0x1
/* 181EA0 80245EE0 02502004 */  sllv       $a0, $s0, $s2
/* 181EA4 80245EE4 00902021 */  addu       $a0, $a0, $s0
/* 181EA8 80245EE8 00E42004 */  sllv       $a0, $a0, $a3
/* 181EAC 80245EEC 8FA80094 */  lw         $t0, 0x94($sp)
/* 181EB0 80245EF0 02A20018 */  mult       $s5, $v0
/* 181EB4 80245EF4 AFB20018 */  sw         $s2, 0x18($sp)
/* 181EB8 80245EF8 250500F6 */  addiu      $a1, $t0, 0xF6
/* 181EBC 80245EFC 2408000A */  addiu      $t0, $zero, 0xA
/* 181EC0 80245F00 AFA80010 */  sw         $t0, 0x10($sp)
/* 181EC4 80245F04 240800FF */  addiu      $t0, $zero, 0xFF
/* 181EC8 80245F08 AFA80014 */  sw         $t0, 0x14($sp)
/* 181ECC 80245F0C 00004010 */  mfhi       $t0
/* 181ED0 80245F10 01158821 */  addu       $s1, $t0, $s5
/* 181ED4 80245F14 00118C43 */  sra        $s1, $s1, 17
/* 181ED8 80245F18 02348823 */  subu       $s1, $s1, $s4
/* 181EDC 80245F1C 0C049693 */  jal        draw_number
/* 181EE0 80245F20 02242023 */   subu      $a0, $s1, $a0
/* 181EE4 80245F24 0C093BA4 */  jal        pause_get_menu_msg
/* 181EE8 80245F28 2404003A */   addiu     $a0, $zero, 0x3A
/* 181EEC 80245F2C 0040202D */  daddu      $a0, $v0, $zero
/* 181EF0 80245F30 27C60084 */  addiu      $a2, $fp, 0x84
/* 181EF4 80245F34 8FA80094 */  lw         $t0, 0x94($sp)
/* 181EF8 80245F38 240700FF */  addiu      $a3, $zero, 0xFF
/* 181EFC 80245F3C 25100101 */  addiu      $s0, $t0, 0x101
/* 181F00 80245F40 0200282D */  daddu      $a1, $s0, $zero
/* 181F04 80245F44 2408000A */  addiu      $t0, $zero, 0xA
/* 181F08 80245F48 AFA80010 */  sw         $t0, 0x10($sp)
/* 181F0C 80245F4C 24080001 */  addiu      $t0, $zero, 0x1
/* 181F10 80245F50 0C049227 */  jal        draw_msg
/* 181F14 80245F54 AFA80014 */   sw        $t0, 0x14($sp)
/* 181F18 80245F58 0C093BA4 */  jal        pause_get_menu_msg
/* 181F1C 80245F5C 2404003A */   addiu     $a0, $zero, 0x3A
/* 181F20 80245F60 0040202D */  daddu      $a0, $v0, $zero
/* 181F24 80245F64 0200282D */  daddu      $a1, $s0, $zero
/* 181F28 80245F68 27C6007F */  addiu      $a2, $fp, 0x7F
/* 181F2C 80245F6C 240700FF */  addiu      $a3, $zero, 0xFF
/* 181F30 80245F70 2408000A */  addiu      $t0, $zero, 0xA
/* 181F34 80245F74 AFA80010 */  sw         $t0, 0x10($sp)
/* 181F38 80245F78 24080001 */  addiu      $t0, $zero, 0x1
/* 181F3C 80245F7C 0C049227 */  jal        draw_msg
/* 181F40 80245F80 AFA80014 */   sw        $t0, 0x14($sp)
/* 181F44 80245F84 3C027482 */  lui        $v0, (0x7482296B >> 16)
/* 181F48 80245F88 3442296B */  ori        $v0, $v0, (0x7482296B & 0xFFFF)
/* 181F4C 80245F8C 0260302D */  daddu      $a2, $s3, $zero
/* 181F50 80245F90 24070001 */  addiu      $a3, $zero, 0x1
/* 181F54 80245F94 00F12004 */  sllv       $a0, $s1, $a3
/* 181F58 80245F98 00912021 */  addu       $a0, $a0, $s1
/* 181F5C 80245F9C 00E42004 */  sllv       $a0, $a0, $a3
/* 181F60 80245FA0 8FA80094 */  lw         $t0, 0x94($sp)
/* 181F64 80245FA4 02A20018 */  mult       $s5, $v0
/* 181F68 80245FA8 AFB20018 */  sw         $s2, 0x18($sp)
/* 181F6C 80245FAC 25050108 */  addiu      $a1, $t0, 0x108
/* 181F70 80245FB0 2408000A */  addiu      $t0, $zero, 0xA
/* 181F74 80245FB4 AFA80010 */  sw         $t0, 0x10($sp)
/* 181F78 80245FB8 240800FF */  addiu      $t0, $zero, 0xFF
/* 181F7C 80245FBC AFA80014 */  sw         $t0, 0x14($sp)
/* 181F80 80245FC0 00004010 */  mfhi       $t0
/* 181F84 80245FC4 00088383 */  sra        $s0, $t0, 14
/* 181F88 80245FC8 02148023 */  subu       $s0, $s0, $s4
/* 181F8C 80245FCC 0C049693 */  jal        draw_number
/* 181F90 80245FD0 02042023 */   subu      $a0, $s0, $a0
/* 181F94 80245FD4 3C0291A2 */  lui        $v0, (0x91A2B3C5 >> 16)
/* 181F98 80245FD8 3442B3C5 */  ori        $v0, $v0, (0x91A2B3C5 & 0xFFFF)
/* 181F9C 80245FDC 0260302D */  daddu      $a2, $s3, $zero
/* 181FA0 80245FE0 24070001 */  addiu      $a3, $zero, 0x1
/* 181FA4 80245FE4 02502004 */  sllv       $a0, $s0, $s2
/* 181FA8 80245FE8 00902021 */  addu       $a0, $a0, $s0
/* 181FAC 80245FEC 00E42004 */  sllv       $a0, $a0, $a3
/* 181FB0 80245FF0 8FA80094 */  lw         $t0, 0x94($sp)
/* 181FB4 80245FF4 02A20018 */  mult       $s5, $v0
/* 181FB8 80245FF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 181FBC 80245FFC 25050111 */  addiu      $a1, $t0, 0x111
/* 181FC0 80246000 2408000A */  addiu      $t0, $zero, 0xA
/* 181FC4 80246004 AFA80010 */  sw         $t0, 0x10($sp)
/* 181FC8 80246008 240800FF */  addiu      $t0, $zero, 0xFF
/* 181FCC 8024600C AFA80014 */  sw         $t0, 0x14($sp)
/* 181FD0 80246010 00004010 */  mfhi       $t0
/* 181FD4 80246014 01151021 */  addu       $v0, $t0, $s5
/* 181FD8 80246018 000212C3 */  sra        $v0, $v0, 11
/* 181FDC 8024601C 00541023 */  subu       $v0, $v0, $s4
/* 181FE0 80246020 0C049693 */  jal        draw_number
/* 181FE4 80246024 00442023 */   subu      $a0, $v0, $a0
/* 181FE8 80246028 3C028011 */  lui        $v0, %hi(gPlayerData + 0x0)
/* 181FEC 8024602C 9042D670 */  lbu        $v0, %lo(gPlayerData + 0x0)($v0)
/* 181FF0 80246030 3C038011 */  lui        $v1, %hi(gPlayerData + 0x1)
/* 181FF4 80246034 9063D671 */  lbu        $v1, %lo(gPlayerData + 0x1)($v1)
/* 181FF8 80246038 8FA80094 */  lw         $t0, 0x94($sp)
/* 181FFC 8024603C 27C7000C */  addiu      $a3, $fp, 0xC
/* 182000 80246040 AFA00010 */  sw         $zero, 0x10($sp)
/* 182004 80246044 00021600 */  sll        $v0, $v0, 24
/* 182008 80246048 00029603 */  sra        $s2, $v0, 24
/* 18200C 8024604C 00031E00 */  sll        $v1, $v1, 24
/* 182010 80246050 0003A603 */  sra        $s4, $v1, 24
/* 182014 80246054 3C028011 */  lui        $v0, %hi(gPlayerData + 0x9)
/* 182018 80246058 9042D679 */  lbu        $v0, %lo(gPlayerData + 0x9)($v0)
/* 18201C 8024605C 00021600 */  sll        $v0, $v0, 24
/* 182020 80246060 00029E03 */  sra        $s3, $v0, 24
/* 182024 80246064 0260102D */  daddu      $v0, $s3, $zero
/* 182028 80246068 2842000A */  slti       $v0, $v0, 0xA
/* 18202C 8024606C 14400003 */  bnez       $v0, .L8024607C
/* 182030 80246070 25060007 */   addiu     $a2, $t0, 0x7
/* 182034 80246074 08091820 */  j          .L80246080
/* 182038 80246078 24020079 */   addiu     $v0, $zero, 0x79
.L8024607C:
/* 18203C 8024607C 24020071 */  addiu      $v0, $zero, 0x71
.L80246080:
/* 182040 80246080 AFA20014 */  sw         $v0, 0x14($sp)
/* 182044 80246084 24040004 */  addiu      $a0, $zero, 0x4
/* 182048 80246088 3C058027 */  lui        $a1, %hi(gPauseWS_10)
/* 18204C 8024608C 24A5FBB0 */  addiu      $a1, $a1, %lo(gPauseWS_10)
/* 182050 80246090 24020011 */  addiu      $v0, $zero, 0x11
/* 182054 80246094 241100FF */  addiu      $s1, $zero, 0xFF
/* 182058 80246098 AFA20018 */  sw         $v0, 0x18($sp)
/* 18205C 8024609C 24020140 */  addiu      $v0, $zero, 0x140
/* 182060 802460A0 AFA20044 */  sw         $v0, 0x44($sp)
/* 182064 802460A4 240200F0 */  addiu      $v0, $zero, 0xF0
/* 182068 802460A8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 18206C 802460AC AFA00020 */  sw         $zero, 0x20($sp)
/* 182070 802460B0 AFA00024 */  sw         $zero, 0x24($sp)
/* 182074 802460B4 AFA00028 */  sw         $zero, 0x28($sp)
/* 182078 802460B8 AFA0002C */  sw         $zero, 0x2C($sp)
/* 18207C 802460BC AFA00030 */  sw         $zero, 0x30($sp)
/* 182080 802460C0 AFA00034 */  sw         $zero, 0x34($sp)
/* 182084 802460C4 AFA00038 */  sw         $zero, 0x38($sp)
/* 182088 802460C8 AFA0003C */  sw         $zero, 0x3C($sp)
/* 18208C 802460CC AFA00040 */  sw         $zero, 0x40($sp)
/* 182090 802460D0 AFA20048 */  sw         $v0, 0x48($sp)
/* 182094 802460D4 0C03CDB0 */  jal        draw_box
/* 182098 802460D8 AFA0004C */   sw        $zero, 0x4C($sp)
/* 18209C 802460DC 0C093BA4 */  jal        pause_get_menu_msg
/* 1820A0 802460E0 24040043 */   addiu     $a0, $zero, 0x43
/* 1820A4 802460E4 0040202D */  daddu      $a0, $v0, $zero
/* 1820A8 802460E8 27D0000E */  addiu      $s0, $fp, 0xE
/* 1820AC 802460EC 0200302D */  daddu      $a2, $s0, $zero
/* 1820B0 802460F0 0220382D */  daddu      $a3, $s1, $zero
/* 1820B4 802460F4 8FA80094 */  lw         $t0, 0x94($sp)
/* 1820B8 802460F8 24160001 */  addiu      $s6, $zero, 0x1
/* 1820BC 802460FC AFA00010 */  sw         $zero, 0x10($sp)
/* 1820C0 80246100 AFB60014 */  sw         $s6, 0x14($sp)
/* 1820C4 80246104 0C049227 */  jal        draw_msg
/* 1820C8 80246108 25050010 */   addiu     $a1, $t0, 0x10
/* 1820CC 8024610C 0C093BA4 */  jal        pause_get_menu_msg
/* 1820D0 80246110 24040044 */   addiu     $a0, $zero, 0x44
/* 1820D4 80246114 0040202D */  daddu      $a0, $v0, $zero
/* 1820D8 80246118 0200302D */  daddu      $a2, $s0, $zero
/* 1820DC 8024611C 8FA80094 */  lw         $t0, 0x94($sp)
/* 1820E0 80246120 0220382D */  daddu      $a3, $s1, $zero
/* 1820E4 80246124 AFA00010 */  sw         $zero, 0x10($sp)
/* 1820E8 80246128 AFB60014 */  sw         $s6, 0x14($sp)
/* 1820EC 8024612C 0C049227 */  jal        draw_msg
/* 1820F0 80246130 2505003C */   addiu     $a1, $t0, 0x3C
/* 1820F4 80246134 00132400 */  sll        $a0, $s3, 16
/* 1820F8 80246138 00042403 */  sra        $a0, $a0, 16
/* 1820FC 8024613C 27C60010 */  addiu      $a2, $fp, 0x10
/* 182100 80246140 02C0382D */  daddu      $a3, $s6, $zero
/* 182104 80246144 8FA80094 */  lw         $t0, 0x94($sp)
/* 182108 80246148 24020002 */  addiu      $v0, $zero, 0x2
/* 18210C 8024614C AFA00010 */  sw         $zero, 0x10($sp)
/* 182110 80246150 AFB10014 */  sw         $s1, 0x14($sp)
/* 182114 80246154 AFA20018 */  sw         $v0, 0x18($sp)
/* 182118 80246158 0C049693 */  jal        draw_number
/* 18211C 8024615C 25050064 */   addiu     $a1, $t0, 0x64
/* 182120 80246160 02561021 */  addu       $v0, $s2, $s6
/* 182124 80246164 0040902D */  daddu      $s2, $v0, $zero
/* 182128 80246168 00021400 */  sll        $v0, $v0, 16
/* 18212C 8024616C 04420001 */  bltzl      $v0, .L80246174
/* 182130 80246170 0000902D */   daddu     $s2, $zero, $zero
.L80246174:
/* 182134 80246174 00121400 */  sll        $v0, $s2, 16
/* 182138 80246178 00021403 */  sra        $v0, $v0, 16
/* 18213C 8024617C 28420004 */  slti       $v0, $v0, 0x4
/* 182140 80246180 50400001 */  beql       $v0, $zero, .L80246188
/* 182144 80246184 24120003 */   addiu     $s2, $zero, 0x3
.L80246188:
/* 182148 80246188 26820001 */  addiu      $v0, $s4, 0x1
/* 18214C 8024618C 0040A02D */  daddu      $s4, $v0, $zero
/* 182150 80246190 00021400 */  sll        $v0, $v0, 16
/* 182154 80246194 04420001 */  bltzl      $v0, .L8024619C
/* 182158 80246198 0000A02D */   daddu     $s4, $zero, $zero
.L8024619C:
/* 18215C 8024619C 00141400 */  sll        $v0, $s4, 16
/* 182160 802461A0 00021403 */  sra        $v0, $v0, 16
/* 182164 802461A4 28420004 */  slti       $v0, $v0, 0x4
/* 182168 802461A8 50400001 */  beql       $v0, $zero, .L802461B0
/* 18216C 802461AC 24140003 */   addiu     $s4, $zero, 0x3
.L802461B0:
/* 182170 802461B0 24040003 */  addiu      $a0, $zero, 0x3
/* 182174 802461B4 8FA80094 */  lw         $t0, 0x94($sp)
/* 182178 802461B8 27C6000A */  addiu      $a2, $fp, 0xA
/* 18217C 802461BC 25100089 */  addiu      $s0, $t0, 0x89
/* 182180 802461C0 0C093BA9 */  jal        pause_draw_menu_label
/* 182184 802461C4 0200282D */   daddu     $a1, $s0, $zero
/* 182188 802461C8 24040004 */  addiu      $a0, $zero, 0x4
/* 18218C 802461CC 0200282D */  daddu      $a1, $s0, $zero
/* 182190 802461D0 0C093BA9 */  jal        pause_draw_menu_label
/* 182194 802461D4 27C60023 */   addiu     $a2, $fp, 0x23
/* 182198 802461D8 3C118027 */  lui        $s1, %hi(gPauseStatsIconIDs)
/* 18219C 802461DC 263101D0 */  addiu      $s1, $s1, %lo(gPauseStatsIconIDs)
/* 1821A0 802461E0 00128400 */  sll        $s0, $s2, 16
/* 1821A4 802461E4 00108383 */  sra        $s0, $s0, 14
/* 1821A8 802461E8 8E240004 */  lw         $a0, 0x4($s1)
/* 1821AC 802461EC 3C058025 */  lui        $a1, %hi(gStatsBootsElements)
/* 1821B0 802461F0 00B02821 */  addu       $a1, $a1, $s0
/* 1821B4 802461F4 0C050BE3 */  jal        hud_element_set_script
/* 1821B8 802461F8 8CA5F370 */   lw        $a1, %lo(gStatsBootsElements)($a1)
/* 1821BC 802461FC 27C6001D */  addiu      $a2, $fp, 0x1D
/* 1821C0 80246200 8FA80094 */  lw         $t0, 0x94($sp)
/* 1821C4 80246204 8E240004 */  lw         $a0, 0x4($s1)
/* 1821C8 80246208 251200A3 */  addiu      $s2, $t0, 0xA3
/* 1821CC 8024620C 0C050C45 */  jal        hud_element_set_render_pos
/* 1821D0 80246210 0240282D */   daddu     $a1, $s2, $zero
/* 1821D4 80246214 8E240004 */  lw         $a0, 0x4($s1)
/* 1821D8 80246218 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1821DC 8024621C 00000000 */   nop
/* 1821E0 80246220 3C048025 */  lui        $a0, %hi(gPauseStatsBootsMessages)
/* 1821E4 80246224 00902021 */  addu       $a0, $a0, $s0
/* 1821E8 80246228 8C84F390 */  lw         $a0, %lo(gPauseStatsBootsMessages)($a0)
/* 1821EC 8024622C 0C093BA4 */  jal        pause_get_menu_msg
/* 1821F0 80246230 00148400 */   sll       $s0, $s4, 16
/* 1821F4 80246234 0040202D */  daddu      $a0, $v0, $zero
/* 1821F8 80246238 27C60017 */  addiu      $a2, $fp, 0x17
/* 1821FC 8024623C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182200 80246240 240700FF */  addiu      $a3, $zero, 0xFF
/* 182204 80246244 AFA00010 */  sw         $zero, 0x10($sp)
/* 182208 80246248 AFB60014 */  sw         $s6, 0x14($sp)
/* 18220C 8024624C 251300B0 */  addiu      $s3, $t0, 0xB0
/* 182210 80246250 0C049227 */  jal        draw_msg
/* 182214 80246254 0260282D */   daddu     $a1, $s3, $zero
/* 182218 80246258 00108383 */  sra        $s0, $s0, 14
/* 18221C 8024625C 8E240008 */  lw         $a0, 0x8($s1)
/* 182220 80246260 3C058025 */  lui        $a1, %hi(gStatsHammerElements)
/* 182224 80246264 00B02821 */  addu       $a1, $a1, $s0
/* 182228 80246268 8CA5F380 */  lw         $a1, %lo(gStatsHammerElements)($a1)
/* 18222C 8024626C 0C050BE3 */  jal        hud_element_set_script
/* 182230 80246270 24140001 */   addiu     $s4, $zero, 0x1
/* 182234 80246274 0240282D */  daddu      $a1, $s2, $zero
/* 182238 80246278 8E240008 */  lw         $a0, 0x8($s1)
/* 18223C 8024627C 0C050C45 */  jal        hud_element_set_render_pos
/* 182240 80246280 27C60036 */   addiu     $a2, $fp, 0x36
/* 182244 80246284 8E240008 */  lw         $a0, 0x8($s1)
/* 182248 80246288 0C050BDC */  jal        hud_element_draw_without_clipping
/* 18224C 8024628C 0000902D */   daddu     $s2, $zero, $zero
/* 182250 80246290 3C048025 */  lui        $a0, %hi(gPauseStatsHammerMessages)
/* 182254 80246294 00902021 */  addu       $a0, $a0, $s0
/* 182258 80246298 8C84F3A0 */  lw         $a0, %lo(gPauseStatsHammerMessages)($a0)
/* 18225C 8024629C 0C093BA4 */  jal        pause_get_menu_msg
/* 182260 802462A0 0240A82D */   daddu     $s5, $s2, $zero
/* 182264 802462A4 0040202D */  daddu      $a0, $v0, $zero
/* 182268 802462A8 0260282D */  daddu      $a1, $s3, $zero
/* 18226C 802462AC 27C60030 */  addiu      $a2, $fp, 0x30
/* 182270 802462B0 240700FF */  addiu      $a3, $zero, 0xFF
/* 182274 802462B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 182278 802462B8 0C049227 */  jal        draw_msg
/* 18227C 802462BC AFB60014 */   sw        $s6, 0x14($sp)
/* 182280 802462C0 24040006 */  addiu      $a0, $zero, 0x6
/* 182284 802462C4 8FA80094 */  lw         $t0, 0x94($sp)
/* 182288 802462C8 27C60045 */  addiu      $a2, $fp, 0x45
/* 18228C 802462CC 0C093BA9 */  jal        pause_draw_menu_label
/* 182290 802462D0 25050082 */   addiu     $a1, $t0, 0x82
/* 182294 802462D4 24040005 */  addiu      $a0, $zero, 0x5
/* 182298 802462D8 8FA80094 */  lw         $t0, 0x94($sp)
/* 18229C 802462DC 27C6003C */  addiu      $a2, $fp, 0x3C
/* 1822A0 802462E0 0C093BA9 */  jal        pause_draw_menu_label
/* 1822A4 802462E4 2505008A */   addiu     $a1, $t0, 0x8A
/* 1822A8 802462E8 3C178011 */  lui        $s7, %hi(gPlayerData + 0x0)
/* 1822AC 802462EC 26F7D670 */  addiu      $s7, $s7, %lo(gPlayerData + 0x0)
/* 1822B0 802462F0 0240982D */  daddu      $s3, $s2, $zero
/* 1822B4 802462F4 86E30290 */  lh         $v1, 0x290($s7)
/* 1822B8 802462F8 8E310028 */  lw         $s1, 0x28($s1)
/* 1822BC 802462FC 04610002 */  bgez       $v1, .L80246308
/* 1822C0 80246300 0060102D */   daddu     $v0, $v1, $zero
/* 1822C4 80246304 246200FF */  addiu      $v0, $v1, 0xFF
.L80246308:
/* 1822C8 80246308 00021203 */  sra        $v0, $v0, 8
/* 1822CC 8024630C 0040202D */  daddu      $a0, $v0, $zero
/* 1822D0 80246310 00041200 */  sll        $v0, $a0, 8
/* 1822D4 80246314 00621023 */  subu       $v0, $v1, $v0
/* 1822D8 80246318 00021400 */  sll        $v0, $v0, 16
/* 1822DC 8024631C 0002B403 */  sra        $s6, $v0, 16
/* 1822E0 80246320 06C10002 */  bgez       $s6, .L8024632C
/* 1822E4 80246324 02C0102D */   daddu     $v0, $s6, $zero
/* 1822E8 80246328 26C2001F */  addiu      $v0, $s6, 0x1F
.L8024632C:
/* 1822EC 8024632C 0002B143 */  sra        $s6, $v0, 5
/* 1822F0 80246330 000410C0 */  sll        $v0, $a0, 3
/* 1822F4 80246334 02C2B021 */  addu       $s6, $s6, $v0
/* 1822F8 80246338 02B6102A */  slt        $v0, $s5, $s6
/* 1822FC 8024633C 104000E7 */  beqz       $v0, .L802466DC
/* 182300 80246340 00000000 */   nop
.L80246344:
/* 182304 80246344 26520001 */  addiu      $s2, $s2, 0x1
/* 182308 80246348 00158080 */  sll        $s0, $s5, 2
/* 18230C 8024634C 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 182310 80246350 00B02821 */  addu       $a1, $a1, $s0
/* 182314 80246354 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 182318 80246358 0C050BE3 */  jal        hud_element_set_script
/* 18231C 8024635C 0220202D */   daddu     $a0, $s1, $zero
/* 182320 80246360 0220202D */  daddu      $a0, $s1, $zero
/* 182324 80246364 27C6004B */  addiu      $a2, $fp, 0x4B
/* 182328 80246368 02158021 */  addu       $s0, $s0, $s5
/* 18232C 8024636C 00108080 */  sll        $s0, $s0, 2
/* 182330 80246370 2610008C */  addiu      $s0, $s0, 0x8C
/* 182334 80246374 8FA80094 */  lw         $t0, 0x94($sp)
/* 182338 80246378 3C058025 */  lui        $a1, %hi(D_8024F46C)
/* 18233C 8024637C 8CA5F47C */  lw         $a1, %lo(D_8024F46C)($a1)
/* 182340 80246380 01108021 */  addu       $s0, $t0, $s0
/* 182344 80246384 0C050C45 */  jal        hud_element_set_render_pos
/* 182348 80246388 02052821 */   addu      $a1, $s0, $a1
/* 18234C 8024638C 12800005 */  beqz       $s4, .L802463A4
/* 182350 80246390 00000000 */   nop
/* 182354 80246394 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182358 80246398 0220202D */   daddu     $a0, $s1, $zero
/* 18235C 8024639C 080918EB */  j          .L802463AC
/* 182360 802463A0 0000A02D */   daddu     $s4, $zero, $zero
.L802463A4:
/* 182364 802463A4 0C050BD5 */  jal        hud_element_draw_next
/* 182368 802463A8 0220202D */   daddu     $a0, $s1, $zero
.L802463AC:
/* 18236C 802463AC 0256102A */  slt        $v0, $s2, $s6
/* 182370 802463B0 104000CA */  beqz       $v0, .L802466DC
/* 182374 802463B4 26730001 */   addiu     $s3, $s3, 0x1
/* 182378 802463B8 26520001 */  addiu      $s2, $s2, 0x1
/* 18237C 802463BC 00158080 */  sll        $s0, $s5, 2
/* 182380 802463C0 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 182384 802463C4 00B02821 */  addu       $a1, $a1, $s0
/* 182388 802463C8 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 18238C 802463CC 0C050BE3 */  jal        hud_element_set_script
/* 182390 802463D0 0220202D */   daddu     $a0, $s1, $zero
/* 182394 802463D4 0220202D */  daddu      $a0, $s1, $zero
/* 182398 802463D8 27C6004B */  addiu      $a2, $fp, 0x4B
/* 18239C 802463DC 02158021 */  addu       $s0, $s0, $s5
/* 1823A0 802463E0 00108080 */  sll        $s0, $s0, 2
/* 1823A4 802463E4 2610008C */  addiu      $s0, $s0, 0x8C
/* 1823A8 802463E8 8FA80094 */  lw         $t0, 0x94($sp)
/* 1823AC 802463EC 3C058025 */  lui        $a1, %hi(D_8024F46C+4)
/* 1823B0 802463F0 8CA5F480 */  lw         $a1, %lo(D_8024F46C+4)($a1)
/* 1823B4 802463F4 01108021 */  addu       $s0, $t0, $s0
/* 1823B8 802463F8 0C050C45 */  jal        hud_element_set_render_pos
/* 1823BC 802463FC 02052821 */   addu      $a1, $s0, $a1
/* 1823C0 80246400 12800005 */  beqz       $s4, .L80246418
/* 1823C4 80246404 00000000 */   nop
/* 1823C8 80246408 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1823CC 8024640C 0220202D */   daddu     $a0, $s1, $zero
/* 1823D0 80246410 08091908 */  j          .L80246420
/* 1823D4 80246414 0000A02D */   daddu     $s4, $zero, $zero
.L80246418:
/* 1823D8 80246418 0C050BD5 */  jal        hud_element_draw_next
/* 1823DC 8024641C 0220202D */   daddu     $a0, $s1, $zero
.L80246420:
/* 1823E0 80246420 0256102A */  slt        $v0, $s2, $s6
/* 1823E4 80246424 104000AD */  beqz       $v0, .L802466DC
/* 1823E8 80246428 26730001 */   addiu     $s3, $s3, 0x1
/* 1823EC 8024642C 26520001 */  addiu      $s2, $s2, 0x1
/* 1823F0 80246430 00158080 */  sll        $s0, $s5, 2
/* 1823F4 80246434 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 1823F8 80246438 00B02821 */  addu       $a1, $a1, $s0
/* 1823FC 8024643C 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 182400 80246440 0C050BE3 */  jal        hud_element_set_script
/* 182404 80246444 0220202D */   daddu     $a0, $s1, $zero
/* 182408 80246448 0220202D */  daddu      $a0, $s1, $zero
/* 18240C 8024644C 27C6004B */  addiu      $a2, $fp, 0x4B
/* 182410 80246450 02158021 */  addu       $s0, $s0, $s5
/* 182414 80246454 00108080 */  sll        $s0, $s0, 2
/* 182418 80246458 2610008C */  addiu      $s0, $s0, 0x8C
/* 18241C 8024645C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182420 80246460 3C058025 */  lui        $a1, %hi(D_8024F46C+8)
/* 182424 80246464 8CA5F484 */  lw         $a1, %lo(D_8024F46C+8)($a1)
/* 182428 80246468 01108021 */  addu       $s0, $t0, $s0
/* 18242C 8024646C 0C050C45 */  jal        hud_element_set_render_pos
/* 182430 80246470 02052821 */   addu      $a1, $s0, $a1
/* 182434 80246474 12800005 */  beqz       $s4, .L8024648C
/* 182438 80246478 00000000 */   nop
/* 18243C 8024647C 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182440 80246480 0220202D */   daddu     $a0, $s1, $zero
/* 182444 80246484 08091925 */  j          .L80246494
/* 182448 80246488 0000A02D */   daddu     $s4, $zero, $zero
.L8024648C:
/* 18244C 8024648C 0C050BD5 */  jal        hud_element_draw_next
/* 182450 80246490 0220202D */   daddu     $a0, $s1, $zero
.L80246494:
/* 182454 80246494 0256102A */  slt        $v0, $s2, $s6
/* 182458 80246498 10400090 */  beqz       $v0, .L802466DC
/* 18245C 8024649C 26730001 */   addiu     $s3, $s3, 0x1
/* 182460 802464A0 26520001 */  addiu      $s2, $s2, 0x1
/* 182464 802464A4 00158080 */  sll        $s0, $s5, 2
/* 182468 802464A8 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 18246C 802464AC 00B02821 */  addu       $a1, $a1, $s0
/* 182470 802464B0 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 182474 802464B4 0C050BE3 */  jal        hud_element_set_script
/* 182478 802464B8 0220202D */   daddu     $a0, $s1, $zero
/* 18247C 802464BC 0220202D */  daddu      $a0, $s1, $zero
/* 182480 802464C0 27C6004B */  addiu      $a2, $fp, 0x4B
/* 182484 802464C4 02158021 */  addu       $s0, $s0, $s5
/* 182488 802464C8 00108080 */  sll        $s0, $s0, 2
/* 18248C 802464CC 2610008C */  addiu      $s0, $s0, 0x8C
/* 182490 802464D0 8FA80094 */  lw         $t0, 0x94($sp)
/* 182494 802464D4 3C058025 */  lui        $a1, %hi(D_8024F46C+12)
/* 182498 802464D8 8CA5F488 */  lw         $a1, %lo(D_8024F46C+12)($a1)
/* 18249C 802464DC 01108021 */  addu       $s0, $t0, $s0
/* 1824A0 802464E0 0C050C45 */  jal        hud_element_set_render_pos
/* 1824A4 802464E4 02052821 */   addu      $a1, $s0, $a1
/* 1824A8 802464E8 12800005 */  beqz       $s4, .L80246500
/* 1824AC 802464EC 00000000 */   nop
/* 1824B0 802464F0 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1824B4 802464F4 0220202D */   daddu     $a0, $s1, $zero
/* 1824B8 802464F8 08091942 */  j          .L80246508
/* 1824BC 802464FC 0000A02D */   daddu     $s4, $zero, $zero
.L80246500:
/* 1824C0 80246500 0C050BD5 */  jal        hud_element_draw_next
/* 1824C4 80246504 0220202D */   daddu     $a0, $s1, $zero
.L80246508:
/* 1824C8 80246508 0256102A */  slt        $v0, $s2, $s6
/* 1824CC 8024650C 10400073 */  beqz       $v0, .L802466DC
/* 1824D0 80246510 26730001 */   addiu     $s3, $s3, 0x1
/* 1824D4 80246514 26520001 */  addiu      $s2, $s2, 0x1
/* 1824D8 80246518 00158080 */  sll        $s0, $s5, 2
/* 1824DC 8024651C 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 1824E0 80246520 00B02821 */  addu       $a1, $a1, $s0
/* 1824E4 80246524 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 1824E8 80246528 0C050BE3 */  jal        hud_element_set_script
/* 1824EC 8024652C 0220202D */   daddu     $a0, $s1, $zero
/* 1824F0 80246530 0220202D */  daddu      $a0, $s1, $zero
/* 1824F4 80246534 27C6004B */  addiu      $a2, $fp, 0x4B
/* 1824F8 80246538 02158021 */  addu       $s0, $s0, $s5
/* 1824FC 8024653C 00108080 */  sll        $s0, $s0, 2
/* 182500 80246540 2610008C */  addiu      $s0, $s0, 0x8C
/* 182504 80246544 8FA80094 */  lw         $t0, 0x94($sp)
/* 182508 80246548 3C058025 */  lui        $a1, %hi(D_8024F46C+16)
/* 18250C 8024654C 8CA5F48C */  lw         $a1, %lo(D_8024F46C+16)($a1)
/* 182510 80246550 01108021 */  addu       $s0, $t0, $s0
/* 182514 80246554 0C050C45 */  jal        hud_element_set_render_pos
/* 182518 80246558 02052821 */   addu      $a1, $s0, $a1
/* 18251C 8024655C 12800005 */  beqz       $s4, .L80246574
/* 182520 80246560 00000000 */   nop
/* 182524 80246564 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182528 80246568 0220202D */   daddu     $a0, $s1, $zero
/* 18252C 8024656C 0809195F */  j          .L8024657C
/* 182530 80246570 0000A02D */   daddu     $s4, $zero, $zero
.L80246574:
/* 182534 80246574 0C050BD5 */  jal        hud_element_draw_next
/* 182538 80246578 0220202D */   daddu     $a0, $s1, $zero
.L8024657C:
/* 18253C 8024657C 0256102A */  slt        $v0, $s2, $s6
/* 182540 80246580 10400056 */  beqz       $v0, .L802466DC
/* 182544 80246584 26730001 */   addiu     $s3, $s3, 0x1
/* 182548 80246588 26520001 */  addiu      $s2, $s2, 0x1
/* 18254C 8024658C 00158080 */  sll        $s0, $s5, 2
/* 182550 80246590 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 182554 80246594 00B02821 */  addu       $a1, $a1, $s0
/* 182558 80246598 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 18255C 8024659C 0C050BE3 */  jal        hud_element_set_script
/* 182560 802465A0 0220202D */   daddu     $a0, $s1, $zero
/* 182564 802465A4 0220202D */  daddu      $a0, $s1, $zero
/* 182568 802465A8 27C6004B */  addiu      $a2, $fp, 0x4B
/* 18256C 802465AC 02158021 */  addu       $s0, $s0, $s5
/* 182570 802465B0 00108080 */  sll        $s0, $s0, 2
/* 182574 802465B4 2610008C */  addiu      $s0, $s0, 0x8C
/* 182578 802465B8 8FA80094 */  lw         $t0, 0x94($sp)
/* 18257C 802465BC 3C058025 */  lui        $a1, %hi(D_8024F46C+20)
/* 182580 802465C0 8CA5F490 */  lw         $a1, %lo(D_8024F46C+20)($a1)
/* 182584 802465C4 01108021 */  addu       $s0, $t0, $s0
/* 182588 802465C8 0C050C45 */  jal        hud_element_set_render_pos
/* 18258C 802465CC 02052821 */   addu      $a1, $s0, $a1
/* 182590 802465D0 12800005 */  beqz       $s4, .L802465E8
/* 182594 802465D4 00000000 */   nop
/* 182598 802465D8 0C050BDC */  jal        hud_element_draw_without_clipping
/* 18259C 802465DC 0220202D */   daddu     $a0, $s1, $zero
/* 1825A0 802465E0 0809197C */  j          .L802465F0
/* 1825A4 802465E4 0000A02D */   daddu     $s4, $zero, $zero
.L802465E8:
/* 1825A8 802465E8 0C050BD5 */  jal        hud_element_draw_next
/* 1825AC 802465EC 0220202D */   daddu     $a0, $s1, $zero
.L802465F0:
/* 1825B0 802465F0 0256102A */  slt        $v0, $s2, $s6
/* 1825B4 802465F4 10400039 */  beqz       $v0, .L802466DC
/* 1825B8 802465F8 26730001 */   addiu     $s3, $s3, 0x1
/* 1825BC 802465FC 26520001 */  addiu      $s2, $s2, 0x1
/* 1825C0 80246600 00158080 */  sll        $s0, $s5, 2
/* 1825C4 80246604 3C058025 */  lui        $a1, %hi(gPauseStatsSPIncElements)
/* 1825C8 80246608 00B02821 */  addu       $a1, $a1, $s0
/* 1825CC 8024660C 8CA5F444 */  lw         $a1, %lo(gPauseStatsSPIncElements)($a1)
/* 1825D0 80246610 0C050BE3 */  jal        hud_element_set_script
/* 1825D4 80246614 0220202D */   daddu     $a0, $s1, $zero
/* 1825D8 80246618 0220202D */  daddu      $a0, $s1, $zero
/* 1825DC 8024661C 27C6004B */  addiu      $a2, $fp, 0x4B
/* 1825E0 80246620 02158021 */  addu       $s0, $s0, $s5
/* 1825E4 80246624 00108080 */  sll        $s0, $s0, 2
/* 1825E8 80246628 2610008C */  addiu      $s0, $s0, 0x8C
/* 1825EC 8024662C 8FA80094 */  lw         $t0, 0x94($sp)
/* 1825F0 80246630 3C058025 */  lui        $a1, %hi(D_8024F46C+24)
/* 1825F4 80246634 8CA5F494 */  lw         $a1, %lo(D_8024F46C+24)($a1)
/* 1825F8 80246638 01108021 */  addu       $s0, $t0, $s0
/* 1825FC 8024663C 0C050C45 */  jal        hud_element_set_render_pos
/* 182600 80246640 02052821 */   addu      $a1, $s0, $a1
/* 182604 80246644 12800005 */  beqz       $s4, .L8024665C
/* 182608 80246648 00000000 */   nop
/* 18260C 8024664C 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182610 80246650 0220202D */   daddu     $a0, $s1, $zero
/* 182614 80246654 08091999 */  j          .L80246664
/* 182618 80246658 0000A02D */   daddu     $s4, $zero, $zero
.L8024665C:
/* 18261C 8024665C 0C050BD5 */  jal        hud_element_draw_next
/* 182620 80246660 0220202D */   daddu     $a0, $s1, $zero
.L80246664:
/* 182624 80246664 0256102A */  slt        $v0, $s2, $s6
/* 182628 80246668 1040001C */  beqz       $v0, .L802466DC
/* 18262C 8024666C 26730001 */   addiu     $s3, $s3, 0x1
/* 182630 80246670 26520001 */  addiu      $s2, $s2, 0x1
/* 182634 80246674 00158080 */  sll        $s0, $s5, 2
/* 182638 80246678 3C058025 */  lui        $a1, %hi(gPauseStatsStarElements)
/* 18263C 8024667C 00B02821 */  addu       $a1, $a1, $s0
/* 182640 80246680 8CA5F460 */  lw         $a1, %lo(gPauseStatsStarElements)($a1)
/* 182644 80246684 0C050BE3 */  jal        hud_element_set_script
/* 182648 80246688 0220202D */   daddu     $a0, $s1, $zero
/* 18264C 8024668C 0220202D */  daddu      $a0, $s1, $zero
/* 182650 80246690 02158021 */  addu       $s0, $s0, $s5
/* 182654 80246694 00108080 */  sll        $s0, $s0, 2
/* 182658 80246698 26100098 */  addiu      $s0, $s0, 0x98
/* 18265C 8024669C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182660 802466A0 27C6004D */  addiu      $a2, $fp, 0x4D
/* 182664 802466A4 0C050C45 */  jal        hud_element_set_render_pos
/* 182668 802466A8 01102821 */   addu      $a1, $t0, $s0
/* 18266C 802466AC 12800005 */  beqz       $s4, .L802466C4
/* 182670 802466B0 00000000 */   nop
/* 182674 802466B4 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182678 802466B8 0220202D */   daddu     $a0, $s1, $zero
/* 18267C 802466BC 080919B3 */  j          .L802466CC
/* 182680 802466C0 0000A02D */   daddu     $s4, $zero, $zero
.L802466C4:
/* 182684 802466C4 0C050BD5 */  jal        hud_element_draw_next
/* 182688 802466C8 0220202D */   daddu     $a0, $s1, $zero
.L802466CC:
/* 18268C 802466CC 0000982D */  daddu      $s3, $zero, $zero
/* 182690 802466D0 0256102A */  slt        $v0, $s2, $s6
/* 182694 802466D4 1440FF1B */  bnez       $v0, .L80246344
/* 182698 802466D8 26B50001 */   addiu     $s5, $s5, 0x1
.L802466DC:
/* 18269C 802466DC 82E4028E */  lb         $a0, 0x28E($s7)
/* 1826A0 802466E0 3C178025 */  lui        $s7, %hi(D_8024F46C)
/* 1826A4 802466E4 26F7F47C */  addiu      $s7, $s7, %lo(D_8024F46C)
/* 1826A8 802466E8 00151080 */  sll        $v0, $s5, 2
/* 1826AC 802466EC 00551021 */  addu       $v0, $v0, $s5
/* 1826B0 802466F0 00021080 */  sll        $v0, $v0, 2
/* 1826B4 802466F4 24550098 */  addiu      $s5, $v0, 0x98
/* 1826B8 802466F8 2450008C */  addiu      $s0, $v0, 0x8C
/* 1826BC 802466FC 0004B0C0 */  sll        $s6, $a0, 3
.L80246700:
/* 1826C0 80246700 0256102A */  slt        $v0, $s2, $s6
/* 1826C4 80246704 104000D2 */  beqz       $v0, .L80246A50
/* 1826C8 80246708 00000000 */   nop
/* 1826CC 8024670C 1660001A */  bnez       $s3, .L80246778
/* 1826D0 80246710 24020001 */   addiu     $v0, $zero, 0x1
/* 1826D4 80246714 26520001 */  addiu      $s2, $s2, 0x1
/* 1826D8 80246718 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 1826DC 8024671C 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 1826E0 80246720 0C050BE3 */  jal        hud_element_set_script
/* 1826E4 80246724 0220202D */   daddu     $a0, $s1, $zero
/* 1826E8 80246728 0220202D */  daddu      $a0, $s1, $zero
/* 1826EC 8024672C 27C6004B */  addiu      $a2, $fp, 0x4B
/* 1826F0 80246730 8FA80094 */  lw         $t0, 0x94($sp)
/* 1826F4 80246734 3C028025 */  lui        $v0, %hi(D_8024F46C)
/* 1826F8 80246738 8C42F47C */  lw         $v0, %lo(D_8024F46C)($v0)
/* 1826FC 8024673C 01102821 */  addu       $a1, $t0, $s0
/* 182700 80246740 0C050C45 */  jal        hud_element_set_render_pos
/* 182704 80246744 00A22821 */   addu      $a1, $a1, $v0
/* 182708 80246748 12800005 */  beqz       $s4, .L80246760
/* 18270C 8024674C 00000000 */   nop
/* 182710 80246750 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182714 80246754 0220202D */   daddu     $a0, $s1, $zero
/* 182718 80246758 080919DA */  j          .L80246768
/* 18271C 8024675C 0000A02D */   daddu     $s4, $zero, $zero
.L80246760:
/* 182720 80246760 0C050BD5 */  jal        hud_element_draw_next
/* 182724 80246764 0220202D */   daddu     $a0, $s1, $zero
.L80246768:
/* 182728 80246768 0256102A */  slt        $v0, $s2, $s6
/* 18272C 8024676C 104000B8 */  beqz       $v0, .L80246A50
/* 182730 80246770 26730001 */   addiu     $s3, $s3, 0x1
/* 182734 80246774 24020001 */  addiu      $v0, $zero, 0x1
.L80246778:
/* 182738 80246778 56620019 */  bnel       $s3, $v0, .L802467E0
/* 18273C 8024677C 24020002 */   addiu     $v0, $zero, 0x2
/* 182740 80246780 02429021 */  addu       $s2, $s2, $v0
/* 182744 80246784 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 182748 80246788 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 18274C 8024678C 0C050BE3 */  jal        hud_element_set_script
/* 182750 80246790 0220202D */   daddu     $a0, $s1, $zero
/* 182754 80246794 0220202D */  daddu      $a0, $s1, $zero
/* 182758 80246798 27C6004B */  addiu      $a2, $fp, 0x4B
/* 18275C 8024679C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182760 802467A0 8EE20004 */  lw         $v0, 0x4($s7)
/* 182764 802467A4 01102821 */  addu       $a1, $t0, $s0
/* 182768 802467A8 0C050C45 */  jal        hud_element_set_render_pos
/* 18276C 802467AC 00A22821 */   addu      $a1, $a1, $v0
/* 182770 802467B0 12800005 */  beqz       $s4, .L802467C8
/* 182774 802467B4 00000000 */   nop
/* 182778 802467B8 0C050BDC */  jal        hud_element_draw_without_clipping
/* 18277C 802467BC 0220202D */   daddu     $a0, $s1, $zero
/* 182780 802467C0 080919F4 */  j          .L802467D0
/* 182784 802467C4 0000A02D */   daddu     $s4, $zero, $zero
.L802467C8:
/* 182788 802467C8 0C050BD5 */  jal        hud_element_draw_next
/* 18278C 802467CC 0220202D */   daddu     $a0, $s1, $zero
.L802467D0:
/* 182790 802467D0 0256102A */  slt        $v0, $s2, $s6
/* 182794 802467D4 1040009E */  beqz       $v0, .L80246A50
/* 182798 802467D8 26730001 */   addiu     $s3, $s3, 0x1
/* 18279C 802467DC 24020002 */  addiu      $v0, $zero, 0x2
.L802467E0:
/* 1827A0 802467E0 16620019 */  bne        $s3, $v0, .L80246848
/* 1827A4 802467E4 24020003 */   addiu     $v0, $zero, 0x3
/* 1827A8 802467E8 26520001 */  addiu      $s2, $s2, 0x1
/* 1827AC 802467EC 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 1827B0 802467F0 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 1827B4 802467F4 0C050BE3 */  jal        hud_element_set_script
/* 1827B8 802467F8 0220202D */   daddu     $a0, $s1, $zero
/* 1827BC 802467FC 0220202D */  daddu      $a0, $s1, $zero
/* 1827C0 80246800 27C6004B */  addiu      $a2, $fp, 0x4B
/* 1827C4 80246804 8FA80094 */  lw         $t0, 0x94($sp)
/* 1827C8 80246808 8EE20008 */  lw         $v0, 0x8($s7)
/* 1827CC 8024680C 01102821 */  addu       $a1, $t0, $s0
/* 1827D0 80246810 0C050C45 */  jal        hud_element_set_render_pos
/* 1827D4 80246814 00A22821 */   addu      $a1, $a1, $v0
/* 1827D8 80246818 12800005 */  beqz       $s4, .L80246830
/* 1827DC 8024681C 00000000 */   nop
/* 1827E0 80246820 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1827E4 80246824 0220202D */   daddu     $a0, $s1, $zero
/* 1827E8 80246828 08091A0E */  j          .L80246838
/* 1827EC 8024682C 0000A02D */   daddu     $s4, $zero, $zero
.L80246830:
/* 1827F0 80246830 0C050BD5 */  jal        hud_element_draw_next
/* 1827F4 80246834 0220202D */   daddu     $a0, $s1, $zero
.L80246838:
/* 1827F8 80246838 0256102A */  slt        $v0, $s2, $s6
/* 1827FC 8024683C 10400084 */  beqz       $v0, .L80246A50
/* 182800 80246840 26730001 */   addiu     $s3, $s3, 0x1
/* 182804 80246844 24020003 */  addiu      $v0, $zero, 0x3
.L80246848:
/* 182808 80246848 16620019 */  bne        $s3, $v0, .L802468B0
/* 18280C 8024684C 24020004 */   addiu     $v0, $zero, 0x4
/* 182810 80246850 26520001 */  addiu      $s2, $s2, 0x1
/* 182814 80246854 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 182818 80246858 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 18281C 8024685C 0C050BE3 */  jal        hud_element_set_script
/* 182820 80246860 0220202D */   daddu     $a0, $s1, $zero
/* 182824 80246864 0220202D */  daddu      $a0, $s1, $zero
/* 182828 80246868 27C6004B */  addiu      $a2, $fp, 0x4B
/* 18282C 8024686C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182830 80246870 8EE2000C */  lw         $v0, 0xC($s7)
/* 182834 80246874 01102821 */  addu       $a1, $t0, $s0
/* 182838 80246878 0C050C45 */  jal        hud_element_set_render_pos
/* 18283C 8024687C 00A22821 */   addu      $a1, $a1, $v0
/* 182840 80246880 12800005 */  beqz       $s4, .L80246898
/* 182844 80246884 00000000 */   nop
/* 182848 80246888 0C050BDC */  jal        hud_element_draw_without_clipping
/* 18284C 8024688C 0220202D */   daddu     $a0, $s1, $zero
/* 182850 80246890 08091A28 */  j          .L802468A0
/* 182854 80246894 0000A02D */   daddu     $s4, $zero, $zero
.L80246898:
/* 182858 80246898 0C050BD5 */  jal        hud_element_draw_next
/* 18285C 8024689C 0220202D */   daddu     $a0, $s1, $zero
.L802468A0:
/* 182860 802468A0 0256102A */  slt        $v0, $s2, $s6
/* 182864 802468A4 1040006A */  beqz       $v0, .L80246A50
/* 182868 802468A8 26730001 */   addiu     $s3, $s3, 0x1
/* 18286C 802468AC 24020004 */  addiu      $v0, $zero, 0x4
.L802468B0:
/* 182870 802468B0 16620019 */  bne        $s3, $v0, .L80246918
/* 182874 802468B4 24020005 */   addiu     $v0, $zero, 0x5
/* 182878 802468B8 26520001 */  addiu      $s2, $s2, 0x1
/* 18287C 802468BC 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 182880 802468C0 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 182884 802468C4 0C050BE3 */  jal        hud_element_set_script
/* 182888 802468C8 0220202D */   daddu     $a0, $s1, $zero
/* 18288C 802468CC 0220202D */  daddu      $a0, $s1, $zero
/* 182890 802468D0 27C6004B */  addiu      $a2, $fp, 0x4B
/* 182894 802468D4 8FA80094 */  lw         $t0, 0x94($sp)
/* 182898 802468D8 8EE20010 */  lw         $v0, 0x10($s7)
/* 18289C 802468DC 01102821 */  addu       $a1, $t0, $s0
/* 1828A0 802468E0 0C050C45 */  jal        hud_element_set_render_pos
/* 1828A4 802468E4 00A22821 */   addu      $a1, $a1, $v0
/* 1828A8 802468E8 12800005 */  beqz       $s4, .L80246900
/* 1828AC 802468EC 00000000 */   nop
/* 1828B0 802468F0 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1828B4 802468F4 0220202D */   daddu     $a0, $s1, $zero
/* 1828B8 802468F8 08091A42 */  j          .L80246908
/* 1828BC 802468FC 0000A02D */   daddu     $s4, $zero, $zero
.L80246900:
/* 1828C0 80246900 0C050BD5 */  jal        hud_element_draw_next
/* 1828C4 80246904 0220202D */   daddu     $a0, $s1, $zero
.L80246908:
/* 1828C8 80246908 0256102A */  slt        $v0, $s2, $s6
/* 1828CC 8024690C 10400050 */  beqz       $v0, .L80246A50
/* 1828D0 80246910 26730001 */   addiu     $s3, $s3, 0x1
/* 1828D4 80246914 24020005 */  addiu      $v0, $zero, 0x5
.L80246918:
/* 1828D8 80246918 16620019 */  bne        $s3, $v0, .L80246980
/* 1828DC 8024691C 24020006 */   addiu     $v0, $zero, 0x6
/* 1828E0 80246920 26520001 */  addiu      $s2, $s2, 0x1
/* 1828E4 80246924 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 1828E8 80246928 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 1828EC 8024692C 0C050BE3 */  jal        hud_element_set_script
/* 1828F0 80246930 0220202D */   daddu     $a0, $s1, $zero
/* 1828F4 80246934 0220202D */  daddu      $a0, $s1, $zero
/* 1828F8 80246938 27C6004B */  addiu      $a2, $fp, 0x4B
/* 1828FC 8024693C 8FA80094 */  lw         $t0, 0x94($sp)
/* 182900 80246940 8EE20014 */  lw         $v0, 0x14($s7)
/* 182904 80246944 01102821 */  addu       $a1, $t0, $s0
/* 182908 80246948 0C050C45 */  jal        hud_element_set_render_pos
/* 18290C 8024694C 00A22821 */   addu      $a1, $a1, $v0
/* 182910 80246950 12800005 */  beqz       $s4, .L80246968
/* 182914 80246954 00000000 */   nop
/* 182918 80246958 0C050BDC */  jal        hud_element_draw_without_clipping
/* 18291C 8024695C 0220202D */   daddu     $a0, $s1, $zero
/* 182920 80246960 08091A5C */  j          .L80246970
/* 182924 80246964 0000A02D */   daddu     $s4, $zero, $zero
.L80246968:
/* 182928 80246968 0C050BD5 */  jal        hud_element_draw_next
/* 18292C 8024696C 0220202D */   daddu     $a0, $s1, $zero
.L80246970:
/* 182930 80246970 0256102A */  slt        $v0, $s2, $s6
/* 182934 80246974 10400036 */  beqz       $v0, .L80246A50
/* 182938 80246978 26730001 */   addiu     $s3, $s3, 0x1
/* 18293C 8024697C 24020006 */  addiu      $v0, $zero, 0x6
.L80246980:
/* 182940 80246980 16620019 */  bne        $s3, $v0, .L802469E8
/* 182944 80246984 24020007 */   addiu     $v0, $zero, 0x7
/* 182948 80246988 26520001 */  addiu      $s2, $s2, 0x1
/* 18294C 8024698C 3C058010 */  lui        $a1, %hi(HES_StatusSPEmptyIncrement)
/* 182950 80246990 24A56790 */  addiu      $a1, $a1, %lo(HES_StatusSPEmptyIncrement)
/* 182954 80246994 0C050BE3 */  jal        hud_element_set_script
/* 182958 80246998 0220202D */   daddu     $a0, $s1, $zero
/* 18295C 8024699C 0220202D */  daddu      $a0, $s1, $zero
/* 182960 802469A0 27C6004B */  addiu      $a2, $fp, 0x4B
/* 182964 802469A4 8FA80094 */  lw         $t0, 0x94($sp)
/* 182968 802469A8 8EE20018 */  lw         $v0, 0x18($s7)
/* 18296C 802469AC 01102821 */  addu       $a1, $t0, $s0
/* 182970 802469B0 0C050C45 */  jal        hud_element_set_render_pos
/* 182974 802469B4 00A22821 */   addu      $a1, $a1, $v0
/* 182978 802469B8 12800005 */  beqz       $s4, .L802469D0
/* 18297C 802469BC 00000000 */   nop
/* 182980 802469C0 0C050BDC */  jal        hud_element_draw_without_clipping
/* 182984 802469C4 0220202D */   daddu     $a0, $s1, $zero
/* 182988 802469C8 08091A76 */  j          .L802469D8
/* 18298C 802469CC 0000A02D */   daddu     $s4, $zero, $zero
.L802469D0:
/* 182990 802469D0 0C050BD5 */  jal        hud_element_draw_next
/* 182994 802469D4 0220202D */   daddu     $a0, $s1, $zero
.L802469D8:
/* 182998 802469D8 0256102A */  slt        $v0, $s2, $s6
/* 18299C 802469DC 1040001C */  beqz       $v0, .L80246A50
/* 1829A0 802469E0 26730001 */   addiu     $s3, $s3, 0x1
/* 1829A4 802469E4 24020007 */  addiu      $v0, $zero, 0x7
.L802469E8:
/* 1829A8 802469E8 56620016 */  bnel       $s3, $v0, .L80246A44
/* 1829AC 802469EC 0000982D */   daddu     $s3, $zero, $zero
/* 1829B0 802469F0 26520001 */  addiu      $s2, $s2, 0x1
/* 1829B4 802469F4 3C058010 */  lui        $a1, %hi(HES_StatusStarEmpty)
/* 1829B8 802469F8 24A568D0 */  addiu      $a1, $a1, %lo(HES_StatusStarEmpty)
/* 1829BC 802469FC 0C050BE3 */  jal        hud_element_set_script
/* 1829C0 80246A00 0220202D */   daddu     $a0, $s1, $zero
/* 1829C4 80246A04 0220202D */  daddu      $a0, $s1, $zero
/* 1829C8 80246A08 8FA80094 */  lw         $t0, 0x94($sp)
/* 1829CC 80246A0C 27C6004D */  addiu      $a2, $fp, 0x4D
/* 1829D0 80246A10 0C050C45 */  jal        hud_element_set_render_pos
/* 1829D4 80246A14 01152821 */   addu      $a1, $t0, $s5
/* 1829D8 80246A18 12800005 */  beqz       $s4, .L80246A30
/* 1829DC 80246A1C 00000000 */   nop
/* 1829E0 80246A20 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1829E4 80246A24 0220202D */   daddu     $a0, $s1, $zero
/* 1829E8 80246A28 08091A8E */  j          .L80246A38
/* 1829EC 80246A2C 0000A02D */   daddu     $s4, $zero, $zero
.L80246A30:
/* 1829F0 80246A30 0C050BD5 */  jal        hud_element_draw_next
/* 1829F4 80246A34 0220202D */   daddu     $a0, $s1, $zero
.L80246A38:
/* 1829F8 80246A38 0256102A */  slt        $v0, $s2, $s6
/* 1829FC 80246A3C 10400004 */  beqz       $v0, .L80246A50
/* 182A00 80246A40 0000982D */   daddu     $s3, $zero, $zero
.L80246A44:
/* 182A04 80246A44 26B50014 */  addiu      $s5, $s5, 0x14
/* 182A08 80246A48 080919C0 */  j          .L80246700
/* 182A0C 80246A4C 26100014 */   addiu     $s0, $s0, 0x14
.L80246A50:
/* 182A10 80246A50 3C038027 */  lui        $v1, %hi(gPauseMenuCurrentTab)
/* 182A14 80246A54 80630154 */  lb         $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 182A18 80246A58 24020001 */  addiu      $v0, $zero, 0x1
/* 182A1C 80246A5C 1462000F */  bne        $v1, $v0, .L80246A9C
/* 182A20 80246A60 2404001F */   addiu     $a0, $zero, 0x1F
/* 182A24 80246A64 8FA80090 */  lw         $t0, 0x90($sp)
/* 182A28 80246A68 3C058025 */  lui        $a1, %hi(gStatsMenuEntries)
/* 182A2C 80246A6C 24A5F3C0 */  addiu      $a1, $a1, %lo(gStatsMenuEntries)
/* 182A30 80246A70 91030003 */  lbu        $v1, 0x3($t0)
/* 182A34 80246A74 8FA80094 */  lw         $t0, 0x94($sp)
/* 182A38 80246A78 00431004 */  sllv       $v0, $v1, $v0
/* 182A3C 80246A7C 00431021 */  addu       $v0, $v0, $v1
/* 182A40 80246A80 00021080 */  sll        $v0, $v0, 2
/* 182A44 80246A84 00451021 */  addu       $v0, $v0, $a1
/* 182A48 80246A88 8C450000 */  lw         $a1, 0x0($v0)
/* 182A4C 80246A8C 8C460004 */  lw         $a2, 0x4($v0)
/* 182A50 80246A90 01052821 */  addu       $a1, $t0, $a1
/* 182A54 80246A94 0C090B41 */  jal        pause_set_cursor_pos
/* 182A58 80246A98 03C63021 */   addu      $a2, $fp, $a2
.L80246A9C:
/* 182A5C 80246A9C 8FBF008C */  lw         $ra, 0x8C($sp)
/* 182A60 80246AA0 8FBE0088 */  lw         $fp, 0x88($sp)
/* 182A64 80246AA4 8FB70084 */  lw         $s7, 0x84($sp)
/* 182A68 80246AA8 8FB60080 */  lw         $s6, 0x80($sp)
/* 182A6C 80246AAC 8FB5007C */  lw         $s5, 0x7C($sp)
/* 182A70 80246AB0 8FB40078 */  lw         $s4, 0x78($sp)
/* 182A74 80246AB4 8FB30074 */  lw         $s3, 0x74($sp)
/* 182A78 80246AB8 8FB20070 */  lw         $s2, 0x70($sp)
/* 182A7C 80246ABC 8FB1006C */  lw         $s1, 0x6C($sp)
/* 182A80 80246AC0 8FB00068 */  lw         $s0, 0x68($sp)
/* 182A84 80246AC4 03E00008 */  jr         $ra
/* 182A88 80246AC8 27BD0090 */   addiu     $sp, $sp, 0x90

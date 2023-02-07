.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

.section .rodata

.align 3
glabel jtbl_8024C3C0
/* 1B5920 8024C3C0 80246E6C */ .word .L80246E6C
/* 1B5924 8024C3C4 80246FA0 */ .word .L80246FA0
/* 1B5928 8024C3C8 80246FE0 */ .word .L80246FE0
/* 1B592C 8024C3CC 80246F00 */ .word .L80246F00
/* 1B5930 8024C3D0 802470D8 */ .word .L802470D8
/* 1B5934 8024C3D4 00000000 */ .word 0x00000000

.section .text

glabel filemenu_yesno_draw_prompt_contents
/* 1B0384 80246E24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1B0388 80246E28 AFB3002C */  sw         $s3, 0x2C($sp)
/* 1B038C 80246E2C 00A0982D */  daddu      $s3, $a1, $zero
/* 1B0390 80246E30 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1B0394 80246E34 AFB40030 */  sw         $s4, 0x30($sp)
/* 1B0398 80246E38 AFB20028 */  sw         $s2, 0x28($sp)
/* 1B039C 80246E3C AFB10024 */  sw         $s1, 0x24($sp)
/* 1B03A0 80246E40 AFB00020 */  sw         $s0, 0x20($sp)
/* 1B03A4 80246E44 80830004 */  lb         $v1, 0x4($a0)
/* 1B03A8 80246E48 2C620005 */  sltiu      $v0, $v1, 0x5
/* 1B03AC 80246E4C 104000CB */  beqz       $v0, .L8024717C
/* 1B03B0 80246E50 00C0A02D */   daddu     $s4, $a2, $zero
.L80246E54:
/* 1B03B4 80246E54 00031080 */  sll        $v0, $v1, 2
/* 1B03B8 80246E58 3C018025 */  lui        $at, %hi(jtbl_8024C3C0)
/* 1B03BC 80246E5C 00220821 */  addu       $at, $at, $v0
/* 1B03C0 80246E60 8C22C3C0 */  lw         $v0, %lo(jtbl_8024C3C0)($at)
/* 1B03C4 80246E64 00400008 */  jr         $v0
.L80246E68:
/* 1B03C8 80246E68 00000000 */   nop
glabel .L80246E6C
/* 1B03CC 80246E6C 0C09279A */  jal        filemenu_get_menu_message
/* 1B03D0 80246E70 24040010 */   addiu     $a0, $zero, 0x10
/* 1B03D4 80246E74 0040202D */  daddu      $a0, $v0, $zero
/* 1B03D8 80246E78 26650014 */  addiu      $a1, $s3, 0x14
.L80246E7C:
/* 1B03DC 80246E7C 26900004 */  addiu      $s0, $s4, 0x4
/* 1B03E0 80246E80 0200302D */  daddu      $a2, $s0, $zero
/* 1B03E4 80246E84 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B03E8 80246E88 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B03EC 80246E8C 0C092742 */  jal        filemenu_draw_message
.L80246E90:
/* 1B03F0 80246E90 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B03F4 80246E94 0C09279A */  jal        filemenu_get_menu_message
/* 1B03F8 80246E98 24040016 */   addiu     $a0, $zero, 0x16
/* 1B03FC 80246E9C 0040202D */  daddu      $a0, $v0, $zero
/* 1B0400 80246EA0 26650032 */  addiu      $a1, $s3, 0x32
/* 1B0404 80246EA4 0200302D */  daddu      $a2, $s0, $zero
/* 1B0408 80246EA8 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B040C 80246EAC AFA00010 */  sw         $zero, 0x10($sp)
/* 1B0410 80246EB0 0C092742 */  jal        filemenu_draw_message
/* 1B0414 80246EB4 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B0418 80246EB8 2665005D */  addiu      $a1, $s3, 0x5D
/* 1B041C 80246EBC 26860007 */  addiu      $a2, $s4, 0x7
/* 1B0420 80246EC0 3C028025 */  lui        $v0, %hi(filemenu_menus)
/* 1B0424 80246EC4 8C429F64 */  lw         $v0, %lo(filemenu_menus)($v0)
/* 1B0428 80246EC8 0000382D */  daddu      $a3, $zero, $zero
/* 1B042C 80246ECC 90440003 */  lbu        $a0, 0x3($v0)
.L80246ED0:
/* 1B0430 80246ED0 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B0434 80246ED4 AFA20014 */  sw         $v0, 0x14($sp)
.L80246ED8:
/* 1B0438 80246ED8 24020003 */  addiu      $v0, $zero, 0x3
/* 1B043C 80246EDC AFA00010 */  sw         $zero, 0x10($sp)
.L80246EE0:
/* 1B0440 80246EE0 AFA20018 */  sw         $v0, 0x18($sp)
/* 1B0444 80246EE4 0C049693 */  jal        draw_number
/* 1B0448 80246EE8 24840001 */   addiu     $a0, $a0, 0x1
/* 1B044C 80246EEC 0C09279A */  jal        filemenu_get_menu_message
/* 1B0450 80246EF0 24040021 */   addiu     $a0, $zero, 0x21
.L80246EF4:
/* 1B0454 80246EF4 0040202D */  daddu      $a0, $v0, $zero
/* 1B0458 80246EF8 08091C5A */  j          .L80247168
/* 1B045C 80246EFC 2665005C */   addiu     $a1, $s3, 0x5C
glabel .L80246F00
/* 1B0460 80246F00 0C09279A */  jal        filemenu_get_menu_message
/* 1B0464 80246F04 24040016 */   addiu     $a0, $zero, 0x16
/* 1B0468 80246F08 0040202D */  daddu      $a0, $v0, $zero
.L80246F0C:
/* 1B046C 80246F0C 2672000A */  addiu      $s2, $s3, 0xA
/* 1B0470 80246F10 0240282D */  daddu      $a1, $s2, $zero
/* 1B0474 80246F14 26910004 */  addiu      $s1, $s4, 0x4
.L80246F18:
/* 1B0478 80246F18 0220302D */  daddu      $a2, $s1, $zero
/* 1B047C 80246F1C 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B0480 80246F20 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B0484 80246F24 0C092742 */  jal        filemenu_draw_message
/* 1B0488 80246F28 AFA00014 */   sw        $zero, 0x14($sp)
.L80246F2C:
/* 1B048C 80246F2C 26700031 */  addiu      $s0, $s3, 0x31
/* 1B0490 80246F30 0200282D */  daddu      $a1, $s0, $zero
/* 1B0494 80246F34 26860007 */  addiu      $a2, $s4, 0x7
/* 1B0498 80246F38 3C028025 */  lui        $v0, %hi(filemenu_menus)
/* 1B049C 80246F3C 8C429F64 */  lw         $v0, %lo(filemenu_menus)($v0)
/* 1B04A0 80246F40 0000382D */  daddu      $a3, $zero, $zero
/* 1B04A4 80246F44 90440003 */  lbu        $a0, 0x3($v0)
/* 1B04A8 80246F48 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B04AC 80246F4C AFA20014 */  sw         $v0, 0x14($sp)
/* 1B04B0 80246F50 24020003 */  addiu      $v0, $zero, 0x3
/* 1B04B4 80246F54 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B04B8 80246F58 AFA20018 */  sw         $v0, 0x18($sp)
/* 1B04BC 80246F5C 0C049693 */  jal        draw_number
/* 1B04C0 80246F60 24840001 */   addiu     $a0, $a0, 0x1
/* 1B04C4 80246F64 0C09279A */  jal        filemenu_get_menu_message
/* 1B04C8 80246F68 24040017 */   addiu     $a0, $zero, 0x17
/* 1B04CC 80246F6C 0040202D */  daddu      $a0, $v0, $zero
/* 1B04D0 80246F70 0200282D */  daddu      $a1, $s0, $zero
/* 1B04D4 80246F74 0220302D */  daddu      $a2, $s1, $zero
/* 1B04D8 80246F78 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B04DC 80246F7C AFA00010 */  sw         $zero, 0x10($sp)
/* 1B04E0 80246F80 0C092742 */  jal        filemenu_draw_message
.L80246F84:
/* 1B04E4 80246F84 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B04E8 80246F88 0C09279A */  jal        filemenu_get_menu_message
/* 1B04EC 80246F8C 24040018 */   addiu     $a0, $zero, 0x18
/* 1B04F0 80246F90 0040202D */  daddu      $a0, $v0, $zero
/* 1B04F4 80246F94 0240282D */  daddu      $a1, $s2, $zero
glabel func_80246F98
/* 1B04F8 80246F98 08091C5B */  j          .L8024716C
/* 1B04FC 80246F9C 26860012 */   addiu     $a2, $s4, 0x12
glabel .L80246FA0
/* 1B0500 80246FA0 0C09279A */  jal        filemenu_get_menu_message
/* 1B0504 80246FA4 24040011 */   addiu     $a0, $zero, 0x11
/* 1B0508 80246FA8 0040202D */  daddu      $a0, $v0, $zero
/* 1B050C 80246FAC 2670000A */  addiu      $s0, $s3, 0xA
/* 1B0510 80246FB0 0200282D */  daddu      $a1, $s0, $zero
.L80246FB4:
/* 1B0514 80246FB4 26860004 */  addiu      $a2, $s4, 0x4
/* 1B0518 80246FB8 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B051C 80246FBC AFA00010 */  sw         $zero, 0x10($sp)
/* 1B0520 80246FC0 0C092742 */  jal        filemenu_draw_message
/* 1B0524 80246FC4 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B0528 80246FC8 0C09279A */  jal        filemenu_get_menu_message
/* 1B052C 80246FCC 24040012 */   addiu     $a0, $zero, 0x12
/* 1B0530 80246FD0 0040202D */  daddu      $a0, $v0, $zero
/* 1B0534 80246FD4 0200282D */  daddu      $a1, $s0, $zero
/* 1B0538 80246FD8 08091C5B */  j          .L8024716C
/* 1B053C 80246FDC 26860012 */   addiu     $a2, $s4, 0x12
glabel .L80246FE0
/* 1B0540 80246FE0 0C09279A */  jal        filemenu_get_menu_message
/* 1B0544 80246FE4 24040013 */   addiu     $a0, $zero, 0x13
/* 1B0548 80246FE8 0040202D */  daddu      $a0, $v0, $zero
/* 1B054C 80246FEC 2665000A */  addiu      $a1, $s3, 0xA
glabel func_80246FF0
/* 1B0550 80246FF0 26860006 */  addiu      $a2, $s4, 0x6
/* 1B0554 80246FF4 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B0558 80246FF8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B055C 80246FFC 0C092742 */  jal        filemenu_draw_message
/* 1B0560 80247000 AFA00014 */   sw        $zero, 0x14($sp)
.L80247004:
/* 1B0564 80247004 24110007 */  addiu      $s1, $zero, 0x7
/* 1B0568 80247008 3C048025 */  lui        $a0, %hi(filemenu_filename)
/* 1B056C 8024700C 2484CED0 */  addiu      $a0, $a0, %lo(filemenu_filename)
.L80247010:
/* 1B0570 80247010 240300F7 */  addiu      $v1, $zero, 0xF7
/* 1B0574 80247014 02241021 */  addu       $v0, $s1, $a0
.L80247018:
/* 1B0578 80247018 90420000 */  lbu        $v0, 0x0($v0)
/* 1B057C 8024701C 14430005 */  bne        $v0, $v1, .L80247034
/* 1B0580 80247020 00111040 */   sll       $v0, $s1, 1
.L80247024:
/* 1B0584 80247024 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1B0588 80247028 0621FFFB */  bgez       $s1, .L80247018
/* 1B058C 8024702C 02241021 */   addu      $v0, $s1, $a0
.L80247030:
/* 1B0590 80247030 00111040 */  sll        $v0, $s1, 1
.L80247034:
/* 1B0594 80247034 00511021 */  addu       $v0, $v0, $s1
/* 1B0598 80247038 00021080 */  sll        $v0, $v0, 2
/* 1B059C 8024703C 00511023 */  subu       $v0, $v0, $s1
/* 1B05A0 80247040 24100093 */  addiu      $s0, $zero, 0x93
/* 1B05A4 80247044 02028023 */  subu       $s0, $s0, $v0
/* 1B05A8 80247048 001017C2 */  srl        $v0, $s0, 31
/* 1B05AC 8024704C 02028021 */  addu       $s0, $s0, $v0
/* 1B05B0 80247050 00108043 */  sra        $s0, $s0, 1
/* 1B05B4 80247054 26310001 */  addiu      $s1, $s1, 0x1
.L80247058:
/* 1B05B8 80247058 0220282D */  daddu      $a1, $s1, $zero
.L8024705C:
/* 1B05BC 8024705C 02703021 */  addu       $a2, $s3, $s0
/* 1B05C0 80247060 26920016 */  addiu      $s2, $s4, 0x16
glabel func_80247064
/* 1B05C4 80247064 0240382D */  daddu      $a3, $s2, $zero
/* 1B05C8 80247068 240200FF */  addiu      $v0, $zero, 0xFF
/* 1B05CC 8024706C AFA20010 */  sw         $v0, 0x10($sp)
/* 1B05D0 80247070 24020008 */  addiu      $v0, $zero, 0x8
/* 1B05D4 80247074 AFA20018 */  sw         $v0, 0x18($sp)
/* 1B05D8 80247078 2402000B */  addiu      $v0, $zero, 0xB
/* 1B05DC 8024707C AFA00014 */  sw         $zero, 0x14($sp)
/* 1B05E0 80247080 0C09279F */  jal        filemenu_draw_file_name
/* 1B05E4 80247084 AFA2001C */   sw        $v0, 0x1C($sp)
/* 1B05E8 80247088 00111040 */  sll        $v0, $s1, 1
/* 1B05EC 8024708C 00511021 */  addu       $v0, $v0, $s1
.L80247090:
/* 1B05F0 80247090 00021080 */  sll        $v0, $v0, 2
/* 1B05F4 80247094 00511023 */  subu       $v0, $v0, $s1
/* 1B05F8 80247098 02028021 */  addu       $s0, $s0, $v0
/* 1B05FC 8024709C 0C09279A */  jal        filemenu_get_menu_message
/* 1B0600 802470A0 24040014 */   addiu     $a0, $zero, 0x14
/* 1B0604 802470A4 0040202D */  daddu      $a0, $v0, $zero
/* 1B0608 802470A8 02702821 */  addu       $a1, $s3, $s0
.L802470AC:
/* 1B060C 802470AC 0240302D */  daddu      $a2, $s2, $zero
/* 1B0610 802470B0 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B0614 802470B4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B0618 802470B8 0C092742 */  jal        filemenu_draw_message
/* 1B061C 802470BC AFA00014 */   sw        $zero, 0x14($sp)
glabel func_802470C0
/* 1B0620 802470C0 0C09279A */  jal        filemenu_get_menu_message
/* 1B0624 802470C4 24040015 */   addiu     $a0, $zero, 0x15
/* 1B0628 802470C8 0040202D */  daddu      $a0, $v0, $zero
/* 1B062C 802470CC 26650046 */  addiu      $a1, $s3, 0x46
/* 1B0630 802470D0 08091C5B */  j          .L8024716C
/* 1B0634 802470D4 26860026 */   addiu     $a2, $s4, 0x26
glabel .L802470D8
/* 1B0638 802470D8 0C09279A */  jal        filemenu_get_menu_message
/* 1B063C 802470DC 24040019 */   addiu     $a0, $zero, 0x19
/* 1B0640 802470E0 0040202D */  daddu      $a0, $v0, $zero
/* 1B0644 802470E4 26650025 */  addiu      $a1, $s3, 0x25
/* 1B0648 802470E8 26900004 */  addiu      $s0, $s4, 0x4
.L802470EC:
/* 1B064C 802470EC 0200302D */  daddu      $a2, $s0, $zero
/* 1B0650 802470F0 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B0654 802470F4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B0658 802470F8 0C092742 */  jal        filemenu_draw_message
/* 1B065C 802470FC AFA00014 */   sw        $zero, 0x14($sp)
/* 1B0660 80247100 0C09279A */  jal        filemenu_get_menu_message
/* 1B0664 80247104 24040016 */   addiu     $a0, $zero, 0x16
.L80247108:
/* 1B0668 80247108 0040202D */  daddu      $a0, $v0, $zero
/* 1B066C 8024710C 26650064 */  addiu      $a1, $s3, 0x64
/* 1B0670 80247110 0200302D */  daddu      $a2, $s0, $zero
/* 1B0674 80247114 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B0678 80247118 AFA00010 */  sw         $zero, 0x10($sp)
glabel func_8024711C
/* 1B067C 8024711C 0C092742 */  jal        filemenu_draw_message
/* 1B0680 80247120 AFA00014 */   sw        $zero, 0x14($sp)
/* 1B0684 80247124 2665008E */  addiu      $a1, $s3, 0x8E
/* 1B0688 80247128 26860007 */  addiu      $a2, $s4, 0x7
/* 1B068C 8024712C 3C028025 */  lui        $v0, %hi(filemenu_menus)
/* 1B0690 80247130 8C429F64 */  lw         $v0, %lo(filemenu_menus)($v0)
/* 1B0694 80247134 0000382D */  daddu      $a3, $zero, $zero
/* 1B0698 80247138 90440003 */  lbu        $a0, 0x3($v0)
/* 1B069C 8024713C 240200FF */  addiu      $v0, $zero, 0xFF
.L80247140:
/* 1B06A0 80247140 AFA20014 */  sw         $v0, 0x14($sp)
/* 1B06A4 80247144 24020003 */  addiu      $v0, $zero, 0x3
/* 1B06A8 80247148 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B06AC 8024714C AFA20018 */  sw         $v0, 0x18($sp)
/* 1B06B0 80247150 0C049693 */  jal        draw_number
/* 1B06B4 80247154 24840001 */   addiu     $a0, $a0, 0x1
.L80247158:
/* 1B06B8 80247158 0C09279A */  jal        filemenu_get_menu_message
/* 1B06BC 8024715C 24040021 */   addiu     $a0, $zero, 0x21
/* 1B06C0 80247160 0040202D */  daddu      $a0, $v0, $zero
/* 1B06C4 80247164 2665008C */  addiu      $a1, $s3, 0x8C
.L80247168:
/* 1B06C8 80247168 0200302D */  daddu      $a2, $s0, $zero
.L8024716C:
/* 1B06CC 8024716C 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B06D0 80247170 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B06D4 80247174 0C092742 */  jal        filemenu_draw_message
glabel func_80247178
/* 1B06D8 80247178 AFA00014 */   sw        $zero, 0x14($sp)
.L8024717C:
/* 1B06DC 8024717C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1B06E0 80247180 8FB40030 */  lw         $s4, 0x30($sp)
/* 1B06E4 80247184 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1B06E8 80247188 8FB20028 */  lw         $s2, 0x28($sp)
/* 1B06EC 8024718C 8FB10024 */  lw         $s1, 0x24($sp)
/* 1B06F0 80247190 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B06F4 80247194 03E00008 */  jr         $ra
/* 1B06F8 80247198 27BD0038 */   addiu     $sp, $sp, 0x38

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel filemenu_draw_contents_file_info
/* 1AE534 80244FD4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1AE538 80244FD8 AFBF004C */  sw         $ra, 0x4C($sp)
/* 1AE53C 80244FDC AFBE0048 */  sw         $fp, 0x48($sp)
/* 1AE540 80244FE0 AFB70044 */  sw         $s7, 0x44($sp)
/* 1AE544 80244FE4 AFB60040 */  sw         $s6, 0x40($sp)
/* 1AE548 80244FE8 AFB5003C */  sw         $s5, 0x3C($sp)
/* 1AE54C 80244FEC AFB40038 */  sw         $s4, 0x38($sp)
/* 1AE550 80244FF0 AFB30034 */  sw         $s3, 0x34($sp)
/* 1AE554 80244FF4 AFB20030 */  sw         $s2, 0x30($sp)
/* 1AE558 80244FF8 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1AE55C 80244FFC AFB00028 */  sw         $s0, 0x28($sp)
/* 1AE560 80245000 AFA60058 */  sw         $a2, 0x58($sp)
/* 1AE564 80245004 AFA7005C */  sw         $a3, 0x5C($sp)
/* 1AE568 80245008 3C028007 */  lui        $v0, %hi(gSaveSlotHasData)
/* 1AE56C 8024500C 00441021 */  addu       $v0, $v0, $a0
/* 1AE570 80245010 90426684 */  lbu        $v0, %lo(gSaveSlotHasData)($v0)
/* 1AE574 80245014 14400008 */  bnez       $v0, func_80245038
.L80245018:
/* 1AE578 80245018 00041840 */   sll       $v1, $a0, 1
/* 1AE57C 8024501C 0C09279A */  jal        filemenu_get_menu_message
/* 1AE580 80245020 24040006 */   addiu     $a0, $zero, 0x6
/* 1AE584 80245024 0040202D */  daddu      $a0, $v0, $zero
/* 1AE588 80245028 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE58C 8024502C 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE590 80245030 0809141C */  j          .L80245070
/* 1AE594 80245034 25050032 */   addiu     $a1, $t0, 0x32
glabel func_80245038
/* 1AE598 80245038 3C028007 */  lui        $v0, %hi(gSaveSlotMetadata)
/* 1AE59C 8024503C 24426624 */  addiu      $v0, $v0, %lo(gSaveSlotMetadata)
/* 1AE5A0 80245040 00641821 */  addu       $v1, $v1, $a0
/* 1AE5A4 80245044 000318C0 */  sll        $v1, $v1, 3
/* 1AE5A8 80245048 00629021 */  addu       $s2, $v1, $v0
/* 1AE5AC 8024504C 8E420000 */  lw         $v0, 0x0($s2)
/* 1AE5B0 80245050 1440000F */  bnez       $v0, .L80245090
/* 1AE5B4 80245054 00000000 */   nop
/* 1AE5B8 80245058 0C09279A */  jal        filemenu_get_menu_message
/* 1AE5BC 8024505C 2404000C */   addiu     $a0, $zero, 0xC
/* 1AE5C0 80245060 0040202D */  daddu      $a0, $v0, $zero
/* 1AE5C4 80245064 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE5C8 80245068 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE5CC 8024506C 2505001E */  addiu      $a1, $t0, 0x1E
.L80245070:
/* 1AE5D0 80245070 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE5D4 80245074 2402000A */  addiu      $v0, $zero, 0xA
/* 1AE5D8 80245078 AFA20010 */  sw         $v0, 0x10($sp)
/* 1AE5DC 8024507C AFA00014 */  sw         $zero, 0x14($sp)
/* 1AE5E0 80245080 0C092742 */  jal        filemenu_draw_message
/* 1AE5E4 80245084 25060014 */   addiu     $a2, $t0, 0x14
/* 1AE5E8 80245088 08091509 */  j          .L80245424
/* 1AE5EC 8024508C 00000000 */   nop
.L80245090:
/* 1AE5F0 80245090 0C09279A */  jal        filemenu_get_menu_message
/* 1AE5F4 80245094 24040007 */   addiu     $a0, $zero, 0x7
/* 1AE5F8 80245098 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE5FC 8024509C 0040202D */  daddu      $a0, $v0, $zero
/* 1AE600 802450A0 25050022 */  addiu      $a1, $t0, 0x22
/* 1AE604 802450A4 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE608 802450A8 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE60C 802450AC 2506000A */  addiu      $a2, $t0, 0xA
/* 1AE610 802450B0 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE614 802450B4 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE618 802450B8 24080001 */  addiu      $t0, $zero, 0x1
.L802450BC:
/* 1AE61C 802450BC 0C092742 */  jal        filemenu_draw_message
/* 1AE620 802450C0 AFA80014 */   sw        $t0, 0x14($sp)
/* 1AE624 802450C4 3C166666 */  lui        $s6, (0x66666667 >> 16)
/* 1AE628 802450C8 36D66667 */  ori        $s6, $s6, (0x66666667 & 0xFFFF)
/* 1AE62C 802450CC 24070001 */  addiu      $a3, $zero, 0x1
/* 1AE630 802450D0 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE634 802450D4 92420006 */  lbu        $v0, 0x6($s2)
.L802450D8:
/* 1AE638 802450D8 2505004F */  addiu      $a1, $t0, 0x4F
/* 1AE63C 802450DC 00021600 */  sll        $v0, $v0, 24
/* 1AE640 802450E0 0002A603 */  sra        $s4, $v0, 24
/* 1AE644 802450E4 000217C3 */  sra        $v0, $v0, 31
/* 1AE648 802450E8 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE64C 802450EC 02960018 */  mult       $s4, $s6
/* 1AE650 802450F0 2511000B */  addiu      $s1, $t0, 0xB
/* 1AE654 802450F4 0220302D */  daddu      $a2, $s1, $zero
/* 1AE658 802450F8 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE65C 802450FC AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE660 80245100 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE664 80245104 AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE668 80245108 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE66C 8024510C AFA80018 */  sw         $t0, 0x18($sp)
/* 1AE670 80245110 00004010 */  mfhi       $t0
/* 1AE674 80245114 00088083 */  sra        $s0, $t0, 2
/* 1AE678 80245118 02028023 */  subu       $s0, $s0, $v0
/* 1AE67C 8024511C 0C049693 */  jal        draw_number
/* 1AE680 80245120 0200202D */   daddu     $a0, $s0, $zero
/* 1AE684 80245124 00102080 */  sll        $a0, $s0, 2
/* 1AE688 80245128 00902021 */  addu       $a0, $a0, $s0
/* 1AE68C 8024512C 00042040 */  sll        $a0, $a0, 1
/* 1AE690 80245130 02842023 */  subu       $a0, $s4, $a0
/* 1AE694 80245134 0220302D */  daddu      $a2, $s1, $zero
/* 1AE698 80245138 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE69C 8024513C 24070001 */  addiu      $a3, $zero, 0x1
.L80245140:
/* 1AE6A0 80245140 25050058 */  addiu      $a1, $t0, 0x58
/* 1AE6A4 80245144 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE6A8 80245148 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE6AC 8024514C 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE6B0 80245150 AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE6B4 80245154 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE6B8 80245158 0C049693 */  jal        draw_number
/* 1AE6BC 8024515C AFA80018 */   sw        $t0, 0x18($sp)
glabel func_80245160
/* 1AE6C0 80245160 0C09279A */  jal        filemenu_get_menu_message
/* 1AE6C4 80245164 24040008 */   addiu     $a0, $zero, 0x8
/* 1AE6C8 80245168 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE6CC 8024516C 0040202D */  daddu      $a0, $v0, $zero
/* 1AE6D0 80245170 2505000B */  addiu      $a1, $t0, 0xB
/* 1AE6D4 80245174 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE6D8 80245178 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE6DC 8024517C 25060018 */  addiu      $a2, $t0, 0x18
/* 1AE6E0 80245180 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE6E4 80245184 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE6E8 80245188 24080001 */  addiu      $t0, $zero, 0x1
/* 1AE6EC 8024518C 0C092742 */  jal        filemenu_draw_message
/* 1AE6F0 80245190 AFA80014 */   sw        $t0, 0x14($sp)
/* 1AE6F4 80245194 3C020149 */  lui        $v0, (0x14996FF >> 16)
/* 1AE6F8 80245198 8E540000 */  lw         $s4, 0x0($s2)
/* 1AE6FC 8024519C 344296FF */  ori        $v0, $v0, (0x14996FF & 0xFFFF)
/* 1AE700 802451A0 0054102A */  slt        $v0, $v0, $s4
/* 1AE704 802451A4 10400003 */  beqz       $v0, .L802451B4
/* 1AE708 802451A8 3C021F11 */   lui       $v0, (0x1F11A4A5 >> 16)
/* 1AE70C 802451AC 3C140149 */  lui        $s4, (0x14996FF >> 16)
/* 1AE710 802451B0 369496FF */  ori        $s4, $s4, (0x14996FF & 0xFFFF)
.L802451B4:
/* 1AE714 802451B4 3442A4A5 */  ori        $v0, $v0, (0x1F11A4A5 & 0xFFFF)
/* 1AE718 802451B8 24070001 */  addiu      $a3, $zero, 0x1
/* 1AE71C 802451BC 0000A82D */  daddu      $s5, $zero, $zero
/* 1AE720 802451C0 241E0011 */  addiu      $fp, $zero, 0x11
/* 1AE724 802451C4 2417001C */  addiu      $s7, $zero, 0x1C
/* 1AE728 802451C8 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE72C 802451CC 02820018 */  mult       $s4, $v0
/* 1AE730 802451D0 AFB20020 */  sw         $s2, 0x20($sp)
/* 1AE734 802451D4 2505004C */  addiu      $a1, $t0, 0x4C
/* 1AE738 802451D8 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE73C 802451DC 001497C3 */  sra        $s2, $s4, 31
/* 1AE740 802451E0 25130019 */  addiu      $s3, $t0, 0x19
.L802451E4:
/* 1AE744 802451E4 0260302D */  daddu      $a2, $s3, $zero
/* 1AE748 802451E8 00004010 */  mfhi       $t0
/* 1AE74C 802451EC 00088483 */  sra        $s0, $t0, 18
/* 1AE750 802451F0 02128023 */  subu       $s0, $s0, $s2
/* 1AE754 802451F4 02160018 */  mult       $s0, $s6
/* 1AE758 802451F8 3C168025 */  lui        $s6, %hi(filemenu_hudElemIDs)
/* 1AE75C 802451FC 26D6C470 */  addiu      $s6, $s6, %lo(filemenu_hudElemIDs)
.L80245200:
/* 1AE760 80245200 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE764 80245204 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE768 80245208 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE76C 8024520C AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE770 80245210 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE774 80245214 00101FC3 */  sra        $v1, $s0, 31
/* 1AE778 80245218 AFA80018 */  sw         $t0, 0x18($sp)
/* 1AE77C 8024521C 00004010 */  mfhi       $t0
/* 1AE780 80245220 00081083 */  sra        $v0, $t0, 2
/* 1AE784 80245224 00431023 */  subu       $v0, $v0, $v1
/* 1AE788 80245228 00022080 */  sll        $a0, $v0, 2
/* 1AE78C 8024522C 00822021 */  addu       $a0, $a0, $v0
/* 1AE790 80245230 00E42004 */  sllv       $a0, $a0, $a3
/* 1AE794 80245234 0C049693 */  jal        draw_number
/* 1AE798 80245238 02042023 */   subu      $a0, $s0, $a0
/* 1AE79C 8024523C 3C029B58 */  lui        $v0, (0x9B583739 >> 16)
/* 1AE7A0 80245240 34423739 */  ori        $v0, $v0, (0x9B583739 & 0xFFFF)
/* 1AE7A4 80245244 0260302D */  daddu      $a2, $s3, $zero
/* 1AE7A8 80245248 24070001 */  addiu      $a3, $zero, 0x1
/* 1AE7AC 8024524C 00102080 */  sll        $a0, $s0, 2
/* 1AE7B0 80245250 00902021 */  addu       $a0, $a0, $s0
/* 1AE7B4 80245254 00E42004 */  sllv       $a0, $a0, $a3
/* 1AE7B8 80245258 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE7BC 8024525C 02820018 */  mult       $s4, $v0
/* 1AE7C0 80245260 25050055 */  addiu      $a1, $t0, 0x55
/* 1AE7C4 80245264 2408000A */  addiu      $t0, $zero, 0xA
.L80245268:
/* 1AE7C8 80245268 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE7CC 8024526C 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE7D0 80245270 AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE7D4 80245274 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE7D8 80245278 AFA80018 */  sw         $t0, 0x18($sp)
/* 1AE7DC 8024527C 00004010 */  mfhi       $t0
/* 1AE7E0 80245280 01148821 */  addu       $s1, $t0, $s4
/* 1AE7E4 80245284 03D18807 */  srav       $s1, $s1, $fp
glabel func_80245288
/* 1AE7E8 80245288 02328823 */  subu       $s1, $s1, $s2
/* 1AE7EC 8024528C 0C049693 */  jal        draw_number
/* 1AE7F0 80245290 02242023 */   subu      $a0, $s1, $a0
/* 1AE7F4 80245294 0C09279A */  jal        filemenu_get_menu_message
/* 1AE7F8 80245298 2404000D */   addiu     $a0, $zero, 0xD
/* 1AE7FC 8024529C 0040202D */  daddu      $a0, $v0, $zero
/* 1AE800 802452A0 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE804 802452A4 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE808 802452A8 2510005F */  addiu      $s0, $t0, 0x5F
/* 1AE80C 802452AC 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE810 802452B0 0200282D */  daddu      $a1, $s0, $zero
/* 1AE814 802452B4 25060017 */  addiu      $a2, $t0, 0x17
.L802452B8:
/* 1AE818 802452B8 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE81C 802452BC AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE820 802452C0 24080001 */  addiu      $t0, $zero, 0x1
/* 1AE824 802452C4 0C092742 */  jal        filemenu_draw_message
/* 1AE828 802452C8 AFA80014 */   sw        $t0, 0x14($sp)
/* 1AE82C 802452CC 0C09279A */  jal        filemenu_get_menu_message
/* 1AE830 802452D0 2404000D */   addiu     $a0, $zero, 0xD
/* 1AE834 802452D4 0040202D */  daddu      $a0, $v0, $zero
/* 1AE838 802452D8 0200282D */  daddu      $a1, $s0, $zero
/* 1AE83C 802452DC 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE840 802452E0 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AE844 802452E4 25060012 */  addiu      $a2, $t0, 0x12
/* 1AE848 802452E8 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE84C 802452EC AFA80010 */  sw         $t0, 0x10($sp)
.L802452F0:
/* 1AE850 802452F0 24080001 */  addiu      $t0, $zero, 0x1
/* 1AE854 802452F4 0C092742 */  jal        filemenu_draw_message
/* 1AE858 802452F8 AFA80014 */   sw        $t0, 0x14($sp)
/* 1AE85C 802452FC 3C027482 */  lui        $v0, (0x7482296B >> 16)
/* 1AE860 80245300 3442296B */  ori        $v0, $v0, (0x7482296B & 0xFFFF)
/* 1AE864 80245304 0260302D */  daddu      $a2, $s3, $zero
/* 1AE868 80245308 24070001 */  addiu      $a3, $zero, 0x1
/* 1AE86C 8024530C 00F12004 */  sllv       $a0, $s1, $a3
/* 1AE870 80245310 00912021 */  addu       $a0, $a0, $s1
/* 1AE874 80245314 00E42004 */  sllv       $a0, $a0, $a3
/* 1AE878 80245318 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE87C 8024531C 02820018 */  mult       $s4, $v0
/* 1AE880 80245320 25050064 */  addiu      $a1, $t0, 0x64
/* 1AE884 80245324 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE888 80245328 AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE88C 8024532C 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE890 80245330 AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE894 80245334 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE898 80245338 AFA80018 */  sw         $t0, 0x18($sp)
/* 1AE89C 8024533C 00004010 */  mfhi       $t0
/* 1AE8A0 80245340 00088383 */  sra        $s0, $t0, 14
/* 1AE8A4 80245344 02128023 */  subu       $s0, $s0, $s2
/* 1AE8A8 80245348 0C049693 */  jal        draw_number
/* 1AE8AC 8024534C 02042023 */   subu      $a0, $s0, $a0
/* 1AE8B0 80245350 3C0291A2 */  lui        $v0, (0x91A2B3C5 >> 16)
glabel func_80245354
/* 1AE8B4 80245354 3442B3C5 */  ori        $v0, $v0, (0x91A2B3C5 & 0xFFFF)
/* 1AE8B8 80245358 0260302D */  daddu      $a2, $s3, $zero
/* 1AE8BC 8024535C 24070001 */  addiu      $a3, $zero, 0x1
/* 1AE8C0 80245360 00102080 */  sll        $a0, $s0, 2
/* 1AE8C4 80245364 00902021 */  addu       $a0, $a0, $s0
/* 1AE8C8 80245368 00E42004 */  sllv       $a0, $a0, $a3
/* 1AE8CC 8024536C 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE8D0 80245370 02820018 */  mult       $s4, $v0
/* 1AE8D4 80245374 2505006D */  addiu      $a1, $t0, 0x6D
/* 1AE8D8 80245378 2408000A */  addiu      $t0, $zero, 0xA
/* 1AE8DC 8024537C AFA80010 */  sw         $t0, 0x10($sp)
/* 1AE8E0 80245380 240800FF */  addiu      $t0, $zero, 0xFF
/* 1AE8E4 80245384 AFA80014 */  sw         $t0, 0x14($sp)
/* 1AE8E8 80245388 24080002 */  addiu      $t0, $zero, 0x2
/* 1AE8EC 8024538C AFA80018 */  sw         $t0, 0x18($sp)
/* 1AE8F0 80245390 00004010 */  mfhi       $t0
/* 1AE8F4 80245394 01141021 */  addu       $v0, $t0, $s4
/* 1AE8F8 80245398 000212C3 */  sra        $v0, $v0, 11
.L8024539C:
/* 1AE8FC 8024539C 00521023 */  subu       $v0, $v0, $s2
/* 1AE900 802453A0 0C049693 */  jal        draw_number
/* 1AE904 802453A4 00442023 */   subu      $a0, $v0, $a0
.L802453A8:
/* 1AE908 802453A8 8FA80020 */  lw         $t0, 0x20($sp)
/* 1AE90C 802453AC 91020004 */  lbu        $v0, 0x4($t0)
/* 1AE910 802453B0 02A2102A */  slt        $v0, $s5, $v0
/* 1AE914 802453B4 10400003 */  beqz       $v0, .L802453C4
/* 1AE918 802453B8 00000000 */   nop
/* 1AE91C 802453BC 080914F5 */  j          .L802453D4
/* 1AE920 802453C0 8ED00000 */   lw        $s0, 0x0($s6)
.L802453C4:
/* 1AE924 802453C4 3C088025 */  lui        $t0, %hi(filemenu_hudElemIDs)
/* 1AE928 802453C8 2508C470 */  addiu      $t0, $t0, %lo(filemenu_hudElemIDs)
.L802453CC:
/* 1AE92C 802453CC 02E81021 */  addu       $v0, $s7, $t0
/* 1AE930 802453D0 8C500000 */  lw         $s0, 0x0($v0)
.L802453D4:
/* 1AE934 802453D4 8FA80058 */  lw         $t0, 0x58($sp)
/* 1AE938 802453D8 011E2821 */  addu       $a1, $t0, $fp
/* 1AE93C 802453DC 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1AE940 802453E0 0200202D */  daddu      $a0, $s0, $zero
/* 1AE944 802453E4 0C050C45 */  jal        hud_element_set_render_pos
/* 1AE948 802453E8 2506002C */   addiu     $a2, $t0, 0x2C
/* 1AE94C 802453EC 16A00005 */  bnez       $s5, .L80245404
.L802453F0:
/* 1AE950 802453F0 00000000 */   nop
/* 1AE954 802453F4 0C050BDC */  jal        hud_element_draw_without_clipping
/* 1AE958 802453F8 0200202D */   daddu     $a0, $s0, $zero
/* 1AE95C 802453FC 08091504 */  j          .L80245410
/* 1AE960 80245400 27DE0010 */   addiu     $fp, $fp, 0x10
.L80245404:
/* 1AE964 80245404 0C050BD5 */  jal        hud_element_draw_next
/* 1AE968 80245408 0200202D */   daddu     $a0, $s0, $zero
/* 1AE96C 8024540C 27DE0010 */  addiu      $fp, $fp, 0x10
.L80245410:
/* 1AE970 80245410 26F70004 */  addiu      $s7, $s7, 0x4
/* 1AE974 80245414 26B50001 */  addiu      $s5, $s5, 0x1
/* 1AE978 80245418 2AA20007 */  slti       $v0, $s5, 0x7
/* 1AE97C 8024541C 1440FFE2 */  bnez       $v0, .L802453A8
/* 1AE980 80245420 26D60004 */   addiu     $s6, $s6, 0x4
.L80245424:
/* 1AE984 80245424 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1AE988 80245428 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1AE98C 8024542C 8FB70044 */  lw         $s7, 0x44($sp)
/* 1AE990 80245430 8FB60040 */  lw         $s6, 0x40($sp)
/* 1AE994 80245434 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1AE998 80245438 8FB40038 */  lw         $s4, 0x38($sp)
/* 1AE99C 8024543C 8FB30034 */  lw         $s3, 0x34($sp)
/* 1AE9A0 80245440 8FB20030 */  lw         $s2, 0x30($sp)
/* 1AE9A4 80245444 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1AE9A8 80245448 8FB00028 */  lw         $s0, 0x28($sp)
/* 1AE9AC 8024544C 03E00008 */  jr         $ra
/* 1AE9B0 80245450 27BD0050 */   addiu     $sp, $sp, 0x50

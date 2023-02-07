.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

.section .rodata
.align 3
glabel jtbl_8014EEC0
/* E5DA0 8014EEC0 80126368 */ .word .L80126368
/* E5DA4 8014EEC4 801263F8 */ .word .L801263F8
/* E5DA8 8014EEC8 801263F8 */ .word .L801263F8
/* E5DAC 8014EECC 801263F8 */ .word .L801263F8
/* E5DB0 8014EED0 801263F8 */ .word .L801263F8
/* E5DB4 8014EED4 80126424 */ .word .L80126424
/* E5DB8 8014EED8 80126424 */ .word .L80126424
/* E5DBC 8014EEDC 80126424 */ .word .L80126424
/* E5DC0 8014EEE0 80126480 */ .word .L80126480
/* E5DC4 8014EEE4 80128EA8 */ .word .L80128EA8
/* E5DC8 8014EEE8 80127F90 */ .word .L80127F90
/* E5DCC 8014EEEC 801280AC */ .word .L801280AC
/* E5DD0 8014EEF0 80128E94 */ .word .L80128E94
/* E5DD4 8014EEF4 80128E94 */ .word .L80128E94
/* E5DD8 8014EEF8 80128E94 */ .word .L80128E94
/* E5DDC 8014EEFC 801280B8 */ .word .L801280B8

.align 3
glabel jtbl_8014EF00
/* E5DE0 8014EF00 801264BC */ .word .L801264BC
/* E5DE4 8014EF04 801264D0 */ .word .L801264D0
/* E5DE8 8014EF08 801264D0 */ .word .L801264D0
/* E5DEC 8014EF0C 801264D0 */ .word .L801264D0
/* E5DF0 8014EF10 80126D70 */ .word .L80126D70
/* E5DF4 8014EF14 8012711C */ .word .L8012711C
/* E5DF8 8014EF18 80127328 */ .word .L80127328
/* E5DFC 8014EF1C 80127328 */ .word .L80127328
/* E5E00 8014EF20 80127BA0 */ .word .L80127BA0
/* E5E04 8014EF24 80127E0C */ .word .L80127E0C
/* E5E08 8014EF28 80127E0C */ .word .L80127E0C
/* E5E0C 8014EF2C 8012711C */ .word .L8012711C
/* E5E10 8014EF30 8012711C */ .word .L8012711C
/* E5E14 8014EF34 80127EF4 */ .word .L80127EF4
/* E5E18 8014EF38 8012711C */ .word .L8012711C
/* E5E1C 8014EF3C 00000000 */ .word 0x00000000

glabel D_8014EF40
/* E5E20 8014EF40 3FD6666666666666 */ .double 0.349999999999999978

glabel D_8014EF48
/* E5E28 8014EF48 3FC1111111111111 */ .double 0.133333333333333331

glabel D_8014EF50
/* E5E30 8014EF50 3FC999999999999A */ .double 0.200000000000000011

glabel D_8014EF58
/* E5E38 8014EF58 406FE00000000000 */ .double 255

glabel D_8014EF60
/* E5E40 8014EF60 3FE3333333333333 */ .double 0.599999999999999978

glabel D_8014EF68
/* E5E48 8014EF68 3FE3333333333333 */ .double 0.599999999999999978

.align 3
glabel jtbl_8014EF70
/* E5E50 8014EF70 801280F8 */ .word .L801280F8
/* E5E54 8014EF74 80128130 */ .word .L80128130
/* E5E58 8014EF78 8012A3A8 */ .word .L8012A3A8
/* E5E5C 8014EF7C 8012A3A8 */ .word .L8012A3A8
/* E5E60 8014EF80 8012815C */ .word .L8012815C
/* E5E64 8014EF84 80128194 */ .word .L80128194
/* E5E68 8014EF88 8012A3A8 */ .word .L8012A3A8
/* E5E6C 8014EF8C 8012A3A8 */ .word .L8012A3A8
/* E5E70 8014EF90 801281B4 */ .word .L801281B4
/* E5E74 8014EF94 801281EC */ .word .L801281EC
/* E5E78 8014EF98 80128210 */ .word .L80128210
/* E5E7C 8014EF9C 80128244 */ .word .L80128244
/* E5E80 8014EFA0 80128270 */ .word .L80128270
/* E5E84 8014EFA4 8012A3A8 */ .word .L8012A3A8
/* E5E88 8014EFA8 801282A4 */ .word .L801282A4
/* E5E8C 8014EFAC 801283F8 */ .word .L801283F8
/* E5E90 8014EFB0 8012854C */ .word .L8012854C
/* E5E94 8014EFB4 80128680 */ .word .L80128680
/* E5E98 8014EFB8 8012887C */ .word .L8012887C
/* E5E9C 8014EFBC 80128E7C */ .word .L80128E7C
/* E5EA0 8014EFC0 80128894 */ .word .L80128894
/* E5EA4 8014EFC4 80128910 */ .word .L80128910
/* E5EA8 8014EFC8 80128964 */ .word .L80128964
/* E5EAC 8014EFCC 80128984 */ .word .L80128984
/* E5EB0 8014EFD0 80128994 */ .word .L80128994
/* E5EB4 8014EFD4 801289BC */ .word .L801289BC
/* E5EB8 8014EFD8 801289E4 */ .word .L801289E4
/* E5EBC 8014EFDC 801289F8 */ .word .L801289F8
/* E5EC0 8014EFE0 80128A18 */ .word .L80128A18
/* E5EC4 8014EFE4 80128C98 */ .word .L80128C98
/* E5EC8 8014EFE8 80128E10 */ .word .L80128E10
/* E5ECC 8014EFEC 00000000 */ .word 0x00000000

glabel D_8014EFF0
/* E5ED0 8014EFF0 3FE6666666666666 */ .double 0.699999999999999956

glabel D_8014EFF8
/* E5ED8 8014EFF8 3FE6666666666666 */ .double 0.699999999999999956

glabel D_8014F000
/* E5EE0 8014F000 3FE6666666666666 */ .double 0.699999999999999956

.align 3
glabel jtbl_8014F008
/* E5EE8 8014F008 80128A50 */ .word .L80128A50
/* E5EEC 8014F00C 80128A68 */ .word .L80128A68
/* E5EF0 8014F010 80128A80 */ .word .L80128A80
/* E5EF4 8014F014 80128AD0 */ .word .L80128AD0
/* E5EF8 8014F018 8012A3A8 */ .word .L8012A3A8
/* E5EFC 8014F01C 80128B64 */ .word .L80128B64
/* E5F00 8014F020 80128B98 */ .word .L80128B98
/* E5F04 8014F024 80128BB0 */ .word .L80128BB0
/* E5F08 8014F028 80128BE4 */ .word .L80128BE4
/* E5F0C 8014F02C 80128BFC */ .word .L80128BFC
/* E5F10 8014F030 80128C14 */ .word .L80128C14
/* E5F14 8014F034 80128C2C */ .word .L80128C2C
/* E5F18 8014F038 80128C44 */ .word .L80128C44
/* E5F1C 8014F03C 80128C5C */ .word .L80128C5C
/* E5F20 8014F040 80128C74 */ .word .L80128C74
/* E5F24 8014F044 00000000 */ .word 0x00000000

.align 3
glabel jtbl_8014F048
/* E5F28 8014F048 80128CD0 */ .word .L80128CD0
/* E5F2C 8014F04C 80128CE4 */ .word .L80128CE4
/* E5F30 8014F050 80128CF8 */ .word .L80128CF8
/* E5F34 8014F054 80128D0C */ .word .L80128D0C
/* E5F38 8014F058 80128E7C */ .word .L80128E7C
/* E5F3C 8014F05C 80128D24 */ .word .L80128D24
/* E5F40 8014F060 80128D38 */ .word .L80128D38
/* E5F44 8014F064 80128D48 */ .word .L80128D48
/* E5F48 8014F068 80128D5C */ .word .L80128D5C
/* E5F4C 8014F06C 80128D70 */ .word .L80128D70
/* E5F50 8014F070 80128D98 */ .word .L80128D98
/* E5F54 8014F074 80128DAC */ .word .L80128DAC
/* E5F58 8014F078 80128DC0 */ .word .L80128DC0
/* E5F5C 8014F07C 80128DD4 */ .word .L80128DD4
/* E5F60 8014F080 80128DF0 */ .word .L80128DF0
/* E5F64 8014F084 00000000 */ .word 0x00000000

glabel D_8014F088
/* E5F68 8014F088 3FD6666666666666 */ .double 0.349999999999999978

glabel D_8014F090
/* E5F70 8014F090 4046800000000000 */ .double 45

glabel D_8014F098
/* E5F78 8014F098 3FF999999999999A */ .double 1.60000000000000009

glabel D_8014F0A0
/* E5F80 8014F0A0 4066800000000000 */ .double 180

glabel D_8014F0A8
/* E5F88 8014F0A8 4056800000000000 */ .double 90

glabel D_8014F0B0
/* E5F90 8014F0B0 3FF999999999999A */ .double 1.60000000000000009

glabel D_8014F0B8
/* E5F98 8014F0B8 4066800000000000 */ .double 180

glabel D_8014F0C0
/* E5FA0 8014F0C0 4056800000000000 */ .double 90

glabel D_8014F0C8m
/* E5FA8 8014F0C8 406FE00000000000 */ .double 255

glabel D_8014F0D0
/* E5FB0 8014F0D0 3FFB333333333333 */ .double 1.69999999999999996

glabel D_8014F0D8
/* E5FB8 8014F0D8 3FF6666666666666 */ .double 1.39999999999999991

glabel D_8014F0E0
/* E5FC0 8014F0E0 3FF3333333333333 */ .double 1.19999999999999996

glabel D_8014F0E8
/* E5FC8 8014F0E8 3FD3333333333333 */ .double 0.299999999999999989

.align 3
glabel jtbl_8014F0F0
/* E5FD0 8014F0F0 80129FB4 */ .word .L80129FB4
/* E5FD4 8014F0F4 80129FB0 */ .word .L80129FB0
/* E5FD8 8014F0F8 80129FB0 */ .word .L80129FB0
/* E5FDC 8014F0FC 80129FB0 */ .word .L80129FB0
/* E5FE0 8014F100 80129FB0 */ .word .L80129FB0
/* E5FE4 8014F104 80129FB0 */ .word .L80129FB0
/* E5FE8 8014F108 80129FB0 */ .word .L80129FB0
/* E5FEC 8014F10C 80129FB4 */ .word .L80129FB4
/* E5FF0 8014F110 80129FB0 */ .word .L80129FB0
/* E5FF4 8014F114 80129FB0 */ .word .L80129FB0
/* E5FF8 8014F118 80129FB0 */ .word .L80129FB0
/* E5FFC 8014F11C 80129FB0 */ .word .L80129FB0
/* E6000 8014F120 80129FB0 */ .word .L80129FB0
/* E6004 8014F124 80129FB0 */ .word .L80129FB0
/* E6008 8014F128 80129FB0 */ .word .L80129FB0
/* E600C 8014F12C 80129FB0 */ .word .L80129FB0
/* E6010 8014F130 80129FB4 */ .word .L80129FB4
/* E6014 8014F134 80129FB4 */ .word .L80129FB4
/* E6018 8014F138 80129FB4 */ .word .L80129FB4
/* E601C 8014F13C 80129FB4 */ .word .L80129FB4
/* E6020 8014F140 80129FB4 */ .word .L80129FB4
/* E6024 8014F144 80129FB0 */ .word .L80129FB0
/* E6028 8014F148 80129FB0 */ .word .L80129FB0
/* E602C 8014F14C 80129FB0 */ .word .L80129FB0
/* E6030 8014F150 80129FB0 */ .word .L80129FB0
/* E6034 8014F154 80129FB0 */ .word .L80129FB0
/* E6038 8014F158 80129FB0 */ .word .L80129FB0
/* E603C 8014F15C 80129FB0 */ .word .L80129FB0
/* E6040 8014F160 80129FB0 */ .word .L80129FB0
/* E6044 8014F164 80129FB0 */ .word .L80129FB0
/* E6048 8014F168 80129FB0 */ .word .L80129FB0
/* E604C 8014F16C 80129FB0 */ .word .L80129FB0
/* E6050 8014F170 80129F90 */ .word .L80129F90
/* E6054 8014F174 80129FB0 */ .word .L80129FB0
/* E6058 8014F178 80129F98 */ .word .L80129F98
/* E605C 8014F17C 80129FA0 */ .word .L80129FA0
/* E6060 8014F180 80129FB0 */ .word .L80129FB0
/* E6064 8014F184 80129FA8 */ .word .L80129FA8

glabel D_8014F188
/* E6068 8014F188 406FE00000000000 */ .double 255

glabel D_8014F190
/* E6070 8014F190 406FE00000000000 */ .double 255


.section .text
glabel appendGfx_message
/* BD020 80126140 27BDFEC8 */  addiu      $sp, $sp, -0x138
/* BD024 80126144 AFBE0100 */  sw         $fp, 0x100($sp)
/* BD028 80126148 0080F02D */  daddu      $fp, $a0, $zero
/* BD02C 8012614C AFB000E0 */  sw         $s0, 0xE0($sp)
/* BD030 80126150 3C108016 */  lui        $s0, %hi(msg_drawState)
/* BD034 80126154 261080F4 */  addiu      $s0, $s0, %lo(msg_drawState)
/* BD038 80126158 AFB100E4 */  sw         $s1, 0xE4($sp)
/* BD03C 8012615C 8FB1014C */  lw         $s1, 0x14C($sp)
/* BD040 80126160 97B8014A */  lhu        $t8, 0x14A($sp)
/* BD044 80126164 3C028016 */  lui        $v0, %hi(D_80155D20)
/* BD048 80126168 244280A0 */  addiu      $v0, $v0, %lo(D_80155D20)
/* BD04C 8012616C AFB200E8 */  sw         $s2, 0xE8($sp)
/* BD050 80126170 93B20153 */  lbu        $s2, 0x153($sp)
/* BD054 80126174 27C30010 */  addiu      $v1, $fp, 0x10
/* BD058 80126178 AFB300EC */  sw         $s3, 0xEC($sp)
/* BD05C 8012617C 3C13800A */  lui        $s3, %hi(gMasterGfxPos)
/* BD060 80126180 26739244 */  addiu      $s3, $s3, %lo(gMasterGfxPos)
/* BD064 80126184 AFBF0104 */  sw         $ra, 0x104($sp)
/* BD068 80126188 AFB700FC */  sw         $s7, 0xFC($sp)
/* BD06C 8012618C AFB600F8 */  sw         $s6, 0xF8($sp)
/* BD070 80126190 AFB500F4 */  sw         $s5, 0xF4($sp)
/* BD074 80126194 AFB400F0 */  sw         $s4, 0xF0($sp)
/* BD078 80126198 F7BE0130 */  sdc1       $f30, 0x130($sp)
/* BD07C 8012619C F7BC0128 */  sdc1       $f28, 0x128($sp)
/* BD080 801261A0 F7BA0120 */  sdc1       $f26, 0x120($sp)
/* BD084 801261A4 F7B80118 */  sdc1       $f24, 0x118($sp)
/* BD088 801261A8 F7B60110 */  sdc1       $f22, 0x110($sp)
/* BD08C 801261AC F7B40108 */  sdc1       $f20, 0x108($sp)
/* BD090 801261B0 A7A000BE */  sh         $zero, 0xBE($sp)
/* BD094 801261B4 A7B8007E */  sh         $t8, 0x7E($sp)
/* BD098 801261B8 AE020000 */  sw         $v0, 0x0($s0)
/* BD09C 801261BC AC43004C */  sw         $v1, 0x4C($v0)
/* BD0A0 801261C0 A4400034 */  sh         $zero, 0x34($v0)
/* BD0A4 801261C4 A7A50066 */  sh         $a1, 0x66($sp)
/* BD0A8 801261C8 A7A6006E */  sh         $a2, 0x6E($sp)
/* BD0AC 801261CC 8E630000 */  lw         $v1, 0x0($s3)
/* BD0B0 801261D0 3C028015 */  lui        $v0, %hi(D_80151338)
/* BD0B4 801261D4 8C42FAC8 */  lw         $v0, %lo(D_80151338)($v0)
/* BD0B8 801261D8 10620003 */  beq        $v1, $v0, .L801261E8
/* BD0BC 801261DC A7A70076 */   sh        $a3, 0x76($sp)
/* BD0C0 801261E0 0C04A9C6 */  jal        msg_reset_gfx_state
/* BD0C4 801261E4 00000000 */   nop
.L801261E8:
/* BD0C8 801261E8 8E040000 */  lw         $a0, 0x0($s0)
/* BD0CC 801261EC 94820034 */  lhu        $v0, 0x34($a0)
/* BD0D0 801261F0 241900FF */  addiu      $t9, $zero, 0xFF
/* BD0D4 801261F4 A7B9008E */  sh         $t9, 0x8E($sp)
/* BD0D8 801261F8 34420101 */  ori        $v0, $v0, 0x101
/* BD0DC 801261FC A4820034 */  sh         $v0, 0x34($a0)
/* BD0E0 80126200 32220001 */  andi       $v0, $s1, 0x1
/* BD0E4 80126204 10400003 */  beqz       $v0, .L80126214
/* BD0E8 80126208 00000000 */   nop
/* BD0EC 8012620C 325200FF */  andi       $s2, $s2, 0xFF
/* BD0F0 80126210 A7B2008E */  sh         $s2, 0x8E($sp)
.L80126214:
/* BD0F4 80126214 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BD0F8 80126218 44810000 */  mtc1       $at, $f0
/* BD0FC 8012621C 2402013F */  addiu      $v0, $zero, 0x13F
/* BD100 80126220 A4800046 */  sh         $zero, 0x46($a0)
/* BD104 80126224 A4800048 */  sh         $zero, 0x48($a0)
/* BD108 80126228 AC800000 */  sw         $zero, 0x0($a0)
/* BD10C 8012622C AC800008 */  sw         $zero, 0x8($a0)
/* BD110 80126230 AC820004 */  sw         $v0, 0x4($a0)
/* BD114 80126234 A0800029 */  sb         $zero, 0x29($a0)
/* BD118 80126238 8E030000 */  lw         $v1, 0x0($s0)
/* BD11C 8012623C 240200EF */  addiu      $v0, $zero, 0xEF
/* BD120 80126240 AC82000C */  sw         $v0, 0xC($a0)
/* BD124 80126244 E4800010 */  swc1       $f0, 0x10($a0)
/* BD128 80126248 E4800014 */  swc1       $f0, 0x14($a0)
/* BD12C 8012624C A060002B */  sb         $zero, 0x2B($v1)
/* BD130 80126250 8E020000 */  lw         $v0, 0x0($s0)
/* BD134 80126254 241800FF */  addiu      $t8, $zero, 0xFF
/* BD138 80126258 A7B80096 */  sh         $t8, 0x96($sp)
/* BD13C 8012625C A040002C */  sb         $zero, 0x2C($v0)
/* BD140 80126260 8E020000 */  lw         $v0, 0x0($s0)
/* BD144 80126264 0300C82D */  daddu      $t9, $t8, $zero
/* BD148 80126268 A7B900A6 */  sh         $t9, 0xA6($sp)
/* BD14C 8012626C A040002E */  sb         $zero, 0x2E($v0)
/* BD150 80126270 8E030000 */  lw         $v1, 0x0($s0)
/* BD154 80126274 A7A000AE */  sh         $zero, 0xAE($sp)
/* BD158 80126278 AC400030 */  sw         $zero, 0x30($v0)
/* BD15C 8012627C A0600040 */  sb         $zero, 0x40($v1)
/* BD160 80126280 8E020000 */  lw         $v0, 0x0($s0)
/* BD164 80126284 A3A000B0 */  sb         $zero, 0xB0($sp)
/* BD168 80126288 A460003E */  sh         $zero, 0x3E($v1)
/* BD16C 8012628C A0400050 */  sb         $zero, 0x50($v0)
/* BD170 80126290 8E030000 */  lw         $v1, 0x0($s0)
/* BD174 80126294 2418FFFF */  addiu      $t8, $zero, -0x1
/* BD178 80126298 A7B8009E */  sh         $t8, 0x9E($sp)
/* BD17C 8012629C A4400042 */  sh         $zero, 0x42($v0)
/* BD180 801262A0 A4400044 */  sh         $zero, 0x44($v0)
/* BD184 801262A4 A440003C */  sh         $zero, 0x3C($v0)
/* BD188 801262A8 AC400038 */  sw         $zero, 0x38($v0)
/* BD18C 801262AC 32220002 */  andi       $v0, $s1, 0x2
/* BD190 801262B0 10400003 */  beqz       $v0, .L801262C0
/* BD194 801262B4 A460004A */   sh        $zero, 0x4A($v1)
/* BD198 801262B8 24020001 */  addiu      $v0, $zero, 0x1
/* BD19C 801262BC A462003C */  sh         $v0, 0x3C($v1)
.L801262C0:
/* BD1A0 801262C0 32220004 */  andi       $v0, $s1, 0x4
/* BD1A4 801262C4 10400009 */  beqz       $v0, .L801262EC
/* BD1A8 801262C8 3C04004F */   lui       $a0, (0x4FC3BC >> 16)
/* BD1AC 801262CC 8E620000 */  lw         $v0, 0x0($s3)
/* BD1B0 801262D0 3484C3BC */  ori        $a0, $a0, (0x4FC3BC & 0xFFFF)
/* BD1B4 801262D4 0040182D */  daddu      $v1, $v0, $zero
/* BD1B8 801262D8 24420008 */  addiu      $v0, $v0, 0x8
/* BD1BC 801262DC AE620000 */  sw         $v0, 0x0($s3)
/* BD1C0 801262E0 3C02ED00 */  lui        $v0, (0xED000000 >> 16)
/* BD1C4 801262E4 AC620000 */  sw         $v0, 0x0($v1)
/* BD1C8 801262E8 AC640004 */  sw         $a0, 0x4($v1)
.L801262EC:
/* BD1CC 801262EC 3C19FD48 */  lui        $t9, (0xFD48000F >> 16)
/* BD1D0 801262F0 3739000F */  ori        $t9, $t9, (0xFD48000F & 0xFFFF)
/* BD1D4 801262F4 3C18F548 */  lui        $t8, (0xF5480400 >> 16)
/* BD1D8 801262F8 37180400 */  ori        $t8, $t8, (0xF5480400 & 0xFFFF)
/* BD1DC 801262FC AFB900C4 */  sw         $t9, 0xC4($sp)
/* BD1E0 80126300 3C190701 */  lui        $t9, (0x7010050 >> 16)
/* BD1E4 80126304 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BD1E8 80126308 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BD1EC 8012630C 37390050 */  ori        $t9, $t9, (0x7010050 & 0xFFFF)
/* BD1F0 80126310 A7A00080 */  sh         $zero, 0x80($sp)
/* BD1F4 80126314 AFB800C8 */  sw         $t8, 0xC8($sp)
/* BD1F8 80126318 AFB900CC */  sw         $t9, 0xCC($sp)
/* BD1FC 8012631C AC400020 */  sw         $zero, 0x20($v0)
.L80126320:
/* BD200 80126320 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BD204 80126324 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BD208 80126328 8C43004C */  lw         $v1, 0x4C($v0)
/* BD20C 8012632C 8C420020 */  lw         $v0, 0x20($v0)
/* BD210 80126330 97A500BE */  lhu        $a1, 0xBE($sp)
/* BD214 80126334 00621821 */  addu       $v1, $v1, $v0
/* BD218 80126338 90780000 */  lbu        $t8, 0x0($v1)
/* BD21C 8012633C 2704FF10 */  addiu      $a0, $t8, -0xF0
/* BD220 80126340 2C820010 */  sltiu      $v0, $a0, 0x10
/* BD224 80126344 A7B800BE */  sh         $t8, 0xBE($sp)
/* BD228 80126348 90750001 */  lbu        $s5, 0x1($v1)
/* BD22C 8012634C 10400AD1 */  beqz       $v0, .L80128E94
/* BD230 80126350 00041080 */   sll       $v0, $a0, 2
/* BD234 80126354 3C018015 */  lui        $at, %hi(jtbl_8014EEC0)
/* BD238 80126358 00220821 */  addu       $at, $at, $v0
/* BD23C 8012635C 8C22EEC0 */  lw         $v0, %lo(jtbl_8014EEC0)($at)
/* BD240 80126360 00400008 */  jr         $v0
/* BD244 80126364 00000000 */   nop
glabel .L80126368
/* BD248 80126368 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BD24C 8012636C 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BD250 80126370 9482003C */  lhu        $v0, 0x3C($a0)
/* BD254 80126374 A4800042 */  sh         $zero, 0x42($a0)
/* BD258 80126378 00021080 */  sll        $v0, $v0, 2
/* BD25C 8012637C 3C01802F */  lui        $at, %hi(gMsgCharsets)
/* BD260 80126380 00220821 */  addu       $at, $at, $v0
/* BD264 80126384 8C22B5A8 */  lw         $v0, %lo(gMsgCharsets)($at)
/* BD268 80126388 90420003 */  lbu        $v0, 0x3($v0)
/* BD26C 8012638C C4820014 */  lwc1       $f2, 0x14($a0)
/* BD270 80126390 44820000 */  mtc1       $v0, $f0
/* BD274 80126394 00000000 */  nop
/* BD278 80126398 46800020 */  cvt.s.w    $f0, $f0
/* BD27C 8012639C 93C20508 */  lbu        $v0, 0x508($fp)
/* BD280 801263A0 46001082 */  mul.s      $f2, $f2, $f0
/* BD284 801263A4 00000000 */  nop
/* BD288 801263A8 00021040 */  sll        $v0, $v0, 1
/* BD28C 801263AC 3C01802F */  lui        $at, %hi(D_802EB644)
/* BD290 801263B0 00220821 */  addu       $at, $at, $v0
/* BD294 801263B4 8422B644 */  lh         $v0, %lo(D_802EB644)($at)
/* BD298 801263B8 44820000 */  mtc1       $v0, $f0
/* BD29C 801263BC 00000000 */  nop
/* BD2A0 801263C0 46800020 */  cvt.s.w    $f0, $f0
/* BD2A4 801263C4 46001080 */  add.s      $f2, $f2, $f0
/* BD2A8 801263C8 94850034 */  lhu        $a1, 0x34($a0)
/* BD2AC 801263CC 94820044 */  lhu        $v0, 0x44($a0)
/* BD2B0 801263D0 4600130D */  trunc.w.s  $f12, $f2
/* BD2B4 801263D4 44036000 */  mfc1       $v1, $f12
/* BD2B8 801263D8 00000000 */  nop
/* BD2BC 801263DC 00431021 */  addu       $v0, $v0, $v1
/* BD2C0 801263E0 A4820044 */  sh         $v0, 0x44($a0)
/* BD2C4 801263E4 30A20040 */  andi       $v0, $a1, 0x40
/* BD2C8 801263E8 10400AAF */  beqz       $v0, .L80128EA8
/* BD2CC 801263EC 34A20080 */   ori       $v0, $a1, 0x80
/* BD2D0 801263F0 0804A3AA */  j          .L80128EA8
/* BD2D4 801263F4 A4820034 */   sh        $v0, 0x34($a0)
glabel .L801263F8
/* BD2D8 801263F8 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BD2DC 801263FC 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BD2E0 80126400 8C83004C */  lw         $v1, 0x4C($a0)
/* BD2E4 80126404 8C820020 */  lw         $v0, 0x20($a0)
/* BD2E8 80126408 00621821 */  addu       $v1, $v1, $v0
/* BD2EC 8012640C 90630000 */  lbu        $v1, 0x0($v1)
/* BD2F0 80126410 24420001 */  addiu      $v0, $v0, 0x1
/* BD2F4 80126414 AC820020 */  sw         $v0, 0x20($a0)
/* BD2F8 80126418 2463FF0F */  addiu      $v1, $v1, -0xF1
/* BD2FC 8012641C 0804A8EA */  j          .L8012A3A8
/* BD300 80126420 A483003E */   sh        $v1, 0x3E($a0)
glabel .L80126424
/* BD304 80126424 3C078016 */  lui        $a3, %hi(msg_drawState)
/* BD308 80126428 8CE780F4 */  lw         $a3, %lo(msg_drawState)($a3)
/* BD30C 8012642C 8CE2004C */  lw         $v0, 0x4C($a3)
/* BD310 80126430 8CE30020 */  lw         $v1, 0x20($a3)
/* BD314 80126434 94E5003C */  lhu        $a1, 0x3C($a3)
/* BD318 80126438 94E6003E */  lhu        $a2, 0x3E($a3)
/* BD31C 8012643C 00431021 */  addu       $v0, $v0, $v1
/* BD320 80126440 90440000 */  lbu        $a0, 0x0($v0)
/* BD324 80126444 90E20040 */  lbu        $v0, 0x40($a3)
/* BD328 80126448 AFA20010 */  sw         $v0, 0x10($sp)
/* BD32C 8012644C 94E20034 */  lhu        $v0, 0x34($a3)
/* BD330 80126450 AFA20014 */  sw         $v0, 0x14($sp)
/* BD334 80126454 0C049061 */  jal        msg_get_draw_char_width
/* BD338 80126458 8CE70010 */   lw        $a3, 0x10($a3)
/* BD33C 8012645C 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BD340 80126460 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BD344 80126464 94A30042 */  lhu        $v1, 0x42($a1)
/* BD348 80126468 8CA40020 */  lw         $a0, 0x20($a1)
/* BD34C 8012646C 00621821 */  addu       $v1, $v1, $v0
/* BD350 80126470 24840001 */  addiu      $a0, $a0, 0x1
/* BD354 80126474 A4A30042 */  sh         $v1, 0x42($a1)
/* BD358 80126478 0804A8EA */  j          .L8012A3A8
/* BD35C 8012647C ACA40020 */   sw        $a0, 0x20($a1)
glabel .L80126480
/* BD360 80126480 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BD364 80126484 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BD368 80126488 8C620020 */  lw         $v0, 0x20($v1)
/* BD36C 8012648C 8C63004C */  lw         $v1, 0x4C($v1)
/* BD370 80126490 00431021 */  addu       $v0, $v0, $v1
/* BD374 80126494 90420001 */  lbu        $v0, 0x1($v0)
/* BD378 80126498 2443FFFF */  addiu      $v1, $v0, -0x1
/* BD37C 8012649C 2C62000F */  sltiu      $v0, $v1, 0xF
/* BD380 801264A0 10400FC1 */  beqz       $v0, .L8012A3A8
/* BD384 801264A4 00031080 */   sll       $v0, $v1, 2
/* BD388 801264A8 3C018015 */  lui        $at, %hi(jtbl_8014EF00)
/* BD38C 801264AC 00220821 */  addu       $at, $at, $v0
/* BD390 801264B0 8C22EF00 */  lw         $v0, %lo(jtbl_8014EF00)($at)
/* BD394 801264B4 00400008 */  jr         $v0
/* BD398 801264B8 00000000 */   nop
glabel .L801264BC
/* BD39C 801264BC 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BD3A0 801264C0 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BD3A4 801264C4 94620044 */  lhu        $v0, 0x44($v1)
/* BD3A8 801264C8 24420005 */  addiu      $v0, $v0, 0x5
/* BD3AC 801264CC A4620044 */  sh         $v0, 0x44($v1)
glabel .L801264D0
/* BD3B0 801264D0 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BD3B4 801264D4 24190002 */  addiu      $t9, $zero, 0x2
/* BD3B8 801264D8 14590008 */  bne        $v0, $t9, .L801264FC
/* BD3BC 801264DC 00000000 */   nop
/* BD3C0 801264E0 93C20509 */  lbu        $v0, 0x509($fp)
/* BD3C4 801264E4 14400005 */  bnez       $v0, .L801264FC
/* BD3C8 801264E8 00000000 */   nop
/* BD3CC 801264EC 97C2050A */  lhu        $v0, 0x50A($fp)
/* BD3D0 801264F0 97C3050C */  lhu        $v1, 0x50C($fp)
/* BD3D4 801264F4 A7C2050E */  sh         $v0, 0x50E($fp)
/* BD3D8 801264F8 A7C30510 */  sh         $v1, 0x510($fp)
.L801264FC:
/* BD3DC 801264FC 97C20514 */  lhu        $v0, 0x514($fp)
/* BD3E0 80126500 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BD3E4 80126504 44816800 */  mtc1       $at, $f13
/* BD3E8 80126508 44806000 */  mtc1       $zero, $f12
/* BD3EC 8012650C 97D6050E */  lhu        $s6, 0x50E($fp)
/* BD3F0 80126510 44820000 */  mtc1       $v0, $f0
/* BD3F4 80126514 00000000 */  nop
/* BD3F8 80126518 46800020 */  cvt.s.w    $f0, $f0
/* BD3FC 8012651C 46000021 */  cvt.d.s    $f0, $f0
/* BD400 80126520 462C0002 */  mul.d      $f0, $f0, $f12
/* BD404 80126524 00000000 */  nop
/* BD408 80126528 97D50510 */  lhu        $s5, 0x510($fp)
/* BD40C 8012652C 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BD410 80126530 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BD414 80126534 87C3045A */  lh         $v1, 0x45A($fp)
/* BD418 80126538 97C20516 */  lhu        $v0, 0x516($fp)
/* BD41C 8012653C 87C4045C */  lh         $a0, 0x45C($fp)
/* BD420 80126540 44822000 */  mtc1       $v0, $f4
/* BD424 80126544 00000000 */  nop
/* BD428 80126548 46802120 */  cvt.s.w    $f4, $f4
/* BD42C 8012654C 46002121 */  cvt.d.s    $f4, $f4
/* BD430 80126550 462C2102 */  mul.d      $f4, $f4, $f12
/* BD434 80126554 00000000 */  nop
/* BD438 80126558 2418000A */  addiu      $t8, $zero, 0xA
/* BD43C 8012655C 94A20034 */  lhu        $v0, 0x34($a1)
/* BD440 80126560 44831000 */  mtc1       $v1, $f2
/* BD444 80126564 00000000 */  nop
/* BD448 80126568 468010A1 */  cvt.d.w    $f2, $f2
/* BD44C 8012656C A4B8004A */  sh         $t8, 0x4A($a1)
/* BD450 80126570 34420010 */  ori        $v0, $v0, 0x10
/* BD454 80126574 A4A20034 */  sh         $v0, 0x34($a1)
/* BD458 80126578 93C20508 */  lbu        $v0, 0x508($fp)
/* BD45C 8012657C 46201080 */  add.d      $f2, $f2, $f0
/* BD460 80126580 2442FFFF */  addiu      $v0, $v0, -0x1
/* BD464 80126584 44840000 */  mtc1       $a0, $f0
/* BD468 80126588 00000000 */  nop
/* BD46C 8012658C 46800021 */  cvt.d.w    $f0, $f0
/* BD470 80126590 46240000 */  add.d      $f0, $f0, $f4
/* BD474 80126594 2C420003 */  sltiu      $v0, $v0, 0x3
/* BD478 80126598 4620130D */  trunc.w.d  $f12, $f2
/* BD47C 8012659C 44146000 */  mfc1       $s4, $f12
/* BD480 801265A0 4620030D */  trunc.w.d  $f12, $f0
/* BD484 801265A4 44136000 */  mfc1       $s3, $f12
/* BD488 801265A8 10400013 */  beqz       $v0, .L801265F8
/* BD48C 801265AC 241000DA */   addiu     $s0, $zero, 0xDA
/* BD490 801265B0 24120020 */  addiu      $s2, $zero, 0x20
/* BD494 801265B4 24110044 */  addiu      $s1, $zero, 0x44
/* BD498 801265B8 24020016 */  addiu      $v0, $zero, 0x16
/* BD49C 801265BC A7C2045A */  sh         $v0, 0x45A($fp)
/* BD4A0 801265C0 2402000D */  addiu      $v0, $zero, 0xD
/* BD4A4 801265C4 A7C2045C */  sh         $v0, 0x45C($fp)
/* BD4A8 801265C8 24020128 */  addiu      $v0, $zero, 0x128
/* BD4AC 801265CC A7C20514 */  sh         $v0, 0x514($fp)
/* BD4B0 801265D0 0220102D */  daddu      $v0, $s1, $zero
/* BD4B4 801265D4 A7C20516 */  sh         $v0, 0x516($fp)
/* BD4B8 801265D8 2402001A */  addiu      $v0, $zero, 0x1A
/* BD4BC 801265DC A4A20046 */  sh         $v0, 0x46($a1)
/* BD4C0 801265E0 24020006 */  addiu      $v0, $zero, 0x6
/* BD4C4 801265E4 A4A20048 */  sh         $v0, 0x48($a1)
/* BD4C8 801265E8 24020114 */  addiu      $v0, $zero, 0x114
/* BD4CC 801265EC A7C20482 */  sh         $v0, 0x482($fp)
/* BD4D0 801265F0 080499DC */  j          .L80126770
/* BD4D4 801265F4 24020039 */   addiu     $v0, $zero, 0x39
.L801265F8:
/* BD4D8 801265F8 93C3053C */  lbu        $v1, 0x53C($fp)
/* BD4DC 801265FC 24190002 */  addiu      $t9, $zero, 0x2
/* BD4E0 80126600 10790012 */  beq        $v1, $t9, .L8012664C
/* BD4E4 80126604 28620003 */   slti      $v0, $v1, 0x3
/* BD4E8 80126608 10400005 */  beqz       $v0, .L80126620
/* BD4EC 8012660C 24180001 */   addiu     $t8, $zero, 0x1
/* BD4F0 80126610 10780008 */  beq        $v1, $t8, .L80126634
/* BD4F4 80126614 24120020 */   addiu     $s2, $zero, 0x20
/* BD4F8 80126618 0804999E */  j          .L80126678
/* BD4FC 8012661C 00000000 */   nop
.L80126620:
/* BD500 80126620 24190003 */  addiu      $t9, $zero, 0x3
/* BD504 80126624 1079000F */  beq        $v1, $t9, .L80126664
/* BD508 80126628 24120020 */   addiu     $s2, $zero, 0x20
/* BD50C 8012662C 0804999E */  j          .L80126678
/* BD510 80126630 00000000 */   nop
.L80126634:
/* BD514 80126634 24120018 */  addiu      $s2, $zero, 0x18
/* BD518 80126638 24020012 */  addiu      $v0, $zero, 0x12
/* BD51C 8012663C 2418000A */  addiu      $t8, $zero, 0xA
/* BD520 80126640 A4A20046 */  sh         $v0, 0x46($a1)
/* BD524 80126644 080499A4 */  j          .L80126690
/* BD528 80126648 A4B80048 */   sh        $t8, 0x48($a1)
.L8012664C:
/* BD52C 8012664C 2412001C */  addiu      $s2, $zero, 0x1C
/* BD530 80126650 24020016 */  addiu      $v0, $zero, 0x16
/* BD534 80126654 A4A20046 */  sh         $v0, 0x46($a1)
/* BD538 80126658 24020006 */  addiu      $v0, $zero, 0x6
/* BD53C 8012665C 080499A4 */  j          .L80126690
/* BD540 80126660 A4A20048 */   sh        $v0, 0x48($a1)
.L80126664:
/* BD544 80126664 2402001A */  addiu      $v0, $zero, 0x1A
/* BD548 80126668 A4A20046 */  sh         $v0, 0x46($a1)
/* BD54C 8012666C 24020008 */  addiu      $v0, $zero, 0x8
/* BD550 80126670 080499A4 */  j          .L80126690
/* BD554 80126674 A4A20048 */   sh        $v0, 0x48($a1)
.L80126678:
/* BD558 80126678 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BD55C 8012667C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BD560 80126680 2403001A */  addiu      $v1, $zero, 0x1A
/* BD564 80126684 A4430046 */  sh         $v1, 0x46($v0)
/* BD568 80126688 24030006 */  addiu      $v1, $zero, 0x6
/* BD56C 8012668C A4430048 */  sh         $v1, 0x48($v0)
.L80126690:
/* BD570 80126690 97D00538 */  lhu        $s0, 0x538($fp)
/* BD574 80126694 2A020101 */  slti       $v0, $s0, 0x101
/* BD578 80126698 50400001 */  beql       $v0, $zero, .L801266A0
/* BD57C 8012669C 24100100 */   addiu     $s0, $zero, 0x100
.L801266A0:
/* BD580 801266A0 2A020046 */  slti       $v0, $s0, 0x46
/* BD584 801266A4 54400001 */  bnel       $v0, $zero, .L801266AC
/* BD588 801266A8 24100046 */   addiu     $s0, $zero, 0x46
.L801266AC:
/* BD58C 801266AC 2610FFF4 */  addiu      $s0, $s0, -0xC
/* BD590 801266B0 00121040 */  sll        $v0, $s2, 1
/* BD594 801266B4 93C3053C */  lbu        $v1, 0x53C($fp)
/* BD598 801266B8 02021021 */  addu       $v0, $s0, $v0
/* BD59C 801266BC A7C20514 */  sh         $v0, 0x514($fp)
/* BD5A0 801266C0 000310C0 */  sll        $v0, $v1, 3
/* BD5A4 801266C4 00431023 */  subu       $v0, $v0, $v1
/* BD5A8 801266C8 00021040 */  sll        $v0, $v0, 1
/* BD5AC 801266CC 24510010 */  addiu      $s1, $v0, 0x10
/* BD5B0 801266D0 2A220045 */  slti       $v0, $s1, 0x45
/* BD5B4 801266D4 50400001 */  beql       $v0, $zero, .L801266DC
/* BD5B8 801266D8 24110044 */   addiu     $s1, $zero, 0x44
.L801266DC:
/* BD5BC 801266DC 2A220024 */  slti       $v0, $s1, 0x24
/* BD5C0 801266E0 54400001 */  bnel       $v0, $zero, .L801266E8
/* BD5C4 801266E4 24110024 */   addiu     $s1, $zero, 0x24
.L801266E8:
/* BD5C8 801266E8 97C40514 */  lhu        $a0, 0x514($fp)
/* BD5CC 801266EC 97C2050E */  lhu        $v0, 0x50E($fp)
/* BD5D0 801266F0 00041842 */  srl        $v1, $a0, 1
/* BD5D4 801266F4 00433023 */  subu       $a2, $v0, $v1
/* BD5D8 801266F8 28C20012 */  slti       $v0, $a2, 0x12
/* BD5DC 801266FC 10400002 */  beqz       $v0, .L80126708
/* BD5E0 80126700 A7D10516 */   sh        $s1, 0x516($fp)
/* BD5E4 80126704 24060012 */  addiu      $a2, $zero, 0x12
.L80126708:
/* BD5E8 80126708 00C41021 */  addu       $v0, $a2, $a0
/* BD5EC 8012670C 2842012F */  slti       $v0, $v0, 0x12F
/* BD5F0 80126710 14400002 */  bnez       $v0, .L8012671C
/* BD5F4 80126714 2402012E */   addiu     $v0, $zero, 0x12E
/* BD5F8 80126718 00443023 */  subu       $a2, $v0, $a0
.L8012671C:
/* BD5FC 8012671C 97C50516 */  lhu        $a1, 0x516($fp)
/* BD600 80126720 97C20510 */  lhu        $v0, 0x510($fp)
/* BD604 80126724 24A30026 */  addiu      $v1, $a1, 0x26
/* BD608 80126728 00432023 */  subu       $a0, $v0, $v1
/* BD60C 8012672C 28820014 */  slti       $v0, $a0, 0x14
/* BD610 80126730 54400001 */  bnel       $v0, $zero, .L80126738
/* BD614 80126734 24040014 */   addiu     $a0, $zero, 0x14
.L80126738:
/* BD618 80126738 00851021 */  addu       $v0, $a0, $a1
/* BD61C 8012673C 284200AB */  slti       $v0, $v0, 0xAB
/* BD620 80126740 14400002 */  bnez       $v0, .L8012674C
/* BD624 80126744 240200AA */   addiu     $v0, $zero, 0xAA
/* BD628 80126748 00452023 */  subu       $a0, $v0, $a1
.L8012674C:
/* BD62C 8012674C 97C30514 */  lhu        $v1, 0x514($fp)
/* BD630 80126750 97C20516 */  lhu        $v0, 0x516($fp)
/* BD634 80126754 A7C6045A */  sh         $a2, 0x45A($fp)
/* BD638 80126758 A7C4045C */  sh         $a0, 0x45C($fp)
/* BD63C 8012675C 00661821 */  addu       $v1, $v1, $a2
/* BD640 80126760 2463FFE2 */  addiu      $v1, $v1, -0x1E
/* BD644 80126764 00441021 */  addu       $v0, $v0, $a0
/* BD648 80126768 2442FFEE */  addiu      $v0, $v0, -0x12
/* BD64C 8012676C A7C30482 */  sh         $v1, 0x482($fp)
.L80126770:
/* BD650 80126770 A7C20484 */  sh         $v0, 0x484($fp)
/* BD654 80126774 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BD658 80126778 2442FFF5 */  addiu      $v0, $v0, -0xB
/* BD65C 8012677C 2C420002 */  sltiu      $v0, $v0, 0x2
/* BD660 80126780 10400004 */  beqz       $v0, .L80126794
/* BD664 80126784 24190001 */   addiu     $t9, $zero, 0x1
/* BD668 80126788 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BD66C 8012678C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BD670 80126790 A059002B */  sb         $t9, 0x2B($v0)
.L80126794:
/* BD674 80126794 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BD678 80126798 24180002 */  addiu      $t8, $zero, 0x2
/* BD67C 8012679C 1458008A */  bne        $v0, $t8, .L801269C8
/* BD680 801267A0 24190003 */   addiu     $t9, $zero, 0x3
/* BD684 801267A4 0000202D */  daddu      $a0, $zero, $zero
/* BD688 801267A8 3C053D8F */  lui        $a1, (0x3D8F5C29 >> 16)
/* BD68C 801267AC 34A55C29 */  ori        $a1, $a1, (0x3D8F5C29 & 0xFFFF)
/* BD690 801267B0 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* BD694 801267B4 93C70509 */  lbu        $a3, 0x509($fp)
/* BD698 801267B8 24190007 */  addiu      $t9, $zero, 0x7
/* BD69C 801267BC 0C00A821 */  jal        update_lerp
/* BD6A0 801267C0 AFB90010 */   sw        $t9, 0x10($sp)
/* BD6A4 801267C4 3C053E99 */  lui        $a1, (0x3E99999A >> 16)
/* BD6A8 801267C8 34A5999A */  ori        $a1, $a1, (0x3E99999A & 0xFFFF)
/* BD6AC 801267CC 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* BD6B0 801267D0 0000202D */  daddu      $a0, $zero, $zero
/* BD6B4 801267D4 E7A000C0 */  swc1       $f0, 0xC0($sp)
/* BD6B8 801267D8 93C70509 */  lbu        $a3, 0x509($fp)
/* BD6BC 801267DC 24180007 */  addiu      $t8, $zero, 0x7
/* BD6C0 801267E0 0C00A821 */  jal        update_lerp
/* BD6C4 801267E4 AFB80010 */   sw        $t8, 0x10($sp)
/* BD6C8 801267E8 46000786 */  mov.s      $f30, $f0
/* BD6CC 801267EC 0000202D */  daddu      $a0, $zero, $zero
/* BD6D0 801267F0 3C0542C0 */  lui        $a1, (0x42C00000 >> 16)
/* BD6D4 801267F4 3C064348 */  lui        $a2, (0x43480000 >> 16)
/* BD6D8 801267F8 93C70509 */  lbu        $a3, 0x509($fp)
/* BD6DC 801267FC 24190007 */  addiu      $t9, $zero, 0x7
/* BD6E0 80126800 0C00A821 */  jal        update_lerp
/* BD6E4 80126804 AFB90010 */   sw        $t9, 0x10($sp)
/* BD6E8 80126808 46000706 */  mov.s      $f28, $f0
/* BD6EC 8012680C 2404000B */  addiu      $a0, $zero, 0xB
/* BD6F0 80126810 00151400 */  sll        $v0, $s5, 16
/* BD6F4 80126814 00021403 */  sra        $v0, $v0, 16
/* BD6F8 80126818 44826000 */  mtc1       $v0, $f12
/* BD6FC 8012681C 00000000 */  nop
/* BD700 80126820 46806320 */  cvt.s.w    $f12, $f12
/* BD704 80126824 00131400 */  sll        $v0, $s3, 16
/* BD708 80126828 00021403 */  sra        $v0, $v0, 16
/* BD70C 8012682C 44056000 */  mfc1       $a1, $f12
/* BD710 80126830 44826000 */  mtc1       $v0, $f12
/* BD714 80126834 00000000 */  nop
/* BD718 80126838 46806320 */  cvt.s.w    $f12, $f12
/* BD71C 8012683C 93C70509 */  lbu        $a3, 0x509($fp)
/* BD720 80126840 44066000 */  mfc1       $a2, $f12
/* BD724 80126844 24180007 */  addiu      $t8, $zero, 0x7
/* BD728 80126848 0C00A821 */  jal        update_lerp
/* BD72C 8012684C AFB80010 */   sw        $t8, 0x10($sp)
/* BD730 80126850 46000506 */  mov.s      $f20, $f0
/* BD734 80126854 2404000B */  addiu      $a0, $zero, 0xB
/* BD738 80126858 00161400 */  sll        $v0, $s6, 16
/* BD73C 8012685C 00021403 */  sra        $v0, $v0, 16
/* BD740 80126860 44826000 */  mtc1       $v0, $f12
/* BD744 80126864 00000000 */  nop
/* BD748 80126868 46806320 */  cvt.s.w    $f12, $f12
/* BD74C 8012686C 00141400 */  sll        $v0, $s4, 16
/* BD750 80126870 00021403 */  sra        $v0, $v0, 16
/* BD754 80126874 44056000 */  mfc1       $a1, $f12
/* BD758 80126878 44826000 */  mtc1       $v0, $f12
/* BD75C 8012687C 00000000 */  nop
/* BD760 80126880 46806320 */  cvt.s.w    $f12, $f12
/* BD764 80126884 93C70509 */  lbu        $a3, 0x509($fp)
/* BD768 80126888 44066000 */  mfc1       $a2, $f12
/* BD76C 8012688C 24180007 */  addiu      $t8, $zero, 0x7
/* BD770 80126890 0C00A821 */  jal        update_lerp
/* BD774 80126894 AFB80010 */   sw        $t8, 0x10($sp)
/* BD778 80126898 97C20514 */  lhu        $v0, 0x514($fp)
/* BD77C 8012689C C7AC00C0 */  lwc1       $f12, 0xC0($sp)
/* BD780 801268A0 44822000 */  mtc1       $v0, $f4
/* BD784 801268A4 00000000 */  nop
/* BD788 801268A8 46802120 */  cvt.s.w    $f4, $f4
/* BD78C 801268AC 460C2102 */  mul.s      $f4, $f4, $f12
/* BD790 801268B0 00000000 */  nop
/* BD794 801268B4 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BD798 801268B8 44816800 */  mtc1       $at, $f13
/* BD79C 801268BC 44806000 */  mtc1       $zero, $f12
/* BD7A0 801268C0 46002121 */  cvt.d.s    $f4, $f4
/* BD7A4 801268C4 462C2102 */  mul.d      $f4, $f4, $f12
/* BD7A8 801268C8 00000000 */  nop
/* BD7AC 801268CC 97C20516 */  lhu        $v0, 0x516($fp)
/* BD7B0 801268D0 44821000 */  mtc1       $v0, $f2
/* BD7B4 801268D4 00000000 */  nop
/* BD7B8 801268D8 468010A0 */  cvt.s.w    $f2, $f2
/* BD7BC 801268DC 461E1082 */  mul.s      $f2, $f2, $f30
/* BD7C0 801268E0 00000000 */  nop
/* BD7C4 801268E4 460010A1 */  cvt.d.s    $f2, $f2
/* BD7C8 801268E8 462C1082 */  mul.d      $f2, $f2, $f12
/* BD7CC 801268EC 00000000 */  nop
/* BD7D0 801268F0 46000021 */  cvt.d.s    $f0, $f0
/* BD7D4 801268F4 46240001 */  sub.d      $f0, $f0, $f4
/* BD7D8 801268F8 4600A121 */  cvt.d.s    $f4, $f20
/* BD7DC 801268FC 46222101 */  sub.d      $f4, $f4, $f2
/* BD7E0 80126900 AFB20010 */  sw         $s2, 0x10($sp)
/* BD7E4 80126904 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* BD7E8 80126908 44811000 */  mtc1       $at, $f2
/* BD7EC 8012690C 462C0000 */  add.d      $f0, $f0, $f12
/* BD7F0 80126910 AFB10014 */  sw         $s1, 0x14($sp)
/* BD7F4 80126914 E7BE001C */  swc1       $f30, 0x1C($sp)
/* BD7F8 80126918 461C103E */  c.le.s     $f2, $f28
/* BD7FC 8012691C 462C2100 */  add.d      $f4, $f4, $f12
/* BD800 80126920 C7AC00C0 */  lwc1       $f12, 0xC0($sp)
/* BD804 80126924 46200620 */  cvt.s.d    $f24, $f0
/* BD808 80126928 E7AC0018 */  swc1       $f12, 0x18($sp)
/* BD80C 8012692C 4600C30D */  trunc.w.s  $f12, $f24
/* BD810 80126930 44026000 */  mfc1       $v0, $f12
/* BD814 80126934 00000000 */  nop
/* BD818 80126938 00021400 */  sll        $v0, $v0, 16
/* BD81C 8012693C 00022C03 */  sra        $a1, $v0, 16
/* BD820 80126940 462026A0 */  cvt.s.d    $f26, $f4
/* BD824 80126944 4600D30D */  trunc.w.s  $f12, $f26
/* BD828 80126948 44026000 */  mfc1       $v0, $f12
/* BD82C 8012694C 00000000 */  nop
/* BD830 80126950 00021400 */  sll        $v0, $v0, 16
/* BD834 80126954 00023403 */  sra        $a2, $v0, 16
/* BD838 80126958 00101400 */  sll        $v0, $s0, 16
/* BD83C 8012695C 45010005 */  bc1t       .L80126974
/* BD840 80126960 00023C03 */   sra       $a3, $v0, 16
/* BD844 80126964 4600E30D */  trunc.w.s  $f12, $f28
/* BD848 80126968 44036000 */  mfc1       $v1, $f12
/* BD84C 8012696C 08049A64 */  j          .L80126990
/* BD850 80126970 03C0202D */   daddu     $a0, $fp, $zero
.L80126974:
/* BD854 80126974 4602E001 */  sub.s      $f0, $f28, $f2
/* BD858 80126978 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* BD85C 8012697C 4600030D */  trunc.w.s  $f12, $f0
/* BD860 80126980 44036000 */  mfc1       $v1, $f12
/* BD864 80126984 00000000 */  nop
/* BD868 80126988 00621825 */  or         $v1, $v1, $v0
/* BD86C 8012698C 03C0202D */  daddu      $a0, $fp, $zero
.L80126990:
/* BD870 80126990 306200FF */  andi       $v0, $v1, 0xFF
/* BD874 80126994 24190001 */  addiu      $t9, $zero, 0x1
/* BD878 80126998 AFA20020 */  sw         $v0, 0x20($sp)
/* BD87C 8012699C 0C04ACE4 */  jal        msg_draw_speech_bubble
/* BD880 801269A0 AFB90024 */   sw        $t9, 0x24($sp)
/* BD884 801269A4 93C20509 */  lbu        $v0, 0x509($fp)
/* BD888 801269A8 24180007 */  addiu      $t8, $zero, 0x7
/* BD88C 801269AC 24420001 */  addiu      $v0, $v0, 0x1
/* BD890 801269B0 A3C20509 */  sb         $v0, 0x509($fp)
/* BD894 801269B4 304200FF */  andi       $v0, $v0, 0xFF
/* BD898 801269B8 145800D8 */  bne        $v0, $t8, .L80126D1C
/* BD89C 801269BC 24020004 */   addiu     $v0, $zero, 0x4
/* BD8A0 801269C0 08049B47 */  j          .L80126D1C
/* BD8A4 801269C4 A3C204F8 */   sb        $v0, 0x4F8($fp)
.L801269C8:
/* BD8A8 801269C8 145900A2 */  bne        $v0, $t9, .L80126C54
/* BD8AC 801269CC 03C0202D */   daddu     $a0, $fp, $zero
/* BD8B0 801269D0 0000202D */  daddu      $a0, $zero, $zero
/* BD8B4 801269D4 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* BD8B8 801269D8 93C20512 */  lbu        $v0, 0x512($fp)
/* BD8BC 801269DC 3C063F19 */  lui        $a2, (0x3F19999A >> 16)
/* BD8C0 801269E0 34C6999A */  ori        $a2, $a2, (0x3F19999A & 0xFFFF)
/* BD8C4 801269E4 24420001 */  addiu      $v0, $v0, 0x1
/* BD8C8 801269E8 A3C20512 */  sb         $v0, 0x512($fp)
/* BD8CC 801269EC 304700FF */  andi       $a3, $v0, 0xFF
/* BD8D0 801269F0 24180005 */  addiu      $t8, $zero, 0x5
/* BD8D4 801269F4 0C00A821 */  jal        update_lerp
/* BD8D8 801269F8 AFB80010 */   sw        $t8, 0x10($sp)
/* BD8DC 801269FC 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
/* BD8E0 80126A00 3C063F4C */  lui        $a2, (0x3F4CCCCD >> 16)
/* BD8E4 80126A04 34C6CCCD */  ori        $a2, $a2, (0x3F4CCCCD & 0xFFFF)
/* BD8E8 80126A08 0000202D */  daddu      $a0, $zero, $zero
/* BD8EC 80126A0C E7A000C0 */  swc1       $f0, 0xC0($sp)
/* BD8F0 80126A10 93C70512 */  lbu        $a3, 0x512($fp)
/* BD8F4 80126A14 24190005 */  addiu      $t9, $zero, 0x5
/* BD8F8 80126A18 0C00A821 */  jal        update_lerp
/* BD8FC 80126A1C AFB90010 */   sw        $t9, 0x10($sp)
/* BD900 80126A20 97C20514 */  lhu        $v0, 0x514($fp)
/* BD904 80126A24 C7AC00C0 */  lwc1       $f12, 0xC0($sp)
/* BD908 80126A28 44821000 */  mtc1       $v0, $f2
/* BD90C 80126A2C 00000000 */  nop
/* BD910 80126A30 468010A0 */  cvt.s.w    $f2, $f2
/* BD914 80126A34 460C1082 */  mul.s      $f2, $f2, $f12
/* BD918 80126A38 00000000 */  nop
/* BD91C 80126A3C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BD920 80126A40 44816800 */  mtc1       $at, $f13
/* BD924 80126A44 44806000 */  mtc1       $zero, $f12
/* BD928 80126A48 460010A1 */  cvt.d.s    $f2, $f2
/* BD92C 80126A4C 462C1082 */  mul.d      $f2, $f2, $f12
/* BD930 80126A50 00000000 */  nop
/* BD934 80126A54 97C20516 */  lhu        $v0, 0x516($fp)
/* BD938 80126A58 46000786 */  mov.s      $f30, $f0
/* BD93C 80126A5C 44820000 */  mtc1       $v0, $f0
/* BD940 80126A60 00000000 */  nop
/* BD944 80126A64 46800020 */  cvt.s.w    $f0, $f0
/* BD948 80126A68 461E0002 */  mul.s      $f0, $f0, $f30
/* BD94C 80126A6C 00000000 */  nop
/* BD950 80126A70 46000021 */  cvt.d.s    $f0, $f0
/* BD954 80126A74 462C0002 */  mul.d      $f0, $f0, $f12
/* BD958 80126A78 00000000 */  nop
/* BD95C 80126A7C 00141400 */  sll        $v0, $s4, 16
/* BD960 80126A80 00021403 */  sra        $v0, $v0, 16
/* BD964 80126A84 4482B000 */  mtc1       $v0, $f22
/* BD968 80126A88 00000000 */  nop
/* BD96C 80126A8C 4680B5A0 */  cvt.s.w    $f22, $f22
/* BD970 80126A90 4600B5A1 */  cvt.d.s    $f22, $f22
/* BD974 80126A94 4622B181 */  sub.d      $f6, $f22, $f2
/* BD978 80126A98 00131400 */  sll        $v0, $s3, 16
/* BD97C 80126A9C 00021403 */  sra        $v0, $v0, 16
/* BD980 80126AA0 4622B580 */  add.d      $f22, $f22, $f2
/* BD984 80126AA4 4482A000 */  mtc1       $v0, $f20
/* BD988 80126AA8 00000000 */  nop
/* BD98C 80126AAC 4680A520 */  cvt.s.w    $f20, $f20
/* BD990 80126AB0 4600A521 */  cvt.d.s    $f20, $f20
/* BD994 80126AB4 4620A101 */  sub.d      $f4, $f20, $f0
/* BD998 80126AB8 4620A500 */  add.d      $f20, $f20, $f0
/* BD99C 80126ABC 462C3180 */  add.d      $f6, $f6, $f12
/* BD9A0 80126AC0 0000202D */  daddu      $a0, $zero, $zero
/* BD9A4 80126AC4 3C05437F */  lui        $a1, (0x437F0000 >> 16)
/* BD9A8 80126AC8 462CB581 */  sub.d      $f22, $f22, $f12
/* BD9AC 80126ACC 3C064280 */  lui        $a2, (0x42800000 >> 16)
/* BD9B0 80126AD0 93C70512 */  lbu        $a3, 0x512($fp)
/* BD9B4 80126AD4 462C2100 */  add.d      $f4, $f4, $f12
/* BD9B8 80126AD8 24180005 */  addiu      $t8, $zero, 0x5
/* BD9BC 80126ADC AFB80010 */  sw         $t8, 0x10($sp)
/* BD9C0 80126AE0 462CA501 */  sub.d      $f20, $f20, $f12
/* BD9C4 80126AE4 46203620 */  cvt.s.d    $f24, $f6
/* BD9C8 80126AE8 4620B5A0 */  cvt.s.d    $f22, $f22
/* BD9CC 80126AEC 462026A0 */  cvt.s.d    $f26, $f4
/* BD9D0 80126AF0 0C00A821 */  jal        update_lerp
/* BD9D4 80126AF4 4620A520 */   cvt.s.d   $f20, $f20
/* BD9D8 80126AF8 46000706 */  mov.s      $f28, $f0
/* BD9DC 80126AFC 3C018015 */  lui        $at, %hi(D_8014EF40)
/* BD9E0 80126B00 D420EF40 */  ldc1       $f0, %lo(D_8014EF40)($at)
/* BD9E4 80126B04 4600E1A1 */  cvt.d.s    $f6, $f28
/* BD9E8 80126B08 46203182 */  mul.d      $f6, $f6, $f0
/* BD9EC 80126B0C 00000000 */  nop
/* BD9F0 80126B10 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BD9F4 80126B14 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BD9F8 80126B18 4600E30D */  trunc.w.s  $f12, $f28
/* BD9FC 80126B1C 44046000 */  mfc1       $a0, $f12
/* BDA00 80126B20 00000000 */  nop
/* BDA04 80126B24 A7A400A6 */  sh         $a0, 0xA6($sp)
/* BDA08 80126B28 84430046 */  lh         $v1, 0x46($v0)
/* BDA0C 80126B2C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* BDA10 80126B30 44814000 */  mtc1       $at, $f8
/* BDA14 80126B34 44831000 */  mtc1       $v1, $f2
/* BDA18 80126B38 00000000 */  nop
/* BDA1C 80126B3C 468010A0 */  cvt.s.w    $f2, $f2
/* BDA20 80126B40 84430048 */  lh         $v1, 0x48($v0)
/* BDA24 80126B44 4602C080 */  add.s      $f2, $f24, $f2
/* BDA28 80126B48 44832000 */  mtc1       $v1, $f4
/* BDA2C 80126B4C 00000000 */  nop
/* BDA30 80126B50 46802120 */  cvt.s.w    $f4, $f4
/* BDA34 80126B54 84430046 */  lh         $v1, 0x46($v0)
/* BDA38 80126B58 4604D100 */  add.s      $f4, $f26, $f4
/* BDA3C 80126B5C 44830000 */  mtc1       $v1, $f0
/* BDA40 80126B60 00000000 */  nop
/* BDA44 80126B64 46800020 */  cvt.s.w    $f0, $f0
/* BDA48 80126B68 84430048 */  lh         $v1, 0x48($v0)
/* BDA4C 80126B6C 4600B581 */  sub.s      $f22, $f22, $f0
/* BDA50 80126B70 4600130D */  trunc.w.s  $f12, $f2
/* BDA54 80126B74 E44C0000 */  swc1       $f12, 0x0($v0)
/* BDA58 80126B78 44830000 */  mtc1       $v1, $f0
/* BDA5C 80126B7C 00000000 */  nop
/* BDA60 80126B80 46800020 */  cvt.s.w    $f0, $f0
/* BDA64 80126B84 4600A501 */  sub.s      $f20, $f20, $f0
/* BDA68 80126B88 4600230D */  trunc.w.s  $f12, $f4
/* BDA6C 80126B8C E44C0008 */  swc1       $f12, 0x8($v0)
/* BDA70 80126B90 4600B30D */  trunc.w.s  $f12, $f22
/* BDA74 80126B94 E44C0004 */  swc1       $f12, 0x4($v0)
/* BDA78 80126B98 4600A30D */  trunc.w.s  $f12, $f20
/* BDA7C 80126B9C E44C000C */  swc1       $f12, 0xC($v0)
/* BDA80 80126BA0 C7AC00C0 */  lwc1       $f12, 0xC0($sp)
/* BDA84 80126BA4 461C403E */  c.le.s     $f8, $f28
/* BDA88 80126BA8 AFB20010 */  sw         $s2, 0x10($sp)
/* BDA8C 80126BAC AFB10014 */  sw         $s1, 0x14($sp)
/* BDA90 80126BB0 E7BE001C */  swc1       $f30, 0x1C($sp)
/* BDA94 80126BB4 E7AC0018 */  swc1       $f12, 0x18($sp)
/* BDA98 80126BB8 4620330D */  trunc.w.d  $f12, $f6
/* BDA9C 80126BBC 44186000 */  mfc1       $t8, $f12
/* BDAA0 80126BC0 00000000 */  nop
/* BDAA4 80126BC4 A7B8008E */  sh         $t8, 0x8E($sp)
/* BDAA8 80126BC8 4600C30D */  trunc.w.s  $f12, $f24
/* BDAAC 80126BCC 44026000 */  mfc1       $v0, $f12
/* BDAB0 80126BD0 00000000 */  nop
/* BDAB4 80126BD4 00021400 */  sll        $v0, $v0, 16
/* BDAB8 80126BD8 00022C03 */  sra        $a1, $v0, 16
/* BDABC 80126BDC 4600D30D */  trunc.w.s  $f12, $f26
/* BDAC0 80126BE0 44026000 */  mfc1       $v0, $f12
/* BDAC4 80126BE4 00000000 */  nop
/* BDAC8 80126BE8 00021400 */  sll        $v0, $v0, 16
/* BDACC 80126BEC 00023403 */  sra        $a2, $v0, 16
/* BDAD0 80126BF0 00101400 */  sll        $v0, $s0, 16
/* BDAD4 80126BF4 45010003 */  bc1t       .L80126C04
/* BDAD8 80126BF8 00023C03 */   sra       $a3, $v0, 16
/* BDADC 80126BFC 08049B07 */  j          .L80126C1C
/* BDAE0 80126C00 0080182D */   daddu     $v1, $a0, $zero
.L80126C04:
/* BDAE4 80126C04 4608E001 */  sub.s      $f0, $f28, $f8
/* BDAE8 80126C08 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* BDAEC 80126C0C 4600030D */  trunc.w.s  $f12, $f0
/* BDAF0 80126C10 44036000 */  mfc1       $v1, $f12
/* BDAF4 80126C14 00000000 */  nop
/* BDAF8 80126C18 00621825 */  or         $v1, $v1, $v0
.L80126C1C:
/* BDAFC 80126C1C 03C0202D */  daddu      $a0, $fp, $zero
/* BDB00 80126C20 306200FF */  andi       $v0, $v1, 0xFF
/* BDB04 80126C24 24190001 */  addiu      $t9, $zero, 0x1
/* BDB08 80126C28 AFA20020 */  sw         $v0, 0x20($sp)
/* BDB0C 80126C2C 0C04ACE4 */  jal        msg_draw_speech_bubble
/* BDB10 80126C30 AFB90024 */   sw        $t9, 0x24($sp)
/* BDB14 80126C34 93C20512 */  lbu        $v0, 0x512($fp)
/* BDB18 80126C38 2C420005 */  sltiu      $v0, $v0, 0x5
/* BDB1C 80126C3C 14400037 */  bnez       $v0, .L80126D1C
/* BDB20 80126C40 00000000 */   nop
/* BDB24 80126C44 8FC204FC */  lw         $v0, 0x4FC($fp)
/* BDB28 80126C48 34420001 */  ori        $v0, $v0, 0x1
/* BDB2C 80126C4C 08049B47 */  j          .L80126D1C
/* BDB30 80126C50 AFC204FC */   sw        $v0, 0x4FC($fp)
.L80126C54:
/* BDB34 80126C54 00103C00 */  sll        $a3, $s0, 16
/* BDB38 80126C58 87C3045A */  lh         $v1, 0x45A($fp)
/* BDB3C 80126C5C 87C5045C */  lh         $a1, 0x45C($fp)
/* BDB40 80126C60 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BDB44 80126C64 44816000 */  mtc1       $at, $f12
/* BDB48 80126C68 241800FF */  addiu      $t8, $zero, 0xFF
/* BDB4C 80126C6C AFB80020 */  sw         $t8, 0x20($sp)
/* BDB50 80126C70 97B80066 */  lhu        $t8, 0x66($sp)
/* BDB54 80126C74 24190001 */  addiu      $t9, $zero, 0x1
/* BDB58 80126C78 AFB90024 */  sw         $t9, 0x24($sp)
/* BDB5C 80126C7C 97B9006E */  lhu        $t9, 0x6E($sp)
/* BDB60 80126C80 00073C03 */  sra        $a3, $a3, 16
/* BDB64 80126C84 AFB20010 */  sw         $s2, 0x10($sp)
/* BDB68 80126C88 AFB10014 */  sw         $s1, 0x14($sp)
/* BDB6C 80126C8C 00181400 */  sll        $v0, $t8, 16
/* BDB70 80126C90 00021403 */  sra        $v0, $v0, 16
/* BDB74 80126C94 00431021 */  addu       $v0, $v0, $v1
/* BDB78 80126C98 4482C000 */  mtc1       $v0, $f24
/* BDB7C 80126C9C 00000000 */  nop
/* BDB80 80126CA0 4680C620 */  cvt.s.w    $f24, $f24
/* BDB84 80126CA4 00191400 */  sll        $v0, $t9, 16
/* BDB88 80126CA8 00021403 */  sra        $v0, $v0, 16
/* BDB8C 80126CAC 00451021 */  addu       $v0, $v0, $a1
/* BDB90 80126CB0 4482D000 */  mtc1       $v0, $f26
/* BDB94 80126CB4 00000000 */  nop
/* BDB98 80126CB8 4680D6A0 */  cvt.s.w    $f26, $f26
/* BDB9C 80126CBC E7AC0018 */  swc1       $f12, 0x18($sp)
/* BDBA0 80126CC0 E7AC001C */  swc1       $f12, 0x1C($sp)
/* BDBA4 80126CC4 4600C30D */  trunc.w.s  $f12, $f24
/* BDBA8 80126CC8 44056000 */  mfc1       $a1, $f12
/* BDBAC 80126CCC 00000000 */  nop
/* BDBB0 80126CD0 00052C00 */  sll        $a1, $a1, 16
/* BDBB4 80126CD4 00052C03 */  sra        $a1, $a1, 16
/* BDBB8 80126CD8 4600D30D */  trunc.w.s  $f12, $f26
/* BDBBC 80126CDC 44066000 */  mfc1       $a2, $f12
/* BDBC0 80126CE0 00000000 */  nop
/* BDBC4 80126CE4 00063400 */  sll        $a2, $a2, 16
/* BDBC8 80126CE8 0C04ACE4 */  jal        msg_draw_speech_bubble
/* BDBCC 80126CEC 00063403 */   sra       $a2, $a2, 16
/* BDBD0 80126CF0 97C2050E */  lhu        $v0, 0x50E($fp)
/* BDBD4 80126CF4 2442FFEC */  addiu      $v0, $v0, -0x14
/* BDBD8 80126CF8 2C420119 */  sltiu      $v0, $v0, 0x119
/* BDBDC 80126CFC 10400007 */  beqz       $v0, .L80126D1C
/* BDBE0 80126D00 00000000 */   nop
/* BDBE4 80126D04 97C20510 */  lhu        $v0, 0x510($fp)
/* BDBE8 80126D08 2C4200DD */  sltiu      $v0, $v0, 0xDD
/* BDBEC 80126D0C 10400003 */  beqz       $v0, .L80126D1C
/* BDBF0 80126D10 00000000 */   nop
/* BDBF4 80126D14 0C04AED9 */  jal        msg_draw_speech_arrow
/* BDBF8 80126D18 03C0202D */   daddu     $a0, $fp, $zero
.L80126D1C:
/* BDBFC 80126D1C 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BDC00 80126D20 24190003 */  addiu      $t9, $zero, 0x3
/* BDC04 80126D24 10590496 */  beq        $v0, $t9, .L80127F80
/* BDC08 80126D28 24020014 */   addiu     $v0, $zero, 0x14
/* BDC0C 80126D2C 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BDC10 80126D30 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BDC14 80126D34 AC820000 */  sw         $v0, 0x0($a0)
/* BDC18 80126D38 87C30458 */  lh         $v1, 0x458($fp)
/* BDC1C 80126D3C 87C5045C */  lh         $a1, 0x45C($fp)
/* BDC20 80126D40 2402012C */  addiu      $v0, $zero, 0x12C
/* BDC24 80126D44 AC820004 */  sw         $v0, 0x4($a0)
/* BDC28 80126D48 84820048 */  lh         $v0, 0x48($a0)
/* BDC2C 80126D4C 00651821 */  addu       $v1, $v1, $a1
/* BDC30 80126D50 00621821 */  addu       $v1, $v1, $v0
/* BDC34 80126D54 AC830008 */  sw         $v1, 0x8($a0)
/* BDC38 80126D58 97C30516 */  lhu        $v1, 0x516($fp)
/* BDC3C 80126D5C 8C820008 */  lw         $v0, 0x8($a0)
/* BDC40 80126D60 00431021 */  addu       $v0, $v0, $v1
/* BDC44 80126D64 2442FFF0 */  addiu      $v0, $v0, -0x10
/* BDC48 80126D68 08049FE0 */  j          .L80127F80
/* BDC4C 80126D6C AC82000C */   sw        $v0, 0xC($a0)
glabel .L80126D70
/* BDC50 80126D70 0000A82D */  daddu      $s5, $zero, $zero
/* BDC54 80126D74 97D20514 */  lhu        $s2, 0x514($fp)
/* BDC58 80126D78 97D30516 */  lhu        $s3, 0x516($fp)
/* BDC5C 80126D7C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BDC60 80126D80 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BDC64 80126D84 A040002B */  sb         $zero, 0x2B($v0)
/* BDC68 80126D88 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BDC6C 80126D8C 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BDC70 80126D90 2402000C */  addiu      $v0, $zero, 0xC
/* BDC74 80126D94 A4620046 */  sh         $v0, 0x46($v1)
/* BDC78 80126D98 24020006 */  addiu      $v0, $zero, 0x6
/* BDC7C 80126D9C A4620048 */  sh         $v0, 0x48($v1)
/* BDC80 80126DA0 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BDC84 80126DA4 24180002 */  addiu      $t8, $zero, 0x2
/* BDC88 80126DA8 14580078 */  bne        $v0, $t8, .L80126F8C
/* BDC8C 80126DAC 241400FF */   addiu     $s4, $zero, 0xFF
/* BDC90 80126DB0 93C20509 */  lbu        $v0, 0x509($fp)
/* BDC94 80126DB4 24030006 */  addiu      $v1, $zero, 0x6
/* BDC98 80126DB8 24420001 */  addiu      $v0, $v0, 0x1
/* BDC9C 80126DBC A3C20509 */  sb         $v0, 0x509($fp)
/* BDCA0 80126DC0 304200FF */  andi       $v0, $v0, 0xFF
/* BDCA4 80126DC4 14430002 */  bne        $v0, $v1, .L80126DD0
/* BDCA8 80126DC8 24020004 */   addiu     $v0, $zero, 0x4
/* BDCAC 80126DCC A3C204F8 */  sb         $v0, 0x4F8($fp)
.L80126DD0:
/* BDCB0 80126DD0 93C20509 */  lbu        $v0, 0x509($fp)
/* BDCB4 80126DD4 3C018015 */  lui        $at, %hi(D_8014EF48)
/* BDCB8 80126DD8 D422EF48 */  ldc1       $f2, %lo(D_8014EF48)($at)
/* BDCBC 80126DDC 44820000 */  mtc1       $v0, $f0
/* BDCC0 80126DE0 00000000 */  nop
/* BDCC4 80126DE4 46800020 */  cvt.s.w    $f0, $f0
/* BDCC8 80126DE8 46000021 */  cvt.d.s    $f0, $f0
/* BDCCC 80126DEC 46220002 */  mul.d      $f0, $f0, $f2
/* BDCD0 80126DF0 00000000 */  nop
/* BDCD4 80126DF4 3C018015 */  lui        $at, %hi(D_8014EF50)
/* BDCD8 80126DF8 D422EF50 */  ldc1       $f2, %lo(D_8014EF50)($at)
/* BDCDC 80126DFC 46220000 */  add.d      $f0, $f0, $f2
/* BDCE0 80126E00 44922000 */  mtc1       $s2, $f4
/* BDCE4 80126E04 00000000 */  nop
/* BDCE8 80126E08 46802120 */  cvt.s.w    $f4, $f4
/* BDCEC 80126E0C 462002A0 */  cvt.s.d    $f10, $f0
/* BDCF0 80126E10 460A2102 */  mul.s      $f4, $f4, $f10
/* BDCF4 80126E14 00000000 */  nop
/* BDCF8 80126E18 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BDCFC 80126E1C 44816800 */  mtc1       $at, $f13
/* BDD00 80126E20 44806000 */  mtc1       $zero, $f12
/* BDD04 80126E24 46002121 */  cvt.d.s    $f4, $f4
/* BDD08 80126E28 462C2002 */  mul.d      $f0, $f4, $f12
/* BDD0C 80126E2C 00000000 */  nop
/* BDD10 80126E30 44933000 */  mtc1       $s3, $f6
/* BDD14 80126E34 00000000 */  nop
/* BDD18 80126E38 468031A0 */  cvt.s.w    $f6, $f6
/* BDD1C 80126E3C 460A3182 */  mul.s      $f6, $f6, $f10
/* BDD20 80126E40 00000000 */  nop
/* BDD24 80126E44 87C3045A */  lh         $v1, 0x45A($fp)
/* BDD28 80126E48 001217C2 */  srl        $v0, $s2, 31
/* BDD2C 80126E4C 02421021 */  addu       $v0, $s2, $v0
/* BDD30 80126E50 460031A1 */  cvt.d.s    $f6, $f6
/* BDD34 80126E54 462C3202 */  mul.d      $f8, $f6, $f12
/* BDD38 80126E58 00000000 */  nop
/* BDD3C 80126E5C 00021043 */  sra        $v0, $v0, 1
/* BDD40 80126E60 00621821 */  addu       $v1, $v1, $v0
/* BDD44 80126E64 001317C2 */  srl        $v0, $s3, 31
/* BDD48 80126E68 02621021 */  addu       $v0, $s3, $v0
/* BDD4C 80126E6C 00021043 */  sra        $v0, $v0, 1
/* BDD50 80126E70 44831000 */  mtc1       $v1, $f2
/* BDD54 80126E74 00000000 */  nop
/* BDD58 80126E78 468010A0 */  cvt.s.w    $f2, $f2
/* BDD5C 80126E7C 87C3045C */  lh         $v1, 0x45C($fp)
/* BDD60 80126E80 462C2100 */  add.d      $f4, $f4, $f12
/* BDD64 80126E84 460010A1 */  cvt.d.s    $f2, $f2
/* BDD68 80126E88 00621821 */  addu       $v1, $v1, $v0
/* BDD6C 80126E8C 46201081 */  sub.d      $f2, $f2, $f0
/* BDD70 80126E90 44830000 */  mtc1       $v1, $f0
/* BDD74 80126E94 00000000 */  nop
/* BDD78 80126E98 46800020 */  cvt.s.w    $f0, $f0
/* BDD7C 80126E9C 46000021 */  cvt.d.s    $f0, $f0
/* BDD80 80126EA0 46280001 */  sub.d      $f0, $f0, $f8
/* BDD84 80126EA4 462010A0 */  cvt.s.d    $f2, $f2
/* BDD88 80126EA8 460010A1 */  cvt.d.s    $f2, $f2
/* BDD8C 80126EAC 462C1080 */  add.d      $f2, $f2, $f12
/* BDD90 80126EB0 4620230D */  trunc.w.d  $f12, $f4
/* BDD94 80126EB4 44126000 */  mfc1       $s2, $f12
/* BDD98 80126EB8 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BDD9C 80126EBC 44816800 */  mtc1       $at, $f13
/* BDDA0 80126EC0 44806000 */  mtc1       $zero, $f12
/* BDDA4 80126EC4 46200020 */  cvt.s.d    $f0, $f0
/* BDDA8 80126EC8 462C3180 */  add.d      $f6, $f6, $f12
/* BDDAC 80126ECC 46000021 */  cvt.d.s    $f0, $f0
/* BDDB0 80126ED0 2A420018 */  slti       $v0, $s2, 0x18
/* BDDB4 80126ED4 462C0000 */  add.d      $f0, $f0, $f12
/* BDDB8 80126ED8 4620330D */  trunc.w.d  $f12, $f6
/* BDDBC 80126EDC 44136000 */  mfc1       $s3, $f12
/* BDDC0 80126EE0 4620130D */  trunc.w.d  $f12, $f2
/* BDDC4 80126EE4 44116000 */  mfc1       $s1, $f12
/* BDDC8 80126EE8 4620030D */  trunc.w.d  $f12, $f0
/* BDDCC 80126EEC 44106000 */  mfc1       $s0, $f12
/* BDDD0 80126EF0 54400001 */  bnel       $v0, $zero, .L80126EF8
/* BDDD4 80126EF4 24120018 */   addiu     $s2, $zero, 0x18
.L80126EF8:
/* BDDD8 80126EF8 2A620018 */  slti       $v0, $s3, 0x18
/* BDDDC 80126EFC 54400001 */  bnel       $v0, $zero, .L80126F04
/* BDDE0 80126F00 24130018 */   addiu     $s3, $zero, 0x18
.L80126F04:
/* BDDE4 80126F04 3C018015 */  lui        $at, %hi(D_8014EF58)
/* BDDE8 80126F08 D422EF58 */  ldc1       $f2, %lo(D_8014EF58)($at)
/* BDDEC 80126F0C 46005021 */  cvt.d.s    $f0, $f10
/* BDDF0 80126F10 46220002 */  mul.d      $f0, $f0, $f2
/* BDDF4 80126F14 00000000 */  nop
/* BDDF8 80126F18 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* BDDFC 80126F1C 44811800 */  mtc1       $at, $f3
/* BDE00 80126F20 44801000 */  mtc1       $zero, $f2
/* BDE04 80126F24 00000000 */  nop
/* BDE08 80126F28 4620103E */  c.le.d     $f2, $f0
/* BDE0C 80126F2C 00000000 */  nop
/* BDE10 80126F30 45030005 */  bc1tl      .L80126F48
/* BDE14 80126F34 46220001 */   sub.d     $f0, $f0, $f2
/* BDE18 80126F38 4620030D */  trunc.w.d  $f12, $f0
/* BDE1C 80126F3C 44036000 */  mfc1       $v1, $f12
/* BDE20 80126F40 08049BD8 */  j          .L80126F60
/* BDE24 80126F44 306200FF */   andi      $v0, $v1, 0xFF
.L80126F48:
/* BDE28 80126F48 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* BDE2C 80126F4C 4620030D */  trunc.w.d  $f12, $f0
/* BDE30 80126F50 44036000 */  mfc1       $v1, $f12
/* BDE34 80126F54 00000000 */  nop
/* BDE38 80126F58 00621825 */  or         $v1, $v1, $v0
/* BDE3C 80126F5C 306200FF */  andi       $v0, $v1, 0xFF
.L80126F60:
/* BDE40 80126F60 3C018015 */  lui        $at, %hi(D_8014EF60)
/* BDE44 80126F64 D422EF60 */  ldc1       $f2, %lo(D_8014EF60)($at)
/* BDE48 80126F68 44820000 */  mtc1       $v0, $f0
/* BDE4C 80126F6C 00000000 */  nop
/* BDE50 80126F70 46800021 */  cvt.d.w    $f0, $f0
/* BDE54 80126F74 46220002 */  mul.d      $f0, $f0, $f2
/* BDE58 80126F78 00000000 */  nop
/* BDE5C 80126F7C 4620030D */  trunc.w.d  $f12, $f0
/* BDE60 80126F80 44186000 */  mfc1       $t8, $f12
/* BDE64 80126F84 08049C20 */  j          .L80127080
/* BDE68 80126F88 A7B8008E */   sh        $t8, 0x8E($sp)
.L80126F8C:
/* BDE6C 80126F8C 24180003 */  addiu      $t8, $zero, 0x3
/* BDE70 80126F90 14580029 */  bne        $v0, $t8, .L80127038
/* BDE74 80126F94 240400FF */   addiu     $a0, $zero, 0xFF
/* BDE78 80126F98 93C20512 */  lbu        $v0, 0x512($fp)
/* BDE7C 80126F9C 24420001 */  addiu      $v0, $v0, 0x1
/* BDE80 80126FA0 A3C20512 */  sb         $v0, 0x512($fp)
/* BDE84 80126FA4 304200FF */  andi       $v0, $v0, 0xFF
/* BDE88 80126FA8 2C420005 */  sltiu      $v0, $v0, 0x5
/* BDE8C 80126FAC 14400004 */  bnez       $v0, .L80126FC0
/* BDE90 80126FB0 00000000 */   nop
/* BDE94 80126FB4 8FC204FC */  lw         $v0, 0x4FC($fp)
/* BDE98 80126FB8 34420001 */  ori        $v0, $v0, 0x1
/* BDE9C 80126FBC AFC204FC */  sw         $v0, 0x4FC($fp)
.L80126FC0:
/* BDEA0 80126FC0 93C30512 */  lbu        $v1, 0x512($fp)
/* BDEA4 80126FC4 3C018015 */  lui        $at, %hi(D_8014EF68)
/* BDEA8 80126FC8 D422EF68 */  ldc1       $f2, %lo(D_8014EF68)($at)
/* BDEAC 80126FCC 00031040 */  sll        $v0, $v1, 1
/* BDEB0 80126FD0 00431021 */  addu       $v0, $v0, $v1
/* BDEB4 80126FD4 000210C0 */  sll        $v0, $v0, 3
/* BDEB8 80126FD8 00431023 */  subu       $v0, $v0, $v1
/* BDEBC 80126FDC 00021040 */  sll        $v0, $v0, 1
/* BDEC0 80126FE0 0002A027 */  nor        $s4, $zero, $v0
/* BDEC4 80126FE4 328200FF */  andi       $v0, $s4, 0xFF
/* BDEC8 80126FE8 44820000 */  mtc1       $v0, $f0
/* BDECC 80126FEC 00000000 */  nop
/* BDED0 80126FF0 46800021 */  cvt.d.w    $f0, $f0
/* BDED4 80126FF4 46220002 */  mul.d      $f0, $f0, $f2
/* BDED8 80126FF8 00000000 */  nop
/* BDEDC 80126FFC 24150001 */  addiu      $s5, $zero, 0x1
/* BDEE0 80127000 4620030D */  trunc.w.d  $f12, $f0
/* BDEE4 80127004 44036000 */  mfc1       $v1, $f12
/* BDEE8 80127008 00000000 */  nop
/* BDEEC 8012700C 00031400 */  sll        $v0, $v1, 16
/* BDEF0 80127010 00021403 */  sra        $v0, $v0, 16
/* BDEF4 80127014 28420020 */  slti       $v0, $v0, 0x20
/* BDEF8 80127018 14400003 */  bnez       $v0, .L80127028
/* BDEFC 8012701C A7A3008E */   sh        $v1, 0x8E($sp)
/* BDF00 80127020 2463FFE0 */  addiu      $v1, $v1, -0x20
/* BDF04 80127024 A7A3008E */  sh         $v1, 0x8E($sp)
.L80127028:
/* BDF08 80127028 87D1045A */  lh         $s1, 0x45A($fp)
/* BDF0C 8012702C 87D0045C */  lh         $s0, 0x45C($fp)
/* BDF10 80127030 08049C21 */  j          .L80127084
/* BDF14 80127034 0220202D */   daddu     $a0, $s1, $zero
.L80127038:
/* BDF18 80127038 24050020 */  addiu      $a1, $zero, 0x20
/* BDF1C 8012703C 00A0302D */  daddu      $a2, $a1, $zero
/* BDF20 80127040 0000382D */  daddu      $a3, $zero, $zero
/* BDF24 80127044 26420002 */  addiu      $v0, $s2, 0x2
/* BDF28 80127048 87D1045A */  lh         $s1, 0x45A($fp)
/* BDF2C 8012704C 87D0045C */  lh         $s0, 0x45C($fp)
/* BDF30 80127050 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BDF34 80127054 AFA20018 */  sw         $v0, 0x18($sp)
/* BDF38 80127058 26620002 */  addiu      $v0, $s3, 0x2
/* BDF3C 8012705C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BDF40 80127060 AFA2001C */  sw         $v0, 0x1C($sp)
/* BDF44 80127064 2622FFFF */  addiu      $v0, $s1, -0x1
/* BDF48 80127068 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BDF4C 8012706C AFA20010 */  sw         $v0, 0x10($sp)
/* BDF50 80127070 2602FFFF */  addiu      $v0, $s0, -0x1
/* BDF54 80127074 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BDF58 80127078 0C04AC4C */  jal        msg_draw_prim_rect
/* BDF5C 8012707C AFA20014 */   sw        $v0, 0x14($sp)
.L80127080:
/* BDF60 80127080 0220202D */  daddu      $a0, $s1, $zero
.L80127084:
/* BDF64 80127084 0200282D */  daddu      $a1, $s0, $zero
/* BDF68 80127088 0240302D */  daddu      $a2, $s2, $zero
/* BDF6C 8012708C 24820002 */  addiu      $v0, $a0, 0x2
/* BDF70 80127090 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BDF74 80127094 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BDF78 80127098 0260382D */  daddu      $a3, $s3, $zero
/* BDF7C 8012709C AC620000 */  sw         $v0, 0x0($v1)
/* BDF80 801270A0 24A20002 */  addiu      $v0, $a1, 0x2
/* BDF84 801270A4 AC620008 */  sw         $v0, 0x8($v1)
/* BDF88 801270A8 00861021 */  addu       $v0, $a0, $a2
/* BDF8C 801270AC 2442FFFE */  addiu      $v0, $v0, -0x2
/* BDF90 801270B0 AC620004 */  sw         $v0, 0x4($v1)
/* BDF94 801270B4 00B31021 */  addu       $v0, $a1, $s3
/* BDF98 801270B8 2442FFFE */  addiu      $v0, $v0, -0x2
/* BDF9C 801270BC AC62000C */  sw         $v0, 0xC($v1)
/* BDFA0 801270C0 24190005 */  addiu      $t9, $zero, 0x5
/* BDFA4 801270C4 AFB90010 */  sw         $t9, 0x10($sp)
/* BDFA8 801270C8 9063002B */  lbu        $v1, 0x2B($v1)
/* BDFAC 801270CC 328200FF */  andi       $v0, $s4, 0xFF
/* BDFB0 801270D0 AFB50018 */  sw         $s5, 0x18($sp)
/* BDFB4 801270D4 AFA2001C */  sw         $v0, 0x1C($sp)
/* BDFB8 801270D8 AFA20020 */  sw         $v0, 0x20($sp)
/* BDFBC 801270DC 0C04B0B8 */  jal        msg_draw_frame
/* BDFC0 801270E0 AFA30014 */   sw        $v1, 0x14($sp)
/* BDFC4 801270E4 0C04A9C6 */  jal        msg_reset_gfx_state
/* BDFC8 801270E8 329400FF */   andi      $s4, $s4, 0xFF
/* BDFCC 801270EC 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BDFD0 801270F0 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BDFD4 801270F4 A7B400A6 */  sh         $s4, 0xA6($sp)
/* BDFD8 801270F8 8C820020 */  lw         $v0, 0x20($a0)
/* BDFDC 801270FC 94830034 */  lhu        $v1, 0x34($a0)
/* BDFE0 80127100 2418000A */  addiu      $t8, $zero, 0xA
/* BDFE4 80127104 A498004A */  sh         $t8, 0x4A($a0)
/* BDFE8 80127108 24420002 */  addiu      $v0, $v0, 0x2
/* BDFEC 8012710C 34630010 */  ori        $v1, $v1, 0x10
/* BDFF0 80127110 AC820020 */  sw         $v0, 0x20($a0)
/* BDFF4 80127114 0804A8EA */  j          .L8012A3A8
/* BDFF8 80127118 A4830034 */   sh        $v1, 0x34($a0)
glabel .L8012711C
/* BDFFC 8012711C 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BE000 80127120 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BE004 80127124 24020010 */  addiu      $v0, $zero, 0x10
/* BE008 80127128 24190003 */  addiu      $t9, $zero, 0x3
/* BE00C 8012712C A4A20046 */  sh         $v0, 0x46($a1)
/* BE010 80127130 A4B90048 */  sh         $t9, 0x48($a1)
/* BE014 80127134 87C2045A */  lh         $v0, 0x45A($fp)
/* BE018 80127138 24420005 */  addiu      $v0, $v0, 0x5
/* BE01C 8012713C ACA20000 */  sw         $v0, 0x0($a1)
/* BE020 80127140 87C2045C */  lh         $v0, 0x45C($fp)
/* BE024 80127144 24420004 */  addiu      $v0, $v0, 0x4
/* BE028 80127148 ACA20008 */  sw         $v0, 0x8($a1)
/* BE02C 8012714C 87C2045A */  lh         $v0, 0x45A($fp)
/* BE030 80127150 97C30514 */  lhu        $v1, 0x514($fp)
/* BE034 80127154 0000882D */  daddu      $s1, $zero, $zero
/* BE038 80127158 00431021 */  addu       $v0, $v0, $v1
/* BE03C 8012715C 2442FFF8 */  addiu      $v0, $v0, -0x8
/* BE040 80127160 ACA20004 */  sw         $v0, 0x4($a1)
/* BE044 80127164 87C2045C */  lh         $v0, 0x45C($fp)
/* BE048 80127168 97C30516 */  lhu        $v1, 0x516($fp)
/* BE04C 8012716C 240400FF */  addiu      $a0, $zero, 0xFF
/* BE050 80127170 00431021 */  addu       $v0, $v0, $v1
/* BE054 80127174 94A30006 */  lhu        $v1, 0x6($a1)
/* BE058 80127178 2442FFFB */  addiu      $v0, $v0, -0x5
/* BE05C 8012717C ACA2000C */  sw         $v0, 0xC($a1)
/* BE060 80127180 2463FFEF */  addiu      $v1, $v1, -0x11
/* BE064 80127184 A7C30482 */  sh         $v1, 0x482($fp)
/* BE068 80127188 94A2000E */  lhu        $v0, 0xE($a1)
/* BE06C 8012718C 0000382D */  daddu      $a3, $zero, $zero
/* BE070 80127190 2442FFEF */  addiu      $v0, $v0, -0x11
/* BE074 80127194 A7C20484 */  sh         $v0, 0x484($fp)
/* BE078 80127198 A4A0004A */  sh         $zero, 0x4A($a1)
/* BE07C 8012719C 97C2045A */  lhu        $v0, 0x45A($fp)
/* BE080 801271A0 24050020 */  addiu      $a1, $zero, 0x20
/* BE084 801271A4 24420003 */  addiu      $v0, $v0, 0x3
/* BE088 801271A8 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE08C 801271AC AFA20010 */  sw         $v0, 0x10($sp)
/* BE090 801271B0 97C2045C */  lhu        $v0, 0x45C($fp)
/* BE094 801271B4 00A0302D */  daddu      $a2, $a1, $zero
/* BE098 801271B8 2442FFFF */  addiu      $v0, $v0, -0x1
/* BE09C 801271BC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE0A0 801271C0 AFA20014 */  sw         $v0, 0x14($sp)
/* BE0A4 801271C4 97C20514 */  lhu        $v0, 0x514($fp)
/* BE0A8 801271C8 24180001 */  addiu      $t8, $zero, 0x1
/* BE0AC 801271CC AFB8001C */  sw         $t8, 0x1C($sp)
/* BE0B0 801271D0 2442FFFA */  addiu      $v0, $v0, -0x6
/* BE0B4 801271D4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE0B8 801271D8 0C04AC4C */  jal        msg_draw_prim_rect
/* BE0BC 801271DC AFA20018 */   sw        $v0, 0x18($sp)
/* BE0C0 801271E0 24040020 */  addiu      $a0, $zero, 0x20
/* BE0C4 801271E4 240500FF */  addiu      $a1, $zero, 0xFF
/* BE0C8 801271E8 97C2045A */  lhu        $v0, 0x45A($fp)
/* BE0CC 801271EC 0080302D */  daddu      $a2, $a0, $zero
/* BE0D0 801271F0 24420003 */  addiu      $v0, $v0, 0x3
/* BE0D4 801271F4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE0D8 801271F8 AFA20010 */  sw         $v0, 0x10($sp)
/* BE0DC 801271FC 97C2045C */  lhu        $v0, 0x45C($fp)
/* BE0E0 80127200 97C30516 */  lhu        $v1, 0x516($fp)
/* BE0E4 80127204 0000382D */  daddu      $a3, $zero, $zero
/* BE0E8 80127208 00431021 */  addu       $v0, $v0, $v1
/* BE0EC 8012720C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE0F0 80127210 AFA20014 */  sw         $v0, 0x14($sp)
/* BE0F4 80127214 97C20514 */  lhu        $v0, 0x514($fp)
/* BE0F8 80127218 24190001 */  addiu      $t9, $zero, 0x1
/* BE0FC 8012721C AFB9001C */  sw         $t9, 0x1C($sp)
/* BE100 80127220 2442FFFA */  addiu      $v0, $v0, -0x6
/* BE104 80127224 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BE108 80127228 0C04AC4C */  jal        msg_draw_prim_rect
/* BE10C 8012722C AFA20018 */   sw        $v0, 0x18($sp)
/* BE110 80127230 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BE114 80127234 24180002 */  addiu      $t8, $zero, 0x2
/* BE118 80127238 14580011 */  bne        $v0, $t8, .L80127280
/* BE11C 8012723C 241000FF */   addiu     $s0, $zero, 0xFF
/* BE120 80127240 93C30509 */  lbu        $v1, 0x509($fp)
/* BE124 80127244 00031040 */  sll        $v0, $v1, 1
/* BE128 80127248 00431021 */  addu       $v0, $v0, $v1
/* BE12C 8012724C 00021100 */  sll        $v0, $v0, 4
/* BE130 80127250 24500050 */  addiu      $s0, $v0, 0x50
/* BE134 80127254 320200FF */  andi       $v0, $s0, 0xFF
/* BE138 80127258 2442FFD0 */  addiu      $v0, $v0, -0x30
/* BE13C 8012725C 24630001 */  addiu      $v1, $v1, 0x1
/* BE140 80127260 A7A2008E */  sh         $v0, 0x8E($sp)
/* BE144 80127264 A3C30509 */  sb         $v1, 0x509($fp)
/* BE148 80127268 306300FF */  andi       $v1, $v1, 0xFF
/* BE14C 8012726C 24020004 */  addiu      $v0, $zero, 0x4
/* BE150 80127270 14620017 */  bne        $v1, $v0, .L801272D0
/* BE154 80127274 24110001 */   addiu     $s1, $zero, 0x1
/* BE158 80127278 08049CB4 */  j          .L801272D0
/* BE15C 8012727C A3C304F8 */   sb        $v1, 0x4F8($fp)
.L80127280:
/* BE160 80127280 24190003 */  addiu      $t9, $zero, 0x3
/* BE164 80127284 14590012 */  bne        $v0, $t9, .L801272D0
/* BE168 80127288 2403FFD0 */   addiu     $v1, $zero, -0x30
/* BE16C 8012728C 93C40512 */  lbu        $a0, 0x512($fp)
/* BE170 80127290 00041080 */  sll        $v0, $a0, 2
/* BE174 80127294 00441021 */  addu       $v0, $v0, $a0
/* BE178 80127298 03221004 */  sllv       $v0, $v0, $t9
/* BE17C 8012729C 00628023 */  subu       $s0, $v1, $v0
/* BE180 801272A0 320200FF */  andi       $v0, $s0, 0xFF
/* BE184 801272A4 00431021 */  addu       $v0, $v0, $v1
/* BE188 801272A8 24840001 */  addiu      $a0, $a0, 0x1
/* BE18C 801272AC A7A2008E */  sh         $v0, 0x8E($sp)
/* BE190 801272B0 A3C40512 */  sb         $a0, 0x512($fp)
/* BE194 801272B4 308400FF */  andi       $a0, $a0, 0xFF
/* BE198 801272B8 24020004 */  addiu      $v0, $zero, 0x4
/* BE19C 801272BC 14820004 */  bne        $a0, $v0, .L801272D0
/* BE1A0 801272C0 24110001 */   addiu     $s1, $zero, 0x1
/* BE1A4 801272C4 8FC204FC */  lw         $v0, 0x4FC($fp)
/* BE1A8 801272C8 34420001 */  ori        $v0, $v0, 0x1
/* BE1AC 801272CC AFC204FC */  sw         $v0, 0x4FC($fp)
.L801272D0:
/* BE1B0 801272D0 87C4045A */  lh         $a0, 0x45A($fp)
/* BE1B4 801272D4 87C5045C */  lh         $a1, 0x45C($fp)
/* BE1B8 801272D8 97C60514 */  lhu        $a2, 0x514($fp)
/* BE1BC 801272DC 97C70516 */  lhu        $a3, 0x516($fp)
/* BE1C0 801272E0 24020006 */  addiu      $v0, $zero, 0x6
/* BE1C4 801272E4 AFA20010 */  sw         $v0, 0x10($sp)
/* BE1C8 801272E8 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BE1CC 801272EC 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BE1D0 801272F0 9043002B */  lbu        $v1, 0x2B($v0)
/* BE1D4 801272F4 320200FF */  andi       $v0, $s0, 0xFF
/* BE1D8 801272F8 AFB10018 */  sw         $s1, 0x18($sp)
/* BE1DC 801272FC AFA2001C */  sw         $v0, 0x1C($sp)
/* BE1E0 80127300 AFA20020 */  sw         $v0, 0x20($sp)
/* BE1E4 80127304 0C04B0B8 */  jal        msg_draw_frame
/* BE1E8 80127308 AFA30014 */   sw        $v1, 0x14($sp)
/* BE1EC 8012730C 0C04A9C6 */  jal        msg_reset_gfx_state
/* BE1F0 80127310 321000FF */   andi      $s0, $s0, 0xFF
/* BE1F4 80127314 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BE1F8 80127318 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BE1FC 8012731C 8C620020 */  lw         $v0, 0x20($v1)
/* BE200 80127320 0804A3A2 */  j          .L80128E88
/* BE204 80127324 A7B000A6 */   sh        $s0, 0xA6($sp)
glabel .L80127328
/* BE208 80127328 24020012 */  addiu      $v0, $zero, 0x12
/* BE20C 8012732C 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BE210 80127330 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BE214 80127334 2404001C */  addiu      $a0, $zero, 0x1C
/* BE218 80127338 A4620046 */  sh         $v0, 0x46($v1)
/* BE21C 8012733C 2402000B */  addiu      $v0, $zero, 0xB
/* BE220 80127340 A4620048 */  sh         $v0, 0x48($v1)
/* BE224 80127344 24020014 */  addiu      $v0, $zero, 0x14
/* BE228 80127348 A7C2045A */  sh         $v0, 0x45A($fp)
/* BE22C 8012734C 24020118 */  addiu      $v0, $zero, 0x118
/* BE230 80127350 A7C20514 */  sh         $v0, 0x514($fp)
/* BE234 80127354 2402000F */  addiu      $v0, $zero, 0xF
/* BE238 80127358 A7C4045C */  sh         $a0, 0x45C($fp)
/* BE23C 8012735C A062002B */  sb         $v0, 0x2B($v1)
/* BE240 80127360 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BE244 80127364 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BE248 80127368 94620044 */  lhu        $v0, 0x44($v1)
/* BE24C 8012736C 2442FFFE */  addiu      $v0, $v0, -0x2
/* BE250 80127370 A4620044 */  sh         $v0, 0x44($v1)
/* BE254 80127374 93C20508 */  lbu        $v0, 0x508($fp)
/* BE258 80127378 24180007 */  addiu      $t8, $zero, 0x7
/* BE25C 8012737C 1458000A */  bne        $v0, $t8, .L801273A8
/* BE260 80127380 241100FF */   addiu     $s1, $zero, 0xFF
/* BE264 80127384 3C17802F */  lui        $s7, %hi(ui_msg_sign_corner_bottomright_png)
/* BE268 80127388 26F7C770 */  addiu      $s7, $s7, %lo(ui_msg_sign_corner_bottomright_png)
/* BE26C 8012738C 3C16802F */  lui        $s6, %hi(ui_msg_sign_pal)
/* BE270 80127390 26D6CD10 */  addiu      $s6, $s6, %lo(ui_msg_sign_pal)
/* BE274 80127394 24020048 */  addiu      $v0, $zero, 0x48
/* BE278 80127398 A7C20516 */  sh         $v0, 0x516($fp)
/* BE27C 8012739C 24020018 */  addiu      $v0, $zero, 0x18
/* BE280 801273A0 08049CEF */  j          .L801273BC
/* BE284 801273A4 A462004A */   sh        $v0, 0x4A($v1)
.L801273A8:
/* BE288 801273A8 3C17802F */  lui        $s7, %hi(ui_msg_lamppost_corner_bottomright_png)
/* BE28C 801273AC 26F7C7F0 */  addiu      $s7, $s7, %lo(ui_msg_lamppost_corner_bottomright_png)
/* BE290 801273B0 3C16802F */  lui        $s6, %hi(ui_msg_lamppost_pal)
/* BE294 801273B4 26D6CD30 */  addiu      $s6, $s6, %lo(ui_msg_lamppost_pal)
/* BE298 801273B8 A464004A */  sh         $a0, 0x4A($v1)
.L801273BC:
/* BE29C 801273BC 24020022 */  addiu      $v0, $zero, 0x22
/* BE2A0 801273C0 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BE2A4 801273C4 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BE2A8 801273C8 24190002 */  addiu      $t9, $zero, 0x2
/* BE2AC 801273CC AC820000 */  sw         $v0, 0x0($a0)
/* BE2B0 801273D0 24020028 */  addiu      $v0, $zero, 0x28
/* BE2B4 801273D4 AC820008 */  sw         $v0, 0x8($a0)
/* BE2B8 801273D8 2402011B */  addiu      $v0, $zero, 0x11B
/* BE2BC 801273DC AC820004 */  sw         $v0, 0x4($a0)
/* BE2C0 801273E0 97C20516 */  lhu        $v0, 0x516($fp)
/* BE2C4 801273E4 94830006 */  lhu        $v1, 0x6($a0)
/* BE2C8 801273E8 24420011 */  addiu      $v0, $v0, 0x11
/* BE2CC 801273EC 2463FFF0 */  addiu      $v1, $v1, -0x10
/* BE2D0 801273F0 AC82000C */  sw         $v0, 0xC($a0)
/* BE2D4 801273F4 A7C30482 */  sh         $v1, 0x482($fp)
/* BE2D8 801273F8 9482000E */  lhu        $v0, 0xE($a0)
/* BE2DC 801273FC 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* BE2E0 80127400 2442FFF7 */  addiu      $v0, $v0, -0x9
/* BE2E4 80127404 14790010 */  bne        $v1, $t9, .L80127448
/* BE2E8 80127408 A7C20484 */   sh        $v0, 0x484($fp)
/* BE2EC 8012740C 93C20509 */  lbu        $v0, 0x509($fp)
/* BE2F0 80127410 24180003 */  addiu      $t8, $zero, 0x3
/* BE2F4 80127414 00021980 */  sll        $v1, $v0, 6
/* BE2F8 80127418 24710050 */  addiu      $s1, $v1, 0x50
/* BE2FC 8012741C 322300FF */  andi       $v1, $s1, 0xFF
/* BE300 80127420 2463FFD0 */  addiu      $v1, $v1, -0x30
/* BE304 80127424 24420001 */  addiu      $v0, $v0, 0x1
/* BE308 80127428 A7A3008E */  sh         $v1, 0x8E($sp)
/* BE30C 8012742C A3C20509 */  sb         $v0, 0x509($fp)
/* BE310 80127430 304200FF */  andi       $v0, $v0, 0xFF
/* BE314 80127434 14580018 */  bne        $v0, $t8, .L80127498
/* BE318 80127438 323800FF */   andi      $t8, $s1, 0xFF
/* BE31C 8012743C 24020004 */  addiu      $v0, $zero, 0x4
/* BE320 80127440 08049D26 */  j          .L80127498
/* BE324 80127444 A3C204F8 */   sb        $v0, 0x4F8($fp)
.L80127448:
/* BE328 80127448 24190003 */  addiu      $t9, $zero, 0x3
/* BE32C 8012744C 14790012 */  bne        $v1, $t9, .L80127498
/* BE330 80127450 323800FF */   andi      $t8, $s1, 0xFF
/* BE334 80127454 93C40512 */  lbu        $a0, 0x512($fp)
/* BE338 80127458 2403FFD0 */  addiu      $v1, $zero, -0x30
/* BE33C 8012745C 00041040 */  sll        $v0, $a0, 1
/* BE340 80127460 00441021 */  addu       $v0, $v0, $a0
/* BE344 80127464 00021100 */  sll        $v0, $v0, 4
/* BE348 80127468 00628823 */  subu       $s1, $v1, $v0
/* BE34C 8012746C 322200FF */  andi       $v0, $s1, 0xFF
/* BE350 80127470 00431021 */  addu       $v0, $v0, $v1
/* BE354 80127474 24840001 */  addiu      $a0, $a0, 0x1
/* BE358 80127478 A7A2008E */  sh         $v0, 0x8E($sp)
/* BE35C 8012747C A3C40512 */  sb         $a0, 0x512($fp)
/* BE360 80127480 308400FF */  andi       $a0, $a0, 0xFF
/* BE364 80127484 14990004 */  bne        $a0, $t9, .L80127498
/* BE368 80127488 323800FF */   andi      $t8, $s1, 0xFF
/* BE36C 8012748C 8FC204FC */  lw         $v0, 0x4FC($fp)
/* BE370 80127490 34420001 */  ori        $v0, $v0, 0x1
/* BE374 80127494 AFC204FC */  sw         $v0, 0x4FC($fp)
.L80127498:
/* BE378 80127498 3C04802F */  lui        $a0, %hi(ui_msg_sign_corner_topleft_png)
/* BE37C 8012749C 2484C5F0 */  addiu      $a0, $a0, %lo(ui_msg_sign_corner_topleft_png)
/* BE380 801274A0 24050010 */  addiu      $a1, $zero, 0x10
/* BE384 801274A4 00A0302D */  daddu      $a2, $a1, $zero
/* BE388 801274A8 24070002 */  addiu      $a3, $zero, 0x2
/* BE38C 801274AC 24150014 */  addiu      $s5, $zero, 0x14
/* BE390 801274B0 2410001C */  addiu      $s0, $zero, 0x1C
/* BE394 801274B4 2419000A */  addiu      $t9, $zero, 0xA
/* BE398 801274B8 A7B800A6 */  sh         $t8, 0xA6($sp)
/* BE39C 801274BC 0320C02D */  daddu      $t8, $t9, $zero
/* BE3A0 801274C0 24130136 */  addiu      $s3, $zero, 0x136
/* BE3A4 801274C4 241200E6 */  addiu      $s2, $zero, 0xE6
/* BE3A8 801274C8 323100FF */  andi       $s1, $s1, 0xFF
/* BE3AC 801274CC AFA00010 */  sw         $zero, 0x10($sp)
/* BE3B0 801274D0 AFB60014 */  sw         $s6, 0x14($sp)
/* BE3B4 801274D4 AFB50018 */  sw         $s5, 0x18($sp)
/* BE3B8 801274D8 AFB0001C */  sw         $s0, 0x1C($sp)
/* BE3BC 801274DC AFB90020 */  sw         $t9, 0x20($sp)
/* BE3C0 801274E0 AFB80024 */  sw         $t8, 0x24($sp)
/* BE3C4 801274E4 AFB30028 */  sw         $s3, 0x28($sp)
/* BE3C8 801274E8 AFB2002C */  sw         $s2, 0x2C($sp)
/* BE3CC 801274EC 0C04B44C */  jal        draw_ci_image_with_clipping
/* BE3D0 801274F0 AFB10030 */   sw        $s1, 0x30($sp)
/* BE3D4 801274F4 3C04802F */  lui        $a0, %hi(ui_msg_sign_corner_topright_png)
/* BE3D8 801274F8 2484C670 */  addiu      $a0, $a0, %lo(ui_msg_sign_corner_topright_png)
/* BE3DC 801274FC 24050010 */  addiu      $a1, $zero, 0x10
/* BE3E0 80127500 00A0302D */  daddu      $a2, $a1, $zero
/* BE3E4 80127504 24070002 */  addiu      $a3, $zero, 0x2
/* BE3E8 80127508 2414011C */  addiu      $s4, $zero, 0x11C
/* BE3EC 8012750C 2419000A */  addiu      $t9, $zero, 0xA
/* BE3F0 80127510 0320C02D */  daddu      $t8, $t9, $zero
/* BE3F4 80127514 AFA00010 */  sw         $zero, 0x10($sp)
/* BE3F8 80127518 AFB60014 */  sw         $s6, 0x14($sp)
/* BE3FC 8012751C AFB40018 */  sw         $s4, 0x18($sp)
/* BE400 80127520 AFB0001C */  sw         $s0, 0x1C($sp)
/* BE404 80127524 AFB90020 */  sw         $t9, 0x20($sp)
/* BE408 80127528 AFB80024 */  sw         $t8, 0x24($sp)
/* BE40C 8012752C AFB30028 */  sw         $s3, 0x28($sp)
/* BE410 80127530 AFB2002C */  sw         $s2, 0x2C($sp)
/* BE414 80127534 0C04B44C */  jal        draw_ci_image_with_clipping
/* BE418 80127538 AFB10030 */   sw        $s1, 0x30($sp)
/* BE41C 8012753C 3C04802F */  lui        $a0, %hi(ui_msg_sign_corner_bottomleft_png)
/* BE420 80127540 2484C6F0 */  addiu      $a0, $a0, %lo(ui_msg_sign_corner_bottomleft_png)
/* BE424 80127544 24050010 */  addiu      $a1, $zero, 0x10
/* BE428 80127548 00A0302D */  daddu      $a2, $a1, $zero
/* BE42C 8012754C 24070002 */  addiu      $a3, $zero, 0x2
/* BE430 80127550 AFA00010 */  sw         $zero, 0x10($sp)
/* BE434 80127554 AFB60014 */  sw         $s6, 0x14($sp)
/* BE438 80127558 AFB50018 */  sw         $s5, 0x18($sp)
/* BE43C 8012755C 97C20516 */  lhu        $v0, 0x516($fp)
/* BE440 80127560 2419000A */  addiu      $t9, $zero, 0xA
/* BE444 80127564 0320C02D */  daddu      $t8, $t9, $zero
/* BE448 80127568 AFB90020 */  sw         $t9, 0x20($sp)
/* BE44C 8012756C AFB80024 */  sw         $t8, 0x24($sp)
/* BE450 80127570 AFB30028 */  sw         $s3, 0x28($sp)
/* BE454 80127574 AFB2002C */  sw         $s2, 0x2C($sp)
/* BE458 80127578 AFB10030 */  sw         $s1, 0x30($sp)
/* BE45C 8012757C 2442000C */  addiu      $v0, $v0, 0xC
/* BE460 80127580 00A21004 */  sllv       $v0, $v0, $a1
/* BE464 80127584 00A21007 */  srav       $v0, $v0, $a1
/* BE468 80127588 0C04B44C */  jal        draw_ci_image_with_clipping
/* BE46C 8012758C AFA2001C */   sw        $v0, 0x1C($sp)
/* BE470 80127590 02E0202D */  daddu      $a0, $s7, $zero
/* BE474 80127594 24050010 */  addiu      $a1, $zero, 0x10
/* BE478 80127598 00A0302D */  daddu      $a2, $a1, $zero
/* BE47C 8012759C 24070002 */  addiu      $a3, $zero, 0x2
/* BE480 801275A0 AFA00010 */  sw         $zero, 0x10($sp)
/* BE484 801275A4 AFB60014 */  sw         $s6, 0x14($sp)
/* BE488 801275A8 AFB40018 */  sw         $s4, 0x18($sp)
/* BE48C 801275AC 97C20516 */  lhu        $v0, 0x516($fp)
/* BE490 801275B0 2419000A */  addiu      $t9, $zero, 0xA
/* BE494 801275B4 0320C02D */  daddu      $t8, $t9, $zero
/* BE498 801275B8 AFB90020 */  sw         $t9, 0x20($sp)
/* BE49C 801275BC AFB80024 */  sw         $t8, 0x24($sp)
/* BE4A0 801275C0 AFB30028 */  sw         $s3, 0x28($sp)
/* BE4A4 801275C4 AFB2002C */  sw         $s2, 0x2C($sp)
/* BE4A8 801275C8 AFB10030 */  sw         $s1, 0x30($sp)
/* BE4AC 801275CC 2442000C */  addiu      $v0, $v0, 0xC
/* BE4B0 801275D0 00A21004 */  sllv       $v0, $v0, $a1
/* BE4B4 801275D4 00A21007 */  srav       $v0, $v0, $a1
/* BE4B8 801275D8 0C04B44C */  jal        draw_ci_image_with_clipping
/* BE4BC 801275DC AFA2001C */   sw        $v0, 0x1C($sp)
/* BE4C0 801275E0 3C120703 */  lui        $s2, (0x703E03C >> 16)
/* BE4C4 801275E4 3652E03C */  ori        $s2, $s2, (0x703E03C & 0xFFFF)
/* BE4C8 801275E8 3C14F540 */  lui        $s4, (0xF5400400 >> 16)
/* BE4CC 801275EC 36940400 */  ori        $s4, $s4, (0xF5400400 & 0xFFFF)
/* BE4D0 801275F0 3C130001 */  lui        $s3, (0x10050 >> 16)
/* BE4D4 801275F4 36730050 */  ori        $s3, $s3, (0x10050 & 0xFFFF)
/* BE4D8 801275F8 3C150007 */  lui        $s5, (0x7C03C >> 16)
/* BE4DC 801275FC 36B5C03C */  ori        $s5, $s5, (0x7C03C & 0xFFFF)
/* BE4E0 80127600 3C06E447 */  lui        $a2, (0xE44700B0 >> 16)
/* BE4E4 80127604 34C600B0 */  ori        $a2, $a2, (0xE44700B0 & 0xFFFF)
/* BE4E8 80127608 3C050009 */  lui        $a1, (0x90070 >> 16)
/* BE4EC 8012760C 34A50070 */  ori        $a1, $a1, (0x90070 & 0xFFFF)
/* BE4F0 80127610 3C090400 */  lui        $t1, (0x4000400 >> 16)
/* BE4F4 80127614 35290400 */  ori        $t1, $t1, (0x4000400 & 0xFFFF)
/* BE4F8 80127618 3C0BFD48 */  lui        $t3, (0xFD480007 >> 16)
/* BE4FC 8012761C 356B0007 */  ori        $t3, $t3, (0xFD480007 & 0xFFFF)
/* BE500 80127620 3C0AF548 */  lui        $t2, (0xF5480200 >> 16)
/* BE504 80127624 354A0200 */  ori        $t2, $t2, (0xF5480200 & 0xFFFF)
/* BE508 80127628 3C0D0701 */  lui        $t5, (0x7014040 >> 16)
/* BE50C 8012762C 35AD4040 */  ori        $t5, $t5, (0x7014040 & 0xFFFF)
/* BE510 80127630 3C0E0701 */  lui        $t6, (0x701E07C >> 16)
/* BE514 80127634 35CEE07C */  ori        $t6, $t6, (0x701E07C & 0xFFFF)
/* BE518 80127638 3C0CF540 */  lui        $t4, (0xF5400200 >> 16)
/* BE51C 8012763C 358C0200 */  ori        $t4, $t4, (0xF5400200 & 0xFFFF)
/* BE520 80127640 3C0F0001 */  lui        $t7, (0x14040 >> 16)
/* BE524 80127644 35EF4040 */  ori        $t7, $t7, (0x14040 & 0xFFFF)
/* BE528 80127648 3C100003 */  lui        $s0, (0x3C07C >> 16)
/* BE52C 8012764C 3610C07C */  ori        $s0, $s0, (0x3C07C & 0xFFFF)
/* BE530 80127650 3C110005 */  lui        $s1, (0x500B0 >> 16)
/* BE534 80127654 363100B0 */  ori        $s1, $s1, (0x500B0 & 0xFFFF)
/* BE538 80127658 3C160047 */  lui        $s6, (0x4700B0 >> 16)
/* BE53C 8012765C 36D600B0 */  ori        $s6, $s6, (0x4700B0 & 0xFFFF)
/* BE540 80127660 3C17FD48 */  lui        $s7, (0xFD480003 >> 16)
/* BE544 80127664 36F70003 */  ori        $s7, $s7, (0xFD480003 & 0xFFFF)
/* BE548 80127668 3C190700 */  lui        $t9, (0x700C030 >> 16)
/* BE54C 8012766C 3739C030 */  ori        $t9, $t9, (0x700C030 & 0xFFFF)
/* BE550 80127670 3C180700 */  lui        $t8, (0x700E01C >> 16)
/* BE554 80127674 3718E01C */  ori        $t8, $t8, (0x700E01C & 0xFFFF)
/* BE558 80127678 AFB900D8 */  sw         $t9, 0xD8($sp)
/* BE55C 8012767C 3C190001 */  lui        $t9, (0x1C01C >> 16)
/* BE560 80127680 3739C01C */  ori        $t9, $t9, (0x1C01C & 0xFFFF)
/* BE564 80127684 AFB800DC */  sw         $t8, 0xDC($sp)
/* BE568 80127688 3C180009 */  lui        $t8, (0x900B0 >> 16)
/* BE56C 8012768C 371800B0 */  ori        $t8, $t8, (0x900B0 & 0xFFFF)
/* BE570 80127690 3C03802F */  lui        $v1, %hi(ui_msg_sign_side_top_png)
/* BE574 80127694 2463C870 */  addiu      $v1, $v1, %lo(ui_msg_sign_side_top_png)
/* BE578 80127698 3C02800A */  lui        $v0, %hi(gMasterGfxPos)
/* BE57C 8012769C 8C429244 */  lw         $v0, %lo(gMasterGfxPos)($v0)
/* BE580 801276A0 3C08F200 */  lui        $t0, (0xF2000000 >> 16)
/* BE584 801276A4 AFB900D0 */  sw         $t9, 0xD0($sp)
/* BE588 801276A8 8FB900C4 */  lw         $t9, 0xC4($sp)
/* BE58C 801276AC 3C07E100 */  lui        $a3, (0xE1000000 >> 16)
/* BE590 801276B0 AFB800D4 */  sw         $t8, 0xD4($sp)
/* BE594 801276B4 0040202D */  daddu      $a0, $v0, $zero
/* BE598 801276B8 24420008 */  addiu      $v0, $v0, 0x8
/* BE59C 801276BC AC990000 */  sw         $t9, 0x0($a0)
/* BE5A0 801276C0 AC830004 */  sw         $v1, 0x4($a0)
/* BE5A4 801276C4 8FB800C8 */  lw         $t8, 0xC8($sp)
/* BE5A8 801276C8 24430008 */  addiu      $v1, $v0, 0x8
/* BE5AC 801276CC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5B0 801276D0 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* BE5B4 801276D4 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5B8 801276D8 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5BC 801276DC 24430010 */  addiu      $v1, $v0, 0x10
/* BE5C0 801276E0 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5C4 801276E4 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5C8 801276E8 24430018 */  addiu      $v1, $v0, 0x18
/* BE5CC 801276EC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5D0 801276F0 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5D4 801276F4 24430020 */  addiu      $v1, $v0, 0x20
/* BE5D8 801276F8 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5DC 801276FC AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5E0 80127700 24430028 */  addiu      $v1, $v0, 0x28
/* BE5E4 80127704 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5E8 80127708 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5EC 8012770C 24430030 */  addiu      $v1, $v0, 0x30
/* BE5F0 80127710 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE5F4 80127714 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE5F8 80127718 24430038 */  addiu      $v1, $v0, 0x38
/* BE5FC 8012771C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE600 80127720 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE604 80127724 24430040 */  addiu      $v1, $v0, 0x40
/* BE608 80127728 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE60C 8012772C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE610 80127730 24430048 */  addiu      $v1, $v0, 0x48
/* BE614 80127734 AC580000 */  sw         $t8, 0x0($v0)
/* BE618 80127738 8FB900CC */  lw         $t9, 0xCC($sp)
/* BE61C 8012773C 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* BE620 80127740 AC580008 */  sw         $t8, 0x8($v0)
/* BE624 80127744 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* BE628 80127748 AC460030 */  sw         $a2, 0x30($v0)
/* BE62C 8012774C 3C06F100 */  lui        $a2, (0xF1000000 >> 16)
/* BE630 80127750 AC40000C */  sw         $zero, 0xC($v0)
/* BE634 80127754 AC520014 */  sw         $s2, 0x14($v0)
/* BE638 80127758 AC580018 */  sw         $t8, 0x18($v0)
/* BE63C 8012775C AC40001C */  sw         $zero, 0x1C($v0)
/* BE640 80127760 AC540020 */  sw         $s4, 0x20($v0)
/* BE644 80127764 AC530024 */  sw         $s3, 0x24($v0)
/* BE648 80127768 AC480028 */  sw         $t0, 0x28($v0)
/* BE64C 8012776C AC55002C */  sw         $s5, 0x2C($v0)
/* BE650 80127770 AC450034 */  sw         $a1, 0x34($v0)
/* BE654 80127774 AC590004 */  sw         $t9, 0x4($v0)
/* BE658 80127778 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* BE65C 8012777C AC590010 */  sw         $t9, 0x10($v0)
/* BE660 80127780 AC470038 */  sw         $a3, 0x38($v0)
/* BE664 80127784 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE668 80127788 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE66C 8012778C 24430050 */  addiu      $v1, $v0, 0x50
/* BE670 80127790 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE674 80127794 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE678 80127798 3C03802F */  lui        $v1, %hi(ui_msg_sign_side_left_png)
/* BE67C 8012779C 2463C970 */  addiu      $v1, $v1, %lo(ui_msg_sign_side_left_png)
/* BE680 801277A0 AC40003C */  sw         $zero, 0x3C($v0)
/* BE684 801277A4 AC460040 */  sw         $a2, 0x40($v0)
/* BE688 801277A8 AC490044 */  sw         $t1, 0x44($v0)
/* BE68C 801277AC AC4B0048 */  sw         $t3, 0x48($v0)
/* BE690 801277B0 AC43004C */  sw         $v1, 0x4C($v0)
/* BE694 801277B4 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* BE698 801277B8 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* BE69C 801277BC AC590058 */  sw         $t9, 0x58($v0)
/* BE6A0 801277C0 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* BE6A4 801277C4 AC4A0050 */  sw         $t2, 0x50($v0)
/* BE6A8 801277C8 AC4D0054 */  sw         $t5, 0x54($v0)
/* BE6AC 801277CC AC40005C */  sw         $zero, 0x5C($v0)
/* BE6B0 801277D0 AC580060 */  sw         $t8, 0x60($v0)
/* BE6B4 801277D4 AC4E0064 */  sw         $t6, 0x64($v0)
/* BE6B8 801277D8 AC590068 */  sw         $t9, 0x68($v0)
/* BE6BC 801277DC AC40006C */  sw         $zero, 0x6C($v0)
/* BE6C0 801277E0 AC4C0070 */  sw         $t4, 0x70($v0)
/* BE6C4 801277E4 AC4F0074 */  sw         $t7, 0x74($v0)
/* BE6C8 801277E8 AC480078 */  sw         $t0, 0x78($v0)
/* BE6CC 801277EC AC50007C */  sw         $s0, 0x7C($v0)
/* BE6D0 801277F0 97C40516 */  lhu        $a0, 0x516($fp)
/* BE6D4 801277F4 24430058 */  addiu      $v1, $v0, 0x58
/* BE6D8 801277F8 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE6DC 801277FC AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE6E0 80127800 24430060 */  addiu      $v1, $v0, 0x60
/* BE6E4 80127804 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE6E8 80127808 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE6EC 8012780C 24430068 */  addiu      $v1, $v0, 0x68
/* BE6F0 80127810 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE6F4 80127814 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE6F8 80127818 24430070 */  addiu      $v1, $v0, 0x70
/* BE6FC 8012781C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE700 80127820 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE704 80127824 24430078 */  addiu      $v1, $v0, 0x78
/* BE708 80127828 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE70C 8012782C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE710 80127830 24430080 */  addiu      $v1, $v0, 0x80
/* BE714 80127834 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE718 80127838 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE71C 8012783C 24430088 */  addiu      $v1, $v0, 0x88
/* BE720 80127840 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE724 80127844 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE728 80127848 24430090 */  addiu      $v1, $v0, 0x90
/* BE72C 8012784C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE730 80127850 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE734 80127854 24430098 */  addiu      $v1, $v0, 0x98
/* BE738 80127858 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE73C 8012785C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE740 80127860 244300A0 */  addiu      $v1, $v0, 0xA0
/* BE744 80127864 AC510084 */  sw         $s1, 0x84($v0)
/* BE748 80127868 AC470088 */  sw         $a3, 0x88($v0)
/* BE74C 8012786C AC40008C */  sw         $zero, 0x8C($v0)
/* BE750 80127870 AC460090 */  sw         $a2, 0x90($v0)
/* BE754 80127874 AC490094 */  sw         $t1, 0x94($v0)
/* BE758 80127878 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE75C 8012787C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE760 80127880 3C03802F */  lui        $v1, %hi(ui_msg_sign_side_right_png)
/* BE764 80127884 2463CAB0 */  addiu      $v1, $v1, %lo(ui_msg_sign_side_right_png)
/* BE768 80127888 AC43009C */  sw         $v1, 0x9C($v0)
/* BE76C 8012788C 244300A8 */  addiu      $v1, $v0, 0xA8
/* BE770 80127890 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE774 80127894 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE778 80127898 3C03E409 */  lui        $v1, (0xE4090000 >> 16)
/* BE77C 8012789C AC4B0098 */  sw         $t3, 0x98($v0)
/* BE780 801278A0 AC4A00A0 */  sw         $t2, 0xA0($v0)
/* BE784 801278A4 2484000C */  addiu      $a0, $a0, 0xC
/* BE788 801278A8 00042080 */  sll        $a0, $a0, 2
/* BE78C 801278AC 30840FFF */  andi       $a0, $a0, 0xFFF
/* BE790 801278B0 00832025 */  or         $a0, $a0, $v1
/* BE794 801278B4 AC440080 */  sw         $a0, 0x80($v0)
/* BE798 801278B8 AC4D00A4 */  sw         $t5, 0xA4($v0)
/* BE79C 801278BC 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* BE7A0 801278C0 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* BE7A4 801278C4 AC5800A8 */  sw         $t8, 0xA8($v0)
/* BE7A8 801278C8 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* BE7AC 801278CC AC4000AC */  sw         $zero, 0xAC($v0)
/* BE7B0 801278D0 AC5900B0 */  sw         $t9, 0xB0($v0)
/* BE7B4 801278D4 AC4E00B4 */  sw         $t6, 0xB4($v0)
/* BE7B8 801278D8 AC5800B8 */  sw         $t8, 0xB8($v0)
/* BE7BC 801278DC AC4000BC */  sw         $zero, 0xBC($v0)
/* BE7C0 801278E0 AC4C00C0 */  sw         $t4, 0xC0($v0)
/* BE7C4 801278E4 AC4F00C4 */  sw         $t7, 0xC4($v0)
/* BE7C8 801278E8 AC4800C8 */  sw         $t0, 0xC8($v0)
/* BE7CC 801278EC AC5000CC */  sw         $s0, 0xCC($v0)
/* BE7D0 801278F0 97C40516 */  lhu        $a0, 0x516($fp)
/* BE7D4 801278F4 3C05E447 */  lui        $a1, (0xE4470000 >> 16)
/* BE7D8 801278F8 AC5600D4 */  sw         $s6, 0xD4($v0)
/* BE7DC 801278FC AC4700D8 */  sw         $a3, 0xD8($v0)
/* BE7E0 80127900 AC4000DC */  sw         $zero, 0xDC($v0)
/* BE7E4 80127904 AC4600E0 */  sw         $a2, 0xE0($v0)
/* BE7E8 80127908 AC4900E4 */  sw         $t1, 0xE4($v0)
/* BE7EC 8012790C 8FB900C4 */  lw         $t9, 0xC4($sp)
/* BE7F0 80127910 244300B0 */  addiu      $v1, $v0, 0xB0
/* BE7F4 80127914 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE7F8 80127918 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE7FC 8012791C 244300B8 */  addiu      $v1, $v0, 0xB8
/* BE800 80127920 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE804 80127924 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE808 80127928 244300C0 */  addiu      $v1, $v0, 0xC0
/* BE80C 8012792C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE810 80127930 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE814 80127934 244300C8 */  addiu      $v1, $v0, 0xC8
/* BE818 80127938 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE81C 8012793C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE820 80127940 244300D0 */  addiu      $v1, $v0, 0xD0
/* BE824 80127944 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE828 80127948 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE82C 8012794C 244300D8 */  addiu      $v1, $v0, 0xD8
/* BE830 80127950 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE834 80127954 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE838 80127958 244300E0 */  addiu      $v1, $v0, 0xE0
/* BE83C 8012795C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE840 80127960 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE844 80127964 244300E8 */  addiu      $v1, $v0, 0xE8
/* BE848 80127968 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE84C 8012796C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE850 80127970 244300F0 */  addiu      $v1, $v0, 0xF0
/* BE854 80127974 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE858 80127978 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE85C 8012797C 3C03802F */  lui        $v1, %hi(ui_msg_sign_side_bottom_png)
/* BE860 80127980 2463CBF0 */  addiu      $v1, $v1, %lo(ui_msg_sign_side_bottom_png)
/* BE864 80127984 AC5900E8 */  sw         $t9, 0xE8($v0)
/* BE868 80127988 AC4300EC */  sw         $v1, 0xEC($v0)
/* BE86C 8012798C 244300F8 */  addiu      $v1, $v0, 0xF8
/* BE870 80127990 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE874 80127994 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE878 80127998 24430100 */  addiu      $v1, $v0, 0x100
/* BE87C 8012799C 2484000C */  addiu      $a0, $a0, 0xC
/* BE880 801279A0 00042080 */  sll        $a0, $a0, 2
/* BE884 801279A4 30840FFF */  andi       $a0, $a0, 0xFFF
/* BE888 801279A8 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE88C 801279AC AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE890 801279B0 3C03E44B */  lui        $v1, (0xE44B0000 >> 16)
/* BE894 801279B4 00832025 */  or         $a0, $a0, $v1
/* BE898 801279B8 8FB800C8 */  lw         $t8, 0xC8($sp)
/* BE89C 801279BC 24430108 */  addiu      $v1, $v0, 0x108
/* BE8A0 801279C0 AC5800F0 */  sw         $t8, 0xF0($v0)
/* BE8A4 801279C4 8FB900CC */  lw         $t9, 0xCC($sp)
/* BE8A8 801279C8 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* BE8AC 801279CC AC5800F8 */  sw         $t8, 0xF8($v0)
/* BE8B0 801279D0 AC4400D0 */  sw         $a0, 0xD0($v0)
/* BE8B4 801279D4 AC5900F4 */  sw         $t9, 0xF4($v0)
/* BE8B8 801279D8 AC4000FC */  sw         $zero, 0xFC($v0)
/* BE8BC 801279DC 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* BE8C0 801279E0 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE8C4 801279E4 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE8C8 801279E8 24430110 */  addiu      $v1, $v0, 0x110
/* BE8CC 801279EC 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* BE8D0 801279F0 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE8D4 801279F4 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE8D8 801279F8 24430118 */  addiu      $v1, $v0, 0x118
/* BE8DC 801279FC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE8E0 80127A00 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE8E4 80127A04 24430120 */  addiu      $v1, $v0, 0x120
/* BE8E8 80127A08 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE8EC 80127A0C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE8F0 80127A10 24430128 */  addiu      $v1, $v0, 0x128
/* BE8F4 80127A14 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE8F8 80127A18 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE8FC 80127A1C 24430130 */  addiu      $v1, $v0, 0x130
/* BE900 80127A20 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE904 80127A24 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE908 80127A28 24430138 */  addiu      $v1, $v0, 0x138
/* BE90C 80127A2C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE910 80127A30 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE914 80127A34 24430140 */  addiu      $v1, $v0, 0x140
/* BE918 80127A38 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE91C 80127A3C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE920 80127A40 24430148 */  addiu      $v1, $v0, 0x148
/* BE924 80127A44 AC590100 */  sw         $t9, 0x100($v0)
/* BE928 80127A48 AC520104 */  sw         $s2, 0x104($v0)
/* BE92C 80127A4C AC580108 */  sw         $t8, 0x108($v0)
/* BE930 80127A50 AC40010C */  sw         $zero, 0x10C($v0)
/* BE934 80127A54 AC540110 */  sw         $s4, 0x110($v0)
/* BE938 80127A58 AC530114 */  sw         $s3, 0x114($v0)
/* BE93C 80127A5C AC480118 */  sw         $t0, 0x118($v0)
/* BE940 80127A60 AC55011C */  sw         $s5, 0x11C($v0)
/* BE944 80127A64 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE948 80127A68 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE94C 80127A6C 97C30516 */  lhu        $v1, 0x516($fp)
/* BE950 80127A70 24440150 */  addiu      $a0, $v0, 0x150
/* BE954 80127A74 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE958 80127A78 AC249244 */  sw         $a0, %lo(gMasterGfxPos)($at)
/* BE95C 80127A7C 2463001C */  addiu      $v1, $v1, 0x1C
/* BE960 80127A80 00031880 */  sll        $v1, $v1, 2
/* BE964 80127A84 30630FFF */  andi       $v1, $v1, 0xFFF
/* BE968 80127A88 00651825 */  or         $v1, $v1, $a1
/* BE96C 80127A8C AC430120 */  sw         $v1, 0x120($v0)
/* BE970 80127A90 24430158 */  addiu      $v1, $v0, 0x158
/* BE974 80127A94 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE978 80127A98 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE97C 80127A9C 3C03802F */  lui        $v1, %hi(ui_msg_sign_fill_png)
/* BE980 80127AA0 2463CCF0 */  addiu      $v1, $v1, %lo(ui_msg_sign_fill_png)
/* BE984 80127AA4 97C40516 */  lhu        $a0, 0x516($fp)
/* BE988 80127AA8 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* BE98C 80127AAC AC470128 */  sw         $a3, 0x128($v0)
/* BE990 80127AB0 AC40012C */  sw         $zero, 0x12C($v0)
/* BE994 80127AB4 AC43013C */  sw         $v1, 0x13C($v0)
/* BE998 80127AB8 3C030009 */  lui        $v1, (0x90000 >> 16)
/* BE99C 80127ABC AC460130 */  sw         $a2, 0x130($v0)
/* BE9A0 80127AC0 AC490134 */  sw         $t1, 0x134($v0)
/* BE9A4 80127AC4 AC570138 */  sw         $s7, 0x138($v0)
/* BE9A8 80127AC8 AC4A0140 */  sw         $t2, 0x140($v0)
/* BE9AC 80127ACC 8FB900D8 */  lw         $t9, 0xD8($sp)
/* BE9B0 80127AD0 2484000C */  addiu      $a0, $a0, 0xC
/* BE9B4 80127AD4 00042080 */  sll        $a0, $a0, 2
/* BE9B8 80127AD8 30840FFF */  andi       $a0, $a0, 0xFFF
/* BE9BC 80127ADC 00832025 */  or         $a0, $a0, $v1
/* BE9C0 80127AE0 AC590144 */  sw         $t9, 0x144($v0)
/* BE9C4 80127AE4 AC40014C */  sw         $zero, 0x14C($v0)
/* BE9C8 80127AE8 AC440124 */  sw         $a0, 0x124($v0)
/* BE9CC 80127AEC 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* BE9D0 80127AF0 24430160 */  addiu      $v1, $v0, 0x160
/* BE9D4 80127AF4 AC580148 */  sw         $t8, 0x148($v0)
/* BE9D8 80127AF8 AC590150 */  sw         $t9, 0x150($v0)
/* BE9DC 80127AFC 8FB800DC */  lw         $t8, 0xDC($sp)
/* BE9E0 80127B00 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* BE9E4 80127B04 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE9E8 80127B08 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE9EC 80127B0C 24430168 */  addiu      $v1, $v0, 0x168
/* BE9F0 80127B10 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BE9F4 80127B14 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BE9F8 80127B18 3403C030 */  ori        $v1, $zero, 0xC030
/* BE9FC 80127B1C AC580154 */  sw         $t8, 0x154($v0)
/* BEA00 80127B20 AC590158 */  sw         $t9, 0x158($v0)
/* BEA04 80127B24 AC40015C */  sw         $zero, 0x15C($v0)
/* BEA08 80127B28 AC4C0160 */  sw         $t4, 0x160($v0)
/* BEA0C 80127B2C AC430164 */  sw         $v1, 0x164($v0)
/* BEA10 80127B30 AC480168 */  sw         $t0, 0x168($v0)
/* BEA14 80127B34 8FB800D0 */  lw         $t8, 0xD0($sp)
/* BEA18 80127B38 24430170 */  addiu      $v1, $v0, 0x170
/* BEA1C 80127B3C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BEA20 80127B40 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BEA24 80127B44 24430178 */  addiu      $v1, $v0, 0x178
/* BEA28 80127B48 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BEA2C 80127B4C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BEA30 80127B50 24430180 */  addiu      $v1, $v0, 0x180
/* BEA34 80127B54 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BEA38 80127B58 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BEA3C 80127B5C 24430188 */  addiu      $v1, $v0, 0x188
/* BEA40 80127B60 AC58016C */  sw         $t8, 0x16C($v0)
/* BEA44 80127B64 97C40516 */  lhu        $a0, 0x516($fp)
/* BEA48 80127B68 8FB900D4 */  lw         $t9, 0xD4($sp)
/* BEA4C 80127B6C 2484000C */  addiu      $a0, $a0, 0xC
/* BEA50 80127B70 00042080 */  sll        $a0, $a0, 2
/* BEA54 80127B74 30840FFF */  andi       $a0, $a0, 0xFFF
/* BEA58 80127B78 00852025 */  or         $a0, $a0, $a1
/* BEA5C 80127B7C AC590174 */  sw         $t9, 0x174($v0)
/* BEA60 80127B80 AC470178 */  sw         $a3, 0x178($v0)
/* BEA64 80127B84 AC40017C */  sw         $zero, 0x17C($v0)
/* BEA68 80127B88 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BEA6C 80127B8C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BEA70 80127B90 AC460180 */  sw         $a2, 0x180($v0)
/* BEA74 80127B94 AC490184 */  sw         $t1, 0x184($v0)
/* BEA78 80127B98 08049FE0 */  j          .L80127F80
/* BEA7C 80127B9C AC440170 */   sw        $a0, 0x170($v0)
glabel .L80127BA0
/* BEA80 80127BA0 0000902D */  daddu      $s2, $zero, $zero
/* BEA84 80127BA4 240400FF */  addiu      $a0, $zero, 0xFF
/* BEA88 80127BA8 24050020 */  addiu      $a1, $zero, 0x20
/* BEA8C 80127BAC 2402000C */  addiu      $v0, $zero, 0xC
/* BEA90 80127BB0 00A0302D */  daddu      $a2, $a1, $zero
/* BEA94 80127BB4 3C078016 */  lui        $a3, %hi(msg_drawState)
/* BEA98 80127BB8 8CE780F4 */  lw         $a3, %lo(msg_drawState)($a3)
/* BEA9C 80127BBC 2411002B */  addiu      $s1, $zero, 0x2B
/* BEAA0 80127BC0 24180005 */  addiu      $t8, $zero, 0x5
/* BEAA4 80127BC4 A4E20046 */  sh         $v0, 0x46($a3)
/* BEAA8 80127BC8 24020028 */  addiu      $v0, $zero, 0x28
/* BEAAC 80127BCC A4F80048 */  sh         $t8, 0x48($a3)
/* BEAB0 80127BD0 A7C2045A */  sh         $v0, 0x45A($fp)
/* BEAB4 80127BD4 2402001C */  addiu      $v0, $zero, 0x1C
/* BEAB8 80127BD8 A7C2045C */  sh         $v0, 0x45C($fp)
/* BEABC 80127BDC 2402002D */  addiu      $v0, $zero, 0x2D
/* BEAC0 80127BE0 ACE20000 */  sw         $v0, 0x0($a3)
/* BEAC4 80127BE4 00A0102D */  daddu      $v0, $a1, $zero
/* BEAC8 80127BE8 ACE20008 */  sw         $v0, 0x8($a3)
/* BEACC 80127BEC 24020110 */  addiu      $v0, $zero, 0x110
/* BEAD0 80127BF0 ACE20004 */  sw         $v0, 0x4($a3)
/* BEAD4 80127BF4 94E30006 */  lhu        $v1, 0x6($a3)
/* BEAD8 80127BF8 24020051 */  addiu      $v0, $zero, 0x51
/* BEADC 80127BFC ACE2000C */  sw         $v0, 0xC($a3)
/* BEAE0 80127C00 2463FFEB */  addiu      $v1, $v1, -0x15
/* BEAE4 80127C04 A7C30482 */  sh         $v1, 0x482($fp)
/* BEAE8 80127C08 94E2000E */  lhu        $v0, 0xE($a3)
/* BEAEC 80127C0C 241000EA */  addiu      $s0, $zero, 0xEA
/* BEAF0 80127C10 2442FFEC */  addiu      $v0, $v0, -0x14
/* BEAF4 80127C14 A7C20484 */  sh         $v0, 0x484($fp)
/* BEAF8 80127C18 A0E0002B */  sb         $zero, 0x2B($a3)
/* BEAFC 80127C1C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BEB00 80127C20 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BEB04 80127C24 0000382D */  daddu      $a3, $zero, $zero
/* BEB08 80127C28 A440004A */  sh         $zero, 0x4A($v0)
/* BEB0C 80127C2C 2402001B */  addiu      $v0, $zero, 0x1B
/* BEB10 80127C30 24190001 */  addiu      $t9, $zero, 0x1
/* BEB14 80127C34 AFB10010 */  sw         $s1, 0x10($sp)
/* BEB18 80127C38 AFA20014 */  sw         $v0, 0x14($sp)
/* BEB1C 80127C3C AFB00018 */  sw         $s0, 0x18($sp)
/* BEB20 80127C40 0C04AC4C */  jal        msg_draw_prim_rect
/* BEB24 80127C44 AFB9001C */   sw        $t9, 0x1C($sp)
/* BEB28 80127C48 24040020 */  addiu      $a0, $zero, 0x20
/* BEB2C 80127C4C 240500FF */  addiu      $a1, $zero, 0xFF
/* BEB30 80127C50 0080302D */  daddu      $a2, $a0, $zero
/* BEB34 80127C54 0000382D */  daddu      $a3, $zero, $zero
/* BEB38 80127C58 24020056 */  addiu      $v0, $zero, 0x56
/* BEB3C 80127C5C 24180001 */  addiu      $t8, $zero, 0x1
/* BEB40 80127C60 AFB10010 */  sw         $s1, 0x10($sp)
/* BEB44 80127C64 AFA20014 */  sw         $v0, 0x14($sp)
/* BEB48 80127C68 AFB00018 */  sw         $s0, 0x18($sp)
/* BEB4C 80127C6C 0C04AC4C */  jal        msg_draw_prim_rect
/* BEB50 80127C70 AFB8001C */   sw        $t8, 0x1C($sp)
/* BEB54 80127C74 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BEB58 80127C78 24190002 */  addiu      $t9, $zero, 0x2
/* BEB5C 80127C7C 14590010 */  bne        $v0, $t9, .L80127CC0
/* BEB60 80127C80 241300FF */   addiu     $s3, $zero, 0xFF
/* BEB64 80127C84 93C20509 */  lbu        $v0, 0x509($fp)
/* BEB68 80127C88 24180003 */  addiu      $t8, $zero, 0x3
/* BEB6C 80127C8C 00021980 */  sll        $v1, $v0, 6
/* BEB70 80127C90 24730050 */  addiu      $s3, $v1, 0x50
/* BEB74 80127C94 326300FF */  andi       $v1, $s3, 0xFF
/* BEB78 80127C98 2463FFD0 */  addiu      $v1, $v1, -0x30
/* BEB7C 80127C9C 24420001 */  addiu      $v0, $v0, 0x1
/* BEB80 80127CA0 A7A3008E */  sh         $v1, 0x8E($sp)
/* BEB84 80127CA4 A3C20509 */  sb         $v0, 0x509($fp)
/* BEB88 80127CA8 304200FF */  andi       $v0, $v0, 0xFF
/* BEB8C 80127CAC 14580018 */  bne        $v0, $t8, .L80127D10
/* BEB90 80127CB0 24120001 */   addiu     $s2, $zero, 0x1
/* BEB94 80127CB4 24020004 */  addiu      $v0, $zero, 0x4
/* BEB98 80127CB8 08049F44 */  j          .L80127D10
/* BEB9C 80127CBC A3C204F8 */   sb        $v0, 0x4F8($fp)
.L80127CC0:
/* BEBA0 80127CC0 24190003 */  addiu      $t9, $zero, 0x3
/* BEBA4 80127CC4 14590013 */  bne        $v0, $t9, .L80127D14
/* BEBA8 80127CC8 24040028 */   addiu     $a0, $zero, 0x28
/* BEBAC 80127CCC 93C40512 */  lbu        $a0, 0x512($fp)
/* BEBB0 80127CD0 2403FFD0 */  addiu      $v1, $zero, -0x30
/* BEBB4 80127CD4 00041040 */  sll        $v0, $a0, 1
/* BEBB8 80127CD8 00441021 */  addu       $v0, $v0, $a0
/* BEBBC 80127CDC 00021100 */  sll        $v0, $v0, 4
/* BEBC0 80127CE0 00629823 */  subu       $s3, $v1, $v0
/* BEBC4 80127CE4 326200FF */  andi       $v0, $s3, 0xFF
/* BEBC8 80127CE8 00431021 */  addu       $v0, $v0, $v1
/* BEBCC 80127CEC 24840001 */  addiu      $a0, $a0, 0x1
/* BEBD0 80127CF0 A7A2008E */  sh         $v0, 0x8E($sp)
/* BEBD4 80127CF4 A3C40512 */  sb         $a0, 0x512($fp)
/* BEBD8 80127CF8 308400FF */  andi       $a0, $a0, 0xFF
/* BEBDC 80127CFC 14990004 */  bne        $a0, $t9, .L80127D10
/* BEBE0 80127D00 24120001 */   addiu     $s2, $zero, 0x1
/* BEBE4 80127D04 8FC204FC */  lw         $v0, 0x4FC($fp)
/* BEBE8 80127D08 34420001 */  ori        $v0, $v0, 0x1
/* BEBEC 80127D0C AFC204FC */  sw         $v0, 0x4FC($fp)
.L80127D10:
/* BEBF0 80127D10 24040028 */  addiu      $a0, $zero, 0x28
.L80127D14:
/* BEBF4 80127D14 2405001C */  addiu      $a1, $zero, 0x1C
/* BEBF8 80127D18 240600F0 */  addiu      $a2, $zero, 0xF0
/* BEBFC 80127D1C 24020006 */  addiu      $v0, $zero, 0x6
/* BEC00 80127D20 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BEC04 80127D24 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BEC08 80127D28 2407003A */  addiu      $a3, $zero, 0x3A
/* BEC0C 80127D2C AFA20010 */  sw         $v0, 0x10($sp)
/* BEC10 80127D30 9062002B */  lbu        $v0, 0x2B($v1)
/* BEC14 80127D34 327000FF */  andi       $s0, $s3, 0xFF
/* BEC18 80127D38 AFB20018 */  sw         $s2, 0x18($sp)
/* BEC1C 80127D3C AFB0001C */  sw         $s0, 0x1C($sp)
/* BEC20 80127D40 AFB00020 */  sw         $s0, 0x20($sp)
/* BEC24 80127D44 0C04B0B8 */  jal        msg_draw_frame
/* BEC28 80127D48 AFA20014 */   sw        $v0, 0x14($sp)
/* BEC2C 80127D4C 24050096 */  addiu      $a1, $zero, 0x96
/* BEC30 80127D50 24060069 */  addiu      $a2, $zero, 0x69
/* BEC34 80127D54 AFA00010 */  sw         $zero, 0x10($sp)
/* BEC38 80127D58 8FC30548 */  lw         $v1, 0x548($fp)
/* BEC3C 80127D5C 24020055 */  addiu      $v0, $zero, 0x55
/* BEC40 80127D60 AFA20018 */  sw         $v0, 0x18($sp)
/* BEC44 80127D64 24020061 */  addiu      $v0, $zero, 0x61
/* BEC48 80127D68 2418000A */  addiu      $t8, $zero, 0xA
/* BEC4C 80127D6C 0300C82D */  daddu      $t9, $t8, $zero
/* BEC50 80127D70 2412012C */  addiu      $s2, $zero, 0x12C
/* BEC54 80127D74 241100DC */  addiu      $s1, $zero, 0xDC
/* BEC58 80127D78 AFA2001C */  sw         $v0, 0x1C($sp)
/* BEC5C 80127D7C AFB80020 */  sw         $t8, 0x20($sp)
/* BEC60 80127D80 AFB90024 */  sw         $t9, 0x24($sp)
/* BEC64 80127D84 AFB20028 */  sw         $s2, 0x28($sp)
/* BEC68 80127D88 AFB1002C */  sw         $s1, 0x2C($sp)
/* BEC6C 80127D8C AFB00030 */  sw         $s0, 0x30($sp)
/* BEC70 80127D90 AFA30014 */  sw         $v1, 0x14($sp)
/* BEC74 80127D94 8FC40544 */  lw         $a0, 0x544($fp)
/* BEC78 80127D98 0C04B44C */  jal        draw_ci_image_with_clipping
/* BEC7C 80127D9C 24070002 */   addiu     $a3, $zero, 0x2
/* BEC80 80127DA0 24050046 */  addiu      $a1, $zero, 0x46
/* BEC84 80127DA4 2406005F */  addiu      $a2, $zero, 0x5F
/* BEC88 80127DA8 24180001 */  addiu      $t8, $zero, 0x1
/* BEC8C 80127DAC AFB80010 */  sw         $t8, 0x10($sp)
/* BEC90 80127DB0 8FC30550 */  lw         $v1, 0x550($fp)
/* BEC94 80127DB4 240200A0 */  addiu      $v0, $zero, 0xA0
/* BEC98 80127DB8 AFA20018 */  sw         $v0, 0x18($sp)
/* BEC9C 80127DBC 24020066 */  addiu      $v0, $zero, 0x66
/* BECA0 80127DC0 2419000A */  addiu      $t9, $zero, 0xA
/* BECA4 80127DC4 0320C02D */  daddu      $t8, $t9, $zero
/* BECA8 80127DC8 AFA2001C */  sw         $v0, 0x1C($sp)
/* BECAC 80127DCC AFB90020 */  sw         $t9, 0x20($sp)
/* BECB0 80127DD0 AFB80024 */  sw         $t8, 0x24($sp)
/* BECB4 80127DD4 AFB20028 */  sw         $s2, 0x28($sp)
/* BECB8 80127DD8 AFB1002C */  sw         $s1, 0x2C($sp)
/* BECBC 80127DDC AFB00030 */  sw         $s0, 0x30($sp)
/* BECC0 80127DE0 AFA30014 */  sw         $v1, 0x14($sp)
/* BECC4 80127DE4 8FC4054C */  lw         $a0, 0x54C($fp)
/* BECC8 80127DE8 0C04B44C */  jal        draw_ci_image_with_clipping
/* BECCC 80127DEC 24070002 */   addiu     $a3, $zero, 0x2
/* BECD0 80127DF0 0C04A9C6 */  jal        msg_reset_gfx_state
/* BECD4 80127DF4 327300FF */   andi      $s3, $s3, 0xFF
/* BECD8 80127DF8 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BECDC 80127DFC 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BECE0 80127E00 8C620020 */  lw         $v0, 0x20($v1)
/* BECE4 80127E04 0804A3A2 */  j          .L80128E88
/* BECE8 80127E08 A7B300A6 */   sh        $s3, 0xA6($sp)
glabel .L80127E0C
/* BECEC 80127E0C 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BECF0 80127E10 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BECF4 80127E14 94640034 */  lhu        $a0, 0x34($v1)
/* BECF8 80127E18 24020010 */  addiu      $v0, $zero, 0x10
/* BECFC 80127E1C A4620046 */  sh         $v0, 0x46($v1)
/* BED00 80127E20 24020004 */  addiu      $v0, $zero, 0x4
/* BED04 80127E24 A4620048 */  sh         $v0, 0x48($v1)
/* BED08 80127E28 2402013F */  addiu      $v0, $zero, 0x13F
/* BED0C 80127E2C AC620004 */  sw         $v0, 0x4($v1)
/* BED10 80127E30 240200EF */  addiu      $v0, $zero, 0xEF
/* BED14 80127E34 AC600000 */  sw         $zero, 0x0($v1)
/* BED18 80127E38 AC600008 */  sw         $zero, 0x8($v1)
/* BED1C 80127E3C AC62000C */  sw         $v0, 0xC($v1)
/* BED20 80127E40 A460004A */  sh         $zero, 0x4A($v1)
/* BED24 80127E44 34840010 */  ori        $a0, $a0, 0x10
/* BED28 80127E48 A4640034 */  sh         $a0, 0x34($v1)
/* BED2C 80127E4C 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* BED30 80127E50 2442FFF3 */  addiu      $v0, $v0, -0xD
/* BED34 80127E54 2C420002 */  sltiu      $v0, $v0, 0x2
/* BED38 80127E58 10400004 */  beqz       $v0, .L80127E6C
/* BED3C 80127E5C 0000202D */   daddu     $a0, $zero, $zero
/* BED40 80127E60 A7C0045A */  sh         $zero, 0x45A($fp)
/* BED44 80127E64 08049FE0 */  j          .L80127F80
/* BED48 80127E68 A7C0045C */   sh        $zero, 0x45C($fp)
.L80127E6C:
/* BED4C 80127E6C 0080282D */  daddu      $a1, $a0, $zero
/* BED50 80127E70 97C30514 */  lhu        $v1, 0x514($fp)
/* BED54 80127E74 240200A0 */  addiu      $v0, $zero, 0xA0
/* BED58 80127E78 00031842 */  srl        $v1, $v1, 1
/* BED5C 80127E7C 00431023 */  subu       $v0, $v0, $v1
/* BED60 80127E80 A7C2045A */  sh         $v0, 0x45A($fp)
/* BED64 80127E84 87C6045A */  lh         $a2, 0x45A($fp)
/* BED68 80127E88 24020038 */  addiu      $v0, $zero, 0x38
/* BED6C 80127E8C A7C2045C */  sh         $v0, 0x45C($fp)
/* BED70 80127E90 AFA00010 */  sw         $zero, 0x10($sp)
/* BED74 80127E94 97C20514 */  lhu        $v0, 0x514($fp)
/* BED78 80127E98 24070038 */  addiu      $a3, $zero, 0x38
/* BED7C 80127E9C AFA20014 */  sw         $v0, 0x14($sp)
/* BED80 80127EA0 97C30516 */  lhu        $v1, 0x516($fp)
/* BED84 80127EA4 241900FF */  addiu      $t9, $zero, 0xFF
/* BED88 80127EA8 24020140 */  addiu      $v0, $zero, 0x140
/* BED8C 80127EAC AFA20044 */  sw         $v0, 0x44($sp)
/* BED90 80127EB0 240200F0 */  addiu      $v0, $zero, 0xF0
/* BED94 80127EB4 AFB9001C */  sw         $t9, 0x1C($sp)
/* BED98 80127EB8 AFA00020 */  sw         $zero, 0x20($sp)
/* BED9C 80127EBC AFA00024 */  sw         $zero, 0x24($sp)
/* BEDA0 80127EC0 AFA00028 */  sw         $zero, 0x28($sp)
/* BEDA4 80127EC4 AFA0002C */  sw         $zero, 0x2C($sp)
/* BEDA8 80127EC8 AFA00030 */  sw         $zero, 0x30($sp)
/* BEDAC 80127ECC AFA00034 */  sw         $zero, 0x34($sp)
/* BEDB0 80127ED0 AFA00038 */  sw         $zero, 0x38($sp)
/* BEDB4 80127ED4 AFA0003C */  sw         $zero, 0x3C($sp)
/* BEDB8 80127ED8 AFA00040 */  sw         $zero, 0x40($sp)
/* BEDBC 80127EDC AFA20048 */  sw         $v0, 0x48($sp)
/* BEDC0 80127EE0 AFA0004C */  sw         $zero, 0x4C($sp)
/* BEDC4 80127EE4 0C03CDB0 */  jal        draw_box
/* BEDC8 80127EE8 AFA30018 */   sw        $v1, 0x18($sp)
/* BEDCC 80127EEC 08049FE0 */  j          .L80127F80
/* BEDD0 80127EF0 00000000 */   nop
glabel .L80127EF4
/* BEDD4 80127EF4 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BEDD8 80127EF8 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BEDDC 80127EFC 2402003C */  addiu      $v0, $zero, 0x3C
/* BEDE0 80127F00 A7C2045A */  sh         $v0, 0x45A($fp)
/* BEDE4 80127F04 2402006E */  addiu      $v0, $zero, 0x6E
/* BEDE8 80127F08 A7C2045C */  sh         $v0, 0x45C($fp)
/* BEDEC 80127F0C 240200C8 */  addiu      $v0, $zero, 0xC8
/* BEDF0 80127F10 A7C20514 */  sh         $v0, 0x514($fp)
/* BEDF4 80127F14 24020032 */  addiu      $v0, $zero, 0x32
/* BEDF8 80127F18 A7C20516 */  sh         $v0, 0x516($fp)
/* BEDFC 80127F1C 2402FFFE */  addiu      $v0, $zero, -0x2
/* BEE00 80127F20 A4800046 */  sh         $zero, 0x46($a0)
/* BEE04 80127F24 A4820048 */  sh         $v0, 0x48($a0)
/* BEE08 80127F28 87C2045A */  lh         $v0, 0x45A($fp)
/* BEE0C 80127F2C AC820000 */  sw         $v0, 0x0($a0)
/* BEE10 80127F30 87C2045C */  lh         $v0, 0x45C($fp)
/* BEE14 80127F34 AC820008 */  sw         $v0, 0x8($a0)
/* BEE18 80127F38 87C2045A */  lh         $v0, 0x45A($fp)
/* BEE1C 80127F3C 97C30514 */  lhu        $v1, 0x514($fp)
/* BEE20 80127F40 00431021 */  addu       $v0, $v0, $v1
/* BEE24 80127F44 AC820004 */  sw         $v0, 0x4($a0)
/* BEE28 80127F48 87C2045C */  lh         $v0, 0x45C($fp)
/* BEE2C 80127F4C 97C30516 */  lhu        $v1, 0x516($fp)
/* BEE30 80127F50 00431021 */  addu       $v0, $v0, $v1
/* BEE34 80127F54 AC82000C */  sw         $v0, 0xC($a0)
/* BEE38 80127F58 97C3045A */  lhu        $v1, 0x45A($fp)
/* BEE3C 80127F5C 97C20514 */  lhu        $v0, 0x514($fp)
/* BEE40 80127F60 97C40516 */  lhu        $a0, 0x516($fp)
/* BEE44 80127F64 00621821 */  addu       $v1, $v1, $v0
/* BEE48 80127F68 97C2045C */  lhu        $v0, 0x45C($fp)
/* BEE4C 80127F6C 2463FFF6 */  addiu      $v1, $v1, -0xA
/* BEE50 80127F70 A7C30482 */  sh         $v1, 0x482($fp)
/* BEE54 80127F74 00441021 */  addu       $v0, $v0, $a0
/* BEE58 80127F78 2442FFF6 */  addiu      $v0, $v0, -0xA
/* BEE5C 80127F7C A7C20484 */  sh         $v0, 0x484($fp)
.L80127F80:
/* BEE60 80127F80 0C04A9C6 */  jal        msg_reset_gfx_state
/* BEE64 80127F84 00000000 */   nop
/* BEE68 80127F88 0804A39F */  j          .L80128E7C
/* BEE6C 80127F8C 00000000 */   nop
glabel .L80127F90
/* BEE70 80127F90 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* BEE74 80127F94 2402000C */  addiu      $v0, $zero, 0xC
/* BEE78 80127F98 1462000A */  bne        $v1, $v0, .L80127FC4
/* BEE7C 80127F9C 2402000B */   addiu     $v0, $zero, 0xB
/* BEE80 80127FA0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BEE84 80127FA4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BEE88 80127FA8 93C30487 */  lbu        $v1, 0x487($fp)
/* BEE8C 80127FAC 90420050 */  lbu        $v0, 0x50($v0)
/* BEE90 80127FB0 0043102B */  sltu       $v0, $v0, $v1
/* BEE94 80127FB4 14400037 */  bnez       $v0, .L80128094
/* BEE98 80127FB8 24180001 */   addiu     $t8, $zero, 0x1
/* BEE9C 80127FBC 0804A025 */  j          .L80128094
/* BEEA0 80127FC0 A7B80080 */   sh        $t8, 0x80($sp)
.L80127FC4:
/* BEEA4 80127FC4 14620033 */  bne        $v1, $v0, .L80128094
/* BEEA8 80127FC8 00000000 */   nop
/* BEEAC 80127FCC 93C50487 */  lbu        $a1, 0x487($fp)
/* BEEB0 80127FD0 00051040 */  sll        $v0, $a1, 1
/* BEEB4 80127FD4 03C21021 */  addu       $v0, $fp, $v0
/* BEEB8 80127FD8 94430488 */  lhu        $v1, 0x488($v0)
/* BEEBC 80127FDC 8FC20460 */  lw         $v0, 0x460($fp)
/* BEEC0 80127FE0 0043102A */  slt        $v0, $v0, $v1
/* BEEC4 80127FE4 10400009 */  beqz       $v0, .L8012800C
/* BEEC8 80127FE8 00A0182D */   daddu     $v1, $a1, $zero
/* BEECC 80127FEC 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BEED0 80127FF0 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BEED4 80127FF4 90420050 */  lbu        $v0, 0x50($v0)
/* BEED8 80127FF8 0045102B */  sltu       $v0, $v0, $a1
/* BEEDC 80127FFC 14400025 */  bnez       $v0, .L80128094
/* BEEE0 80128000 24190001 */   addiu     $t9, $zero, 0x1
/* BEEE4 80128004 0804A025 */  j          .L80128094
/* BEEE8 80128008 A7B90080 */   sh        $t9, 0x80($sp)
.L8012800C:
/* BEEEC 8012800C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BEEF0 80128010 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BEEF4 80128014 90440050 */  lbu        $a0, 0x50($v0)
/* BEEF8 80128018 0064102B */  sltu       $v0, $v1, $a0
/* BEEFC 8012801C 10400003 */  beqz       $v0, .L8012802C
/* BEF00 80128020 24180001 */   addiu     $t8, $zero, 0x1
/* BEF04 80128024 0804A025 */  j          .L80128094
/* BEF08 80128028 A7B80080 */   sh        $t8, 0x80($sp)
.L8012802C:
/* BEF0C 8012802C 0083102B */  sltu       $v0, $a0, $v1
/* BEF10 80128030 14400018 */  bnez       $v0, .L80128094
/* BEF14 80128034 00000000 */   nop
/* BEF18 80128038 93C3053C */  lbu        $v1, 0x53C($fp)
/* BEF1C 8012803C 2C620002 */  sltiu      $v0, $v1, 0x2
/* BEF20 80128040 14400014 */  bnez       $v0, .L80128094
/* BEF24 80128044 24040024 */   addiu     $a0, $zero, 0x24
/* BEF28 80128048 24190002 */  addiu      $t9, $zero, 0x2
/* BEF2C 8012804C 14790002 */  bne        $v1, $t9, .L80128058
/* BEF30 80128050 24020030 */   addiu     $v0, $zero, 0x30
/* BEF34 80128054 24020020 */  addiu      $v0, $zero, 0x20
.L80128058:
/* BEF38 80128058 97C304C8 */  lhu        $v1, 0x4C8($fp)
/* BEF3C 8012805C 0062102A */  slt        $v0, $v1, $v0
/* BEF40 80128060 1040000C */  beqz       $v0, .L80128094
/* BEF44 80128064 2C620011 */   sltiu     $v0, $v1, 0x11
/* BEF48 80128068 54400001 */  bnel       $v0, $zero, .L80128070
/* BEF4C 8012806C 24040038 */   addiu     $a0, $zero, 0x38
.L80128070:
/* BEF50 80128070 97C204CC */  lhu        $v0, 0x4CC($fp)
/* BEF54 80128074 00820018 */  mult       $a0, $v0
/* BEF58 80128078 241800FF */  addiu      $t8, $zero, 0xFF
/* BEF5C 8012807C 0000C812 */  mflo       $t9
/* BEF60 80128080 03191023 */  subu       $v0, $t8, $t9
/* BEF64 80128084 A7A2008E */  sh         $v0, 0x8E($sp)
/* BEF68 80128088 00021400 */  sll        $v0, $v0, 16
/* BEF6C 8012808C 04420001 */  bltzl      $v0, .L80128094
/* BEF70 80128090 A7A0008E */   sh        $zero, 0x8E($sp)
.L80128094:
/* BEF74 80128094 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BEF78 80128098 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BEF7C 8012809C 90620050 */  lbu        $v0, 0x50($v1)
/* BEF80 801280A0 24420001 */  addiu      $v0, $v0, 0x1
/* BEF84 801280A4 0804A3AA */  j          .L80128EA8
/* BEF88 801280A8 A0620050 */   sb        $v0, 0x50($v1)
glabel .L801280AC
/* BEF8C 801280AC 24180001 */  addiu      $t8, $zero, 0x1
/* BEF90 801280B0 0804A8EA */  j          .L8012A3A8
/* BEF94 801280B4 A7B80080 */   sh        $t8, 0x80($sp)
glabel .L801280B8
/* BEF98 801280B8 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BEF9C 801280BC 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BEFA0 801280C0 8C620020 */  lw         $v0, 0x20($v1)
/* BEFA4 801280C4 8C64004C */  lw         $a0, 0x4C($v1)
/* BEFA8 801280C8 24420001 */  addiu      $v0, $v0, 0x1
/* BEFAC 801280CC 00822021 */  addu       $a0, $a0, $v0
/* BEFB0 801280D0 AC620020 */  sw         $v0, 0x20($v1)
/* BEFB4 801280D4 90830000 */  lbu        $v1, 0x0($a0)
/* BEFB8 801280D8 2C62001F */  sltiu      $v0, $v1, 0x1F
/* BEFBC 801280DC 104008B2 */  beqz       $v0, .L8012A3A8
/* BEFC0 801280E0 00031080 */   sll       $v0, $v1, 2
/* BEFC4 801280E4 3C018015 */  lui        $at, %hi(jtbl_8014EF70)
/* BEFC8 801280E8 00220821 */  addu       $at, $at, $v0
/* BEFCC 801280EC 8C22EF70 */  lw         $v0, %lo(jtbl_8014EF70)($at)
/* BEFD0 801280F0 00400008 */  jr         $v0
/* BEFD4 801280F4 00000000 */   nop
glabel .L801280F8
/* BEFD8 801280F8 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BEFDC 801280FC 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BEFE0 80128100 8C820020 */  lw         $v0, 0x20($a0)
/* BEFE4 80128104 8C83004C */  lw         $v1, 0x4C($a0)
/* BEFE8 80128108 00431021 */  addu       $v0, $v0, $v1
/* BEFEC 8012810C 90450001 */  lbu        $a1, 0x1($v0)
/* BEFF0 80128110 8C820020 */  lw         $v0, 0x20($a0)
/* BEFF4 80128114 94830034 */  lhu        $v1, 0x34($a0)
/* BEFF8 80128118 24420002 */  addiu      $v0, $v0, 0x2
/* BEFFC 8012811C 34630010 */  ori        $v1, $v1, 0x10
/* BF000 80128120 AC820020 */  sw         $v0, 0x20($a0)
/* BF004 80128124 A4830034 */  sh         $v1, 0x34($a0)
/* BF008 80128128 0804A8EA */  j          .L8012A3A8
/* BF00C 8012812C A485003C */   sh        $a1, 0x3C($a0)
glabel .L80128130
/* BF010 80128130 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF014 80128134 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF018 80128138 8C830020 */  lw         $v1, 0x20($a0)
/* BF01C 8012813C 8C82004C */  lw         $v0, 0x4C($a0)
/* BF020 80128140 00621821 */  addu       $v1, $v1, $v0
/* BF024 80128144 8C820020 */  lw         $v0, 0x20($a0)
/* BF028 80128148 90630001 */  lbu        $v1, 0x1($v1)
/* BF02C 8012814C 24420002 */  addiu      $v0, $v0, 0x2
/* BF030 80128150 AC820020 */  sw         $v0, 0x20($a0)
/* BF034 80128154 0804A8EA */  j          .L8012A3A8
/* BF038 80128158 A483003E */   sh        $v1, 0x3E($a0)
glabel .L8012815C
/* BF03C 8012815C 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF040 80128160 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF044 80128164 8C820020 */  lw         $v0, 0x20($a0)
/* BF048 80128168 8C83004C */  lw         $v1, 0x4C($a0)
/* BF04C 8012816C 00431021 */  addu       $v0, $v0, $v1
/* BF050 80128170 90450001 */  lbu        $a1, 0x1($v0)
/* BF054 80128174 94820034 */  lhu        $v0, 0x34($a0)
/* BF058 80128178 8C830020 */  lw         $v1, 0x20($a0)
/* BF05C 8012817C 34420010 */  ori        $v0, $v0, 0x10
/* BF060 80128180 24630002 */  addiu      $v1, $v1, 0x2
/* BF064 80128184 A4820034 */  sh         $v0, 0x34($a0)
/* BF068 80128188 AC830020 */  sw         $v1, 0x20($a0)
/* BF06C 8012818C 0804A8EA */  j          .L8012A3A8
/* BF070 80128190 A485004A */   sh        $a1, 0x4A($a0)
glabel .L80128194
/* BF074 80128194 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF078 80128198 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF07C 8012819C 8C820020 */  lw         $v0, 0x20($a0)
/* BF080 801281A0 8C83004C */  lw         $v1, 0x4C($a0)
/* BF084 801281A4 00431021 */  addu       $v0, $v0, $v1
/* BF088 801281A8 90420001 */  lbu        $v0, 0x1($v0)
/* BF08C 801281AC 0804A39F */  j          .L80128E7C
/* BF090 801281B0 A0820040 */   sb        $v0, 0x40($a0)
glabel .L801281B4
/* BF094 801281B4 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BF098 801281B8 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BF09C 801281BC 8CA30020 */  lw         $v1, 0x20($a1)
/* BF0A0 801281C0 8CA2004C */  lw         $v0, 0x4C($a1)
/* BF0A4 801281C4 00621821 */  addu       $v1, $v1, $v0
/* BF0A8 801281C8 90640001 */  lbu        $a0, 0x1($v1)
/* BF0AC 801281CC 8CA20020 */  lw         $v0, 0x20($a1)
/* BF0B0 801281D0 90630002 */  lbu        $v1, 0x2($v1)
/* BF0B4 801281D4 24420003 */  addiu      $v0, $v0, 0x3
/* BF0B8 801281D8 00042200 */  sll        $a0, $a0, 8
/* BF0BC 801281DC 00641821 */  addu       $v1, $v1, $a0
/* BF0C0 801281E0 ACA20020 */  sw         $v0, 0x20($a1)
/* BF0C4 801281E4 0804A8EA */  j          .L8012A3A8
/* BF0C8 801281E8 A4A30042 */   sh        $v1, 0x42($a1)
glabel .L801281EC
/* BF0CC 801281EC 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF0D0 801281F0 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF0D4 801281F4 8C830020 */  lw         $v1, 0x20($a0)
/* BF0D8 801281F8 8C82004C */  lw         $v0, 0x4C($a0)
/* BF0DC 801281FC 00621821 */  addu       $v1, $v1, $v0
/* BF0E0 80128200 8C820020 */  lw         $v0, 0x20($a0)
/* BF0E4 80128204 90630001 */  lbu        $v1, 0x1($v1)
/* BF0E8 80128208 0804A0A6 */  j          .L80128298
/* BF0EC 8012820C 24420002 */   addiu     $v0, $v0, 0x2
glabel .L80128210
/* BF0F0 80128210 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF0F4 80128214 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF0F8 80128218 8C820020 */  lw         $v0, 0x20($a0)
/* BF0FC 8012821C 8C83004C */  lw         $v1, 0x4C($a0)
/* BF100 80128220 00431021 */  addu       $v0, $v0, $v1
/* BF104 80128224 90450001 */  lbu        $a1, 0x1($v0)
/* BF108 80128228 8C820020 */  lw         $v0, 0x20($a0)
/* BF10C 8012822C 94830042 */  lhu        $v1, 0x42($a0)
/* BF110 80128230 24420002 */  addiu      $v0, $v0, 0x2
/* BF114 80128234 00651821 */  addu       $v1, $v1, $a1
/* BF118 80128238 AC820020 */  sw         $v0, 0x20($a0)
/* BF11C 8012823C 0804A8EA */  j          .L8012A3A8
/* BF120 80128240 A4830042 */   sh        $v1, 0x42($a0)
glabel .L80128244
/* BF124 80128244 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF128 80128248 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF12C 8012824C 8C820020 */  lw         $v0, 0x20($a0)
/* BF130 80128250 8C83004C */  lw         $v1, 0x4C($a0)
/* BF134 80128254 00431021 */  addu       $v0, $v0, $v1
/* BF138 80128258 90450001 */  lbu        $a1, 0x1($v0)
/* BF13C 8012825C 8C820020 */  lw         $v0, 0x20($a0)
/* BF140 80128260 94830044 */  lhu        $v1, 0x44($a0)
/* BF144 80128264 24420002 */  addiu      $v0, $v0, 0x2
/* BF148 80128268 0804A0A6 */  j          .L80128298
/* BF14C 8012826C 00651821 */   addu      $v1, $v1, $a1
glabel .L80128270
/* BF150 80128270 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF154 80128274 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF158 80128278 8C820020 */  lw         $v0, 0x20($a0)
/* BF15C 8012827C 8C83004C */  lw         $v1, 0x4C($a0)
/* BF160 80128280 00431021 */  addu       $v0, $v0, $v1
/* BF164 80128284 90450001 */  lbu        $a1, 0x1($v0)
/* BF168 80128288 8C820020 */  lw         $v0, 0x20($a0)
/* BF16C 8012828C 94830044 */  lhu        $v1, 0x44($a0)
/* BF170 80128290 24420002 */  addiu      $v0, $v0, 0x2
/* BF174 80128294 00651823 */  subu       $v1, $v1, $a1
.L80128298:
/* BF178 80128298 AC820020 */  sw         $v0, 0x20($a0)
/* BF17C 8012829C 0804A8EA */  j          .L8012A3A8
/* BF180 801282A0 A4830044 */   sh        $v1, 0x44($a0)
glabel .L801282A4
/* BF184 801282A4 3C0B8016 */  lui        $t3, %hi(msg_drawState)
/* BF188 801282A8 8D6B80F4 */  lw         $t3, %lo(msg_drawState)($t3)
/* BF18C 801282AC 8D620020 */  lw         $v0, 0x20($t3)
/* BF190 801282B0 8D63004C */  lw         $v1, 0x4C($t3)
/* BF194 801282B4 00431021 */  addu       $v0, $v0, $v1
/* BF198 801282B8 90430001 */  lbu        $v1, 0x1($v0)
/* BF19C 801282BC 97AD008E */  lhu        $t5, 0x8E($sp)
/* BF1A0 801282C0 00031080 */  sll        $v0, $v1, 2
/* BF1A4 801282C4 00431021 */  addu       $v0, $v0, $v1
/* BF1A8 801282C8 3C038015 */  lui        $v1, %hi(gMsgVarImages)
/* BF1AC 801282CC 8C63FA84 */  lw         $v1, %lo(gMsgVarImages)($v1)
/* BF1B0 801282D0 00021080 */  sll        $v0, $v0, 2
/* BF1B4 801282D4 00626021 */  addu       $t4, $v1, $v0
/* BF1B8 801282D8 000D1400 */  sll        $v0, $t5, 16
/* BF1BC 801282DC 00021C03 */  sra        $v1, $v0, 16
/* BF1C0 801282E0 286200FF */  slti       $v0, $v1, 0xFF
/* BF1C4 801282E4 1040000A */  beqz       $v0, .L80128310
/* BF1C8 801282E8 00000000 */   nop
/* BF1CC 801282EC 3C018015 */  lui        $at, %hi(D_8014EFF0)
/* BF1D0 801282F0 D422EFF0 */  ldc1       $f2, %lo(D_8014EFF0)($at)
/* BF1D4 801282F4 44830000 */  mtc1       $v1, $f0
/* BF1D8 801282F8 00000000 */  nop
/* BF1DC 801282FC 46800021 */  cvt.d.w    $f0, $f0
/* BF1E0 80128300 46220002 */  mul.d      $f0, $f0, $f2
/* BF1E4 80128304 00000000 */  nop
/* BF1E8 80128308 4620030D */  trunc.w.d  $f12, $f0
/* BF1EC 8012830C 440D6000 */  mfc1       $t5, $f12
.L80128310:
/* BF1F0 80128310 8D8A0010 */  lw         $t2, 0x10($t4)
/* BF1F4 80128314 97C4045A */  lhu        $a0, 0x45A($fp)
/* BF1F8 80128318 95670046 */  lhu        $a3, 0x46($t3)
/* BF1FC 8012831C 95620042 */  lhu        $v0, 0x42($t3)
/* BF200 80128320 97C8045C */  lhu        $t0, 0x45C($fp)
/* BF204 80128324 95690048 */  lhu        $t1, 0x48($t3)
/* BF208 80128328 95630044 */  lhu        $v1, 0x44($t3)
/* BF20C 8012832C 95850008 */  lhu        $a1, 0x8($t4)
/* BF210 80128330 9586000A */  lhu        $a2, 0xA($t4)
/* BF214 80128334 97B90066 */  lhu        $t9, 0x66($sp)
/* BF218 80128338 97B80076 */  lhu        $t8, 0x76($sp)
/* BF21C 8012833C 00992021 */  addu       $a0, $a0, $t9
/* BF220 80128340 00E43821 */  addu       $a3, $a3, $a0
/* BF224 80128344 00471021 */  addu       $v0, $v0, $a3
/* BF228 80128348 00581023 */  subu       $v0, $v0, $t8
/* BF22C 8012834C 00021400 */  sll        $v0, $v0, 16
/* BF230 80128350 AFAA0010 */  sw         $t2, 0x10($sp)
/* BF234 80128354 8D840004 */  lw         $a0, 0x4($t4)
/* BF238 80128358 97B9006E */  lhu        $t9, 0x6E($sp)
/* BF23C 8012835C 97B8007E */  lhu        $t8, 0x7E($sp)
/* BF240 80128360 00021403 */  sra        $v0, $v0, 16
/* BF244 80128364 AFA20018 */  sw         $v0, 0x18($sp)
/* BF248 80128368 01194021 */  addu       $t0, $t0, $t9
/* BF24C 8012836C 01284821 */  addu       $t1, $t1, $t0
/* BF250 80128370 00691821 */  addu       $v1, $v1, $t1
/* BF254 80128374 00781823 */  subu       $v1, $v1, $t8
/* BF258 80128378 00031C00 */  sll        $v1, $v1, 16
/* BF25C 8012837C 00031C03 */  sra        $v1, $v1, 16
/* BF260 80128380 AFA3001C */  sw         $v1, 0x1C($sp)
/* BF264 80128384 AFA40014 */  sw         $a0, 0x14($sp)
/* BF268 80128388 95620002 */  lhu        $v0, 0x2($t3)
/* BF26C 8012838C AFA20020 */  sw         $v0, 0x20($sp)
/* BF270 80128390 9562000A */  lhu        $v0, 0xA($t3)
/* BF274 80128394 AFA20024 */  sw         $v0, 0x24($sp)
/* BF278 80128398 95620006 */  lhu        $v0, 0x6($t3)
/* BF27C 8012839C 95630002 */  lhu        $v1, 0x2($t3)
/* BF280 801283A0 00431023 */  subu       $v0, $v0, $v1
/* BF284 801283A4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BF288 801283A8 AFA20028 */  sw         $v0, 0x28($sp)
/* BF28C 801283AC 9563000E */  lhu        $v1, 0xE($t3)
/* BF290 801283B0 9564000A */  lhu        $a0, 0xA($t3)
/* BF294 801283B4 31A200FF */  andi       $v0, $t5, 0xFF
/* BF298 801283B8 AFA20030 */  sw         $v0, 0x30($sp)
/* BF29C 801283BC 00641823 */  subu       $v1, $v1, $a0
/* BF2A0 801283C0 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* BF2A4 801283C4 AFA3002C */  sw         $v1, 0x2C($sp)
/* BF2A8 801283C8 8D840000 */  lw         $a0, 0x0($t4)
/* BF2AC 801283CC 0C04B44C */  jal        draw_ci_image_with_clipping
/* BF2B0 801283D0 8D87000C */   lw        $a3, 0xC($t4)
/* BF2B4 801283D4 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF2B8 801283D8 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF2BC 801283DC 94820034 */  lhu        $v0, 0x34($a0)
/* BF2C0 801283E0 8C830020 */  lw         $v1, 0x20($a0)
/* BF2C4 801283E4 34420012 */  ori        $v0, $v0, 0x12
/* BF2C8 801283E8 24630002 */  addiu      $v1, $v1, 0x2
/* BF2CC 801283EC A4820034 */  sh         $v0, 0x34($a0)
/* BF2D0 801283F0 0804A8EA */  j          .L8012A3A8
/* BF2D4 801283F4 AC830020 */   sw        $v1, 0x20($a0)
glabel .L801283F8
/* BF2D8 801283F8 97B0008E */  lhu        $s0, 0x8E($sp)
/* BF2DC 801283FC 00101400 */  sll        $v0, $s0, 16
/* BF2E0 80128400 00021C03 */  sra        $v1, $v0, 16
/* BF2E4 80128404 286200FF */  slti       $v0, $v1, 0xFF
/* BF2E8 80128408 1040000A */  beqz       $v0, .L80128434
/* BF2EC 8012840C 00000000 */   nop
/* BF2F0 80128410 3C018015 */  lui        $at, %hi(D_8014EFF8)
/* BF2F4 80128414 D422EFF8 */  ldc1       $f2, %lo(D_8014EFF8)($at)
/* BF2F8 80128418 44830000 */  mtc1       $v1, $f0
/* BF2FC 8012841C 00000000 */  nop
/* BF300 80128420 46800021 */  cvt.d.w    $f0, $f0
/* BF304 80128424 46220002 */  mul.d      $f0, $f0, $f2
/* BF308 80128428 00000000 */  nop
/* BF30C 8012842C 4620030D */  trunc.w.d  $f12, $f0
/* BF310 80128430 44106000 */  mfc1       $s0, $f12
.L80128434:
/* BF314 80128434 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF318 80128438 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF31C 8012843C 8C430020 */  lw         $v1, 0x20($v0)
/* BF320 80128440 8C42004C */  lw         $v0, 0x4C($v0)
/* BF324 80128444 27A40050 */  addiu      $a0, $sp, 0x50
/* BF328 80128448 00621821 */  addu       $v1, $v1, $v0
/* BF32C 8012844C 90660003 */  lbu        $a2, 0x3($v1)
/* BF330 80128450 90650001 */  lbu        $a1, 0x1($v1)
/* BF334 80128454 90620002 */  lbu        $v0, 0x2($v1)
/* BF338 80128458 00052A00 */  sll        $a1, $a1, 8
/* BF33C 8012845C 0C0B7A76 */  jal        spr_get_npc_raster_info
/* BF340 80128460 00A22825 */   or        $a1, $a1, $v0
/* BF344 80128464 104000FA */  beqz       $v0, .L80128850
/* BF348 80128468 00000000 */   nop
/* BF34C 8012846C 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BF350 80128470 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BF354 80128474 97C6045A */  lhu        $a2, 0x45A($fp)
/* BF358 80128478 97C8045C */  lhu        $t0, 0x45C($fp)
/* BF35C 8012847C 97B90066 */  lhu        $t9, 0x66($sp)
/* BF360 80128480 97B80076 */  lhu        $t8, 0x76($sp)
/* BF364 80128484 94A70046 */  lhu        $a3, 0x46($a1)
/* BF368 80128488 94A30042 */  lhu        $v1, 0x42($a1)
/* BF36C 8012848C 94A90048 */  lhu        $t1, 0x48($a1)
/* BF370 80128490 94A40044 */  lhu        $a0, 0x44($a1)
/* BF374 80128494 00D93021 */  addu       $a2, $a2, $t9
/* BF378 80128498 AFA00010 */  sw         $zero, 0x10($sp)
/* BF37C 8012849C 8FA20054 */  lw         $v0, 0x54($sp)
/* BF380 801284A0 97B9006E */  lhu        $t9, 0x6E($sp)
/* BF384 801284A4 00E63821 */  addu       $a3, $a3, $a2
/* BF388 801284A8 00671821 */  addu       $v1, $v1, $a3
/* BF38C 801284AC 00781823 */  subu       $v1, $v1, $t8
/* BF390 801284B0 00031C00 */  sll        $v1, $v1, 16
/* BF394 801284B4 00031C03 */  sra        $v1, $v1, 16
/* BF398 801284B8 01194021 */  addu       $t0, $t0, $t9
/* BF39C 801284BC 01284821 */  addu       $t1, $t1, $t0
/* BF3A0 801284C0 97B8007E */  lhu        $t8, 0x7E($sp)
/* BF3A4 801284C4 00892021 */  addu       $a0, $a0, $t1
/* BF3A8 801284C8 AFA20014 */  sw         $v0, 0x14($sp)
/* BF3AC 801284CC AFA30018 */  sw         $v1, 0x18($sp)
/* BF3B0 801284D0 00982023 */  subu       $a0, $a0, $t8
/* BF3B4 801284D4 00042400 */  sll        $a0, $a0, 16
/* BF3B8 801284D8 00042403 */  sra        $a0, $a0, 16
/* BF3BC 801284DC AFA4001C */  sw         $a0, 0x1C($sp)
/* BF3C0 801284E0 94A20002 */  lhu        $v0, 0x2($a1)
/* BF3C4 801284E4 AFA20020 */  sw         $v0, 0x20($sp)
/* BF3C8 801284E8 94A2000A */  lhu        $v0, 0xA($a1)
/* BF3CC 801284EC AFA20024 */  sw         $v0, 0x24($sp)
/* BF3D0 801284F0 94A20006 */  lhu        $v0, 0x6($a1)
/* BF3D4 801284F4 94A30002 */  lhu        $v1, 0x2($a1)
/* BF3D8 801284F8 00431023 */  subu       $v0, $v0, $v1
/* BF3DC 801284FC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BF3E0 80128500 AFA20028 */  sw         $v0, 0x28($sp)
/* BF3E4 80128504 94A3000E */  lhu        $v1, 0xE($a1)
/* BF3E8 80128508 94A4000A */  lhu        $a0, 0xA($a1)
/* BF3EC 8012850C 320200FF */  andi       $v0, $s0, 0xFF
/* BF3F0 80128510 AFA20030 */  sw         $v0, 0x30($sp)
/* BF3F4 80128514 00641823 */  subu       $v1, $v1, $a0
/* BF3F8 80128518 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* BF3FC 8012851C AFA3002C */  sw         $v1, 0x2C($sp)
/* BF400 80128520 8FA40050 */  lw         $a0, 0x50($sp)
/* BF404 80128524 8FA50058 */  lw         $a1, 0x58($sp)
/* BF408 80128528 8FA6005C */  lw         $a2, 0x5C($sp)
/* BF40C 8012852C 0C04B44C */  jal        draw_ci_image_with_clipping
/* BF410 80128530 24070002 */   addiu     $a3, $zero, 0x2
/* BF414 80128534 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF418 80128538 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF41C 8012853C 94620034 */  lhu        $v0, 0x34($v1)
/* BF420 80128540 34420010 */  ori        $v0, $v0, 0x10
/* BF424 80128544 0804A214 */  j          .L80128850
/* BF428 80128548 A4620034 */   sh        $v0, 0x34($v1)
glabel .L8012854C
/* BF42C 8012854C 3C028015 */  lui        $v0, %hi(D_8015131C)
/* BF430 80128550 8C42FAAC */  lw         $v0, %lo(D_8015131C)($v0)
/* BF434 80128554 10400254 */  beqz       $v0, .L80128EA8
/* BF438 80128558 00000000 */   nop
/* BF43C 8012855C 97AB008E */  lhu        $t3, 0x8E($sp)
/* BF440 80128560 000B1400 */  sll        $v0, $t3, 16
/* BF444 80128564 00021C03 */  sra        $v1, $v0, 16
/* BF448 80128568 286200FF */  slti       $v0, $v1, 0xFF
/* BF44C 8012856C 1040000A */  beqz       $v0, .L80128598
/* BF450 80128570 00000000 */   nop
/* BF454 80128574 3C018015 */  lui        $at, %hi(D_8014F000)
/* BF458 80128578 D422F000 */  ldc1       $f2, %lo(D_8014F000)($at)
/* BF45C 8012857C 44830000 */  mtc1       $v1, $f0
/* BF460 80128580 00000000 */  nop
/* BF464 80128584 46800021 */  cvt.d.w    $f0, $f0
/* BF468 80128588 46220002 */  mul.d      $f0, $f0, $f2
/* BF46C 8012858C 00000000 */  nop
/* BF470 80128590 4620030D */  trunc.w.d  $f12, $f0
/* BF474 80128594 440B6000 */  mfc1       $t3, $f12
.L80128598:
/* BF478 80128598 3C048016 */  lui        $a0, %hi(D_80159B50)
/* BF47C 8012859C 2484BED0 */  addiu      $a0, $a0, %lo(D_80159B50)
/* BF480 801285A0 3C088016 */  lui        $t0, %hi(msg_drawState)
/* BF484 801285A4 8D0880F4 */  lw         $t0, %lo(msg_drawState)($t0)
/* BF488 801285A8 97C6045A */  lhu        $a2, 0x45A($fp)
/* BF48C 801285AC 97C9045C */  lhu        $t1, 0x45C($fp)
/* BF490 801285B0 97B90066 */  lhu        $t9, 0x66($sp)
/* BF494 801285B4 97B80076 */  lhu        $t8, 0x76($sp)
/* BF498 801285B8 00D93021 */  addu       $a2, $a2, $t9
/* BF49C 801285BC 95070046 */  lhu        $a3, 0x46($t0)
/* BF4A0 801285C0 95030042 */  lhu        $v1, 0x42($t0)
/* BF4A4 801285C4 950A0048 */  lhu        $t2, 0x48($t0)
/* BF4A8 801285C8 95050044 */  lhu        $a1, 0x44($t0)
/* BF4AC 801285CC 97B9006E */  lhu        $t9, 0x6E($sp)
/* BF4B0 801285D0 3C028016 */  lui        $v0, %hi(D_8015C7E0)
/* BF4B4 801285D4 2442EB60 */  addiu      $v0, $v0, %lo(D_8015C7E0)
/* BF4B8 801285D8 AFA00010 */  sw         $zero, 0x10($sp)
/* BF4BC 801285DC AFA20014 */  sw         $v0, 0x14($sp)
/* BF4C0 801285E0 00E63821 */  addu       $a3, $a3, $a2
/* BF4C4 801285E4 00671821 */  addu       $v1, $v1, $a3
/* BF4C8 801285E8 00781823 */  subu       $v1, $v1, $t8
/* BF4CC 801285EC 00031C00 */  sll        $v1, $v1, 16
/* BF4D0 801285F0 00031C03 */  sra        $v1, $v1, 16
/* BF4D4 801285F4 01394821 */  addu       $t1, $t1, $t9
/* BF4D8 801285F8 01495021 */  addu       $t2, $t2, $t1
/* BF4DC 801285FC 97B8007E */  lhu        $t8, 0x7E($sp)
/* BF4E0 80128600 00AA2821 */  addu       $a1, $a1, $t2
/* BF4E4 80128604 AFA30018 */  sw         $v1, 0x18($sp)
/* BF4E8 80128608 00B82823 */  subu       $a1, $a1, $t8
/* BF4EC 8012860C 00052C00 */  sll        $a1, $a1, 16
/* BF4F0 80128610 00052C03 */  sra        $a1, $a1, 16
/* BF4F4 80128614 AFA5001C */  sw         $a1, 0x1C($sp)
/* BF4F8 80128618 95020002 */  lhu        $v0, 0x2($t0)
/* BF4FC 8012861C 24070002 */  addiu      $a3, $zero, 0x2
/* BF500 80128620 AFA20020 */  sw         $v0, 0x20($sp)
/* BF504 80128624 9502000A */  lhu        $v0, 0xA($t0)
/* BF508 80128628 24050020 */  addiu      $a1, $zero, 0x20
/* BF50C 8012862C AFA20024 */  sw         $v0, 0x24($sp)
/* BF510 80128630 95020006 */  lhu        $v0, 0x6($t0)
/* BF514 80128634 95030002 */  lhu        $v1, 0x2($t0)
/* BF518 80128638 00A0302D */  daddu      $a2, $a1, $zero
/* BF51C 8012863C 00431023 */  subu       $v0, $v0, $v1
/* BF520 80128640 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BF524 80128644 AFA20028 */  sw         $v0, 0x28($sp)
/* BF528 80128648 9503000E */  lhu        $v1, 0xE($t0)
/* BF52C 8012864C 9508000A */  lhu        $t0, 0xA($t0)
/* BF530 80128650 316200FF */  andi       $v0, $t3, 0xFF
/* BF534 80128654 AFA20030 */  sw         $v0, 0x30($sp)
/* BF538 80128658 00681823 */  subu       $v1, $v1, $t0
/* BF53C 8012865C 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* BF540 80128660 0C04B44C */  jal        draw_ci_image_with_clipping
/* BF544 80128664 AFA3002C */   sw        $v1, 0x2C($sp)
/* BF548 80128668 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF54C 8012866C 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF550 80128670 94620034 */  lhu        $v0, 0x34($v1)
/* BF554 80128674 34420010 */  ori        $v0, $v0, 0x10
/* BF558 80128678 0804A3AA */  j          .L80128EA8
/* BF55C 8012867C A4620034 */   sh        $v0, 0x34($v1)
glabel .L80128680
/* BF560 80128680 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF564 80128684 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF568 80128688 8C430020 */  lw         $v1, 0x20($v0)
/* BF56C 8012868C 8C42004C */  lw         $v0, 0x4C($v0)
/* BF570 80128690 00622821 */  addu       $a1, $v1, $v0
/* BF574 80128694 90A70001 */  lbu        $a3, 0x1($a1)
/* BF578 80128698 00071040 */  sll        $v0, $a3, 1
/* BF57C 8012869C 03C22021 */  addu       $a0, $fp, $v0
/* BF580 801286A0 84830474 */  lh         $v1, 0x474($a0)
/* BF584 801286A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* BF588 801286A8 14620003 */  bne        $v1, $v0, .L801286B8
/* BF58C 801286AC 00000000 */   nop
/* BF590 801286B0 90A20003 */  lbu        $v0, 0x3($a1)
/* BF594 801286B4 A4820474 */  sh         $v0, 0x474($a0)
.L801286B8:
/* BF598 801286B8 84820474 */  lh         $v0, 0x474($a0)
/* BF59C 801286BC 14400005 */  bnez       $v0, .L801286D4
/* BF5A0 801286C0 240A0011 */   addiu     $t2, $zero, 0x11
/* BF5A4 801286C4 03C71821 */  addu       $v1, $fp, $a3
/* BF5A8 801286C8 90620470 */  lbu        $v0, 0x470($v1)
/* BF5AC 801286CC 24420001 */  addiu      $v0, $v0, 0x1
/* BF5B0 801286D0 A0620470 */  sb         $v0, 0x470($v1)
.L801286D4:
/* BF5B4 801286D4 03C72821 */  addu       $a1, $fp, $a3
/* BF5B8 801286D8 24090012 */  addiu      $t1, $zero, 0x12
/* BF5BC 801286DC 0080302D */  daddu      $a2, $a0, $zero
/* BF5C0 801286E0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF5C4 801286E4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF5C8 801286E8 24080013 */  addiu      $t0, $zero, 0x13
.L801286EC:
/* BF5CC 801286EC 8C440020 */  lw         $a0, 0x20($v0)
.L801286F0:
/* BF5D0 801286F0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF5D4 801286F4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF5D8 801286F8 8C42004C */  lw         $v0, 0x4C($v0)
/* BF5DC 801286FC 00821821 */  addu       $v1, $a0, $v0
/* BF5E0 80128700 9062FFFF */  lbu        $v0, -0x1($v1)
/* BF5E4 80128704 241900FF */  addiu      $t9, $zero, 0xFF
/* BF5E8 80128708 1459000D */  bne        $v0, $t9, .L80128740
/* BF5EC 8012870C 00000000 */   nop
/* BF5F0 80128710 90620000 */  lbu        $v0, 0x0($v1)
/* BF5F4 80128714 144A000A */  bne        $v0, $t2, .L80128740
/* BF5F8 80128718 00000000 */   nop
/* BF5FC 8012871C 90620001 */  lbu        $v0, 0x1($v1)
/* BF600 80128720 14470007 */  bne        $v0, $a3, .L80128740
/* BF604 80128724 00000000 */   nop
/* BF608 80128728 90630002 */  lbu        $v1, 0x2($v1)
/* BF60C 8012872C 90A20470 */  lbu        $v0, 0x470($a1)
/* BF610 80128730 1062002A */  beq        $v1, $v0, .L801287DC
/* BF614 80128734 00000000 */   nop
/* BF618 80128738 0804A1F5 */  j          .L801287D4
/* BF61C 8012873C 24840004 */   addiu     $a0, $a0, 0x4
.L80128740:
/* BF620 80128740 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF624 80128744 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF628 80128748 8C42004C */  lw         $v0, 0x4C($v0)
/* BF62C 8012874C 00441821 */  addu       $v1, $v0, $a0
/* BF630 80128750 90620000 */  lbu        $v0, 0x0($v1)
/* BF634 80128754 241800FF */  addiu      $t8, $zero, 0xFF
/* BF638 80128758 5458FFE5 */  bnel       $v0, $t8, .L801286F0
/* BF63C 8012875C 24840001 */   addiu     $a0, $a0, 0x1
/* BF640 80128760 90620001 */  lbu        $v0, 0x1($v1)
/* BF644 80128764 1449000D */  bne        $v0, $t1, .L8012879C
/* BF648 80128768 00000000 */   nop
/* BF64C 8012876C 90620002 */  lbu        $v0, 0x2($v1)
/* BF650 80128770 1447000A */  bne        $v0, $a3, .L8012879C
/* BF654 80128774 00000000 */   nop
/* BF658 80128778 84C20474 */  lh         $v0, 0x474($a2)
/* BF65C 8012877C 14400017 */  bnez       $v0, .L801287DC
/* BF660 80128780 24840001 */   addiu     $a0, $a0, 0x1
/* BF664 80128784 90620003 */  lbu        $v0, 0x3($v1)
/* BF668 80128788 A0A20470 */  sb         $v0, 0x470($a1)
/* BF66C 8012878C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF670 80128790 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF674 80128794 0804A1BB */  j          .L801286EC
/* BF678 80128798 00000000 */   nop
.L8012879C:
/* BF67C 8012879C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF680 801287A0 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF684 801287A4 8C42004C */  lw         $v0, 0x4C($v0)
/* BF688 801287A8 00441821 */  addu       $v1, $v0, $a0
/* BF68C 801287AC 90620000 */  lbu        $v0, 0x0($v1)
/* BF690 801287B0 241900FF */  addiu      $t9, $zero, 0xFF
/* BF694 801287B4 5459FFCE */  bnel       $v0, $t9, .L801286F0
/* BF698 801287B8 24840001 */   addiu     $a0, $a0, 0x1
/* BF69C 801287BC 90620001 */  lbu        $v0, 0x1($v1)
/* BF6A0 801287C0 5448FFCB */  bnel       $v0, $t0, .L801286F0
/* BF6A4 801287C4 24840001 */   addiu     $a0, $a0, 0x1
/* BF6A8 801287C8 90620002 */  lbu        $v0, 0x2($v1)
/* BF6AC 801287CC 50470003 */  beql       $v0, $a3, .L801287DC
/* BF6B0 801287D0 24840001 */   addiu     $a0, $a0, 0x1
.L801287D4:
/* BF6B4 801287D4 0804A1BC */  j          .L801286F0
/* BF6B8 801287D8 24840001 */   addiu     $a0, $a0, 0x1
.L801287DC:
/* BF6BC 801287DC 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BF6C0 801287E0 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BF6C4 801287E4 8CA2004C */  lw         $v0, 0x4C($a1)
/* BF6C8 801287E8 ACA40020 */  sw         $a0, 0x20($a1)
/* BF6CC 801287EC 00443021 */  addu       $a2, $v0, $a0
/* BF6D0 801287F0 90C30000 */  lbu        $v1, 0x0($a2)
/* BF6D4 801287F4 24020012 */  addiu      $v0, $zero, 0x12
/* BF6D8 801287F8 1062001B */  beq        $v1, $v0, .L80128868
/* BF6DC 801287FC 28620013 */   slti      $v0, $v1, 0x13
/* BF6E0 80128800 10400005 */  beqz       $v0, .L80128818
/* BF6E4 80128804 24020011 */   addiu     $v0, $zero, 0x11
/* BF6E8 80128808 10620008 */  beq        $v1, $v0, .L8012882C
/* BF6EC 8012880C 00071040 */   sll       $v0, $a3, 1
/* BF6F0 80128810 0804A8EA */  j          .L8012A3A8
/* BF6F4 80128814 00000000 */   nop
.L80128818:
/* BF6F8 80128818 24020013 */  addiu      $v0, $zero, 0x13
/* BF6FC 8012881C 10620015 */  beq        $v1, $v0, .L80128874
/* BF700 80128820 24820002 */   addiu     $v0, $a0, 0x2
/* BF704 80128824 0804A8EA */  j          .L8012A3A8
/* BF708 80128828 00000000 */   nop
.L8012882C:
/* BF70C 8012882C 03C21821 */  addu       $v1, $fp, $v0
/* BF710 80128830 84620474 */  lh         $v0, 0x474($v1)
/* BF714 80128834 14400006 */  bnez       $v0, .L80128850
/* BF718 80128838 00000000 */   nop
/* BF71C 8012883C 90C20003 */  lbu        $v0, 0x3($a2)
/* BF720 80128840 10400002 */  beqz       $v0, .L8012884C
/* BF724 80128844 2402FFFE */   addiu     $v0, $zero, -0x2
/* BF728 80128848 90C20003 */  lbu        $v0, 0x3($a2)
.L8012884C:
/* BF72C 8012884C A4620474 */  sh         $v0, 0x474($v1)
.L80128850:
/* BF730 80128850 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF734 80128854 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF738 80128858 8C620020 */  lw         $v0, 0x20($v1)
/* BF73C 8012885C 24420004 */  addiu      $v0, $v0, 0x4
/* BF740 80128860 0804A8EA */  j          .L8012A3A8
/* BF744 80128864 AC620020 */   sw        $v0, 0x20($v1)
.L80128868:
/* BF748 80128868 24820003 */  addiu      $v0, $a0, 0x3
/* BF74C 8012886C 0804A8EA */  j          .L8012A3A8
/* BF750 80128870 ACA20020 */   sw        $v0, 0x20($a1)
.L80128874:
/* BF754 80128874 0804A8EA */  j          .L8012A3A8
/* BF758 80128878 ACA20020 */   sw        $v0, 0x20($a1)
glabel .L8012887C
/* BF75C 8012887C 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF760 80128880 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF764 80128884 8C620020 */  lw         $v0, 0x20($v1)
/* BF768 80128888 24420003 */  addiu      $v0, $v0, 0x3
/* BF76C 8012888C 0804A8EA */  j          .L8012A3A8
/* BF770 80128890 AC620020 */   sw        $v0, 0x20($v1)
glabel .L80128894
/* BF774 80128894 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BF778 80128898 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BF77C 8012889C 97B80076 */  lhu        $t8, 0x76($sp)
/* BF780 801288A0 8CA20020 */  lw         $v0, 0x20($a1)
/* BF784 801288A4 8CA3004C */  lw         $v1, 0x4C($a1)
/* BF788 801288A8 94A40042 */  lhu        $a0, 0x42($a1)
/* BF78C 801288AC 00431021 */  addu       $v0, $v0, $v1
/* BF790 801288B0 90430001 */  lbu        $v1, 0x1($v0)
/* BF794 801288B4 94A20046 */  lhu        $v0, 0x46($a1)
/* BF798 801288B8 00031840 */  sll        $v1, $v1, 1
/* BF79C 801288BC 03C31821 */  addu       $v1, $fp, $v1
/* BF7A0 801288C0 00441021 */  addu       $v0, $v0, $a0
/* BF7A4 801288C4 00581023 */  subu       $v0, $v0, $t8
/* BF7A8 801288C8 2442FFFA */  addiu      $v0, $v0, -0x6
/* BF7AC 801288CC A46204D0 */  sh         $v0, 0x4D0($v1)
/* BF7B0 801288D0 8CA20020 */  lw         $v0, 0x20($a1)
/* BF7B4 801288D4 8CA3004C */  lw         $v1, 0x4C($a1)
/* BF7B8 801288D8 94A40044 */  lhu        $a0, 0x44($a1)
/* BF7BC 801288DC 97B9007E */  lhu        $t9, 0x7E($sp)
/* BF7C0 801288E0 00431021 */  addu       $v0, $v0, $v1
/* BF7C4 801288E4 90430001 */  lbu        $v1, 0x1($v0)
/* BF7C8 801288E8 94A20048 */  lhu        $v0, 0x48($a1)
/* BF7CC 801288EC 00031840 */  sll        $v1, $v1, 1
/* BF7D0 801288F0 03C31821 */  addu       $v1, $fp, $v1
/* BF7D4 801288F4 00441021 */  addu       $v0, $v0, $a0
/* BF7D8 801288F8 00591023 */  subu       $v0, $v0, $t9
/* BF7DC 801288FC 2442FFFF */  addiu      $v0, $v0, -0x1
/* BF7E0 80128900 A46204DC */  sh         $v0, 0x4DC($v1)
/* BF7E4 80128904 8CA20020 */  lw         $v0, 0x20($a1)
/* BF7E8 80128908 0804A2B2 */  j          .L80128AC8
/* BF7EC 8012890C 24420002 */   addiu     $v0, $v0, 0x2
glabel .L80128910
/* BF7F0 80128910 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF7F4 80128914 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF7F8 80128918 8C820020 */  lw         $v0, 0x20($a0)
/* BF7FC 8012891C 8C83004C */  lw         $v1, 0x4C($a0)
/* BF800 80128920 00431021 */  addu       $v0, $v0, $v1
/* BF804 80128924 90420001 */  lbu        $v0, 0x1($v0)
/* BF808 80128928 241800FF */  addiu      $t8, $zero, 0xFF
/* BF80C 8012892C 54580004 */  bnel       $v0, $t8, .L80128940
/* BF810 80128930 A082002D */   sb        $v0, 0x2D($a0)
/* BF814 80128934 94820034 */  lhu        $v0, 0x34($a0)
/* BF818 80128938 0804A39E */  j          .L80128E78
/* BF81C 8012893C 3042FFDF */   andi      $v0, $v0, 0xFFDF
.L80128940:
/* BF820 80128940 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF824 80128944 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF828 80128948 94430034 */  lhu        $v1, 0x34($v0)
/* BF82C 8012894C 94440042 */  lhu        $a0, 0x42($v0)
/* BF830 80128950 34630020 */  ori        $v1, $v1, 0x20
/* BF834 80128954 2484000E */  addiu      $a0, $a0, 0xE
/* BF838 80128958 A4430034 */  sh         $v1, 0x34($v0)
/* BF83C 8012895C 0804A39F */  j          .L80128E7C
/* BF840 80128960 A4440042 */   sh        $a0, 0x42($v0)
glabel .L80128964
/* BF844 80128964 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BF848 80128968 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BF84C 8012896C 8C820020 */  lw         $v0, 0x20($a0)
/* BF850 80128970 8C83004C */  lw         $v1, 0x4C($a0)
/* BF854 80128974 00431021 */  addu       $v0, $v0, $v1
/* BF858 80128978 90420001 */  lbu        $v0, 0x1($v0)
/* BF85C 8012897C 0804A39F */  j          .L80128E7C
/* BF860 80128980 A082002B */   sb        $v0, 0x2B($a0)
glabel .L80128984
/* BF864 80128984 0C04A9C6 */  jal        msg_reset_gfx_state
/* BF868 80128988 00000000 */   nop
/* BF86C 8012898C 0804A3AA */  j          .L80128EA8
/* BF870 80128990 00000000 */   nop
glabel .L80128994
/* BF874 80128994 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF878 80128998 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF87C 8012899C 94440042 */  lhu        $a0, 0x42($v0)
/* BF880 801289A0 8C430020 */  lw         $v1, 0x20($v0)
/* BF884 801289A4 94450044 */  lhu        $a1, 0x44($v0)
/* BF888 801289A8 24630001 */  addiu      $v1, $v1, 0x1
/* BF88C 801289AC A4440024 */  sh         $a0, 0x24($v0)
/* BF890 801289B0 A4450026 */  sh         $a1, 0x26($v0)
/* BF894 801289B4 0804A8EA */  j          .L8012A3A8
/* BF898 801289B8 AC430020 */   sw        $v1, 0x20($v0)
glabel .L801289BC
/* BF89C 801289BC 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF8A0 801289C0 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF8A4 801289C4 94440024 */  lhu        $a0, 0x24($v0)
/* BF8A8 801289C8 8C430020 */  lw         $v1, 0x20($v0)
/* BF8AC 801289CC 94450026 */  lhu        $a1, 0x26($v0)
/* BF8B0 801289D0 24630001 */  addiu      $v1, $v1, 0x1
/* BF8B4 801289D4 A4440042 */  sh         $a0, 0x42($v0)
/* BF8B8 801289D8 A4450044 */  sh         $a1, 0x44($v0)
/* BF8BC 801289DC 0804A8EA */  j          .L8012A3A8
/* BF8C0 801289E0 AC430020 */   sw        $v1, 0x20($v0)
glabel .L801289E4
/* BF8C4 801289E4 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF8C8 801289E8 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF8CC 801289EC 9062004B */  lbu        $v0, 0x4B($v1)
/* BF8D0 801289F0 0804A3AA */  j          .L80128EA8
/* BF8D4 801289F4 A0620028 */   sb        $v0, 0x28($v1)
glabel .L801289F8
/* BF8D8 801289F8 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF8DC 801289FC 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF8E0 80128A00 8C430020 */  lw         $v1, 0x20($v0)
/* BF8E4 80128A04 90440028 */  lbu        $a0, 0x28($v0)
/* BF8E8 80128A08 24630001 */  addiu      $v1, $v1, 0x1
/* BF8EC 80128A0C A444004A */  sh         $a0, 0x4A($v0)
/* BF8F0 80128A10 0804A8EA */  j          .L8012A3A8
/* BF8F4 80128A14 AC430020 */   sw        $v1, 0x20($v0)
glabel .L80128A18
/* BF8F8 80128A18 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BF8FC 80128A1C 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BF900 80128A20 8C620020 */  lw         $v0, 0x20($v1)
/* BF904 80128A24 8C63004C */  lw         $v1, 0x4C($v1)
/* BF908 80128A28 00431021 */  addu       $v0, $v0, $v1
/* BF90C 80128A2C 90430001 */  lbu        $v1, 0x1($v0)
/* BF910 80128A30 2C62000F */  sltiu      $v0, $v1, 0xF
/* BF914 80128A34 1040065C */  beqz       $v0, .L8012A3A8
/* BF918 80128A38 00031080 */   sll       $v0, $v1, 2
/* BF91C 80128A3C 3C018015 */  lui        $at, %hi(jtbl_8014F008)
/* BF920 80128A40 00220821 */  addu       $at, $at, $v0
/* BF924 80128A44 8C22F008 */  lw         $v0, %lo(jtbl_8014F008)($at)
/* BF928 80128A48 00400008 */  jr         $v0
/* BF92C 80128A4C 00000000 */   nop
glabel .L80128A50
/* BF930 80128A50 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF934 80128A54 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF938 80128A58 8C430038 */  lw         $v1, 0x38($v0)
/* BF93C 80128A5C 8C440020 */  lw         $a0, 0x20($v0)
/* BF940 80128A60 0804A322 */  j          .L80128C88
/* BF944 80128A64 34630001 */   ori       $v1, $v1, 0x1
glabel .L80128A68
/* BF948 80128A68 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BF94C 80128A6C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BF950 80128A70 8C430038 */  lw         $v1, 0x38($v0)
/* BF954 80128A74 8C440020 */  lw         $a0, 0x20($v0)
/* BF958 80128A78 0804A322 */  j          .L80128C88
/* BF95C 80128A7C 34630002 */   ori       $v1, $v1, 0x2
glabel .L80128A80
/* BF960 80128A80 3C06FC70 */  lui        $a2, (0xFC70FEE1 >> 16)
/* BF964 80128A84 34C6FEE1 */  ori        $a2, $a2, (0xFC70FEE1 & 0xFFFF)
/* BF968 80128A88 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BF96C 80128A8C 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BF970 80128A90 3C04800A */  lui        $a0, %hi(gMasterGfxPos)
/* BF974 80128A94 8C849244 */  lw         $a0, %lo(gMasterGfxPos)($a0)
/* BF978 80128A98 8CA20038 */  lw         $v0, 0x38($a1)
/* BF97C 80128A9C 0080182D */  daddu      $v1, $a0, $zero
/* BF980 80128AA0 34420004 */  ori        $v0, $v0, 0x4
/* BF984 80128AA4 ACA20038 */  sw         $v0, 0x38($a1)
/* BF988 80128AA8 2402F3F9 */  addiu      $v0, $zero, -0xC07
/* BF98C 80128AAC AC660000 */  sw         $a2, 0x0($v1)
/* BF990 80128AB0 AC620004 */  sw         $v0, 0x4($v1)
/* BF994 80128AB4 8CA20020 */  lw         $v0, 0x20($a1)
/* BF998 80128AB8 24840008 */  addiu      $a0, $a0, 0x8
/* BF99C 80128ABC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BF9A0 80128AC0 AC249244 */  sw         $a0, %lo(gMasterGfxPos)($at)
/* BF9A4 80128AC4 24420002 */  addiu      $v0, $v0, 0x2
.L80128AC8:
/* BF9A8 80128AC8 0804A8EA */  j          .L8012A3A8
/* BF9AC 80128ACC ACA20020 */   sw        $v0, 0x20($a1)
glabel .L80128AD0
/* BF9B0 80128AD0 3C09FC72 */  lui        $t1, (0xFC72FEE5 >> 16)
/* BF9B4 80128AD4 3529FEE5 */  ori        $t1, $t1, (0xFC72FEE5 & 0xFFFF)
/* BF9B8 80128AD8 3C0811FC */  lui        $t0, (0x11FCF279 >> 16)
/* BF9BC 80128ADC 3C030001 */  lui        $v1, (0x10000 >> 16)
/* BF9C0 80128AE0 3C068016 */  lui        $a2, %hi(msg_drawState)
/* BF9C4 80128AE4 8CC680F4 */  lw         $a2, %lo(msg_drawState)($a2)
/* BF9C8 80128AE8 3C05800A */  lui        $a1, %hi(gMasterGfxPos)
/* BF9CC 80128AEC 8CA59244 */  lw         $a1, %lo(gMasterGfxPos)($a1)
/* BF9D0 80128AF0 8CC20038 */  lw         $v0, 0x38($a2)
/* BF9D4 80128AF4 00A0382D */  daddu      $a3, $a1, $zero
/* BF9D8 80128AF8 00431025 */  or         $v0, $v0, $v1
/* BF9DC 80128AFC ACC20038 */  sw         $v0, 0x38($a2)
/* BF9E0 80128B00 3C02FB00 */  lui        $v0, (0xFB000000 >> 16)
/* BF9E4 80128B04 ACE20000 */  sw         $v0, 0x0($a3)
/* BF9E8 80128B08 8CC20020 */  lw         $v0, 0x20($a2)
/* BF9EC 80128B0C 8CC3004C */  lw         $v1, 0x4C($a2)
/* BF9F0 80128B10 24A50008 */  addiu      $a1, $a1, 0x8
/* BF9F4 80128B14 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BF9F8 80128B18 AC259244 */  sw         $a1, %lo(gMasterGfxPos)($at)
/* BF9FC 80128B1C 00431021 */  addu       $v0, $v0, $v1
/* BFA00 80128B20 90440002 */  lbu        $a0, 0x2($v0)
/* BFA04 80128B24 3508F279 */  ori        $t0, $t0, (0x11FCF279 & 0xFFFF)
/* BFA08 80128B28 00041E00 */  sll        $v1, $a0, 24
/* BFA0C 80128B2C 00041400 */  sll        $v0, $a0, 16
/* BFA10 80128B30 00621825 */  or         $v1, $v1, $v0
/* BFA14 80128B34 00042200 */  sll        $a0, $a0, 8
/* BFA18 80128B38 00641825 */  or         $v1, $v1, $a0
/* BFA1C 80128B3C ACE30004 */  sw         $v1, 0x4($a3)
/* BFA20 80128B40 ACA90000 */  sw         $t1, 0x0($a1)
/* BFA24 80128B44 ACA80004 */  sw         $t0, 0x4($a1)
/* BFA28 80128B48 8CC20020 */  lw         $v0, 0x20($a2)
/* BFA2C 80128B4C 24A50008 */  addiu      $a1, $a1, 0x8
/* BFA30 80128B50 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BFA34 80128B54 AC259244 */  sw         $a1, %lo(gMasterGfxPos)($at)
/* BFA38 80128B58 24420003 */  addiu      $v0, $v0, 0x3
/* BFA3C 80128B5C 0804A8EA */  j          .L8012A3A8
/* BFA40 80128B60 ACC20020 */   sw        $v0, 0x20($a2)
glabel .L80128B64
/* BFA44 80128B64 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BFA48 80128B68 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BFA4C 80128B6C 8CA20038 */  lw         $v0, 0x38($a1)
/* BFA50 80128B70 8CA40020 */  lw         $a0, 0x20($a1)
/* BFA54 80128B74 8CA3004C */  lw         $v1, 0x4C($a1)
/* BFA58 80128B78 34420020 */  ori        $v0, $v0, 0x20
/* BFA5C 80128B7C 00831821 */  addu       $v1, $a0, $v1
/* BFA60 80128B80 ACA20038 */  sw         $v0, 0x38($a1)
/* BFA64 80128B84 90630002 */  lbu        $v1, 0x2($v1)
/* BFA68 80128B88 24840003 */  addiu      $a0, $a0, 0x3
/* BFA6C 80128B8C A3A300B0 */  sb         $v1, 0xB0($sp)
/* BFA70 80128B90 0804A8EA */  j          .L8012A3A8
/* BFA74 80128B94 ACA40020 */   sw        $a0, 0x20($a1)
glabel .L80128B98
/* BFA78 80128B98 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFA7C 80128B9C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFA80 80128BA0 8C430038 */  lw         $v1, 0x38($v0)
/* BFA84 80128BA4 8C440020 */  lw         $a0, 0x20($v0)
/* BFA88 80128BA8 0804A322 */  j          .L80128C88
/* BFA8C 80128BAC 34630040 */   ori       $v1, $v1, 0x40
glabel .L80128BB0
/* BFA90 80128BB0 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BFA94 80128BB4 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BFA98 80128BB8 8CA20038 */  lw         $v0, 0x38($a1)
/* BFA9C 80128BBC 8CA40020 */  lw         $a0, 0x20($a1)
/* BFAA0 80128BC0 8CA3004C */  lw         $v1, 0x4C($a1)
/* BFAA4 80128BC4 34420080 */  ori        $v0, $v0, 0x80
/* BFAA8 80128BC8 00831821 */  addu       $v1, $a0, $v1
/* BFAAC 80128BCC ACA20038 */  sw         $v0, 0x38($a1)
/* BFAB0 80128BD0 90630002 */  lbu        $v1, 0x2($v1)
/* BFAB4 80128BD4 24840003 */  addiu      $a0, $a0, 0x3
/* BFAB8 80128BD8 A7A300AE */  sh         $v1, 0xAE($sp)
/* BFABC 80128BDC 0804A8EA */  j          .L8012A3A8
/* BFAC0 80128BE0 ACA40020 */   sw        $a0, 0x20($a1)
glabel .L80128BE4
/* BFAC4 80128BE4 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFAC8 80128BE8 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFACC 80128BEC 8C430038 */  lw         $v1, 0x38($v0)
/* BFAD0 80128BF0 8C440020 */  lw         $a0, 0x20($v0)
/* BFAD4 80128BF4 0804A322 */  j          .L80128C88
/* BFAD8 80128BF8 34630200 */   ori       $v1, $v1, 0x200
glabel .L80128BFC
/* BFADC 80128BFC 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFAE0 80128C00 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFAE4 80128C04 8C430038 */  lw         $v1, 0x38($v0)
/* BFAE8 80128C08 8C440020 */  lw         $a0, 0x20($v0)
/* BFAEC 80128C0C 0804A322 */  j          .L80128C88
/* BFAF0 80128C10 34630400 */   ori       $v1, $v1, 0x400
glabel .L80128C14
/* BFAF4 80128C14 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFAF8 80128C18 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFAFC 80128C1C 8C430038 */  lw         $v1, 0x38($v0)
/* BFB00 80128C20 8C440020 */  lw         $a0, 0x20($v0)
/* BFB04 80128C24 0804A322 */  j          .L80128C88
/* BFB08 80128C28 34630800 */   ori       $v1, $v1, 0x800
glabel .L80128C2C
/* BFB0C 80128C2C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFB10 80128C30 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFB14 80128C34 8C430038 */  lw         $v1, 0x38($v0)
/* BFB18 80128C38 8C440020 */  lw         $a0, 0x20($v0)
/* BFB1C 80128C3C 0804A322 */  j          .L80128C88
/* BFB20 80128C40 34631000 */   ori       $v1, $v1, 0x1000
glabel .L80128C44
/* BFB24 80128C44 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFB28 80128C48 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFB2C 80128C4C 8C430038 */  lw         $v1, 0x38($v0)
/* BFB30 80128C50 8C440020 */  lw         $a0, 0x20($v0)
/* BFB34 80128C54 0804A322 */  j          .L80128C88
/* BFB38 80128C58 34632000 */   ori       $v1, $v1, 0x2000
glabel .L80128C5C
/* BFB3C 80128C5C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFB40 80128C60 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFB44 80128C64 8C430038 */  lw         $v1, 0x38($v0)
/* BFB48 80128C68 8C440020 */  lw         $a0, 0x20($v0)
/* BFB4C 80128C6C 0804A322 */  j          .L80128C88
/* BFB50 80128C70 34634000 */   ori       $v1, $v1, 0x4000
glabel .L80128C74
/* BFB54 80128C74 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFB58 80128C78 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFB5C 80128C7C 8C430038 */  lw         $v1, 0x38($v0)
/* BFB60 80128C80 8C440020 */  lw         $a0, 0x20($v0)
/* BFB64 80128C84 34638000 */  ori        $v1, $v1, 0x8000
.L80128C88:
/* BFB68 80128C88 24840002 */  addiu      $a0, $a0, 0x2
/* BFB6C 80128C8C AC430038 */  sw         $v1, 0x38($v0)
/* BFB70 80128C90 0804A8EA */  j          .L8012A3A8
/* BFB74 80128C94 AC440020 */   sw        $a0, 0x20($v0)
glabel .L80128C98
/* BFB78 80128C98 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BFB7C 80128C9C 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BFB80 80128CA0 8C620020 */  lw         $v0, 0x20($v1)
/* BFB84 80128CA4 8C63004C */  lw         $v1, 0x4C($v1)
/* BFB88 80128CA8 00431021 */  addu       $v0, $v0, $v1
/* BFB8C 80128CAC 90430001 */  lbu        $v1, 0x1($v0)
/* BFB90 80128CB0 2C62000F */  sltiu      $v0, $v1, 0xF
/* BFB94 80128CB4 10400071 */  beqz       $v0, .L80128E7C
/* BFB98 80128CB8 00031080 */   sll       $v0, $v1, 2
/* BFB9C 80128CBC 3C018015 */  lui        $at, %hi(jtbl_8014F048)
/* BFBA0 80128CC0 00220821 */  addu       $at, $at, $v0
/* BFBA4 80128CC4 8C22F048 */  lw         $v0, %lo(jtbl_8014F048)($at)
/* BFBA8 80128CC8 00400008 */  jr         $v0
/* BFBAC 80128CCC 00000000 */   nop
glabel .L80128CD0
/* BFBB0 80128CD0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFBB4 80128CD4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFBB8 80128CD8 8C430038 */  lw         $v1, 0x38($v0)
/* BFBBC 80128CDC 0804A379 */  j          .L80128DE4
/* BFBC0 80128CE0 2404FFFE */   addiu     $a0, $zero, -0x2
glabel .L80128CE4
/* BFBC4 80128CE4 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFBC8 80128CE8 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFBCC 80128CEC 8C430038 */  lw         $v1, 0x38($v0)
/* BFBD0 80128CF0 0804A379 */  j          .L80128DE4
/* BFBD4 80128CF4 2404FFFD */   addiu     $a0, $zero, -0x3
glabel .L80128CF8
/* BFBD8 80128CF8 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFBDC 80128CFC 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFBE0 80128D00 8C430038 */  lw         $v1, 0x38($v0)
/* BFBE4 80128D04 0804A379 */  j          .L80128DE4
/* BFBE8 80128D08 2404FFFB */   addiu     $a0, $zero, -0x5
glabel .L80128D0C
/* BFBEC 80128D0C 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFBF0 80128D10 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFBF4 80128D14 3C03FFFE */  lui        $v1, (0xFFFEFFFF >> 16)
/* BFBF8 80128D18 8C820038 */  lw         $v0, 0x38($a0)
/* BFBFC 80128D1C 0804A381 */  j          .L80128E04
/* BFC00 80128D20 3463FFFF */   ori       $v1, $v1, (0xFFFEFFFF & 0xFFFF)
glabel .L80128D24
/* BFC04 80128D24 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFC08 80128D28 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFC0C 80128D2C 8C430038 */  lw         $v1, 0x38($v0)
/* BFC10 80128D30 0804A379 */  j          .L80128DE4
/* BFC14 80128D34 2404FFDF */   addiu     $a0, $zero, -0x21
glabel .L80128D38
/* BFC18 80128D38 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFC1C 80128D3C 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFC20 80128D40 0804A35F */  j          .L80128D7C
/* BFC24 80128D44 2405FFBF */   addiu     $a1, $zero, -0x41
glabel .L80128D48
/* BFC28 80128D48 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFC2C 80128D4C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFC30 80128D50 8C430038 */  lw         $v1, 0x38($v0)
/* BFC34 80128D54 0804A379 */  j          .L80128DE4
/* BFC38 80128D58 2404FF7F */   addiu     $a0, $zero, -0x81
glabel .L80128D5C
/* BFC3C 80128D5C 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFC40 80128D60 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFC44 80128D64 8C430038 */  lw         $v1, 0x38($v0)
/* BFC48 80128D68 0804A379 */  j          .L80128DE4
/* BFC4C 80128D6C 2404FDFF */   addiu     $a0, $zero, -0x201
glabel .L80128D70
/* BFC50 80128D70 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFC54 80128D74 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFC58 80128D78 2405FBFF */  addiu      $a1, $zero, -0x401
.L80128D7C:
/* BFC5C 80128D7C 8C820038 */  lw         $v0, 0x38($a0)
/* BFC60 80128D80 94830034 */  lhu        $v1, 0x34($a0)
/* BFC64 80128D84 00451024 */  and        $v0, $v0, $a1
/* BFC68 80128D88 34630010 */  ori        $v1, $v1, 0x10
/* BFC6C 80128D8C AC820038 */  sw         $v0, 0x38($a0)
/* BFC70 80128D90 0804A39F */  j          .L80128E7C
/* BFC74 80128D94 A4830034 */   sh        $v1, 0x34($a0)
glabel .L80128D98
/* BFC78 80128D98 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFC7C 80128D9C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFC80 80128DA0 8C430038 */  lw         $v1, 0x38($v0)
/* BFC84 80128DA4 0804A379 */  j          .L80128DE4
/* BFC88 80128DA8 2404F7FF */   addiu     $a0, $zero, -0x801
glabel .L80128DAC
/* BFC8C 80128DAC 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFC90 80128DB0 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFC94 80128DB4 8C430038 */  lw         $v1, 0x38($v0)
/* BFC98 80128DB8 0804A379 */  j          .L80128DE4
/* BFC9C 80128DBC 2404EFFF */   addiu     $a0, $zero, -0x1001
glabel .L80128DC0
/* BFCA0 80128DC0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFCA4 80128DC4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFCA8 80128DC8 8C430038 */  lw         $v1, 0x38($v0)
/* BFCAC 80128DCC 0804A379 */  j          .L80128DE4
/* BFCB0 80128DD0 2404DFFF */   addiu     $a0, $zero, -0x2001
glabel .L80128DD4
/* BFCB4 80128DD4 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFCB8 80128DD8 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFCBC 80128DDC 8C430038 */  lw         $v1, 0x38($v0)
/* BFCC0 80128DE0 2404BFFF */  addiu      $a0, $zero, -0x4001
.L80128DE4:
/* BFCC4 80128DE4 00641824 */  and        $v1, $v1, $a0
/* BFCC8 80128DE8 0804A39F */  j          .L80128E7C
/* BFCCC 80128DEC AC430038 */   sw        $v1, 0x38($v0)
glabel .L80128DF0
/* BFCD0 80128DF0 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFCD4 80128DF4 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFCD8 80128DF8 3C03FFFF */  lui        $v1, (0xFFFF7FFF >> 16)
/* BFCDC 80128DFC 8C820038 */  lw         $v0, 0x38($a0)
/* BFCE0 80128E00 34637FFF */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
.L80128E04:
/* BFCE4 80128E04 00431024 */  and        $v0, $v0, $v1
/* BFCE8 80128E08 0804A39F */  j          .L80128E7C
/* BFCEC 80128E0C AC820038 */   sw        $v0, 0x38($a0)
glabel .L80128E10
/* BFCF0 80128E10 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFCF4 80128E14 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFCF8 80128E18 8C820020 */  lw         $v0, 0x20($a0)
/* BFCFC 80128E1C 8C83004C */  lw         $v1, 0x4C($a0)
/* BFD00 80128E20 00431021 */  addu       $v0, $v0, $v1
/* BFD04 80128E24 90420001 */  lbu        $v0, 0x1($v0)
/* BFD08 80128E28 10400010 */  beqz       $v0, .L80128E6C
/* BFD0C 80128E2C 241900FF */   addiu     $t9, $zero, 0xFF
/* BFD10 80128E30 A082002E */  sb         $v0, 0x2E($a0)
/* BFD14 80128E34 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BFD18 80128E38 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BFD1C 80128E3C 9062002E */  lbu        $v0, 0x2E($v1)
/* BFD20 80128E40 14590006 */  bne        $v0, $t9, .L80128E5C
/* BFD24 80128E44 00000000 */   nop
/* BFD28 80128E48 97C20514 */  lhu        $v0, 0x514($fp)
/* BFD2C 80128E4C 00021042 */  srl        $v0, $v0, 1
/* BFD30 80128E50 A062002E */  sb         $v0, 0x2E($v1)
/* BFD34 80128E54 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BFD38 80128E58 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
.L80128E5C:
/* BFD3C 80128E5C 94620034 */  lhu        $v0, 0x34($v1)
/* BFD40 80128E60 344200C0 */  ori        $v0, $v0, 0xC0
/* BFD44 80128E64 0804A39F */  j          .L80128E7C
/* BFD48 80128E68 A4620034 */   sh        $v0, 0x34($v1)
.L80128E6C:
/* BFD4C 80128E6C 94820034 */  lhu        $v0, 0x34($a0)
/* BFD50 80128E70 A4800042 */  sh         $zero, 0x42($a0)
/* BFD54 80128E74 3042FF3F */  andi       $v0, $v0, 0xFF3F
.L80128E78:
/* BFD58 80128E78 A4820034 */  sh         $v0, 0x34($a0)
glabel .L80128E7C
/* BFD5C 80128E7C 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BFD60 80128E80 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BFD64 80128E84 8C620020 */  lw         $v0, 0x20($v1)
.L80128E88:
/* BFD68 80128E88 24420002 */  addiu      $v0, $v0, 0x2
/* BFD6C 80128E8C 0804A8EA */  j          .L8012A3A8
/* BFD70 80128E90 AC620020 */   sw        $v0, 0x20($v1)
glabel .L80128E94
/* BFD74 80128E94 24A2FFA1 */  addiu      $v0, $a1, -0x5F
/* BFD78 80128E98 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* BFD7C 80128E9C 2C420031 */  sltiu      $v0, $v0, 0x31
/* BFD80 80128EA0 10400007 */  beqz       $v0, .L80128EC0
/* BFD84 80128EA4 00000000 */   nop
glabel .L80128EA8
/* BFD88 80128EA8 3C038016 */  lui        $v1, %hi(msg_drawState)
/* BFD8C 80128EAC 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* BFD90 80128EB0 8C620020 */  lw         $v0, 0x20($v1)
/* BFD94 80128EB4 24420001 */  addiu      $v0, $v0, 0x1
/* BFD98 80128EB8 0804A8EA */  j          .L8012A3A8
/* BFD9C 80128EBC AC620020 */   sw        $v0, 0x20($v1)
.L80128EC0:
/* BFDA0 80128EC0 3C028016 */  lui        $v0, %hi(msg_drawState)
/* BFDA4 80128EC4 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* BFDA8 80128EC8 94420034 */  lhu        $v0, 0x34($v0)
/* BFDAC 80128ECC 30420002 */  andi       $v0, $v0, 0x2
/* BFDB0 80128ED0 10400013 */  beqz       $v0, .L80128F20
/* BFDB4 80128ED4 241800FF */   addiu     $t8, $zero, 0xFF
/* BFDB8 80128ED8 3C03800A */  lui        $v1, %hi(gMasterGfxPos)
/* BFDBC 80128EDC 8C639244 */  lw         $v1, %lo(gMasterGfxPos)($v1)
/* BFDC0 80128EE0 A7B80096 */  sh         $t8, 0x96($sp)
/* BFDC4 80128EE4 0060102D */  daddu      $v0, $v1, $zero
/* BFDC8 80128EE8 24630008 */  addiu      $v1, $v1, 0x8
/* BFDCC 80128EEC 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* BFDD0 80128EF0 AC590000 */  sw         $t9, 0x0($v0)
/* BFDD4 80128EF4 AC400004 */  sw         $zero, 0x4($v0)
/* BFDD8 80128EF8 24620008 */  addiu      $v0, $v1, 0x8
/* BFDDC 80128EFC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BFDE0 80128F00 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* BFDE4 80128F04 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* BFDE8 80128F08 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* BFDEC 80128F0C 3C02DE00 */  lui        $v0, (0xDE000000 >> 16)
/* BFDF0 80128F10 AC620000 */  sw         $v0, 0x0($v1)
/* BFDF4 80128F14 3C028015 */  lui        $v0, %hi(D_8014C500)
/* BFDF8 80128F18 2442AC90 */  addiu      $v0, $v0, %lo(D_8014C500)
/* BFDFC 80128F1C AC620004 */  sw         $v0, 0x4($v1)
.L80128F20:
/* BFE00 80128F20 3C058016 */  lui        $a1, %hi(msg_drawState)
/* BFE04 80128F24 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* BFE08 80128F28 C4A00010 */  lwc1       $f0, 0x10($a1)
/* BFE0C 80128F2C 94A20034 */  lhu        $v0, 0x34($a1)
/* BFE10 80128F30 C4A20014 */  lwc1       $f2, 0x14($a1)
/* BFE14 80128F34 30420080 */  andi       $v0, $v0, 0x80
/* BFE18 80128F38 E4A00018 */  swc1       $f0, 0x18($a1)
/* BFE1C 80128F3C 1040000B */  beqz       $v0, .L80128F6C
/* BFE20 80128F40 E4A2001C */   swc1      $f2, 0x1C($a1)
/* BFE24 80128F44 97C20538 */  lhu        $v0, 0x538($fp)
/* BFE28 80128F48 90A4002E */  lbu        $a0, 0x2E($a1)
/* BFE2C 80128F4C 94A30034 */  lhu        $v1, 0x34($a1)
/* BFE30 80128F50 00021042 */  srl        $v0, $v0, 1
/* BFE34 80128F54 00822023 */  subu       $a0, $a0, $v0
/* BFE38 80128F58 94A20042 */  lhu        $v0, 0x42($a1)
/* BFE3C 80128F5C 3063FF7F */  andi       $v1, $v1, 0xFF7F
/* BFE40 80128F60 A4A30034 */  sh         $v1, 0x34($a1)
/* BFE44 80128F64 00441021 */  addu       $v0, $v0, $a0
/* BFE48 80128F68 A4A20042 */  sh         $v0, 0x42($a1)
.L80128F6C:
/* BFE4C 80128F6C 3C048016 */  lui        $a0, %hi(msg_drawState)
/* BFE50 80128F70 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* BFE54 80128F74 94820034 */  lhu        $v0, 0x34($a0)
/* BFE58 80128F78 30420040 */  andi       $v0, $v0, 0x40
/* BFE5C 80128F7C 10400007 */  beqz       $v0, .L80128F9C
/* BFE60 80128F80 00000000 */   nop
/* BFE64 80128F84 97C2045A */  lhu        $v0, 0x45A($fp)
/* BFE68 80128F88 97B80066 */  lhu        $t8, 0x66($sp)
/* BFE6C 80128F8C 94830042 */  lhu        $v1, 0x42($a0)
/* BFE70 80128F90 00581021 */  addu       $v0, $v0, $t8
/* BFE74 80128F94 0804A3EE */  j          .L80128FB8
/* BFE78 80128F98 00628821 */   addu      $s1, $v1, $v0
.L80128F9C:
/* BFE7C 80128F9C 97C2045A */  lhu        $v0, 0x45A($fp)
/* BFE80 80128FA0 97B90066 */  lhu        $t9, 0x66($sp)
/* BFE84 80128FA4 94830046 */  lhu        $v1, 0x46($a0)
/* BFE88 80128FA8 94840042 */  lhu        $a0, 0x42($a0)
/* BFE8C 80128FAC 00591021 */  addu       $v0, $v0, $t9
/* BFE90 80128FB0 00621821 */  addu       $v1, $v1, $v0
/* BFE94 80128FB4 00838821 */  addu       $s1, $a0, $v1
.L80128FB8:
/* BFE98 80128FB8 3C068016 */  lui        $a2, %hi(msg_drawState)
/* BFE9C 80128FBC 8CC680F4 */  lw         $a2, %lo(msg_drawState)($a2)
/* BFEA0 80128FC0 97B8006E */  lhu        $t8, 0x6E($sp)
/* BFEA4 80128FC4 97B9007E */  lhu        $t9, 0x7E($sp)
/* BFEA8 80128FC8 94C3003C */  lhu        $v1, 0x3C($a2)
/* BFEAC 80128FCC 94C4003E */  lhu        $a0, 0x3E($a2)
/* BFEB0 80128FD0 00031880 */  sll        $v1, $v1, 2
/* BFEB4 80128FD4 00041040 */  sll        $v0, $a0, 1
/* BFEB8 80128FD8 00441021 */  addu       $v0, $v0, $a0
/* BFEBC 80128FDC 00021080 */  sll        $v0, $v0, 2
/* BFEC0 80128FE0 97C4045C */  lhu        $a0, 0x45C($fp)
/* BFEC4 80128FE4 3C08802F */  lui        $t0, %hi(gMsgCharsets)
/* BFEC8 80128FE8 01034021 */  addu       $t0, $t0, $v1
/* BFECC 80128FEC 8D08B5A8 */  lw         $t0, %lo(gMsgCharsets)($t0)
/* BFED0 80128FF0 00982021 */  addu       $a0, $a0, $t8
/* BFED4 80128FF4 8D030008 */  lw         $v1, 0x8($t0)
/* BFED8 80128FF8 97B8008E */  lhu        $t8, 0x8E($sp)
/* BFEDC 80128FFC 00433821 */  addu       $a3, $v0, $v1
/* BFEE0 80129000 90E50009 */  lbu        $a1, 0x9($a3)
/* BFEE4 80129004 94C30048 */  lhu        $v1, 0x48($a2)
/* BFEE8 80129008 94C20044 */  lhu        $v0, 0x44($a2)
/* BFEEC 8012900C 00052E00 */  sll        $a1, $a1, 24
/* BFEF0 80129010 00052E03 */  sra        $a1, $a1, 24
/* BFEF4 80129014 00641821 */  addu       $v1, $v1, $a0
/* BFEF8 80129018 00431021 */  addu       $v0, $v0, $v1
/* BFEFC 8012901C 00591023 */  subu       $v0, $v0, $t9
/* BFF00 80129020 00A22821 */  addu       $a1, $a1, $v0
/* BFF04 80129024 00181400 */  sll        $v0, $t8, 16
/* BFF08 80129028 00024C03 */  sra        $t1, $v0, 16
/* BFF0C 8012902C 112004C1 */  beqz       $t1, .L8012A334
/* BFF10 80129030 00A0A02D */   daddu     $s4, $a1, $zero
/* BFF14 80129034 00111C00 */  sll        $v1, $s1, 16
/* BFF18 80129038 8CC20004 */  lw         $v0, 0x4($a2)
/* BFF1C 8012903C 00032403 */  sra        $a0, $v1, 16
/* BFF20 80129040 0082102A */  slt        $v0, $a0, $v0
/* BFF24 80129044 104004BB */  beqz       $v0, .L8012A334
/* BFF28 80129048 00051C00 */   sll       $v1, $a1, 16
/* BFF2C 8012904C 8CC2000C */  lw         $v0, 0xC($a2)
/* BFF30 80129050 00032C03 */  sra        $a1, $v1, 16
/* BFF34 80129054 00A2102A */  slt        $v0, $a1, $v0
/* BFF38 80129058 104004B6 */  beqz       $v0, .L8012A334
/* BFF3C 8012905C 00000000 */   nop
/* BFF40 80129060 90E20008 */  lbu        $v0, 0x8($a3)
/* BFF44 80129064 C4C00010 */  lwc1       $f0, 0x10($a2)
/* BFF48 80129068 44821000 */  mtc1       $v0, $f2
/* BFF4C 8012906C 00000000 */  nop
/* BFF50 80129070 468010A0 */  cvt.s.w    $f2, $f2
/* BFF54 80129074 46020002 */  mul.s      $f0, $f0, $f2
/* BFF58 80129078 00000000 */  nop
/* BFF5C 8012907C 8CC30000 */  lw         $v1, 0x0($a2)
/* BFF60 80129080 4600030D */  trunc.w.s  $f12, $f0
/* BFF64 80129084 44026000 */  mfc1       $v0, $f12
/* BFF68 80129088 00000000 */  nop
/* BFF6C 8012908C 00821021 */  addu       $v0, $a0, $v0
/* BFF70 80129090 0062182A */  slt        $v1, $v1, $v0
/* BFF74 80129094 106004A7 */  beqz       $v1, .L8012A334
/* BFF78 80129098 00000000 */   nop
/* BFF7C 8012909C 91020003 */  lbu        $v0, 0x3($t0)
/* BFF80 801290A0 C4C20014 */  lwc1       $f2, 0x14($a2)
/* BFF84 801290A4 44820000 */  mtc1       $v0, $f0
/* BFF88 801290A8 00000000 */  nop
/* BFF8C 801290AC 46800020 */  cvt.s.w    $f0, $f0
/* BFF90 801290B0 93C20508 */  lbu        $v0, 0x508($fp)
/* BFF94 801290B4 46001082 */  mul.s      $f2, $f2, $f0
/* BFF98 801290B8 00000000 */  nop
/* BFF9C 801290BC 00021040 */  sll        $v0, $v0, 1
/* BFFA0 801290C0 3C01802F */  lui        $at, %hi(D_802EB644)
/* BFFA4 801290C4 00220821 */  addu       $at, $at, $v0
/* BFFA8 801290C8 8422B644 */  lh         $v0, %lo(D_802EB644)($at)
/* BFFAC 801290CC 44820000 */  mtc1       $v0, $f0
/* BFFB0 801290D0 00000000 */  nop
/* BFFB4 801290D4 46800020 */  cvt.s.w    $f0, $f0
/* BFFB8 801290D8 46001080 */  add.s      $f2, $f2, $f0
/* BFFBC 801290DC 8CC30008 */  lw         $v1, 0x8($a2)
/* BFFC0 801290E0 4600130D */  trunc.w.s  $f12, $f2
/* BFFC4 801290E4 44026000 */  mfc1       $v0, $f12
/* BFFC8 801290E8 00000000 */  nop
/* BFFCC 801290EC 00A21021 */  addu       $v0, $a1, $v0
/* BFFD0 801290F0 0062182A */  slt        $v1, $v1, $v0
/* BFFD4 801290F4 1060048F */  beqz       $v1, .L8012A334
/* BFFD8 801290F8 00000000 */   nop
/* BFFDC 801290FC 97B2008E */  lhu        $s2, 0x8E($sp)
/* BFFE0 80129100 8CC50038 */  lw         $a1, 0x38($a2)
/* BFFE4 80129104 94D7004A */  lhu        $s7, 0x4A($a2)
/* BFFE8 80129108 30A20020 */  andi       $v0, $a1, 0x20
/* BFFEC 8012910C 1040000B */  beqz       $v0, .L8012913C
/* BFFF0 80129110 00000000 */   nop
/* BFFF4 80129114 44890000 */  mtc1       $t1, $f0
/* BFFF8 80129118 00000000 */  nop
/* BFFFC 8012911C 46800020 */  cvt.s.w    $f0, $f0
/* C0000 80129120 3C018015 */  lui        $at, %hi(D_8014F088)
/* C0004 80129124 D422F088 */  ldc1       $f2, %lo(D_8014F088)($at)
/* C0008 80129128 46000021 */  cvt.d.s    $f0, $f0
/* C000C 8012912C 46220002 */  mul.d      $f0, $f0, $f2
/* C0010 80129130 00000000 */  nop
/* C0014 80129134 4620030D */  trunc.w.d  $f12, $f0
/* C0018 80129138 44126000 */  mfc1       $s2, $f12
.L8012913C:
/* C001C 8012913C 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* C0020 80129140 24190007 */  addiu      $t9, $zero, 0x7
/* C0024 80129144 14590017 */  bne        $v0, $t9, .L801291A4
/* C0028 80129148 00000000 */   nop
/* C002C 8012914C 94C20034 */  lhu        $v0, 0x34($a2)
/* C0030 80129150 30420020 */  andi       $v0, $v0, 0x20
/* C0034 80129154 10400013 */  beqz       $v0, .L801291A4
/* C0038 80129158 00000000 */   nop
/* C003C 8012915C 90C3002D */  lbu        $v1, 0x2D($a2)
/* C0040 80129160 93C204E8 */  lbu        $v0, 0x4E8($fp)
/* C0044 80129164 14620004 */  bne        $v1, $v0, .L80129178
/* C0048 80129168 3C04FFFF */   lui       $a0, (0xFFFF7FFF >> 16)
/* C004C 8012916C 34A28600 */  ori        $v0, $a1, 0x8600
/* C0050 80129170 0804A469 */  j          .L801291A4
/* C0054 80129174 ACC20038 */   sw        $v0, 0x38($a2)
.L80129178:
/* C0058 80129178 34847FFF */  ori        $a0, $a0, (0xFFFF7FFF & 0xFFFF)
/* C005C 8012917C 2402FBFF */  addiu      $v0, $zero, -0x401
/* C0060 80129180 00A21024 */  and        $v0, $a1, $v0
/* C0064 80129184 2403FDFF */  addiu      $v1, $zero, -0x201
/* C0068 80129188 00431024 */  and        $v0, $v0, $v1
/* C006C 8012918C 94D7004A */  lhu        $s7, 0x4A($a2)
/* C0070 80129190 94C30034 */  lhu        $v1, 0x34($a2)
/* C0074 80129194 00441024 */  and        $v0, $v0, $a0
/* C0078 80129198 ACC20038 */  sw         $v0, 0x38($a2)
/* C007C 8012919C 34630010 */  ori        $v1, $v1, 0x10
/* C0080 801291A0 A4C30034 */  sh         $v1, 0x34($a2)
.L801291A4:
/* C0084 801291A4 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C0088 801291A8 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C008C 801291AC 8C420038 */  lw         $v0, 0x38($v0)
/* C0090 801291B0 30420001 */  andi       $v0, $v0, 0x1
/* C0094 801291B4 10400011 */  beqz       $v0, .L801291FC
/* C0098 801291B8 00000000 */   nop
/* C009C 801291BC 0C00A5B3 */  jal        rand_int
/* C00A0 801291C0 24042710 */   addiu     $a0, $zero, 0x2710
/* C00A4 801291C4 00021FC2 */  srl        $v1, $v0, 31
/* C00A8 801291C8 00431821 */  addu       $v1, $v0, $v1
/* C00AC 801291CC 00031843 */  sra        $v1, $v1, 1
/* C00B0 801291D0 00031840 */  sll        $v1, $v1, 1
/* C00B4 801291D4 00431023 */  subu       $v0, $v0, $v1
/* C00B8 801291D8 02228821 */  addu       $s1, $s1, $v0
/* C00BC 801291DC 0C00A5B3 */  jal        rand_int
/* C00C0 801291E0 24042710 */   addiu     $a0, $zero, 0x2710
/* C00C4 801291E4 00021FC2 */  srl        $v1, $v0, 31
/* C00C8 801291E8 00431821 */  addu       $v1, $v0, $v1
/* C00CC 801291EC 00031843 */  sra        $v1, $v1, 1
/* C00D0 801291F0 00031840 */  sll        $v1, $v1, 1
/* C00D4 801291F4 00431023 */  subu       $v0, $v0, $v1
/* C00D8 801291F8 0282A021 */  addu       $s4, $s4, $v0
.L801291FC:
/* C00DC 801291FC 3C048016 */  lui        $a0, %hi(msg_drawState)
/* C00E0 80129200 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* C00E4 80129204 8C820038 */  lw         $v0, 0x38($a0)
/* C00E8 80129208 30420002 */  andi       $v0, $v0, 0x2
/* C00EC 8012920C 1040005D */  beqz       $v0, .L80129384
/* C00F0 80129210 00000000 */   nop
/* C00F4 80129214 C4820010 */  lwc1       $f2, 0x10($a0)
/* C00F8 80129218 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* C00FC 8012921C 4481B800 */  mtc1       $at, $f23
/* C0100 80129220 4480B000 */  mtc1       $zero, $f22
/* C0104 80129224 460010A1 */  cvt.d.s    $f2, $f2
/* C0108 80129228 46361081 */  sub.d      $f2, $f2, $f22
/* C010C 8012922C 3C014014 */  lui        $at, (0x40140000 >> 16)
/* C0110 80129230 44812800 */  mtc1       $at, $f5
/* C0114 80129234 44802000 */  mtc1       $zero, $f4
/* C0118 80129238 00000000 */  nop
/* C011C 8012923C 46241102 */  mul.d      $f4, $f2, $f4
/* C0120 80129240 00000000 */  nop
/* C0124 80129244 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* C0128 80129248 44810800 */  mtc1       $at, $f1
/* C012C 8012924C 44800000 */  mtc1       $zero, $f0
/* C0130 80129250 00000000 */  nop
/* C0134 80129254 46201082 */  mul.d      $f2, $f2, $f0
/* C0138 80129258 00000000 */  nop
/* C013C 8012925C 3C014034 */  lui        $at, (0x40340000 >> 16)
/* C0140 80129260 44810800 */  mtc1       $at, $f1
/* C0144 80129264 44800000 */  mtc1       $zero, $f0
/* C0148 80129268 00000000 */  nop
/* C014C 8012926C 46240001 */  sub.d      $f0, $f0, $f4
/* C0150 80129270 97C30452 */  lhu        $v1, 0x452($fp)
/* C0154 80129274 4620030D */  trunc.w.d  $f12, $f0
/* C0158 80129278 44026000 */  mfc1       $v0, $f12
/* C015C 8012927C 00000000 */  nop
/* C0160 80129280 00620018 */  mult       $v1, $v0
/* C0164 80129284 3C018015 */  lui        $at, %hi(D_8014F090)
/* C0168 80129288 D420F090 */  ldc1       $f0, %lo(D_8014F090)($at)
/* C016C 8012928C 46220001 */  sub.d      $f0, $f0, $f2
/* C0170 80129290 00002812 */  mflo       $a1
/* C0174 80129294 8C830030 */  lw         $v1, 0x30($a0)
/* C0178 80129298 4620030D */  trunc.w.d  $f12, $f0
/* C017C 8012929C 44026000 */  mfc1       $v0, $f12
/* C0180 801292A0 00000000 */  nop
/* C0184 801292A4 00620018 */  mult       $v1, $v0
/* C0188 801292A8 00001812 */  mflo       $v1
/* C018C 801292AC 00A38023 */  subu       $s0, $a1, $v1
/* C0190 801292B0 00102400 */  sll        $a0, $s0, 16
/* C0194 801292B4 0C00A429 */  jal        cosine
/* C0198 801292B8 00042403 */   sra       $a0, $a0, 16
/* C019C 801292BC 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C01A0 801292C0 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C01A4 801292C4 C4420010 */  lwc1       $f2, 0x10($v0)
/* C01A8 801292C8 460010A1 */  cvt.d.s    $f2, $f2
/* C01AC 801292CC 46361081 */  sub.d      $f2, $f2, $f22
/* C01B0 801292D0 3C018015 */  lui        $at, %hi(D_8014F098)
/* C01B4 801292D4 D434F098 */  ldc1       $f20, %lo(D_8014F098)($at)
/* C01B8 801292D8 46341080 */  add.d      $f2, $f2, $f20
/* C01BC 801292DC 46000021 */  cvt.d.s    $f0, $f0
/* C01C0 801292E0 46220002 */  mul.d      $f0, $f0, $f2
/* C01C4 801292E4 00000000 */  nop
/* C01C8 801292E8 3C018015 */  lui        $at, %hi(D_8014F0A0)
/* C01CC 801292EC D424F0A0 */  ldc1       $f4, %lo(D_8014F0A0)($at)
/* C01D0 801292F0 44901000 */  mtc1       $s0, $f2
/* C01D4 801292F4 00000000 */  nop
/* C01D8 801292F8 468010A1 */  cvt.d.w    $f2, $f2
/* C01DC 801292FC 46241080 */  add.d      $f2, $f2, $f4
/* C01E0 80129300 3C018015 */  lui        $at, %hi(D_8014F0A8)
/* C01E4 80129304 D424F0A8 */  ldc1       $f4, %lo(D_8014F0A8)($at)
/* C01E8 80129308 00111400 */  sll        $v0, $s1, 16
/* C01EC 8012930C 46241080 */  add.d      $f2, $f2, $f4
/* C01F0 80129310 00021403 */  sra        $v0, $v0, 16
/* C01F4 80129314 44822000 */  mtc1       $v0, $f4
/* C01F8 80129318 00000000 */  nop
/* C01FC 8012931C 46802121 */  cvt.d.w    $f4, $f4
/* C0200 80129320 4620130D */  trunc.w.d  $f12, $f2
/* C0204 80129324 44046000 */  mfc1       $a0, $f12
/* C0208 80129328 46202100 */  add.d      $f4, $f4, $f0
/* C020C 8012932C 00042400 */  sll        $a0, $a0, 16
/* C0210 80129330 4620230D */  trunc.w.d  $f12, $f4
/* C0214 80129334 44116000 */  mfc1       $s1, $f12
/* C0218 80129338 0C00A429 */  jal        cosine
/* C021C 8012933C 00042403 */   sra       $a0, $a0, 16
/* C0220 80129340 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C0224 80129344 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C0228 80129348 C4420014 */  lwc1       $f2, 0x14($v0)
/* C022C 8012934C 460010A1 */  cvt.d.s    $f2, $f2
/* C0230 80129350 46361081 */  sub.d      $f2, $f2, $f22
/* C0234 80129354 46341080 */  add.d      $f2, $f2, $f20
/* C0238 80129358 46000021 */  cvt.d.s    $f0, $f0
/* C023C 8012935C 46220002 */  mul.d      $f0, $f0, $f2
/* C0240 80129360 00000000 */  nop
/* C0244 80129364 00141400 */  sll        $v0, $s4, 16
/* C0248 80129368 00021403 */  sra        $v0, $v0, 16
/* C024C 8012936C 44821000 */  mtc1       $v0, $f2
/* C0250 80129370 00000000 */  nop
/* C0254 80129374 468010A1 */  cvt.d.w    $f2, $f2
/* C0258 80129378 46201080 */  add.d      $f2, $f2, $f0
/* C025C 8012937C 4620130D */  trunc.w.d  $f12, $f2
/* C0260 80129380 44146000 */  mfc1       $s4, $f12
.L80129384:
/* C0264 80129384 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C0268 80129388 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C026C 8012938C 8C620038 */  lw         $v0, 0x38($v1)
/* C0270 80129390 30420200 */  andi       $v0, $v0, 0x200
/* C0274 80129394 10400054 */  beqz       $v0, .L801294E8
/* C0278 80129398 00000000 */   nop
/* C027C 8012939C C4620010 */  lwc1       $f2, 0x10($v1)
/* C0280 801293A0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* C0284 801293A4 4481A800 */  mtc1       $at, $f21
/* C0288 801293A8 4480A000 */  mtc1       $zero, $f20
/* C028C 801293AC 460010A1 */  cvt.d.s    $f2, $f2
/* C0290 801293B0 46341081 */  sub.d      $f2, $f2, $f20
/* C0294 801293B4 3C014014 */  lui        $at, (0x40140000 >> 16)
/* C0298 801293B8 44810800 */  mtc1       $at, $f1
/* C029C 801293BC 44800000 */  mtc1       $zero, $f0
/* C02A0 801293C0 00000000 */  nop
/* C02A4 801293C4 46201082 */  mul.d      $f2, $f2, $f0
/* C02A8 801293C8 00000000 */  nop
/* C02AC 801293CC 3C014034 */  lui        $at, (0x40340000 >> 16)
/* C02B0 801293D0 44810800 */  mtc1       $at, $f1
/* C02B4 801293D4 44800000 */  mtc1       $zero, $f0
/* C02B8 801293D8 00000000 */  nop
/* C02BC 801293DC 46220001 */  sub.d      $f0, $f0, $f2
/* C02C0 801293E0 3C028015 */  lui        $v0, %hi(gMsgGlobalWaveCounter)
/* C02C4 801293E4 9442FA74 */  lhu        $v0, %lo(gMsgGlobalWaveCounter)($v0)
/* C02C8 801293E8 8C630030 */  lw         $v1, 0x30($v1)
/* C02CC 801293EC 4620030D */  trunc.w.d  $f12, $f0
/* C02D0 801293F0 44046000 */  mfc1       $a0, $f12
/* C02D4 801293F4 00000000 */  nop
/* C02D8 801293F8 00440018 */  mult       $v0, $a0
/* C02DC 801293FC 00031040 */  sll        $v0, $v1, 1
/* C02E0 80129400 00431021 */  addu       $v0, $v0, $v1
/* C02E4 80129404 00028100 */  sll        $s0, $v0, 4
/* C02E8 80129408 02028023 */  subu       $s0, $s0, $v0
/* C02EC 8012940C 0000C012 */  mflo       $t8
/* C02F0 80129410 03108023 */  subu       $s0, $t8, $s0
/* C02F4 80129414 00102400 */  sll        $a0, $s0, 16
/* C02F8 80129418 0C00A429 */  jal        cosine
/* C02FC 8012941C 00042403 */   sra       $a0, $a0, 16
/* C0300 80129420 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C0304 80129424 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C0308 80129428 C4420010 */  lwc1       $f2, 0x10($v0)
/* C030C 8012942C 460010A1 */  cvt.d.s    $f2, $f2
/* C0310 80129430 46341081 */  sub.d      $f2, $f2, $f20
/* C0314 80129434 3C018015 */  lui        $at, %hi(D_8014F0B0)
/* C0318 80129438 D436F0B0 */  ldc1       $f22, %lo(D_8014F0B0)($at)
/* C031C 8012943C 46361080 */  add.d      $f2, $f2, $f22
/* C0320 80129440 46000021 */  cvt.d.s    $f0, $f0
/* C0324 80129444 46220002 */  mul.d      $f0, $f0, $f2
/* C0328 80129448 00000000 */  nop
/* C032C 8012944C 3C018015 */  lui        $at, %hi(D_8014F0B8)
/* C0330 80129450 D424F0B8 */  ldc1       $f4, %lo(D_8014F0B8)($at)
/* C0334 80129454 44901000 */  mtc1       $s0, $f2
/* C0338 80129458 00000000 */  nop
/* C033C 8012945C 468010A1 */  cvt.d.w    $f2, $f2
/* C0340 80129460 46241080 */  add.d      $f2, $f2, $f4
/* C0344 80129464 3C018015 */  lui        $at, %hi(D_8014F0C0)
/* C0348 80129468 D424F0C0 */  ldc1       $f4, %lo(D_8014F0C0)($at)
/* C034C 8012946C 00111400 */  sll        $v0, $s1, 16
/* C0350 80129470 46241080 */  add.d      $f2, $f2, $f4
/* C0354 80129474 00021403 */  sra        $v0, $v0, 16
/* C0358 80129478 44822000 */  mtc1       $v0, $f4
/* C035C 8012947C 00000000 */  nop
/* C0360 80129480 46802121 */  cvt.d.w    $f4, $f4
/* C0364 80129484 4620130D */  trunc.w.d  $f12, $f2
/* C0368 80129488 44046000 */  mfc1       $a0, $f12
/* C036C 8012948C 46202100 */  add.d      $f4, $f4, $f0
/* C0370 80129490 00042400 */  sll        $a0, $a0, 16
/* C0374 80129494 4620230D */  trunc.w.d  $f12, $f4
/* C0378 80129498 44116000 */  mfc1       $s1, $f12
/* C037C 8012949C 0C00A429 */  jal        cosine
/* C0380 801294A0 00042403 */   sra       $a0, $a0, 16
/* C0384 801294A4 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C0388 801294A8 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C038C 801294AC C4420014 */  lwc1       $f2, 0x14($v0)
/* C0390 801294B0 460010A1 */  cvt.d.s    $f2, $f2
/* C0394 801294B4 46341081 */  sub.d      $f2, $f2, $f20
/* C0398 801294B8 46361080 */  add.d      $f2, $f2, $f22
/* C039C 801294BC 46000021 */  cvt.d.s    $f0, $f0
/* C03A0 801294C0 46220002 */  mul.d      $f0, $f0, $f2
/* C03A4 801294C4 00000000 */  nop
/* C03A8 801294C8 00141400 */  sll        $v0, $s4, 16
/* C03AC 801294CC 00021403 */  sra        $v0, $v0, 16
/* C03B0 801294D0 44821000 */  mtc1       $v0, $f2
/* C03B4 801294D4 00000000 */  nop
/* C03B8 801294D8 468010A1 */  cvt.d.w    $f2, $f2
/* C03BC 801294DC 46201080 */  add.d      $f2, $f2, $f0
/* C03C0 801294E0 4620130D */  trunc.w.d  $f12, $f2
/* C03C4 801294E4 44146000 */  mfc1       $s4, $f12
.L801294E8:
/* C03C8 801294E8 3C058016 */  lui        $a1, %hi(msg_drawState)
/* C03CC 801294EC 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* C03D0 801294F0 8CA60038 */  lw         $a2, 0x38($a1)
/* C03D4 801294F4 30C20040 */  andi       $v0, $a2, 0x40
/* C03D8 801294F8 10400018 */  beqz       $v0, .L8012955C
/* C03DC 801294FC 30C20400 */   andi      $v0, $a2, 0x400
/* C03E0 80129500 97C30452 */  lhu        $v1, 0x452($fp)
/* C03E4 80129504 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* C03E8 80129508 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* C03EC 8012950C 00620019 */  multu      $v1, $v0
/* C03F0 80129510 8CA40030 */  lw         $a0, 0x30($a1)
/* C03F4 80129514 3C036666 */  lui        $v1, (0x66666667 >> 16)
/* C03F8 80129518 34636667 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* C03FC 8012951C 0000C010 */  mfhi       $t8
/* C0400 80129520 00181042 */  srl        $v0, $t8, 1
/* C0404 80129524 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* C0408 80129528 00822023 */  subu       $a0, $a0, $v0
/* C040C 8012952C 04820001 */  bltzl      $a0, .L80129534
/* C0410 80129530 00042023 */   negu      $a0, $a0
.L80129534:
/* C0414 80129534 00830018 */  mult       $a0, $v1
/* C0418 80129538 000417C3 */  sra        $v0, $a0, 31
/* C041C 8012953C 0000C010 */  mfhi       $t8
/* C0420 80129540 00181883 */  sra        $v1, $t8, 2
/* C0424 80129544 00621823 */  subu       $v1, $v1, $v0
/* C0428 80129548 00031080 */  sll        $v0, $v1, 2
/* C042C 8012954C 00431021 */  addu       $v0, $v0, $v1
/* C0430 80129550 00021040 */  sll        $v0, $v0, 1
/* C0434 80129554 0082B823 */  subu       $s7, $a0, $v0
/* C0438 80129558 30C20400 */  andi       $v0, $a2, 0x400
.L8012955C:
/* C043C 8012955C 1040001A */  beqz       $v0, .L801295C8
/* C0440 80129560 30C20080 */   andi      $v0, $a2, 0x80
/* C0444 80129564 3C028007 */  lui        $v0, %hi(gGameStatusPtr)
/* C0448 80129568 8C422E0C */  lw         $v0, %lo(gGameStatusPtr)($v0)
/* C044C 8012956C 94430134 */  lhu        $v1, 0x134($v0)
/* C0450 80129570 3C02AAAA */  lui        $v0, (0xAAAAAAAB >> 16)
/* C0454 80129574 3442AAAB */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
/* C0458 80129578 00620019 */  multu      $v1, $v0
/* C045C 8012957C 8CA40030 */  lw         $a0, 0x30($a1)
/* C0460 80129580 3C036666 */  lui        $v1, (0x66666667 >> 16)
/* C0464 80129584 34636667 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
/* C0468 80129588 0000C010 */  mfhi       $t8
/* C046C 8012958C 00181042 */  srl        $v0, $t8, 1
/* C0470 80129590 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* C0474 80129594 00822023 */  subu       $a0, $a0, $v0
/* C0478 80129598 04820001 */  bltzl      $a0, .L801295A0
/* C047C 8012959C 00042023 */   negu      $a0, $a0
.L801295A0:
/* C0480 801295A0 00830018 */  mult       $a0, $v1
/* C0484 801295A4 000417C3 */  sra        $v0, $a0, 31
/* C0488 801295A8 0000C010 */  mfhi       $t8
/* C048C 801295AC 00181883 */  sra        $v1, $t8, 2
/* C0490 801295B0 00621823 */  subu       $v1, $v1, $v0
/* C0494 801295B4 00031080 */  sll        $v0, $v1, 2
/* C0498 801295B8 00431021 */  addu       $v0, $v0, $v1
/* C049C 801295BC 00021040 */  sll        $v0, $v0, 1
/* C04A0 801295C0 0082B823 */  subu       $s7, $a0, $v0
/* C04A4 801295C4 30C20080 */  andi       $v0, $a2, 0x80
.L801295C8:
/* C04A8 801295C8 10400023 */  beqz       $v0, .L80129658
/* C04AC 801295CC 3C05E300 */   lui       $a1, (0xE3001A01 >> 16)
/* C04B0 801295D0 34A51A01 */  ori        $a1, $a1, (0xE3001A01 & 0xFFFF)
/* C04B4 801295D4 3C06E200 */  lui        $a2, (0xE2001E01 >> 16)
/* C04B8 801295D8 34C61E01 */  ori        $a2, $a2, (0xE2001E01 & 0xFFFF)
/* C04BC 801295DC 00121400 */  sll        $v0, $s2, 16
/* C04C0 801295E0 00021403 */  sra        $v0, $v0, 16
/* C04C4 801295E4 44820000 */  mtc1       $v0, $f0
/* C04C8 801295E8 00000000 */  nop
/* C04CC 801295EC 46800021 */  cvt.d.w    $f0, $f0
/* C04D0 801295F0 24020020 */  addiu      $v0, $zero, 0x20
/* C04D4 801295F4 3C03800A */  lui        $v1, %hi(gMasterGfxPos)
/* C04D8 801295F8 8C639244 */  lw         $v1, %lo(gMasterGfxPos)($v1)
/* C04DC 801295FC 97B900AE */  lhu        $t9, 0xAE($sp)
/* C04E0 80129600 3C018015 */  lui        $at, %hi(D_8014F0C8m)
/* C04E4 80129604 D422F0C8 */  ldc1       $f2, %lo(D_8014F0C8m)($at)
/* C04E8 80129608 0060202D */  daddu      $a0, $v1, $zero
/* C04EC 8012960C 24630008 */  addiu      $v1, $v1, 0x8
/* C04F0 80129610 44992000 */  mtc1       $t9, $f4
/* C04F4 80129614 00000000 */  nop
/* C04F8 80129618 46802121 */  cvt.d.w    $f4, $f4
/* C04FC 8012961C 46220003 */  div.d      $f0, $f0, $f2
/* C0500 80129620 46202102 */  mul.d      $f4, $f4, $f0
/* C0504 80129624 00000000 */  nop
/* C0508 80129628 AC820004 */  sw         $v0, 0x4($a0)
/* C050C 8012962C 24620008 */  addiu      $v0, $v1, 0x8
/* C0510 80129630 AC850000 */  sw         $a1, 0x0($a0)
/* C0514 80129634 24180003 */  addiu      $t8, $zero, 0x3
/* C0518 80129638 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C051C 8012963C AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* C0520 80129640 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0524 80129644 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0528 80129648 AC660000 */  sw         $a2, 0x0($v1)
/* C052C 8012964C AC780004 */  sw         $t8, 0x4($v1)
/* C0530 80129650 4620230D */  trunc.w.d  $f12, $f4
/* C0534 80129654 44126000 */  mfc1       $s2, $f12
.L80129658:
/* C0538 80129658 3C028016 */  lui        $v0, %hi(msg_drawState)
/* C053C 8012965C 8C4280F4 */  lw         $v0, %lo(msg_drawState)($v0)
/* C0540 80129660 94420034 */  lhu        $v0, 0x34($v0)
/* C0544 80129664 30420002 */  andi       $v0, $v0, 0x2
/* C0548 80129668 14400005 */  bnez       $v0, .L80129680
/* C054C 8012966C 00121C00 */   sll       $v1, $s2, 16
/* C0550 80129670 97B90096 */  lhu        $t9, 0x96($sp)
/* C0554 80129674 00191400 */  sll        $v0, $t9, 16
/* C0558 80129678 1062006D */  beq        $v1, $v0, .L80129830
/* C055C 8012967C 00121400 */   sll       $v0, $s2, 16
.L80129680:
/* C0560 80129680 97B80096 */  lhu        $t8, 0x96($sp)
/* C0564 80129684 00181400 */  sll        $v0, $t8, 16
/* C0568 80129688 00021403 */  sra        $v0, $v0, 16
/* C056C 8012968C 284200FF */  slti       $v0, $v0, 0xFF
/* C0570 80129690 1040000A */  beqz       $v0, .L801296BC
/* C0574 80129694 00121400 */   sll       $v0, $s2, 16
/* C0578 80129698 00021403 */  sra        $v0, $v0, 16
/* C057C 8012969C 284200FF */  slti       $v0, $v0, 0xFF
/* C0580 801296A0 10400006 */  beqz       $v0, .L801296BC
/* C0584 801296A4 00000000 */   nop
/* C0588 801296A8 3C02800A */  lui        $v0, %hi(gMasterGfxPos)
/* C058C 801296AC 8C429244 */  lw         $v0, %lo(gMasterGfxPos)($v0)
/* C0590 801296B0 0040182D */  daddu      $v1, $v0, $zero
/* C0594 801296B4 0804A5DE */  j          .L80129778
/* C0598 801296B8 24420008 */   addiu     $v0, $v0, 0x8
.L801296BC:
/* C059C 801296BC 97B90096 */  lhu        $t9, 0x96($sp)
/* C05A0 801296C0 241800FF */  addiu      $t8, $zero, 0xFF
/* C05A4 801296C4 00191400 */  sll        $v0, $t9, 16
/* C05A8 801296C8 00021403 */  sra        $v0, $v0, 16
/* C05AC 801296CC 14580031 */  bne        $v0, $t8, .L80129794
/* C05B0 801296D0 00121400 */   sll       $v0, $s2, 16
/* C05B4 801296D4 00021403 */  sra        $v0, $v0, 16
/* C05B8 801296D8 0058102A */  slt        $v0, $v0, $t8
/* C05BC 801296DC 1040002D */  beqz       $v0, .L80129794
/* C05C0 801296E0 3C19E700 */   lui       $t9, (0xE7000000 >> 16)
/* C05C4 801296E4 3C05800A */  lui        $a1, %hi(gMasterGfxPos)
/* C05C8 801296E8 8CA59244 */  lw         $a1, %lo(gMasterGfxPos)($a1)
/* C05CC 801296EC 00A0102D */  daddu      $v0, $a1, $zero
/* C05D0 801296F0 AC590000 */  sw         $t9, 0x0($v0)
/* C05D4 801296F4 AC400004 */  sw         $zero, 0x4($v0)
/* C05D8 801296F8 8FC204FC */  lw         $v0, 0x4FC($fp)
/* C05DC 801296FC 24A50008 */  addiu      $a1, $a1, 0x8
/* C05E0 80129700 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C05E4 80129704 AC259244 */  sw         $a1, %lo(gMasterGfxPos)($at)
/* C05E8 80129708 30424000 */  andi       $v0, $v0, 0x4000
/* C05EC 8012970C 10400005 */  beqz       $v0, .L80129724
/* C05F0 80129710 3C04E200 */   lui       $a0, (0xE200001C >> 16)
/* C05F4 80129714 3484001C */  ori        $a0, $a0, (0xE200001C & 0xFFFF)
/* C05F8 80129718 3C030050 */  lui        $v1, (0x504840 >> 16)
/* C05FC 8012971C 0804A5CC */  j          .L80129730
/* C0600 80129720 34634840 */   ori       $v1, $v1, (0x504840 & 0xFFFF)
.L80129724:
/* C0604 80129724 3484001C */  ori        $a0, $a0, (0xE200001C & 0xFFFF)
/* C0608 80129728 3C030050 */  lui        $v1, (0x504B40 >> 16)
/* C060C 8012972C 34634B40 */  ori        $v1, $v1, (0x504B40 & 0xFFFF)
.L80129730:
/* C0610 80129730 24A20008 */  addiu      $v0, $a1, 0x8
/* C0614 80129734 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0618 80129738 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C061C 8012973C ACA40000 */  sw         $a0, 0x0($a1)
/* C0620 80129740 ACA30004 */  sw         $v1, 0x4($a1)
/* C0624 80129744 3C05FCFF */  lui        $a1, (0xFCFF97FF >> 16)
/* C0628 80129748 34A597FF */  ori        $a1, $a1, (0xFCFF97FF & 0xFFFF)
/* C062C 8012974C 3C04FF2C */  lui        $a0, (0xFF2CFE7F >> 16)
/* C0630 80129750 3C03800A */  lui        $v1, %hi(gMasterGfxPos)
/* C0634 80129754 8C639244 */  lw         $v1, %lo(gMasterGfxPos)($v1)
/* C0638 80129758 3484FE7F */  ori        $a0, $a0, (0xFF2CFE7F & 0xFFFF)
/* C063C 8012975C 0060102D */  daddu      $v0, $v1, $zero
/* C0640 80129760 24630008 */  addiu      $v1, $v1, 0x8
/* C0644 80129764 AC450000 */  sw         $a1, 0x0($v0)
/* C0648 80129768 AC440004 */  sw         $a0, 0x4($v0)
/* C064C 8012976C 24620008 */  addiu      $v0, $v1, 0x8
/* C0650 80129770 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0654 80129774 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
.L80129778:
/* C0658 80129778 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C065C 8012977C AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0660 80129780 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
/* C0664 80129784 AC620000 */  sw         $v0, 0x0($v1)
/* C0668 80129788 324200FF */  andi       $v0, $s2, 0xFF
/* C066C 8012978C 0804A60A */  j          .L80129828
/* C0670 80129790 AC620004 */   sw        $v0, 0x4($v1)
.L80129794:
/* C0674 80129794 97B80096 */  lhu        $t8, 0x96($sp)
/* C0678 80129798 00181400 */  sll        $v0, $t8, 16
/* C067C 8012979C 00021403 */  sra        $v0, $v0, 16
/* C0680 801297A0 284200FF */  slti       $v0, $v0, 0xFF
/* C0684 801297A4 10400020 */  beqz       $v0, .L80129828
/* C0688 801297A8 00121400 */   sll       $v0, $s2, 16
/* C068C 801297AC 00021403 */  sra        $v0, $v0, 16
/* C0690 801297B0 241900FF */  addiu      $t9, $zero, 0xFF
/* C0694 801297B4 5459001D */  bnel       $v0, $t9, .L8012982C
/* C0698 801297B8 A7B20096 */   sh        $s2, 0x96($sp)
/* C069C 801297BC 3C06E200 */  lui        $a2, (0xE200001C >> 16)
/* C06A0 801297C0 34C6001C */  ori        $a2, $a2, (0xE200001C & 0xFFFF)
/* C06A4 801297C4 3C040F0A */  lui        $a0, (0xF0A7008 >> 16)
/* C06A8 801297C8 34847008 */  ori        $a0, $a0, (0xF0A7008 & 0xFFFF)
/* C06AC 801297CC 3C07FCFF */  lui        $a3, (0xFCFFFFFF >> 16)
/* C06B0 801297D0 34E7FFFF */  ori        $a3, $a3, (0xFCFFFFFF & 0xFFFF)
/* C06B4 801297D4 3C05FFFC */  lui        $a1, (0xFFFCF279 >> 16)
/* C06B8 801297D8 3C03800A */  lui        $v1, %hi(gMasterGfxPos)
/* C06BC 801297DC 8C639244 */  lw         $v1, %lo(gMasterGfxPos)($v1)
/* C06C0 801297E0 34A5F279 */  ori        $a1, $a1, (0xFFFCF279 & 0xFFFF)
/* C06C4 801297E4 0060102D */  daddu      $v0, $v1, $zero
/* C06C8 801297E8 24630008 */  addiu      $v1, $v1, 0x8
/* C06CC 801297EC 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* C06D0 801297F0 AC580000 */  sw         $t8, 0x0($v0)
/* C06D4 801297F4 AC400004 */  sw         $zero, 0x4($v0)
/* C06D8 801297F8 24620008 */  addiu      $v0, $v1, 0x8
/* C06DC 801297FC 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C06E0 80129800 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* C06E4 80129804 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C06E8 80129808 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C06EC 8012980C 24620010 */  addiu      $v0, $v1, 0x10
/* C06F0 80129810 AC660000 */  sw         $a2, 0x0($v1)
/* C06F4 80129814 AC640004 */  sw         $a0, 0x4($v1)
/* C06F8 80129818 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C06FC 8012981C AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0700 80129820 AC670008 */  sw         $a3, 0x8($v1)
/* C0704 80129824 AC65000C */  sw         $a1, 0xC($v1)
.L80129828:
/* C0708 80129828 A7B20096 */  sh         $s2, 0x96($sp)
.L8012982C:
/* C070C 8012982C 00121400 */  sll        $v0, $s2, 16
.L80129830:
/* C0710 80129830 184002C0 */  blez       $v0, .L8012A334
/* C0714 80129834 00000000 */   nop
/* C0718 80129838 3C068016 */  lui        $a2, %hi(msg_drawState)
/* C071C 8012983C 8CC680F4 */  lw         $a2, %lo(msg_drawState)($a2)
/* C0720 80129840 8CC30038 */  lw         $v1, 0x38($a2)
/* C0724 80129844 30620800 */  andi       $v0, $v1, 0x800
/* C0728 80129848 10400092 */  beqz       $v0, .L80129A94
/* C072C 8012984C 240400F0 */   addiu     $a0, $zero, 0xF0
/* C0730 80129850 8CC30020 */  lw         $v1, 0x20($a2)
/* C0734 80129854 8CC2004C */  lw         $v0, 0x4C($a2)
/* C0738 80129858 00621821 */  addu       $v1, $v1, $v0
/* C073C 8012985C 90650001 */  lbu        $a1, 0x1($v1)
/* C0740 80129860 10A401B8 */  beq        $a1, $a0, .L80129F44
/* C0744 80129864 00000000 */   nop
/* C0748 80129868 90620002 */  lbu        $v0, 0x2($v1)
/* C074C 8012986C 104401B5 */  beq        $v0, $a0, .L80129F44
/* C0750 80129870 00000000 */   nop
/* C0754 80129874 90620003 */  lbu        $v0, 0x3($v1)
/* C0758 80129878 104401B2 */  beq        $v0, $a0, .L80129F44
/* C075C 8012987C 00000000 */   nop
/* C0760 80129880 90620004 */  lbu        $v0, 0x4($v1)
/* C0764 80129884 104401AF */  beq        $v0, $a0, .L80129F44
/* C0768 80129888 240200FB */   addiu     $v0, $zero, 0xFB
/* C076C 8012988C 14A20026 */  bne        $a1, $v0, .L80129928
/* C0770 80129890 24020004 */   addiu     $v0, $zero, 0x4
/* C0774 80129894 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C0778 80129898 14620023 */  bne        $v1, $v0, .L80129928
/* C077C 8012989C 00111400 */   sll       $v0, $s1, 16
/* C0780 801298A0 C4C60014 */  lwc1       $f6, 0x14($a2)
/* C0784 801298A4 3C018015 */  lui        $at, %hi(D_8014F0D0)
/* C0788 801298A8 D428F0D0 */  ldc1       $f8, %lo(D_8014F0D0)($at)
/* C078C 801298AC 460031A1 */  cvt.d.s    $f6, $f6
/* C0790 801298B0 46283182 */  mul.d      $f6, $f6, $f8
/* C0794 801298B4 00000000 */  nop
/* C0798 801298B8 C4C00010 */  lwc1       $f0, 0x10($a2)
/* C079C 801298BC 46000021 */  cvt.d.s    $f0, $f0
/* C07A0 801298C0 46280002 */  mul.d      $f0, $f0, $f8
/* C07A4 801298C4 00000000 */  nop
/* C07A8 801298C8 3C014018 */  lui        $at, (0x40180000 >> 16)
/* C07AC 801298CC 44812800 */  mtc1       $at, $f5
/* C07B0 801298D0 44802000 */  mtc1       $zero, $f4
/* C07B4 801298D4 462031A0 */  cvt.s.d    $f6, $f6
/* C07B8 801298D8 460030A1 */  cvt.d.s    $f2, $f6
/* C07BC 801298DC 46281083 */  div.d      $f2, $f2, $f8
/* C07C0 801298E0 46241082 */  mul.d      $f2, $f2, $f4
/* C07C4 801298E4 00000000 */  nop
/* C07C8 801298E8 00021403 */  sra        $v0, $v0, 16
/* C07CC 801298EC 46200020 */  cvt.s.d    $f0, $f0
/* C07D0 801298F0 E4C00018 */  swc1       $f0, 0x18($a2)
/* C07D4 801298F4 46201220 */  cvt.s.d    $f8, $f2
/* C07D8 801298F8 44821000 */  mtc1       $v0, $f2
/* C07DC 801298FC 00000000 */  nop
/* C07E0 80129900 468010A0 */  cvt.s.w    $f2, $f2
/* C07E4 80129904 00141400 */  sll        $v0, $s4, 16
/* C07E8 80129908 46081081 */  sub.s      $f2, $f2, $f8
/* C07EC 8012990C 00021403 */  sra        $v0, $v0, 16
/* C07F0 80129910 44820000 */  mtc1       $v0, $f0
/* C07F4 80129914 00000000 */  nop
/* C07F8 80129918 46800020 */  cvt.s.w    $f0, $f0
/* C07FC 8012991C 46080001 */  sub.s      $f0, $f0, $f8
/* C0800 80129920 0804A69F */  j          .L80129A7C
/* C0804 80129924 E4C6001C */   swc1      $f6, 0x1C($a2)
.L80129928:
/* C0808 80129928 3C048016 */  lui        $a0, %hi(msg_drawState)
/* C080C 8012992C 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* C0810 80129930 8C820020 */  lw         $v0, 0x20($a0)
/* C0814 80129934 8C83004C */  lw         $v1, 0x4C($a0)
/* C0818 80129938 00431021 */  addu       $v0, $v0, $v1
/* C081C 8012993C 90430002 */  lbu        $v1, 0x2($v0)
/* C0820 80129940 240200FB */  addiu      $v0, $zero, 0xFB
/* C0824 80129944 14620026 */  bne        $v1, $v0, .L801299E0
/* C0828 80129948 24020004 */   addiu     $v0, $zero, 0x4
/* C082C 8012994C 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C0830 80129950 14620023 */  bne        $v1, $v0, .L801299E0
/* C0834 80129954 00111400 */   sll       $v0, $s1, 16
/* C0838 80129958 C4860014 */  lwc1       $f6, 0x14($a0)
/* C083C 8012995C 3C018015 */  lui        $at, %hi(D_8014F0D8)
/* C0840 80129960 D428F0D8 */  ldc1       $f8, %lo(D_8014F0D8)($at)
/* C0844 80129964 460031A1 */  cvt.d.s    $f6, $f6
/* C0848 80129968 46283182 */  mul.d      $f6, $f6, $f8
/* C084C 8012996C 00000000 */  nop
/* C0850 80129970 C4800010 */  lwc1       $f0, 0x10($a0)
/* C0854 80129974 46000021 */  cvt.d.s    $f0, $f0
/* C0858 80129978 46280002 */  mul.d      $f0, $f0, $f8
/* C085C 8012997C 00000000 */  nop
/* C0860 80129980 3C014008 */  lui        $at, (0x40080000 >> 16)
/* C0864 80129984 44812800 */  mtc1       $at, $f5
/* C0868 80129988 44802000 */  mtc1       $zero, $f4
/* C086C 8012998C 462031A0 */  cvt.s.d    $f6, $f6
/* C0870 80129990 460030A1 */  cvt.d.s    $f2, $f6
/* C0874 80129994 46281083 */  div.d      $f2, $f2, $f8
/* C0878 80129998 46241082 */  mul.d      $f2, $f2, $f4
/* C087C 8012999C 00000000 */  nop
/* C0880 801299A0 00021403 */  sra        $v0, $v0, 16
/* C0884 801299A4 46200020 */  cvt.s.d    $f0, $f0
/* C0888 801299A8 E4800018 */  swc1       $f0, 0x18($a0)
/* C088C 801299AC 46201220 */  cvt.s.d    $f8, $f2
/* C0890 801299B0 44821000 */  mtc1       $v0, $f2
/* C0894 801299B4 00000000 */  nop
/* C0898 801299B8 468010A0 */  cvt.s.w    $f2, $f2
/* C089C 801299BC 00141400 */  sll        $v0, $s4, 16
/* C08A0 801299C0 46081081 */  sub.s      $f2, $f2, $f8
/* C08A4 801299C4 00021403 */  sra        $v0, $v0, 16
/* C08A8 801299C8 44820000 */  mtc1       $v0, $f0
/* C08AC 801299CC 00000000 */  nop
/* C08B0 801299D0 46800020 */  cvt.s.w    $f0, $f0
/* C08B4 801299D4 46080001 */  sub.s      $f0, $f0, $f8
/* C08B8 801299D8 0804A69F */  j          .L80129A7C
/* C08BC 801299DC E486001C */   swc1      $f6, 0x1C($a0)
.L801299E0:
/* C08C0 801299E0 8C820020 */  lw         $v0, 0x20($a0)
/* C08C4 801299E4 8C83004C */  lw         $v1, 0x4C($a0)
/* C08C8 801299E8 00431021 */  addu       $v0, $v0, $v1
/* C08CC 801299EC 90430003 */  lbu        $v1, 0x3($v0)
/* C08D0 801299F0 240200FB */  addiu      $v0, $zero, 0xFB
/* C08D4 801299F4 14620153 */  bne        $v1, $v0, .L80129F44
/* C08D8 801299F8 24020004 */   addiu     $v0, $zero, 0x4
/* C08DC 801299FC 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C08E0 80129A00 14620150 */  bne        $v1, $v0, .L80129F44
/* C08E4 80129A04 00111400 */   sll       $v0, $s1, 16
/* C08E8 80129A08 C4840014 */  lwc1       $f4, 0x14($a0)
/* C08EC 80129A0C 3C018015 */  lui        $at, %hi(D_8014F0E0)
/* C08F0 80129A10 D426F0E0 */  ldc1       $f6, %lo(D_8014F0E0)($at)
/* C08F4 80129A14 46002121 */  cvt.d.s    $f4, $f4
/* C08F8 80129A18 46262102 */  mul.d      $f4, $f4, $f6
/* C08FC 80129A1C 00000000 */  nop
/* C0900 80129A20 C4820010 */  lwc1       $f2, 0x10($a0)
/* C0904 80129A24 460010A1 */  cvt.d.s    $f2, $f2
/* C0908 80129A28 46261082 */  mul.d      $f2, $f2, $f6
/* C090C 80129A2C 00000000 */  nop
/* C0910 80129A30 00021403 */  sra        $v0, $v0, 16
/* C0914 80129A34 46202120 */  cvt.s.d    $f4, $f4
/* C0918 80129A38 46002021 */  cvt.d.s    $f0, $f4
/* C091C 80129A3C 46260003 */  div.d      $f0, $f0, $f6
/* C0920 80129A40 462010A0 */  cvt.s.d    $f2, $f2
/* C0924 80129A44 E4820018 */  swc1       $f2, 0x18($a0)
/* C0928 80129A48 46200000 */  add.d      $f0, $f0, $f0
/* C092C 80129A4C 44821000 */  mtc1       $v0, $f2
/* C0930 80129A50 00000000 */  nop
/* C0934 80129A54 468010A0 */  cvt.s.w    $f2, $f2
/* C0938 80129A58 00141400 */  sll        $v0, $s4, 16
/* C093C 80129A5C 46200220 */  cvt.s.d    $f8, $f0
/* C0940 80129A60 46081081 */  sub.s      $f2, $f2, $f8
/* C0944 80129A64 00021403 */  sra        $v0, $v0, 16
/* C0948 80129A68 44820000 */  mtc1       $v0, $f0
/* C094C 80129A6C 00000000 */  nop
/* C0950 80129A70 46800020 */  cvt.s.w    $f0, $f0
/* C0954 80129A74 46080001 */  sub.s      $f0, $f0, $f8
/* C0958 80129A78 E484001C */  swc1       $f4, 0x1C($a0)
.L80129A7C:
/* C095C 80129A7C 4600130D */  trunc.w.s  $f12, $f2
/* C0960 80129A80 44116000 */  mfc1       $s1, $f12
/* C0964 80129A84 4600030D */  trunc.w.s  $f12, $f0
/* C0968 80129A88 44146000 */  mfc1       $s4, $f12
/* C096C 80129A8C 0804A7D1 */  j          .L80129F44
/* C0970 80129A90 00000000 */   nop
.L80129A94:
/* C0974 80129A94 30621000 */  andi       $v0, $v1, 0x1000
/* C0978 80129A98 10400060 */  beqz       $v0, .L80129C1C
/* C097C 80129A9C 30622000 */   andi      $v0, $v1, 0x2000
/* C0980 80129AA0 8CC30020 */  lw         $v1, 0x20($a2)
/* C0984 80129AA4 8CC2004C */  lw         $v0, 0x4C($a2)
/* C0988 80129AA8 00621821 */  addu       $v1, $v1, $v0
/* C098C 80129AAC 90650001 */  lbu        $a1, 0x1($v1)
/* C0990 80129AB0 10A40124 */  beq        $a1, $a0, .L80129F44
/* C0994 80129AB4 00000000 */   nop
/* C0998 80129AB8 90620002 */  lbu        $v0, 0x2($v1)
/* C099C 80129ABC 10440121 */  beq        $v0, $a0, .L80129F44
/* C09A0 80129AC0 00000000 */   nop
/* C09A4 80129AC4 90620003 */  lbu        $v0, 0x3($v1)
/* C09A8 80129AC8 1044011E */  beq        $v0, $a0, .L80129F44
/* C09AC 80129ACC 00000000 */   nop
/* C09B0 80129AD0 90620004 */  lbu        $v0, 0x4($v1)
/* C09B4 80129AD4 1044011B */  beq        $v0, $a0, .L80129F44
/* C09B8 80129AD8 240200FB */   addiu     $v0, $zero, 0xFB
/* C09BC 80129ADC 14A20015 */  bne        $a1, $v0, .L80129B34
/* C09C0 80129AE0 24020004 */   addiu     $v0, $zero, 0x4
/* C09C4 80129AE4 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C09C8 80129AE8 14620012 */  bne        $v1, $v0, .L80129B34
/* C09CC 80129AEC 00000000 */   nop
/* C09D0 80129AF0 C4C00010 */  lwc1       $f0, 0x10($a2)
/* C09D4 80129AF4 3C018015 */  lui        $at, %hi(D_8014F0E8)
/* C09D8 80129AF8 D424F0E8 */  ldc1       $f4, %lo(D_8014F0E8)($at)
/* C09DC 80129AFC 46000021 */  cvt.d.s    $f0, $f0
/* C09E0 80129B00 46240002 */  mul.d      $f0, $f0, $f4
/* C09E4 80129B04 00000000 */  nop
/* C09E8 80129B08 C4C20014 */  lwc1       $f2, 0x14($a2)
/* C09EC 80129B0C 460010A1 */  cvt.d.s    $f2, $f2
/* C09F0 80129B10 46241082 */  mul.d      $f2, $f2, $f4
/* C09F4 80129B14 00000000 */  nop
/* C09F8 80129B18 26310005 */  addiu      $s1, $s1, 0x5
/* C09FC 80129B1C 26940005 */  addiu      $s4, $s4, 0x5
/* C0A00 80129B20 46200020 */  cvt.s.d    $f0, $f0
/* C0A04 80129B24 462010A0 */  cvt.s.d    $f2, $f2
/* C0A08 80129B28 E4C00018 */  swc1       $f0, 0x18($a2)
/* C0A0C 80129B2C 0804A7D1 */  j          .L80129F44
/* C0A10 80129B30 E4C2001C */   swc1      $f2, 0x1C($a2)
.L80129B34:
/* C0A14 80129B34 3C048016 */  lui        $a0, %hi(msg_drawState)
/* C0A18 80129B38 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* C0A1C 80129B3C 8C820020 */  lw         $v0, 0x20($a0)
/* C0A20 80129B40 8C83004C */  lw         $v1, 0x4C($a0)
/* C0A24 80129B44 00431021 */  addu       $v0, $v0, $v1
/* C0A28 80129B48 90430002 */  lbu        $v1, 0x2($v0)
/* C0A2C 80129B4C 240200FB */  addiu      $v0, $zero, 0xFB
/* C0A30 80129B50 14620016 */  bne        $v1, $v0, .L80129BAC
/* C0A34 80129B54 24020004 */   addiu     $v0, $zero, 0x4
/* C0A38 80129B58 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C0A3C 80129B5C 14620013 */  bne        $v1, $v0, .L80129BAC
/* C0A40 80129B60 00000000 */   nop
/* C0A44 80129B64 C4820010 */  lwc1       $f2, 0x10($a0)
/* C0A48 80129B68 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* C0A4C 80129B6C 44816800 */  mtc1       $at, $f13
/* C0A50 80129B70 44806000 */  mtc1       $zero, $f12
/* C0A54 80129B74 460010A1 */  cvt.d.s    $f2, $f2
/* C0A58 80129B78 462C1082 */  mul.d      $f2, $f2, $f12
/* C0A5C 80129B7C 00000000 */  nop
/* C0A60 80129B80 C4800014 */  lwc1       $f0, 0x14($a0)
/* C0A64 80129B84 46000021 */  cvt.d.s    $f0, $f0
/* C0A68 80129B88 462C0002 */  mul.d      $f0, $f0, $f12
/* C0A6C 80129B8C 00000000 */  nop
/* C0A70 80129B90 26310003 */  addiu      $s1, $s1, 0x3
/* C0A74 80129B94 26940003 */  addiu      $s4, $s4, 0x3
/* C0A78 80129B98 462010A0 */  cvt.s.d    $f2, $f2
/* C0A7C 80129B9C 46200020 */  cvt.s.d    $f0, $f0
/* C0A80 80129BA0 E4820018 */  swc1       $f2, 0x18($a0)
/* C0A84 80129BA4 0804A7D1 */  j          .L80129F44
/* C0A88 80129BA8 E480001C */   swc1      $f0, 0x1C($a0)
.L80129BAC:
/* C0A8C 80129BAC 8C820020 */  lw         $v0, 0x20($a0)
/* C0A90 80129BB0 8C83004C */  lw         $v1, 0x4C($a0)
/* C0A94 80129BB4 00431021 */  addu       $v0, $v0, $v1
/* C0A98 80129BB8 90430003 */  lbu        $v1, 0x3($v0)
/* C0A9C 80129BBC 240200FB */  addiu      $v0, $zero, 0xFB
/* C0AA0 80129BC0 146200E0 */  bne        $v1, $v0, .L80129F44
/* C0AA4 80129BC4 24020004 */   addiu     $v0, $zero, 0x4
/* C0AA8 80129BC8 93C304F8 */  lbu        $v1, 0x4F8($fp)
/* C0AAC 80129BCC 146200DD */  bne        $v1, $v0, .L80129F44
/* C0AB0 80129BD0 00000000 */   nop
/* C0AB4 80129BD4 C4800010 */  lwc1       $f0, 0x10($a0)
/* C0AB8 80129BD8 3C013FE8 */  lui        $at, (0x3FE80000 >> 16)
/* C0ABC 80129BDC 44812800 */  mtc1       $at, $f5
/* C0AC0 80129BE0 44802000 */  mtc1       $zero, $f4
/* C0AC4 80129BE4 46000021 */  cvt.d.s    $f0, $f0
/* C0AC8 80129BE8 46240002 */  mul.d      $f0, $f0, $f4
/* C0ACC 80129BEC 00000000 */  nop
/* C0AD0 80129BF0 C4820014 */  lwc1       $f2, 0x14($a0)
/* C0AD4 80129BF4 460010A1 */  cvt.d.s    $f2, $f2
/* C0AD8 80129BF8 46241082 */  mul.d      $f2, $f2, $f4
/* C0ADC 80129BFC 00000000 */  nop
/* C0AE0 80129C00 26310002 */  addiu      $s1, $s1, 0x2
/* C0AE4 80129C04 26940002 */  addiu      $s4, $s4, 0x2
/* C0AE8 80129C08 46200020 */  cvt.s.d    $f0, $f0
/* C0AEC 80129C0C 462010A0 */  cvt.s.d    $f2, $f2
/* C0AF0 80129C10 E4800018 */  swc1       $f0, 0x18($a0)
/* C0AF4 80129C14 0804A7D1 */  j          .L80129F44
/* C0AF8 80129C18 E482001C */   swc1      $f2, 0x1C($a0)
.L80129C1C:
/* C0AFC 80129C1C 10400052 */  beqz       $v0, .L80129D68
/* C0B00 80129C20 30624000 */   andi      $v0, $v1, 0x4000
/* C0B04 80129C24 0C00A5B3 */  jal        rand_int
/* C0B08 80129C28 24042710 */   addiu     $a0, $zero, 0x2710
/* C0B0C 80129C2C 3C03288D */  lui        $v1, (0x288DF0CB >> 16)
/* C0B10 80129C30 3463F0CB */  ori        $v1, $v1, (0x288DF0CB & 0xFFFF)
/* C0B14 80129C34 00430018 */  mult       $v0, $v1
/* C0B18 80129C38 00021FC3 */  sra        $v1, $v0, 31
/* C0B1C 80129C3C 3C014059 */  lui        $at, (0x40590000 >> 16)
/* C0B20 80129C40 44811800 */  mtc1       $at, $f3
/* C0B24 80129C44 44801000 */  mtc1       $zero, $f2
/* C0B28 80129C48 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* C0B2C 80129C4C 44816800 */  mtc1       $at, $f13
/* C0B30 80129C50 44806000 */  mtc1       $zero, $f12
/* C0B34 80129C54 0000C010 */  mfhi       $t8
/* C0B38 80129C58 00182103 */  sra        $a0, $t8, 4
/* C0B3C 80129C5C 00832023 */  subu       $a0, $a0, $v1
/* C0B40 80129C60 00041840 */  sll        $v1, $a0, 1
/* C0B44 80129C64 00641821 */  addu       $v1, $v1, $a0
/* C0B48 80129C68 000318C0 */  sll        $v1, $v1, 3
/* C0B4C 80129C6C 00641821 */  addu       $v1, $v1, $a0
/* C0B50 80129C70 00031880 */  sll        $v1, $v1, 2
/* C0B54 80129C74 00641821 */  addu       $v1, $v1, $a0
/* C0B58 80129C78 00431023 */  subu       $v0, $v0, $v1
/* C0B5C 80129C7C 44824000 */  mtc1       $v0, $f8
/* C0B60 80129C80 00000000 */  nop
/* C0B64 80129C84 46804220 */  cvt.s.w    $f8, $f8
/* C0B68 80129C88 46004021 */  cvt.d.s    $f0, $f8
/* C0B6C 80129C8C 46220003 */  div.d      $f0, $f0, $f2
/* C0B70 80129C90 46200220 */  cvt.s.d    $f8, $f0
/* C0B74 80129C94 46004021 */  cvt.d.s    $f0, $f8
/* C0B78 80129C98 462C0002 */  mul.d      $f0, $f0, $f12
/* C0B7C 80129C9C 00000000 */  nop
/* C0B80 80129CA0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* C0B84 80129CA4 44812800 */  mtc1       $at, $f5
/* C0B88 80129CA8 44802000 */  mtc1       $zero, $f4
/* C0B8C 80129CAC 00000000 */  nop
/* C0B90 80129CB0 46240000 */  add.d      $f0, $f0, $f4
/* C0B94 80129CB4 3C013FD0 */  lui        $at, (0x3FD00000 >> 16)
/* C0B98 80129CB8 44811800 */  mtc1       $at, $f3
/* C0B9C 80129CBC 44801000 */  mtc1       $zero, $f2
/* C0BA0 80129CC0 00000000 */  nop
/* C0BA4 80129CC4 46220001 */  sub.d      $f0, $f0, $f2
/* C0BA8 80129CC8 46200220 */  cvt.s.d    $f8, $f0
/* C0BAC 80129CCC 460040A1 */  cvt.d.s    $f2, $f8
/* C0BB0 80129CD0 4622203C */  c.lt.d     $f4, $f2
/* C0BB4 80129CD4 00000000 */  nop
/* C0BB8 80129CD8 4500006D */  bc1f       .L80129E90
/* C0BBC 80129CDC 00111400 */   sll       $v0, $s1, 16
/* C0BC0 80129CE0 3C014020 */  lui        $at, (0x40200000 >> 16)
/* C0BC4 80129CE4 44812800 */  mtc1       $at, $f5
/* C0BC8 80129CE8 44802000 */  mtc1       $zero, $f4
/* C0BCC 80129CEC 00000000 */  nop
/* C0BD0 80129CF0 46241102 */  mul.d      $f4, $f2, $f4
/* C0BD4 80129CF4 00000000 */  nop
/* C0BD8 80129CF8 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C0BDC 80129CFC 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C0BE0 80129D00 C4600010 */  lwc1       $f0, 0x10($v1)
/* C0BE4 80129D04 46080002 */  mul.s      $f0, $f0, $f8
/* C0BE8 80129D08 00000000 */  nop
/* C0BEC 80129D0C C4660014 */  lwc1       $f6, 0x14($v1)
/* C0BF0 80129D10 46083182 */  mul.s      $f6, $f6, $f8
/* C0BF4 80129D14 00000000 */  nop
/* C0BF8 80129D18 E4600018 */  swc1       $f0, 0x18($v1)
/* C0BFC 80129D1C 3C014021 */  lui        $at, (0x40210000 >> 16)
/* C0C00 80129D20 44810800 */  mtc1       $at, $f1
/* C0C04 80129D24 44800000 */  mtc1       $zero, $f0
/* C0C08 80129D28 00021403 */  sra        $v0, $v0, 16
/* C0C0C 80129D2C 46202101 */  sub.d      $f4, $f4, $f0
/* C0C10 80129D30 44821000 */  mtc1       $v0, $f2
/* C0C14 80129D34 00000000 */  nop
/* C0C18 80129D38 468010A1 */  cvt.d.w    $f2, $f2
/* C0C1C 80129D3C 00141400 */  sll        $v0, $s4, 16
/* C0C20 80129D40 46241081 */  sub.d      $f2, $f2, $f4
/* C0C24 80129D44 00021403 */  sra        $v0, $v0, 16
/* C0C28 80129D48 44820000 */  mtc1       $v0, $f0
/* C0C2C 80129D4C 00000000 */  nop
/* C0C30 80129D50 46800021 */  cvt.d.w    $f0, $f0
/* C0C34 80129D54 46240001 */  sub.d      $f0, $f0, $f4
/* C0C38 80129D58 4620130D */  trunc.w.d  $f12, $f2
/* C0C3C 80129D5C 44116000 */  mfc1       $s1, $f12
/* C0C40 80129D60 0804A7CF */  j          .L80129F3C
/* C0C44 80129D64 E466001C */   swc1      $f6, 0x1C($v1)
.L80129D68:
/* C0C48 80129D68 10400076 */  beqz       $v0, .L80129F44
/* C0C4C 80129D6C 3C0516C1 */   lui       $a1, (0x16C16C17 >> 16)
/* C0C50 80129D70 34A56C17 */  ori        $a1, $a1, (0x16C16C17 & 0xFFFF)
/* C0C54 80129D74 97C20452 */  lhu        $v0, 0x452($fp)
/* C0C58 80129D78 8CC30030 */  lw         $v1, 0x30($a2)
/* C0C5C 80129D7C 00022100 */  sll        $a0, $v0, 4
/* C0C60 80129D80 00822023 */  subu       $a0, $a0, $v0
/* C0C64 80129D84 00031100 */  sll        $v0, $v1, 4
/* C0C68 80129D88 00431023 */  subu       $v0, $v0, $v1
/* C0C6C 80129D8C 00822023 */  subu       $a0, $a0, $v0
/* C0C70 80129D90 000410C2 */  srl        $v0, $a0, 3
/* C0C74 80129D94 00450019 */  multu      $v0, $a1
/* C0C78 80129D98 0000C010 */  mfhi       $t8
/* C0C7C 80129D9C 00181082 */  srl        $v0, $t8, 2
/* C0C80 80129DA0 00021840 */  sll        $v1, $v0, 1
/* C0C84 80129DA4 00621821 */  addu       $v1, $v1, $v0
/* C0C88 80129DA8 00031100 */  sll        $v0, $v1, 4
/* C0C8C 80129DAC 00431023 */  subu       $v0, $v0, $v1
/* C0C90 80129DB0 000210C0 */  sll        $v0, $v0, 3
/* C0C94 80129DB4 00821023 */  subu       $v0, $a0, $v0
/* C0C98 80129DB8 00022400 */  sll        $a0, $v0, 16
/* C0C9C 80129DBC 0C00A429 */  jal        cosine
/* C0CA0 80129DC0 00042403 */   sra       $a0, $a0, 16
/* C0CA4 80129DC4 3C013FD0 */  lui        $at, (0x3FD00000 >> 16)
/* C0CA8 80129DC8 44811800 */  mtc1       $at, $f3
/* C0CAC 80129DCC 44801000 */  mtc1       $zero, $f2
/* C0CB0 80129DD0 46000021 */  cvt.d.s    $f0, $f0
/* C0CB4 80129DD4 46220002 */  mul.d      $f0, $f0, $f2
/* C0CB8 80129DD8 00000000 */  nop
/* C0CBC 80129DDC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* C0CC0 80129DE0 44812800 */  mtc1       $at, $f5
/* C0CC4 80129DE4 44802000 */  mtc1       $zero, $f4
/* C0CC8 80129DE8 00000000 */  nop
/* C0CCC 80129DEC 46240000 */  add.d      $f0, $f0, $f4
/* C0CD0 80129DF0 46200220 */  cvt.s.d    $f8, $f0
/* C0CD4 80129DF4 460040A1 */  cvt.d.s    $f2, $f8
/* C0CD8 80129DF8 4622203C */  c.lt.d     $f4, $f2
/* C0CDC 80129DFC 00000000 */  nop
/* C0CE0 80129E00 45000023 */  bc1f       .L80129E90
/* C0CE4 80129E04 00111400 */   sll       $v0, $s1, 16
/* C0CE8 80129E08 3C014020 */  lui        $at, (0x40200000 >> 16)
/* C0CEC 80129E0C 44812800 */  mtc1       $at, $f5
/* C0CF0 80129E10 44802000 */  mtc1       $zero, $f4
/* C0CF4 80129E14 00000000 */  nop
/* C0CF8 80129E18 46241102 */  mul.d      $f4, $f2, $f4
/* C0CFC 80129E1C 00000000 */  nop
/* C0D00 80129E20 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C0D04 80129E24 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C0D08 80129E28 C4600010 */  lwc1       $f0, 0x10($v1)
/* C0D0C 80129E2C 46080002 */  mul.s      $f0, $f0, $f8
/* C0D10 80129E30 00000000 */  nop
/* C0D14 80129E34 C4660014 */  lwc1       $f6, 0x14($v1)
/* C0D18 80129E38 46083182 */  mul.s      $f6, $f6, $f8
/* C0D1C 80129E3C 00000000 */  nop
/* C0D20 80129E40 E4600018 */  swc1       $f0, 0x18($v1)
/* C0D24 80129E44 3C014021 */  lui        $at, (0x40210000 >> 16)
/* C0D28 80129E48 44810800 */  mtc1       $at, $f1
/* C0D2C 80129E4C 44800000 */  mtc1       $zero, $f0
/* C0D30 80129E50 00021403 */  sra        $v0, $v0, 16
/* C0D34 80129E54 46202101 */  sub.d      $f4, $f4, $f0
/* C0D38 80129E58 44821000 */  mtc1       $v0, $f2
/* C0D3C 80129E5C 00000000 */  nop
/* C0D40 80129E60 468010A1 */  cvt.d.w    $f2, $f2
/* C0D44 80129E64 00141400 */  sll        $v0, $s4, 16
/* C0D48 80129E68 46241081 */  sub.d      $f2, $f2, $f4
/* C0D4C 80129E6C 00021403 */  sra        $v0, $v0, 16
/* C0D50 80129E70 44820000 */  mtc1       $v0, $f0
/* C0D54 80129E74 00000000 */  nop
/* C0D58 80129E78 46800021 */  cvt.d.w    $f0, $f0
/* C0D5C 80129E7C 46240001 */  sub.d      $f0, $f0, $f4
/* C0D60 80129E80 4620130D */  trunc.w.d  $f12, $f2
/* C0D64 80129E84 44116000 */  mfc1       $s1, $f12
/* C0D68 80129E88 0804A7CF */  j          .L80129F3C
/* C0D6C 80129E8C E466001C */   swc1      $f6, 0x1C($v1)
.L80129E90:
/* C0D70 80129E90 4624103C */  c.lt.d     $f2, $f4
/* C0D74 80129E94 00000000 */  nop
/* C0D78 80129E98 4500002A */  bc1f       .L80129F44
/* C0D7C 80129E9C 00111400 */   sll       $v0, $s1, 16
/* C0D80 80129EA0 3C014030 */  lui        $at, (0x40300000 >> 16)
/* C0D84 80129EA4 44810800 */  mtc1       $at, $f1
/* C0D88 80129EA8 44800000 */  mtc1       $zero, $f0
/* C0D8C 80129EAC 00000000 */  nop
/* C0D90 80129EB0 46201002 */  mul.d      $f0, $f2, $f0
/* C0D94 80129EB4 00000000 */  nop
/* C0D98 80129EB8 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* C0D9C 80129EBC 44816800 */  mtc1       $at, $f13
/* C0DA0 80129EC0 44806000 */  mtc1       $zero, $f12
/* C0DA4 80129EC4 00000000 */  nop
/* C0DA8 80129EC8 462C0002 */  mul.d      $f0, $f0, $f12
/* C0DAC 80129ECC 00000000 */  nop
/* C0DB0 80129ED0 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C0DB4 80129ED4 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C0DB8 80129ED8 C4620010 */  lwc1       $f2, 0x10($v1)
/* C0DBC 80129EDC 46081082 */  mul.s      $f2, $f2, $f8
/* C0DC0 80129EE0 00000000 */  nop
/* C0DC4 80129EE4 C4660014 */  lwc1       $f6, 0x14($v1)
/* C0DC8 80129EE8 46083182 */  mul.s      $f6, $f6, $f8
/* C0DCC 80129EEC 00000000 */  nop
/* C0DD0 80129EF0 E4620018 */  swc1       $f2, 0x18($v1)
/* C0DD4 80129EF4 3C014020 */  lui        $at, (0x40200000 >> 16)
/* C0DD8 80129EF8 44811800 */  mtc1       $at, $f3
/* C0DDC 80129EFC 44801000 */  mtc1       $zero, $f2
/* C0DE0 80129F00 00021403 */  sra        $v0, $v0, 16
/* C0DE4 80129F04 46201081 */  sub.d      $f2, $f2, $f0
/* C0DE8 80129F08 44822000 */  mtc1       $v0, $f4
/* C0DEC 80129F0C 00000000 */  nop
/* C0DF0 80129F10 46802121 */  cvt.d.w    $f4, $f4
/* C0DF4 80129F14 00141400 */  sll        $v0, $s4, 16
/* C0DF8 80129F18 46222100 */  add.d      $f4, $f4, $f2
/* C0DFC 80129F1C 00021403 */  sra        $v0, $v0, 16
/* C0E00 80129F20 44820000 */  mtc1       $v0, $f0
/* C0E04 80129F24 00000000 */  nop
/* C0E08 80129F28 46800021 */  cvt.d.w    $f0, $f0
/* C0E0C 80129F2C 46220000 */  add.d      $f0, $f0, $f2
/* C0E10 80129F30 E466001C */  swc1       $f6, 0x1C($v1)
/* C0E14 80129F34 4620230D */  trunc.w.d  $f12, $f4
/* C0E18 80129F38 44116000 */  mfc1       $s1, $f12
.L80129F3C:
/* C0E1C 80129F3C 4620030D */  trunc.w.d  $f12, $f0
/* C0E20 80129F40 44146000 */  mfc1       $s4, $f12
.L80129F44:
/* C0E24 80129F44 93C204F8 */  lbu        $v0, 0x4F8($fp)
/* C0E28 80129F48 2442FFF5 */  addiu      $v0, $v0, -0xB
/* C0E2C 80129F4C 2C420002 */  sltiu      $v0, $v0, 0x2
/* C0E30 80129F50 10400019 */  beqz       $v0, .L80129FB8
/* C0E34 80129F54 00171C00 */   sll       $v1, $s7, 16
/* C0E38 80129F58 93C20508 */  lbu        $v0, 0x508($fp)
/* C0E3C 80129F5C 2442FFFF */  addiu      $v0, $v0, -0x1
/* C0E40 80129F60 2C420004 */  sltiu      $v0, $v0, 0x4
/* C0E44 80129F64 10400014 */  beqz       $v0, .L80129FB8
/* C0E48 80129F68 00171400 */   sll       $v0, $s7, 16
/* C0E4C 80129F6C 00021C03 */  sra        $v1, $v0, 16
/* C0E50 80129F70 2C620026 */  sltiu      $v0, $v1, 0x26
/* C0E54 80129F74 1040000E */  beqz       $v0, .L80129FB0
/* C0E58 80129F78 00031080 */   sll       $v0, $v1, 2
/* C0E5C 80129F7C 3C018015 */  lui        $at, %hi(jtbl_8014F0F0)
/* C0E60 80129F80 00220821 */  addu       $at, $at, $v0
/* C0E64 80129F84 8C22F0F0 */  lw         $v0, %lo(jtbl_8014F0F0)($at)
/* C0E68 80129F88 00400008 */  jr         $v0
/* C0E6C 80129F8C 00000000 */   nop
glabel .L80129F90
/* C0E70 80129F90 0804A7ED */  j          .L80129FB4
/* C0E74 80129F94 24170041 */   addiu     $s7, $zero, 0x41
glabel .L80129F98
/* C0E78 80129F98 0804A7ED */  j          .L80129FB4
/* C0E7C 80129F9C 24170042 */   addiu     $s7, $zero, 0x42
glabel .L80129FA0
/* C0E80 80129FA0 0804A7ED */  j          .L80129FB4
/* C0E84 80129FA4 24170043 */   addiu     $s7, $zero, 0x43
glabel .L80129FA8
/* C0E88 80129FA8 0804A7ED */  j          .L80129FB4
/* C0E8C 80129FAC 24170044 */   addiu     $s7, $zero, 0x44
glabel .L80129FB0
/* C0E90 80129FB0 24170040 */  addiu      $s7, $zero, 0x40
glabel .L80129FB4
/* C0E94 80129FB4 00171C00 */  sll        $v1, $s7, 16
.L80129FB8:
/* C0E98 80129FB8 97B9009E */  lhu        $t9, 0x9E($sp)
/* C0E9C 80129FBC 00191400 */  sll        $v0, $t9, 16
/* C0EA0 80129FC0 10620007 */  beq        $v1, $v0, .L80129FE0
/* C0EA4 80129FC4 00035403 */   sra       $t2, $v1, 16
/* C0EA8 80129FC8 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C0EAC 80129FCC 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C0EB0 80129FD0 94620034 */  lhu        $v0, 0x34($v1)
/* C0EB4 80129FD4 A7B7009E */  sh         $s7, 0x9E($sp)
/* C0EB8 80129FD8 34420010 */  ori        $v0, $v0, 0x10
/* C0EBC 80129FDC A4620034 */  sh         $v0, 0x34($v1)
.L80129FE0:
/* C0EC0 80129FE0 3C098016 */  lui        $t1, %hi(msg_drawState)
/* C0EC4 80129FE4 8D2980F4 */  lw         $t1, %lo(msg_drawState)($t1)
/* C0EC8 80129FE8 8D220038 */  lw         $v0, 0x38($t1)
/* C0ECC 80129FEC 30428000 */  andi       $v0, $v0, 0x8000
/* C0ED0 80129FF0 10400075 */  beqz       $v0, .L8012A1C8
/* C0ED4 80129FF4 00121400 */   sll       $v0, $s2, 16
/* C0ED8 80129FF8 00021403 */  sra        $v0, $v0, 16
/* C0EDC 80129FFC 241800FF */  addiu      $t8, $zero, 0xFF
/* C0EE0 8012A000 14580071 */  bne        $v0, $t8, .L8012A1C8
/* C0EE4 8012A004 3C06E200 */   lui       $a2, (0xE200001C >> 16)
/* C0EE8 8012A008 34C6001C */  ori        $a2, $a2, (0xE200001C & 0xFFFF)
/* C0EEC 8012A00C 3C040050 */  lui        $a0, (0x504240 >> 16)
/* C0EF0 8012A010 34844240 */  ori        $a0, $a0, (0x504240 & 0xFFFF)
/* C0EF4 8012A014 3C07FCFF */  lui        $a3, (0xFCFF97FF >> 16)
/* C0EF8 8012A018 34E797FF */  ori        $a3, $a3, (0xFCFF97FF & 0xFFFF)
/* C0EFC 8012A01C 3C05FF2D */  lui        $a1, (0xFF2DFEFF >> 16)
/* C0F00 8012A020 34A5FEFF */  ori        $a1, $a1, (0xFF2DFEFF & 0xFFFF)
/* C0F04 8012A024 3C082828 */  lui        $t0, (0x28282848 >> 16)
/* C0F08 8012A028 3C03800A */  lui        $v1, %hi(gMasterGfxPos)
/* C0F0C 8012A02C 8C639244 */  lw         $v1, %lo(gMasterGfxPos)($v1)
/* C0F10 8012A030 35082848 */  ori        $t0, $t0, (0x28282848 & 0xFFFF)
/* C0F14 8012A034 0060102D */  daddu      $v0, $v1, $zero
/* C0F18 8012A038 24630008 */  addiu      $v1, $v1, 0x8
/* C0F1C 8012A03C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* C0F20 8012A040 AC590000 */  sw         $t9, 0x0($v0)
/* C0F24 8012A044 AC400004 */  sw         $zero, 0x4($v0)
/* C0F28 8012A048 24620008 */  addiu      $v0, $v1, 0x8
/* C0F2C 8012A04C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0F30 8012A050 AC239244 */  sw         $v1, %lo(gMasterGfxPos)($at)
/* C0F34 8012A054 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0F38 8012A058 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0F3C 8012A05C 24620010 */  addiu      $v0, $v1, 0x10
/* C0F40 8012A060 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0F44 8012A064 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0F48 8012A068 24620018 */  addiu      $v0, $v1, 0x18
/* C0F4C 8012A06C 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C0F50 8012A070 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C0F54 8012A074 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
/* C0F58 8012A078 AC660000 */  sw         $a2, 0x0($v1)
/* C0F5C 8012A07C AC640004 */  sw         $a0, 0x4($v1)
/* C0F60 8012A080 AC670008 */  sw         $a3, 0x8($v1)
/* C0F64 8012A084 AC65000C */  sw         $a1, 0xC($v1)
/* C0F68 8012A088 AC620010 */  sw         $v0, 0x10($v1)
/* C0F6C 8012A08C AC680014 */  sw         $t0, 0x14($v1)
/* C0F70 8012A090 97B800BE */  lhu        $t8, 0xBE($sp)
/* C0F74 8012A094 2702FFA1 */  addiu      $v0, $t8, -0x5F
/* C0F78 8012A098 2C420031 */  sltiu      $v0, $v0, 0x31
/* C0F7C 8012A09C 10400014 */  beqz       $v0, .L8012A0F0
/* C0F80 8012A0A0 26A3FFFF */   addiu     $v1, $s5, -0x1
/* C0F84 8012A0A4 00031040 */  sll        $v0, $v1, 1
/* C0F88 8012A0A8 00431021 */  addu       $v0, $v0, $v1
/* C0F8C 8012A0AC 00021100 */  sll        $v0, $v0, 4
/* C0F90 8012A0B0 00431021 */  addu       $v0, $v0, $v1
/* C0F94 8012A0B4 24420047 */  addiu      $v0, $v0, 0x47
/* C0F98 8012A0B8 03023021 */  addu       $a2, $t8, $v0
/* C0F9C 8012A0BC 03C0202D */  daddu      $a0, $fp, $zero
/* C0FA0 8012A0C0 0120282D */  daddu      $a1, $t1, $zero
/* C0FA4 8012A0C4 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* C0FA8 8012A0C8 0140382D */  daddu      $a3, $t2, $zero
/* C0FAC 8012A0CC 00111400 */  sll        $v0, $s1, 16
/* C0FB0 8012A0D0 00021403 */  sra        $v0, $v0, 16
/* C0FB4 8012A0D4 24420002 */  addiu      $v0, $v0, 0x2
/* C0FB8 8012A0D8 AFA20010 */  sw         $v0, 0x10($sp)
/* C0FBC 8012A0DC 00141400 */  sll        $v0, $s4, 16
/* C0FC0 8012A0E0 00021403 */  sra        $v0, $v0, 16
/* C0FC4 8012A0E4 24420002 */  addiu      $v0, $v0, 0x2
/* C0FC8 8012A0E8 0804A849 */  j          .L8012A124
/* C0FCC 8012A0EC AFA20014 */   sw        $v0, 0x14($sp)
.L8012A0F0:
/* C0FD0 8012A0F0 03C0202D */  daddu      $a0, $fp, $zero
/* C0FD4 8012A0F4 0120282D */  daddu      $a1, $t1, $zero
/* C0FD8 8012A0F8 0140382D */  daddu      $a3, $t2, $zero
/* C0FDC 8012A0FC 00111400 */  sll        $v0, $s1, 16
/* C0FE0 8012A100 00021403 */  sra        $v0, $v0, 16
/* C0FE4 8012A104 24420002 */  addiu      $v0, $v0, 0x2
/* C0FE8 8012A108 AFA20010 */  sw         $v0, 0x10($sp)
/* C0FEC 8012A10C 00141400 */  sll        $v0, $s4, 16
/* C0FF0 8012A110 00021403 */  sra        $v0, $v0, 16
/* C0FF4 8012A114 97B900BE */  lhu        $t9, 0xBE($sp)
/* C0FF8 8012A118 24420002 */  addiu      $v0, $v0, 0x2
/* C0FFC 8012A11C AFA20014 */  sw         $v0, 0x14($sp)
/* C1000 8012A120 0320302D */  daddu      $a2, $t9, $zero
.L8012A124:
/* C1004 8012A124 0C04A9D7 */  jal        msg_draw_char
/* C1008 8012A128 00000000 */   nop
/* C100C 8012A12C 3C07800A */  lui        $a3, %hi(gMasterGfxPos)
/* C1010 8012A130 8CE79244 */  lw         $a3, %lo(gMasterGfxPos)($a3)
/* C1014 8012A134 00E0102D */  daddu      $v0, $a3, $zero
/* C1018 8012A138 24E70008 */  addiu      $a3, $a3, 0x8
/* C101C 8012A13C 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* C1020 8012A140 AC580000 */  sw         $t8, 0x0($v0)
/* C1024 8012A144 AC400004 */  sw         $zero, 0x4($v0)
/* C1028 8012A148 00121400 */  sll        $v0, $s2, 16
/* C102C 8012A14C 00021403 */  sra        $v0, $v0, 16
/* C1030 8012A150 284200FF */  slti       $v0, $v0, 0xFF
/* C1034 8012A154 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C1038 8012A158 AC279244 */  sw         $a3, %lo(gMasterGfxPos)($at)
/* C103C 8012A15C 10400009 */  beqz       $v0, .L8012A184
/* C1040 8012A160 3C05E200 */   lui       $a1, (0xE200001C >> 16)
/* C1044 8012A164 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* C1048 8012A168 3C030050 */  lui        $v1, (0x504240 >> 16)
/* C104C 8012A16C 34634240 */  ori        $v1, $v1, (0x504240 & 0xFFFF)
/* C1050 8012A170 3C06FCFF */  lui        $a2, (0xFCFF97FF >> 16)
/* C1054 8012A174 34C697FF */  ori        $a2, $a2, (0xFCFF97FF & 0xFFFF)
/* C1058 8012A178 3C04FF2C */  lui        $a0, (0xFF2CFE7F >> 16)
/* C105C 8012A17C 0804A868 */  j          .L8012A1A0
/* C1060 8012A180 3484FE7F */   ori       $a0, $a0, (0xFF2CFE7F & 0xFFFF)
.L8012A184:
/* C1064 8012A184 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* C1068 8012A188 3C030F0A */  lui        $v1, (0xF0A7008 >> 16)
/* C106C 8012A18C 34637008 */  ori        $v1, $v1, (0xF0A7008 & 0xFFFF)
/* C1070 8012A190 3C06FCFF */  lui        $a2, (0xFCFFFFFF >> 16)
/* C1074 8012A194 34C6FFFF */  ori        $a2, $a2, (0xFCFFFFFF & 0xFFFF)
/* C1078 8012A198 3C04FFFC */  lui        $a0, (0xFFFCF279 >> 16)
/* C107C 8012A19C 3484F279 */  ori        $a0, $a0, (0xFFFCF279 & 0xFFFF)
.L8012A1A0:
/* C1080 8012A1A0 24E20008 */  addiu      $v0, $a3, 0x8
/* C1084 8012A1A4 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C1088 8012A1A8 AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C108C 8012A1AC 24E20010 */  addiu      $v0, $a3, 0x10
/* C1090 8012A1B0 ACE50000 */  sw         $a1, 0x0($a3)
/* C1094 8012A1B4 ACE30004 */  sw         $v1, 0x4($a3)
/* C1098 8012A1B8 3C01800A */  lui        $at, %hi(gMasterGfxPos)
/* C109C 8012A1BC AC229244 */  sw         $v0, %lo(gMasterGfxPos)($at)
/* C10A0 8012A1C0 ACE60008 */  sw         $a2, 0x8($a3)
/* C10A4 8012A1C4 ACE4000C */  sw         $a0, 0xC($a3)
.L8012A1C8:
/* C10A8 8012A1C8 3C058016 */  lui        $a1, %hi(msg_drawState)
/* C10AC 8012A1CC 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* C10B0 8012A1D0 8CA20038 */  lw         $v0, 0x38($a1)
/* C10B4 8012A1D4 30420020 */  andi       $v0, $v0, 0x20
/* C10B8 8012A1D8 1040002F */  beqz       $v0, .L8012A298
/* C10BC 8012A1DC 0000902D */   daddu     $s2, $zero, $zero
/* C10C0 8012A1E0 26A3FFFF */  addiu      $v1, $s5, -0x1
/* C10C4 8012A1E4 97B900BE */  lhu        $t9, 0xBE($sp)
/* C10C8 8012A1E8 93B300B0 */  lbu        $s3, 0xB0($sp)
/* C10CC 8012A1EC 2722FFA1 */  addiu      $v0, $t9, -0x5F
/* C10D0 8012A1F0 2C560031 */  sltiu      $s6, $v0, 0x31
/* C10D4 8012A1F4 00031040 */  sll        $v0, $v1, 1
/* C10D8 8012A1F8 00431021 */  addu       $v0, $v0, $v1
/* C10DC 8012A1FC 00021100 */  sll        $v0, $v0, 4
/* C10E0 8012A200 00431021 */  addu       $v0, $v0, $v1
/* C10E4 8012A204 24420047 */  addiu      $v0, $v0, 0x47
/* C10E8 8012A208 0322A821 */  addu       $s5, $t9, $v0
/* C10EC 8012A20C 00111400 */  sll        $v0, $s1, 16
/* C10F0 8012A210 00021403 */  sra        $v0, $v0, 16
/* C10F4 8012A214 24510002 */  addiu      $s1, $v0, 0x2
/* C10F8 8012A218 00141400 */  sll        $v0, $s4, 16
/* C10FC 8012A21C 00021403 */  sra        $v0, $v0, 16
/* C1100 8012A220 24500002 */  addiu      $s0, $v0, 0x2
/* C1104 8012A224 24180002 */  addiu      $t8, $zero, 0x2
.L8012A228:
/* C1108 8012A228 12780004 */  beq        $s3, $t8, .L8012A23C
/* C110C 8012A22C 24190001 */   addiu     $t9, $zero, 0x1
/* C1110 8012A230 0C00A5B3 */  jal        rand_int
/* C1114 8012A234 24042710 */   addiu     $a0, $zero, 0x2710
/* C1118 8012A238 24190001 */  addiu      $t9, $zero, 0x1
.L8012A23C:
/* C111C 8012A23C 12790003 */  beq        $s3, $t9, .L8012A24C
/* C1120 8012A240 00000000 */   nop
/* C1124 8012A244 0C00A5B3 */  jal        rand_int
/* C1128 8012A248 24042710 */   addiu     $a0, $zero, 0x2710
.L8012A24C:
/* C112C 8012A24C 12C00004 */  beqz       $s6, .L8012A260
/* C1130 8012A250 03C0202D */   daddu     $a0, $fp, $zero
/* C1134 8012A254 32A6FFFF */  andi       $a2, $s5, 0xFFFF
/* C1138 8012A258 0804A89A */  j          .L8012A268
/* C113C 8012A25C 00173C00 */   sll       $a3, $s7, 16
.L8012A260:
/* C1140 8012A260 00173C00 */  sll        $a3, $s7, 16
/* C1144 8012A264 97A600BE */  lhu        $a2, 0xBE($sp)
.L8012A268:
/* C1148 8012A268 3C058016 */  lui        $a1, %hi(msg_drawState)
/* C114C 8012A26C 8CA580F4 */  lw         $a1, %lo(msg_drawState)($a1)
/* C1150 8012A270 00073C03 */  sra        $a3, $a3, 16
/* C1154 8012A274 AFB10010 */  sw         $s1, 0x10($sp)
/* C1158 8012A278 0C04A9D7 */  jal        msg_draw_char
/* C115C 8012A27C AFB00014 */   sw        $s0, 0x14($sp)
/* C1160 8012A280 26520001 */  addiu      $s2, $s2, 0x1
/* C1164 8012A284 2A420005 */  slti       $v0, $s2, 0x5
/* C1168 8012A288 1440FFE7 */  bnez       $v0, .L8012A228
/* C116C 8012A28C 24180002 */   addiu     $t8, $zero, 0x2
/* C1170 8012A290 0804A8CD */  j          .L8012A334
/* C1174 8012A294 00000000 */   nop
.L8012A298:
/* C1178 8012A298 97B800BE */  lhu        $t8, 0xBE($sp)
/* C117C 8012A29C 2702FFA1 */  addiu      $v0, $t8, -0x5F
/* C1180 8012A2A0 2C420031 */  sltiu      $v0, $v0, 0x31
/* C1184 8012A2A4 10400014 */  beqz       $v0, .L8012A2F8
/* C1188 8012A2A8 26A3FFFF */   addiu     $v1, $s5, -0x1
/* C118C 8012A2AC 00031040 */  sll        $v0, $v1, 1
/* C1190 8012A2B0 00431021 */  addu       $v0, $v0, $v1
/* C1194 8012A2B4 00021100 */  sll        $v0, $v0, 4
/* C1198 8012A2B8 00431021 */  addu       $v0, $v0, $v1
/* C119C 8012A2BC 24420047 */  addiu      $v0, $v0, 0x47
/* C11A0 8012A2C0 03023021 */  addu       $a2, $t8, $v0
/* C11A4 8012A2C4 03C0202D */  daddu      $a0, $fp, $zero
/* C11A8 8012A2C8 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* C11AC 8012A2CC 00173C00 */  sll        $a3, $s7, 16
/* C11B0 8012A2D0 00073C03 */  sra        $a3, $a3, 16
/* C11B4 8012A2D4 00111400 */  sll        $v0, $s1, 16
/* C11B8 8012A2D8 00021403 */  sra        $v0, $v0, 16
/* C11BC 8012A2DC 24420002 */  addiu      $v0, $v0, 0x2
/* C11C0 8012A2E0 AFA20010 */  sw         $v0, 0x10($sp)
/* C11C4 8012A2E4 00141400 */  sll        $v0, $s4, 16
/* C11C8 8012A2E8 00021403 */  sra        $v0, $v0, 16
/* C11CC 8012A2EC 24420002 */  addiu      $v0, $v0, 0x2
/* C11D0 8012A2F0 0804A8CB */  j          .L8012A32C
/* C11D4 8012A2F4 AFA20014 */   sw        $v0, 0x14($sp)
.L8012A2F8:
/* C11D8 8012A2F8 03C0202D */  daddu      $a0, $fp, $zero
/* C11DC 8012A2FC 00173C00 */  sll        $a3, $s7, 16
/* C11E0 8012A300 00073C03 */  sra        $a3, $a3, 16
/* C11E4 8012A304 00111400 */  sll        $v0, $s1, 16
/* C11E8 8012A308 00021403 */  sra        $v0, $v0, 16
/* C11EC 8012A30C 24420002 */  addiu      $v0, $v0, 0x2
/* C11F0 8012A310 AFA20010 */  sw         $v0, 0x10($sp)
/* C11F4 8012A314 00141400 */  sll        $v0, $s4, 16
/* C11F8 8012A318 00021403 */  sra        $v0, $v0, 16
/* C11FC 8012A31C 97B900BE */  lhu        $t9, 0xBE($sp)
/* C1200 8012A320 24420002 */  addiu      $v0, $v0, 0x2
/* C1204 8012A324 AFA20014 */  sw         $v0, 0x14($sp)
/* C1208 8012A328 0320302D */  daddu      $a2, $t9, $zero
.L8012A32C:
/* C120C 8012A32C 0C04A9D7 */  jal        msg_draw_char
/* C1210 8012A330 00000000 */   nop
.L8012A334:
/* C1214 8012A334 3C048016 */  lui        $a0, %hi(msg_drawState)
/* C1218 8012A338 8C8480F4 */  lw         $a0, %lo(msg_drawState)($a0)
/* C121C 8012A33C 94830034 */  lhu        $v1, 0x34($a0)
/* C1220 8012A340 30620002 */  andi       $v0, $v1, 0x2
/* C1224 8012A344 10400002 */  beqz       $v0, .L8012A350
/* C1228 8012A348 3062FFFD */   andi      $v0, $v1, 0xFFFD
/* C122C 8012A34C A4820034 */  sh         $v0, 0x34($a0)
.L8012A350:
/* C1230 8012A350 3C038016 */  lui        $v1, %hi(msg_drawState)
/* C1234 8012A354 8C6380F4 */  lw         $v1, %lo(msg_drawState)($v1)
/* C1238 8012A358 3C014160 */  lui        $at, (0x41600000 >> 16)
/* C123C 8012A35C 44810000 */  mtc1       $at, $f0
/* C1240 8012A360 C4620010 */  lwc1       $f2, 0x10($v1)
/* C1244 8012A364 8C620030 */  lw         $v0, 0x30($v1)
/* C1248 8012A368 84640042 */  lh         $a0, 0x42($v1)
/* C124C 8012A36C 46001082 */  mul.s      $f2, $f2, $f0
/* C1250 8012A370 00000000 */  nop
/* C1254 8012A374 24420001 */  addiu      $v0, $v0, 0x1
/* C1258 8012A378 44840000 */  mtc1       $a0, $f0
/* C125C 8012A37C 00000000 */  nop
/* C1260 8012A380 46800020 */  cvt.s.w    $f0, $f0
/* C1264 8012A384 AC620030 */  sw         $v0, 0x30($v1)
/* C1268 8012A388 8C620020 */  lw         $v0, 0x20($v1)
/* C126C 8012A38C 46020000 */  add.s      $f0, $f0, $f2
/* C1270 8012A390 24420001 */  addiu      $v0, $v0, 0x1
/* C1274 8012A394 AC620020 */  sw         $v0, 0x20($v1)
/* C1278 8012A398 4600030D */  trunc.w.s  $f12, $f0
/* C127C 8012A39C 44026000 */  mfc1       $v0, $f12
/* C1280 8012A3A0 00000000 */  nop
/* C1284 8012A3A4 A4620042 */  sh         $v0, 0x42($v1)
glabel .L8012A3A8
/* C1288 8012A3A8 97A20080 */  lhu        $v0, 0x80($sp)
/* C128C 8012A3AC 1040EFDC */  beqz       $v0, .L80126320
/* C1290 8012A3B0 00000000 */   nop
/* C1294 8012A3B4 97C2052C */  lhu        $v0, 0x52C($fp)
/* C1298 8012A3B8 104000BA */  beqz       $v0, .L8012A6A4
/* C129C 8012A3BC 0000302D */   daddu     $a2, $zero, $zero
/* C12A0 8012A3C0 93C2052B */  lbu        $v0, 0x52B($fp)
/* C12A4 8012A3C4 93D00531 */  lbu        $s0, 0x531($fp)
/* C12A8 8012A3C8 93C40530 */  lbu        $a0, 0x530($fp)
/* C12AC 8012A3CC 00021880 */  sll        $v1, $v0, 2
/* C12B0 8012A3D0 00621821 */  addu       $v1, $v1, $v0
/* C12B4 8012A3D4 3C028015 */  lui        $v0, %hi(gMsgVarImages)
/* C12B8 8012A3D8 8C42FA84 */  lw         $v0, %lo(gMsgVarImages)($v0)
/* C12BC 8012A3DC 00031880 */  sll        $v1, $v1, 2
/* C12C0 8012A3E0 04800078 */  bltz       $a0, .L8012A5C4
/* C12C4 8012A3E4 00438821 */   addu      $s1, $v0, $v1
/* C12C8 8012A3E8 28820002 */  slti       $v0, $a0, 0x2
/* C12CC 8012A3EC 14400005 */  bnez       $v0, .L8012A404
/* C12D0 8012A3F0 24020002 */   addiu     $v0, $zero, 0x2
/* C12D4 8012A3F4 10820050 */  beq        $a0, $v0, .L8012A538
/* C12D8 8012A3F8 00101400 */   sll       $v0, $s0, 16
/* C12DC 8012A3FC 0804A972 */  j          .L8012A5C8
/* C12E0 8012A400 00000000 */   nop
.L8012A404:
/* C12E4 8012A404 54800001 */  bnel       $a0, $zero, .L8012A40C
/* C12E8 8012A408 24060001 */   addiu     $a2, $zero, 0x1
.L8012A40C:
/* C12EC 8012A40C 93C30533 */  lbu        $v1, 0x533($fp)
/* C12F0 8012A410 24050001 */  addiu      $a1, $zero, 0x1
/* C12F4 8012A414 1065001E */  beq        $v1, $a1, .L8012A490
/* C12F8 8012A418 28620002 */   slti      $v0, $v1, 0x2
/* C12FC 8012A41C 10400005 */  beqz       $v0, .L8012A434
/* C1300 8012A420 24020002 */   addiu     $v0, $zero, 0x2
/* C1304 8012A424 10600007 */  beqz       $v1, .L8012A444
/* C1308 8012A428 00101400 */   sll       $v0, $s0, 16
/* C130C 8012A42C 0804A972 */  j          .L8012A5C8
/* C1310 8012A430 00000000 */   nop
.L8012A434:
/* C1314 8012A434 10620031 */  beq        $v1, $v0, .L8012A4FC
/* C1318 8012A438 00101400 */   sll       $v0, $s0, 16
/* C131C 8012A43C 0804A972 */  j          .L8012A5C8
/* C1320 8012A440 00000000 */   nop
.L8012A444:
/* C1324 8012A444 97C30534 */  lhu        $v1, 0x534($fp)
/* C1328 8012A448 93C40532 */  lbu        $a0, 0x532($fp)
/* C132C 8012A44C 24630001 */  addiu      $v1, $v1, 0x1
/* C1330 8012A450 00031400 */  sll        $v0, $v1, 16
/* C1334 8012A454 00021403 */  sra        $v0, $v0, 16
/* C1338 8012A458 00440018 */  mult       $v0, $a0
/* C133C 8012A45C A7C30534 */  sh         $v1, 0x534($fp)
/* C1340 8012A460 93C30531 */  lbu        $v1, 0x531($fp)
/* C1344 8012A464 00001012 */  mflo       $v0
/* C1348 8012A468 0040802D */  daddu      $s0, $v0, $zero
/* C134C 8012A46C 00021400 */  sll        $v0, $v0, 16
/* C1350 8012A470 00021403 */  sra        $v0, $v0, 16
/* C1354 8012A474 0043102A */  slt        $v0, $v0, $v1
/* C1358 8012A478 14400053 */  bnez       $v0, .L8012A5C8
/* C135C 8012A47C 00101400 */   sll       $v0, $s0, 16
/* C1360 8012A480 93D00531 */  lbu        $s0, 0x531($fp)
/* C1364 8012A484 A7C00534 */  sh         $zero, 0x534($fp)
/* C1368 8012A488 0804A971 */  j          .L8012A5C4
/* C136C 8012A48C A3C50533 */   sb        $a1, 0x533($fp)
.L8012A490:
/* C1370 8012A490 97B800A6 */  lhu        $t8, 0xA6($sp)
/* C1374 8012A494 3C018015 */  lui        $at, %hi(D_8014F188)
/* C1378 8012A498 D420F188 */  ldc1       $f0, %lo(D_8014F188)($at)
/* C137C 8012A49C 00181400 */  sll        $v0, $t8, 16
/* C1380 8012A4A0 00021403 */  sra        $v0, $v0, 16
/* C1384 8012A4A4 44821000 */  mtc1       $v0, $f2
/* C1388 8012A4A8 00000000 */  nop
/* C138C 8012A4AC 468010A0 */  cvt.s.w    $f2, $f2
/* C1390 8012A4B0 460010A1 */  cvt.d.s    $f2, $f2
/* C1394 8012A4B4 93C20531 */  lbu        $v0, 0x531($fp)
/* C1398 8012A4B8 46201083 */  div.d      $f2, $f2, $f0
/* C139C 8012A4BC 44820000 */  mtc1       $v0, $f0
/* C13A0 8012A4C0 00000000 */  nop
/* C13A4 8012A4C4 46800020 */  cvt.s.w    $f0, $f0
/* C13A8 8012A4C8 46000021 */  cvt.d.s    $f0, $f0
/* C13AC 8012A4CC 46201002 */  mul.d      $f0, $f2, $f0
/* C13B0 8012A4D0 00000000 */  nop
/* C13B4 8012A4D4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* C13B8 8012A4D8 44811800 */  mtc1       $at, $f3
/* C13BC 8012A4DC 44801000 */  mtc1       $zero, $f2
/* C13C0 8012A4E0 00000000 */  nop
/* C13C4 8012A4E4 4620103E */  c.le.d     $f2, $f0
/* C13C8 8012A4E8 00000000 */  nop
/* C13CC 8012A4EC 4500002B */  bc1f       .L8012A59C
/* C13D0 8012A4F0 00000000 */   nop
/* C13D4 8012A4F4 0804A96B */  j          .L8012A5AC
/* C13D8 8012A4F8 46220001 */   sub.d     $f0, $f0, $f2
.L8012A4FC:
/* C13DC 8012A4FC 97C30534 */  lhu        $v1, 0x534($fp)
/* C13E0 8012A500 93C40532 */  lbu        $a0, 0x532($fp)
/* C13E4 8012A504 24630001 */  addiu      $v1, $v1, 0x1
/* C13E8 8012A508 00031400 */  sll        $v0, $v1, 16
/* C13EC 8012A50C 00021403 */  sra        $v0, $v0, 16
/* C13F0 8012A510 00820018 */  mult       $a0, $v0
/* C13F4 8012A514 93C20531 */  lbu        $v0, 0x531($fp)
/* C13F8 8012A518 0000C012 */  mflo       $t8
/* C13FC 8012A51C 00581023 */  subu       $v0, $v0, $t8
/* C1400 8012A520 0040802D */  daddu      $s0, $v0, $zero
/* C1404 8012A524 00021400 */  sll        $v0, $v0, 16
/* C1408 8012A528 1C400029 */  bgtz       $v0, .L8012A5D0
/* C140C 8012A52C A7C30534 */   sh        $v1, 0x534($fp)
/* C1410 8012A530 0804A971 */  j          .L8012A5C4
/* C1414 8012A534 A7C0052C */   sh        $zero, 0x52C($fp)
.L8012A538:
/* C1418 8012A538 97B900A6 */  lhu        $t9, 0xA6($sp)
/* C141C 8012A53C 3C018015 */  lui        $at, %hi(D_8014F190)
/* C1420 8012A540 D420F190 */  ldc1       $f0, %lo(D_8014F190)($at)
/* C1424 8012A544 00191400 */  sll        $v0, $t9, 16
/* C1428 8012A548 00021403 */  sra        $v0, $v0, 16
/* C142C 8012A54C 44821000 */  mtc1       $v0, $f2
/* C1430 8012A550 00000000 */  nop
/* C1434 8012A554 468010A0 */  cvt.s.w    $f2, $f2
/* C1438 8012A558 460010A1 */  cvt.d.s    $f2, $f2
/* C143C 8012A55C 93C20531 */  lbu        $v0, 0x531($fp)
/* C1440 8012A560 46201083 */  div.d      $f2, $f2, $f0
/* C1444 8012A564 44820000 */  mtc1       $v0, $f0
/* C1448 8012A568 00000000 */  nop
/* C144C 8012A56C 46800020 */  cvt.s.w    $f0, $f0
/* C1450 8012A570 46000021 */  cvt.d.s    $f0, $f0
/* C1454 8012A574 46201002 */  mul.d      $f0, $f2, $f0
/* C1458 8012A578 00000000 */  nop
/* C145C 8012A57C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* C1460 8012A580 44811800 */  mtc1       $at, $f3
/* C1464 8012A584 44801000 */  mtc1       $zero, $f2
/* C1468 8012A588 00000000 */  nop
/* C146C 8012A58C 4620103E */  c.le.d     $f2, $f0
/* C1470 8012A590 00000000 */  nop
/* C1474 8012A594 45030005 */  bc1tl      .L8012A5AC
/* C1478 8012A598 46220001 */   sub.d     $f0, $f0, $f2
.L8012A59C:
/* C147C 8012A59C 4620030D */  trunc.w.d  $f12, $f0
/* C1480 8012A5A0 44036000 */  mfc1       $v1, $f12
/* C1484 8012A5A4 0804A971 */  j          .L8012A5C4
/* C1488 8012A5A8 307000FF */   andi      $s0, $v1, 0xFF
.L8012A5AC:
/* C148C 8012A5AC 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* C1490 8012A5B0 4620030D */  trunc.w.d  $f12, $f0
/* C1494 8012A5B4 44036000 */  mfc1       $v1, $f12
/* C1498 8012A5B8 00000000 */  nop
/* C149C 8012A5BC 00621825 */  or         $v1, $v1, $v0
/* C14A0 8012A5C0 307000FF */  andi       $s0, $v1, 0xFF
.L8012A5C4:
/* C14A4 8012A5C4 00101400 */  sll        $v0, $s0, 16
.L8012A5C8:
/* C14A8 8012A5C8 18400036 */  blez       $v0, .L8012A6A4
/* C14AC 8012A5CC 00000000 */   nop
.L8012A5D0:
/* C14B0 8012A5D0 00C0102D */  daddu      $v0, $a2, $zero
/* C14B4 8012A5D4 1040001E */  beqz       $v0, .L8012A650
/* C14B8 8012A5D8 0000202D */   daddu     $a0, $zero, $zero
/* C14BC 8012A5DC 97C6052C */  lhu        $a2, 0x52C($fp)
/* C14C0 8012A5E0 97C7052E */  lhu        $a3, 0x52E($fp)
/* C14C4 8012A5E4 2405000F */  addiu      $a1, $zero, 0xF
/* C14C8 8012A5E8 AFA00010 */  sw         $zero, 0x10($sp)
/* C14CC 8012A5EC 96220008 */  lhu        $v0, 0x8($s1)
/* C14D0 8012A5F0 24C6FFF9 */  addiu      $a2, $a2, -0x7
/* C14D4 8012A5F4 24E7FFF9 */  addiu      $a3, $a3, -0x7
/* C14D8 8012A5F8 00451021 */  addu       $v0, $v0, $a1
/* C14DC 8012A5FC AFA20014 */  sw         $v0, 0x14($sp)
/* C14E0 8012A600 9623000A */  lhu        $v1, 0xA($s1)
/* C14E4 8012A604 320200FF */  andi       $v0, $s0, 0xFF
/* C14E8 8012A608 AFA2001C */  sw         $v0, 0x1C($sp)
/* C14EC 8012A60C 24020140 */  addiu      $v0, $zero, 0x140
/* C14F0 8012A610 AFA20044 */  sw         $v0, 0x44($sp)
/* C14F4 8012A614 240200F0 */  addiu      $v0, $zero, 0xF0
/* C14F8 8012A618 AFA00020 */  sw         $zero, 0x20($sp)
/* C14FC 8012A61C AFA00024 */  sw         $zero, 0x24($sp)
/* C1500 8012A620 AFA00028 */  sw         $zero, 0x28($sp)
/* C1504 8012A624 AFA0002C */  sw         $zero, 0x2C($sp)
/* C1508 8012A628 AFA00030 */  sw         $zero, 0x30($sp)
/* C150C 8012A62C AFA00034 */  sw         $zero, 0x34($sp)
/* C1510 8012A630 AFA00038 */  sw         $zero, 0x38($sp)
/* C1514 8012A634 AFA0003C */  sw         $zero, 0x3C($sp)
/* C1518 8012A638 AFA00040 */  sw         $zero, 0x40($sp)
/* C151C 8012A63C AFA20048 */  sw         $v0, 0x48($sp)
/* C1520 8012A640 AFA0004C */  sw         $zero, 0x4C($sp)
/* C1524 8012A644 2463000E */  addiu      $v1, $v1, 0xE
/* C1528 8012A648 0C03CDB0 */  jal        draw_box
/* C152C 8012A64C AFA30018 */   sw        $v1, 0x18($sp)
.L8012A650:
/* C1530 8012A650 8E220010 */  lw         $v0, 0x10($s1)
/* C1534 8012A654 96250008 */  lhu        $a1, 0x8($s1)
/* C1538 8012A658 9626000A */  lhu        $a2, 0xA($s1)
/* C153C 8012A65C AFA20010 */  sw         $v0, 0x10($sp)
/* C1540 8012A660 8E220004 */  lw         $v0, 0x4($s1)
/* C1544 8012A664 AFA20014 */  sw         $v0, 0x14($sp)
/* C1548 8012A668 87C2052C */  lh         $v0, 0x52C($fp)
/* C154C 8012A66C AFA20018 */  sw         $v0, 0x18($sp)
/* C1550 8012A670 87C3052E */  lh         $v1, 0x52E($fp)
/* C1554 8012A674 2402013F */  addiu      $v0, $zero, 0x13F
/* C1558 8012A678 AFA20028 */  sw         $v0, 0x28($sp)
/* C155C 8012A67C 240200EF */  addiu      $v0, $zero, 0xEF
/* C1560 8012A680 AFA2002C */  sw         $v0, 0x2C($sp)
/* C1564 8012A684 320200FF */  andi       $v0, $s0, 0xFF
/* C1568 8012A688 AFA00020 */  sw         $zero, 0x20($sp)
/* C156C 8012A68C AFA00024 */  sw         $zero, 0x24($sp)
/* C1570 8012A690 AFA20030 */  sw         $v0, 0x30($sp)
/* C1574 8012A694 AFA3001C */  sw         $v1, 0x1C($sp)
/* C1578 8012A698 8E240000 */  lw         $a0, 0x0($s1)
/* C157C 8012A69C 0C04B44C */  jal        draw_ci_image_with_clipping
/* C1580 8012A6A0 8E27000C */   lw        $a3, 0xC($s1)
.L8012A6A4:
/* C1584 8012A6A4 3C02800A */  lui        $v0, %hi(gMasterGfxPos)
/* C1588 8012A6A8 24429244 */  addiu      $v0, $v0, %lo(gMasterGfxPos)
/* C158C 8012A6AC 8C430000 */  lw         $v1, 0x0($v0)
/* C1590 8012A6B0 0060202D */  daddu      $a0, $v1, $zero
/* C1594 8012A6B4 24630008 */  addiu      $v1, $v1, 0x8
/* C1598 8012A6B8 AC430000 */  sw         $v1, 0x0($v0)
/* C159C 8012A6BC 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* C15A0 8012A6C0 AC820000 */  sw         $v0, 0x0($a0)
/* C15A4 8012A6C4 AC800004 */  sw         $zero, 0x4($a0)
/* C15A8 8012A6C8 8FBF0104 */  lw         $ra, 0x104($sp)
/* C15AC 8012A6CC 8FBE0100 */  lw         $fp, 0x100($sp)
/* C15B0 8012A6D0 8FB700FC */  lw         $s7, 0xFC($sp)
/* C15B4 8012A6D4 8FB600F8 */  lw         $s6, 0xF8($sp)
/* C15B8 8012A6D8 8FB500F4 */  lw         $s5, 0xF4($sp)
/* C15BC 8012A6DC 8FB400F0 */  lw         $s4, 0xF0($sp)
/* C15C0 8012A6E0 8FB300EC */  lw         $s3, 0xEC($sp)
/* C15C4 8012A6E4 8FB200E8 */  lw         $s2, 0xE8($sp)
/* C15C8 8012A6E8 8FB100E4 */  lw         $s1, 0xE4($sp)
/* C15CC 8012A6EC 8FB000E0 */  lw         $s0, 0xE0($sp)
/* C15D0 8012A6F0 D7BE0130 */  ldc1       $f30, 0x130($sp)
/* C15D4 8012A6F4 D7BC0128 */  ldc1       $f28, 0x128($sp)
/* C15D8 8012A6F8 D7BA0120 */  ldc1       $f26, 0x120($sp)
/* C15DC 8012A6FC D7B80118 */  ldc1       $f24, 0x118($sp)
/* C15E0 8012A700 D7B60110 */  ldc1       $f22, 0x110($sp)
/* C15E4 8012A704 D7B40108 */  ldc1       $f20, 0x108($sp)
/* C15E8 8012A708 3C018015 */  lui        $at, %hi(D_80151338)
/* C15EC 8012A70C AC23FAC8 */  sw         $v1, %lo(D_80151338)($at)
/* C15F0 8012A710 03E00008 */  jr         $ra
/* C15F4 8012A714 27BD0138 */   addiu     $sp, $sp, 0x138

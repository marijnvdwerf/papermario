.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */


.section .rodata

glabel D_8014ED08
    .double 0.6

.section .text

glabel msg_get_print_char_width
/* BAED0 80123FF0 288200F0 */  slti       $v0, $a0, 0xF0
/* BAED4 80123FF4 44871000 */  mtc1       $a3, $f2
/* BAED8 80123FF8 8FA70010 */  lw         $a3, 0x10($sp)
/* BAEDC 80123FFC 93A30017 */  lbu        $v1, 0x17($sp)
/* BAEE0 80124000 14400007 */  bnez       $v0, .L80124020
/* BAEE4 80124004 2482FFA1 */   addiu     $v0, $a0, -0x5F
/* BAEE8 80124008 2482FF09 */  addiu      $v0, $a0, -0xF7
/* BAEEC 8012400C 2C420003 */  sltiu      $v0, $v0, 0x3
/* BAEF0 80124010 14400003 */  bnez       $v0, .L80124020
/* BAEF4 80124014 2482FFA1 */   addiu     $v0, $a0, -0x5F
/* BAEF8 80124018 03E00008 */  jr         $ra
/* BAEFC 8012401C 0000102D */   daddu     $v0, $zero, $zero
.L80124020:
/* BAF00 80124020 2C420031 */  sltiu      $v0, $v0, 0x31
/* BAF04 80124024 1040000A */  beqz       $v0, .L80124050
/* BAF08 80124028 00000000 */   nop
/* BAF0C 8012402C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* BAF10 80124030 44810000 */  mtc1       $at, $f0
/* BAF14 80124034 00000000 */  nop
.L80124038:
/* BAF18 80124038 46001002 */  mul.s      $f0, $f2, $f0
/* BAF1C 8012403C 00000000 */  nop
/* BAF20 80124040 4600010D */  trunc.w.s  $f4, $f0
/* BAF24 80124044 44022000 */  mfc1       $v0, $f4
/* BAF28 80124048 03E00008 */  jr         $ra
/* BAF2C 8012404C 00000000 */   nop
.L80124050:
/* BAF30 80124050 10E00005 */  beqz       $a3, .L80124068
/* BAF34 80124054 240200F7 */   addiu     $v0, $zero, 0xF7
/* BAF38 80124058 44870000 */  mtc1       $a3, $f0
/* BAF3C 8012405C 00000000 */  nop
/* BAF40 80124060 0804903E */  j          .L801240F8
/* BAF44 80124064 46800020 */   cvt.s.w   $f0, $f0
.L80124068:
/* BAF48 80124068 10600015 */  beqz       $v1, .L801240C0
/* BAF4C 8012406C 00051880 */   sll       $v1, $a1, 2
/* BAF50 80124070 00061040 */  sll        $v0, $a2, 1
/* BAF54 80124074 3C01802F */  lui        $at, %hi(gMsgCharsets)
/* BAF58 80124078 00230821 */  addu       $at, $at, $v1
/* BAF5C 8012407C 8C23B5A8 */  lw         $v1, %lo(gMsgCharsets)($at)
/* BAF60 80124080 00461021 */  addu       $v0, $v0, $a2
/* BAF64 80124084 8C630008 */  lw         $v1, 0x8($v1)
/* BAF68 80124088 00021080 */  sll        $v0, $v0, 2
/* BAF6C 8012408C 00431021 */  addu       $v0, $v0, $v1
/* BAF70 80124090 8C430004 */  lw         $v1, 0x4($v0)
/* BAF74 80124094 1060000A */  beqz       $v1, .L801240C0
/* BAF78 80124098 240200F7 */   addiu     $v0, $zero, 0xF7
/* BAF7C 8012409C 10820008 */  beq        $a0, $v0, .L801240C0
/* BAF80 801240A0 240200F8 */   addiu     $v0, $zero, 0xF8
/* BAF84 801240A4 10820006 */  beq        $a0, $v0, .L801240C0
/* BAF88 801240A8 240200F9 */   addiu     $v0, $zero, 0xF9
/* BAF8C 801240AC 10820004 */  beq        $a0, $v0, .L801240C0
/* BAF90 801240B0 00641021 */   addu      $v0, $v1, $a0
/* BAF94 801240B4 90420000 */  lbu        $v0, 0x0($v0)
/* BAF98 801240B8 0804903A */  j          .L801240E8
/* BAF9C 801240BC 00000000 */   nop
.L801240C0:
/* BAFA0 801240C0 00051880 */  sll        $v1, $a1, 2
/* BAFA4 801240C4 00061040 */  sll        $v0, $a2, 1
/* BAFA8 801240C8 3C01802F */  lui        $at, %hi(gMsgCharsets)
/* BAFAC 801240CC 00230821 */  addu       $at, $at, $v1
/* BAFB0 801240D0 8C23B5A8 */  lw         $v1, %lo(gMsgCharsets)($at)
/* BAFB4 801240D4 00461021 */  addu       $v0, $v0, $a2
/* BAFB8 801240D8 8C630008 */  lw         $v1, 0x8($v1)
/* BAFBC 801240DC 00021080 */  sll        $v0, $v0, 2
/* BAFC0 801240E0 00431021 */  addu       $v0, $v0, $v1
/* BAFC4 801240E4 90420008 */  lbu        $v0, 0x8($v0)
.L801240E8:
/* BAFC8 801240E8 44820000 */  mtc1       $v0, $f0
/* BAFCC 801240EC 00000000 */  nop
/* BAFD0 801240F0 46800020 */  cvt.s.w    $f0, $f0
/* BAFD4 801240F4 240200F7 */  addiu      $v0, $zero, 0xF7
.L801240F8:
/* BAFD8 801240F8 1482000C */  bne        $a0, $v0, .L8012412C
/* BAFDC 801240FC 240200F8 */   addiu     $v0, $zero, 0xF8
/* BAFE0 80124100 46020002 */  mul.s      $f0, $f0, $f2
/* BAFE4 80124104 00000000 */  nop
/* BAFE8 80124108 3C018015 */  lui        $at, %hi(D_8014ED08)
/* BAFEC 8012410C D422ED08 */  ldc1       $f2, %lo(D_8014ED08)($at)
/* BAFF0 80124110 46000021 */  cvt.d.s    $f0, $f0
.L80124114:
/* BAFF4 80124114 46220002 */  mul.d      $f0, $f0, $f2
/* BAFF8 80124118 00000000 */  nop
/* BAFFC 8012411C 4620010D */  trunc.w.d  $f4, $f0
/* BB000 80124120 44022000 */  mfc1       $v0, $f4
/* BB004 80124124 03E00008 */  jr         $ra
/* BB008 80124128 00000000 */   nop
.L8012412C:
/* BB00C 8012412C 14820008 */  bne        $a0, $v0, .L80124150
/* BB010 80124130 240200F9 */   addiu     $v0, $zero, 0xF9
/* BB014 80124134 46020002 */  mul.s      $f0, $f0, $f2
/* BB018 80124138 00000000 */  nop
/* BB01C 8012413C 46000021 */  cvt.d.s    $f0, $f0
/* BB020 80124140 4620010D */  trunc.w.d  $f4, $f0
/* BB024 80124144 44022000 */  mfc1       $v0, $f4
/* BB028 80124148 03E00008 */  jr         $ra
/* BB02C 8012414C 00000000 */   nop
.L80124150:
/* BB030 80124150 14820008 */  bne        $a0, $v0, .L80124174
/* BB034 80124154 288200F0 */   slti      $v0, $a0, 0xF0
/* BB038 80124158 46020002 */  mul.s      $f0, $f0, $f2
/* BB03C 8012415C 00000000 */  nop
/* BB040 80124160 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BB044 80124164 44811800 */  mtc1       $at, $f3
/* BB048 80124168 44801000 */  mtc1       $zero, $f2
/* BB04C 8012416C 08049045 */  j          .L80124114
/* BB050 80124170 46000021 */   cvt.d.s   $f0, $f0
.L80124174:
/* BB054 80124174 1440FFB0 */  bnez       $v0, .L80124038
/* BB058 80124178 0000102D */   daddu     $v0, $zero, $zero
/* BB05C 8012417C 03E00008 */  jr         $ra
/* BB060 80124180 00000000 */   nop

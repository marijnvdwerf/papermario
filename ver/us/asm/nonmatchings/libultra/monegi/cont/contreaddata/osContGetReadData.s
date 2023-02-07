.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osContGetReadData
/* 3BBE8 800607E8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3BBEC 800607EC 00803821 */  addu       $a3, $a0, $zero
/* 3BBF0 800607F0 3C0A800B */  lui        $t2, %hi(__osContPifRam)
/* 3BBF4 800607F4 254AF910 */  addiu      $t2, $t2, %lo(__osContPifRam)
/* 3BBF8 800607F8 3C05800A */  lui        $a1, %hi(__osMaxControllers)
/* 3BBFC 800607FC 90A591D2 */  lbu        $a1, %lo(__osMaxControllers)($a1)
/* 3BC00 80060800 10A0001F */  beqz       $a1, .L80060880
/* 3BC04 80060804 00004821 */   addu      $t1, $zero, $zero
/* 3BC08 80060808 24880003 */  addiu      $t0, $a0, 0x3
/* 3BC0C 8006080C 24860002 */  addiu      $a2, $a0, 0x2
.L80060810:
/* 3BC10 80060810 894B0000 */  lwl        $t3, 0x0($t2)
/* 3BC14 80060814 994B0003 */  lwr        $t3, 0x3($t2)
/* 3BC18 80060818 894C0004 */  lwl        $t4, 0x4($t2)
/* 3BC1C 8006081C 994C0007 */  lwr        $t4, 0x7($t2)
/* 3BC20 80060820 ABAB0000 */  swl        $t3, 0x0($sp)
/* 3BC24 80060824 BBAB0003 */  swr        $t3, 0x3($sp)
/* 3BC28 80060828 ABAC0004 */  swl        $t4, 0x4($sp)
/* 3BC2C 8006082C BBAC0007 */  swr        $t4, 0x7($sp)
/* 3BC30 80060830 93A20002 */  lbu        $v0, 0x2($sp)
/* 3BC34 80060834 304200C0 */  andi       $v0, $v0, 0xC0
/* 3BC38 80060838 00021102 */  srl        $v0, $v0, 4
/* 3BC3C 8006083C 14400007 */  bnez       $v0, .L8006085C
/* 3BC40 80060840 A0C20002 */   sb        $v0, 0x2($a2)
/* 3BC44 80060844 97A20004 */  lhu        $v0, 0x4($sp)
/* 3BC48 80060848 93A30006 */  lbu        $v1, 0x6($sp)
/* 3BC4C 8006084C 93A40007 */  lbu        $a0, 0x7($sp)
/* 3BC50 80060850 A4E20000 */  sh         $v0, 0x0($a3)
/* 3BC54 80060854 A0C30000 */  sb         $v1, 0x0($a2)
/* 3BC58 80060858 A1040000 */  sb         $a0, 0x0($t0)
.L8006085C:
/* 3BC5C 8006085C 25290001 */  addiu      $t1, $t1, 0x1
/* 3BC60 80060860 254A0008 */  addiu      $t2, $t2, 0x8
/* 3BC64 80060864 24C60006 */  addiu      $a2, $a2, 0x6
/* 3BC68 80060868 25080006 */  addiu      $t0, $t0, 0x6
/* 3BC6C 8006086C 3C05800A */  lui        $a1, %hi(__osMaxControllers)
/* 3BC70 80060870 90A591D2 */  lbu        $a1, %lo(__osMaxControllers)($a1)
/* 3BC74 80060874 0125102A */  slt        $v0, $t1, $a1
/* 3BC78 80060878 1440FFE5 */  bnez       $v0, .L80060810
/* 3BC7C 8006087C 24E70006 */   addiu     $a3, $a3, 0x6
.L80060880:
/* 3BC80 80060880 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 3BC84 80060884 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 3BC88 80060888 10400024 */  beqz       $v0, .L8006091C
/* 3BC8C 8006088C 00000000 */   nop
/* 3BC90 80060890 3C048000 */  lui        $a0, %hi(__osBbHackFlags)
/* 3BC94 80060894 8C84038C */  lw         $a0, %lo(__osBbHackFlags)($a0)
/* 3BC98 80060898 10800020 */  beqz       $a0, .L8006091C
/* 3BC9C 8006089C 00051840 */   sll       $v1, $a1, 1
/* 3BCA0 800608A0 00651821 */  addu       $v1, $v1, $a1
/* 3BCA4 800608A4 00031840 */  sll        $v1, $v1, 1
/* 3BCA8 800608A8 00E33823 */  subu       $a3, $a3, $v1
/* 3BCAC 800608AC 00041040 */  sll        $v0, $a0, 1
/* 3BCB0 800608B0 00441021 */  addu       $v0, $v0, $a0
/* 3BCB4 800608B4 00021040 */  sll        $v0, $v0, 1
/* 3BCB8 800608B8 00471021 */  addu       $v0, $v0, $a3
/* 3BCBC 800608BC 88EB0000 */  lwl        $t3, 0x0($a3)
/* 3BCC0 800608C0 98EB0003 */  lwr        $t3, 0x3($a3)
/* 3BCC4 800608C4 84EC0004 */  lh         $t4, 0x4($a3)
/* 3BCC8 800608C8 ABAB0008 */  swl        $t3, 0x8($sp)
/* 3BCCC 800608CC BBAB000B */  swr        $t3, 0xB($sp)
/* 3BCD0 800608D0 A7AC000C */  sh         $t4, 0xC($sp)
/* 3BCD4 800608D4 884B0000 */  lwl        $t3, 0x0($v0)
/* 3BCD8 800608D8 984B0003 */  lwr        $t3, 0x3($v0)
/* 3BCDC 800608DC 844C0004 */  lh         $t4, 0x4($v0)
/* 3BCE0 800608E0 A8EB0000 */  swl        $t3, 0x0($a3)
/* 3BCE4 800608E4 B8EB0003 */  swr        $t3, 0x3($a3)
/* 3BCE8 800608E8 A4EC0004 */  sh         $t4, 0x4($a3)
/* 3BCEC 800608EC 3C048000 */  lui        $a0, %hi(__osBbHackFlags)
/* 3BCF0 800608F0 8C84038C */  lw         $a0, %lo(__osBbHackFlags)($a0)
/* 3BCF4 800608F4 00041840 */  sll        $v1, $a0, 1
/* 3BCF8 800608F8 00641821 */  addu       $v1, $v1, $a0
/* 3BCFC 800608FC 00031840 */  sll        $v1, $v1, 1
/* 3BD00 80060900 00671821 */  addu       $v1, $v1, $a3
/* 3BD04 80060904 8BAB0008 */  lwl        $t3, 0x8($sp)
/* 3BD08 80060908 9BAB000B */  lwr        $t3, 0xB($sp)
/* 3BD0C 8006090C 87AC000C */  lh         $t4, 0xC($sp)
/* 3BD10 80060910 A86B0000 */  swl        $t3, 0x0($v1)
/* 3BD14 80060914 B86B0003 */  swr        $t3, 0x3($v1)
/* 3BD18 80060918 A46C0004 */  sh         $t4, 0x4($v1)
.L8006091C:
/* 3BD1C 8006091C 03E00008 */  jr         $ra
/* 3BD20 80060920 27BD0010 */   addiu     $sp, $sp, 0x10

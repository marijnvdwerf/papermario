.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsGetInitData
/* 47EB4 8006CAB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 47EB8 8006CAB8 00A03821 */  addu       $a3, $a1, $zero
/* 47EBC 8006CABC 3C0A800E */  lui        $t2, %hi(__osPfsPifRam)
/* 47EC0 8006CAC0 254A8360 */  addiu      $t2, $t2, %lo(__osPfsPifRam)
/* 47EC4 8006CAC4 00003021 */  addu       $a2, $zero, $zero
/* 47EC8 8006CAC8 00004021 */  addu       $t0, $zero, $zero
/* 47ECC 8006CACC 3C03800A */  lui        $v1, %hi(__osMaxControllers)
/* 47ED0 8006CAD0 906391D2 */  lbu        $v1, %lo(__osMaxControllers)($v1)
/* 47ED4 8006CAD4 00806021 */  addu       $t4, $a0, $zero
/* 47ED8 8006CAD8 10600026 */  beqz       $v1, .L8006CB74
/* 47EDC 8006CADC AFB00010 */   sw        $s0, 0x10($sp)
/* 47EE0 8006CAE0 240B0001 */  addiu      $t3, $zero, 0x1
/* 47EE4 8006CAE4 24A50002 */  addiu      $a1, $a1, 0x2
/* 47EE8 8006CAE8 3C098000 */  lui        $t1, %hi(__osBbPakAddress)
/* 47EEC 8006CAEC 25290374 */  addiu      $t1, $t1, %lo(__osBbPakAddress)
.L8006CAF0:
/* 47EF0 8006CAF0 894D0000 */  lwl        $t5, 0x0($t2)
/* 47EF4 8006CAF4 994D0003 */  lwr        $t5, 0x3($t2)
/* 47EF8 8006CAF8 894E0004 */  lwl        $t6, 0x4($t2)
/* 47EFC 8006CAFC 994E0007 */  lwr        $t6, 0x7($t2)
/* 47F00 8006CB00 ABAD0000 */  swl        $t5, 0x0($sp)
/* 47F04 8006CB04 BBAD0003 */  swr        $t5, 0x3($sp)
/* 47F08 8006CB08 ABAE0004 */  swl        $t6, 0x4($sp)
/* 47F0C 8006CB0C BBAE0007 */  swr        $t6, 0x7($sp)
/* 47F10 8006CB10 93A20002 */  lbu        $v0, 0x2($sp)
/* 47F14 8006CB14 304200C0 */  andi       $v0, $v0, 0xC0
/* 47F18 8006CB18 00021102 */  srl        $v0, $v0, 4
/* 47F1C 8006CB1C 1440000C */  bnez       $v0, .L8006CB50
/* 47F20 8006CB20 A0A20001 */   sb        $v0, 0x1($a1)
/* 47F24 8006CB24 00CB2004 */  sllv       $a0, $t3, $a2
/* 47F28 8006CB28 01042025 */  or         $a0, $t0, $a0
/* 47F2C 8006CB2C 93A20005 */  lbu        $v0, 0x5($sp)
/* 47F30 8006CB30 93A30004 */  lbu        $v1, 0x4($sp)
/* 47F34 8006CB34 00021200 */  sll        $v0, $v0, 8
/* 47F38 8006CB38 00621825 */  or         $v1, $v1, $v0
/* 47F3C 8006CB3C A4E30000 */  sh         $v1, 0x0($a3)
/* 47F40 8006CB40 8D220000 */  lw         $v0, 0x0($t1)
/* 47F44 8006CB44 308800FF */  andi       $t0, $a0, 0xFF
/* 47F48 8006CB48 0002102B */  sltu       $v0, $zero, $v0
/* 47F4C 8006CB4C A0A20000 */  sb         $v0, 0x0($a1)
.L8006CB50:
/* 47F50 8006CB50 25290004 */  addiu      $t1, $t1, 0x4
/* 47F54 8006CB54 24C60001 */  addiu      $a2, $a2, 0x1
/* 47F58 8006CB58 254A0008 */  addiu      $t2, $t2, 0x8
/* 47F5C 8006CB5C 24A50004 */  addiu      $a1, $a1, 0x4
/* 47F60 8006CB60 3C03800A */  lui        $v1, %hi(__osMaxControllers)
/* 47F64 8006CB64 906391D2 */  lbu        $v1, %lo(__osMaxControllers)($v1)
/* 47F68 8006CB68 00C3102A */  slt        $v0, $a2, $v1
/* 47F6C 8006CB6C 1440FFE0 */  bnez       $v0, .L8006CAF0
/* 47F70 8006CB70 24E70004 */   addiu     $a3, $a3, 0x4
.L8006CB74:
/* 47F74 8006CB74 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 47F78 8006CB78 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 47F7C 8006CB7C 10400025 */  beqz       $v0, .L8006CC14
/* 47F80 8006CB80 8FB00010 */   lw        $s0, 0x10($sp)
/* 47F84 8006CB84 3C058000 */  lui        $a1, %hi(__osBbHackFlags)
/* 47F88 8006CB88 8CA5038C */  lw         $a1, %lo(__osBbHackFlags)($a1)
/* 47F8C 8006CB8C 10A00021 */  beqz       $a1, .L8006CC14
/* 47F90 8006CB90 00031880 */   sll       $v1, $v1, 2
/* 47F94 8006CB94 00E33823 */  subu       $a3, $a3, $v1
/* 47F98 8006CB98 00051080 */  sll        $v0, $a1, 2
/* 47F9C 8006CB9C 00471021 */  addu       $v0, $v0, $a3
/* 47FA0 8006CBA0 24040001 */  addiu      $a0, $zero, 0x1
/* 47FA4 8006CBA4 00A42004 */  sllv       $a0, $a0, $a1
/* 47FA8 8006CBA8 34830001 */  ori        $v1, $a0, 0x1
/* 47FAC 8006CBAC 00031827 */  nor        $v1, $zero, $v1
/* 47FB0 8006CBB0 01031824 */  and        $v1, $t0, $v1
/* 47FB4 8006CBB4 88ED0000 */  lwl        $t5, 0x0($a3)
/* 47FB8 8006CBB8 98ED0003 */  lwr        $t5, 0x3($a3)
/* 47FBC 8006CBBC ABAD0008 */  swl        $t5, 0x8($sp)
/* 47FC0 8006CBC0 BBAD000B */  swr        $t5, 0xB($sp)
/* 47FC4 8006CBC4 884D0000 */  lwl        $t5, 0x0($v0)
/* 47FC8 8006CBC8 984D0003 */  lwr        $t5, 0x3($v0)
/* 47FCC 8006CBCC A8ED0000 */  swl        $t5, 0x0($a3)
/* 47FD0 8006CBD0 B8ED0003 */  swr        $t5, 0x3($a3)
/* 47FD4 8006CBD4 31020001 */  andi       $v0, $t0, 0x1
/* 47FD8 8006CBD8 00A21004 */  sllv       $v0, $v0, $a1
/* 47FDC 8006CBDC 00621825 */  or         $v1, $v1, $v0
/* 47FE0 8006CBE0 01042024 */  and        $a0, $t0, $a0
/* 47FE4 8006CBE4 00A42007 */  srav       $a0, $a0, $a1
/* 47FE8 8006CBE8 00641825 */  or         $v1, $v1, $a0
/* 47FEC 8006CBEC 3C028000 */  lui        $v0, %hi(__osBbHackFlags)
/* 47FF0 8006CBF0 8C42038C */  lw         $v0, %lo(__osBbHackFlags)($v0)
/* 47FF4 8006CBF4 306800FF */  andi       $t0, $v1, 0xFF
/* 47FF8 8006CBF8 00021080 */  sll        $v0, $v0, 2
/* 47FFC 8006CBFC 00471021 */  addu       $v0, $v0, $a3
/* 48000 8006CC00 8BAD0008 */  lwl        $t5, 0x8($sp)
/* 48004 8006CC04 9BAD000B */  lwr        $t5, 0xB($sp)
/* 48008 8006CC08 A84D0000 */  swl        $t5, 0x0($v0)
/* 4800C 8006CC0C B84D0003 */  swr        $t5, 0x3($v0)
/* 48010 8006CC10 8FB00010 */  lw         $s0, 0x10($sp)
.L8006CC14:
/* 48014 8006CC14 A1880000 */  sb         $t0, 0x0($t4)
/* 48018 8006CC18 03E00008 */  jr         $ra
/* 4801C 8006CC1C 27BD0018 */   addiu     $sp, $sp, 0x18

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osContGetInitData
/* 3BF84 80060B84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BF88 80060B88 00A03821 */  addu       $a3, $a1, $zero
/* 3BF8C 80060B8C 3C0A800B */  lui        $t2, %hi(__osContPifRam)
/* 3BF90 80060B90 254AF910 */  addiu      $t2, $t2, %lo(__osContPifRam)
/* 3BF94 80060B94 00003021 */  addu       $a2, $zero, $zero
/* 3BF98 80060B98 00004021 */  addu       $t0, $zero, $zero
/* 3BF9C 80060B9C 3C03800A */  lui        $v1, %hi(__osMaxControllers)
/* 3BFA0 80060BA0 906391D2 */  lbu        $v1, %lo(__osMaxControllers)($v1)
/* 3BFA4 80060BA4 00806021 */  addu       $t4, $a0, $zero
/* 3BFA8 80060BA8 10600026 */  beqz       $v1, .L80060C44
/* 3BFAC 80060BAC AFB00010 */   sw        $s0, 0x10($sp)
/* 3BFB0 80060BB0 240B0001 */  addiu      $t3, $zero, 0x1
/* 3BFB4 80060BB4 24A50002 */  addiu      $a1, $a1, 0x2
/* 3BFB8 80060BB8 3C098000 */  lui        $t1, %hi(__osBbPakAddress)
/* 3BFBC 80060BBC 25290374 */  addiu      $t1, $t1, %lo(__osBbPakAddress)
.L80060BC0:
/* 3BFC0 80060BC0 894D0000 */  lwl        $t5, 0x0($t2)
/* 3BFC4 80060BC4 994D0003 */  lwr        $t5, 0x3($t2)
/* 3BFC8 80060BC8 894E0004 */  lwl        $t6, 0x4($t2)
/* 3BFCC 80060BCC 994E0007 */  lwr        $t6, 0x7($t2)
/* 3BFD0 80060BD0 ABAD0000 */  swl        $t5, 0x0($sp)
/* 3BFD4 80060BD4 BBAD0003 */  swr        $t5, 0x3($sp)
/* 3BFD8 80060BD8 ABAE0004 */  swl        $t6, 0x4($sp)
/* 3BFDC 80060BDC BBAE0007 */  swr        $t6, 0x7($sp)
/* 3BFE0 80060BE0 93A20002 */  lbu        $v0, 0x2($sp)
/* 3BFE4 80060BE4 304200C0 */  andi       $v0, $v0, 0xC0
/* 3BFE8 80060BE8 00021102 */  srl        $v0, $v0, 4
/* 3BFEC 80060BEC 1440000C */  bnez       $v0, .L80060C20
/* 3BFF0 80060BF0 A0A20001 */   sb        $v0, 0x1($a1)
/* 3BFF4 80060BF4 00CB2004 */  sllv       $a0, $t3, $a2
/* 3BFF8 80060BF8 01042025 */  or         $a0, $t0, $a0
/* 3BFFC 80060BFC 93A20005 */  lbu        $v0, 0x5($sp)
/* 3C000 80060C00 93A30004 */  lbu        $v1, 0x4($sp)
/* 3C004 80060C04 00021200 */  sll        $v0, $v0, 8
/* 3C008 80060C08 00621825 */  or         $v1, $v1, $v0
/* 3C00C 80060C0C A4E30000 */  sh         $v1, 0x0($a3)
/* 3C010 80060C10 8D220000 */  lw         $v0, 0x0($t1)
/* 3C014 80060C14 308800FF */  andi       $t0, $a0, 0xFF
/* 3C018 80060C18 0002102B */  sltu       $v0, $zero, $v0
/* 3C01C 80060C1C A0A20000 */  sb         $v0, 0x0($a1)
.L80060C20:
/* 3C020 80060C20 25290004 */  addiu      $t1, $t1, 0x4
/* 3C024 80060C24 24C60001 */  addiu      $a2, $a2, 0x1
/* 3C028 80060C28 254A0008 */  addiu      $t2, $t2, 0x8
/* 3C02C 80060C2C 24A50004 */  addiu      $a1, $a1, 0x4
/* 3C030 80060C30 3C03800A */  lui        $v1, %hi(__osMaxControllers)
/* 3C034 80060C34 906391D2 */  lbu        $v1, %lo(__osMaxControllers)($v1)
/* 3C038 80060C38 00C3102A */  slt        $v0, $a2, $v1
/* 3C03C 80060C3C 1440FFE0 */  bnez       $v0, .L80060BC0
/* 3C040 80060C40 24E70004 */   addiu     $a3, $a3, 0x4
.L80060C44:
/* 3C044 80060C44 3C028000 */  lui        $v0, %hi(__osBbIsBb)
/* 3C048 80060C48 8C420388 */  lw         $v0, %lo(__osBbIsBb)($v0)
/* 3C04C 80060C4C 10400025 */  beqz       $v0, .L80060CE4
/* 3C050 80060C50 8FB00010 */   lw        $s0, 0x10($sp)
/* 3C054 80060C54 3C058000 */  lui        $a1, %hi(__osBbHackFlags)
/* 3C058 80060C58 8CA5038C */  lw         $a1, %lo(__osBbHackFlags)($a1)
/* 3C05C 80060C5C 10A00021 */  beqz       $a1, .L80060CE4
/* 3C060 80060C60 00031880 */   sll       $v1, $v1, 2
/* 3C064 80060C64 00E33823 */  subu       $a3, $a3, $v1
/* 3C068 80060C68 00051080 */  sll        $v0, $a1, 2
/* 3C06C 80060C6C 00471021 */  addu       $v0, $v0, $a3
/* 3C070 80060C70 24040001 */  addiu      $a0, $zero, 0x1
/* 3C074 80060C74 00A42004 */  sllv       $a0, $a0, $a1
/* 3C078 80060C78 34830001 */  ori        $v1, $a0, 0x1
/* 3C07C 80060C7C 00031827 */  nor        $v1, $zero, $v1
/* 3C080 80060C80 01031824 */  and        $v1, $t0, $v1
/* 3C084 80060C84 88ED0000 */  lwl        $t5, 0x0($a3)
/* 3C088 80060C88 98ED0003 */  lwr        $t5, 0x3($a3)
/* 3C08C 80060C8C ABAD0008 */  swl        $t5, 0x8($sp)
/* 3C090 80060C90 BBAD000B */  swr        $t5, 0xB($sp)
/* 3C094 80060C94 884D0000 */  lwl        $t5, 0x0($v0)
/* 3C098 80060C98 984D0003 */  lwr        $t5, 0x3($v0)
/* 3C09C 80060C9C A8ED0000 */  swl        $t5, 0x0($a3)
/* 3C0A0 80060CA0 B8ED0003 */  swr        $t5, 0x3($a3)
/* 3C0A4 80060CA4 31020001 */  andi       $v0, $t0, 0x1
/* 3C0A8 80060CA8 00A21004 */  sllv       $v0, $v0, $a1
/* 3C0AC 80060CAC 00621825 */  or         $v1, $v1, $v0
/* 3C0B0 80060CB0 01042024 */  and        $a0, $t0, $a0
/* 3C0B4 80060CB4 00A42007 */  srav       $a0, $a0, $a1
/* 3C0B8 80060CB8 00641825 */  or         $v1, $v1, $a0
/* 3C0BC 80060CBC 3C028000 */  lui        $v0, %hi(__osBbHackFlags)
/* 3C0C0 80060CC0 8C42038C */  lw         $v0, %lo(__osBbHackFlags)($v0)
/* 3C0C4 80060CC4 306800FF */  andi       $t0, $v1, 0xFF
/* 3C0C8 80060CC8 00021080 */  sll        $v0, $v0, 2
/* 3C0CC 80060CCC 00471021 */  addu       $v0, $v0, $a3
/* 3C0D0 80060CD0 8BAD0008 */  lwl        $t5, 0x8($sp)
/* 3C0D4 80060CD4 9BAD000B */  lwr        $t5, 0xB($sp)
/* 3C0D8 80060CD8 A84D0000 */  swl        $t5, 0x0($v0)
/* 3C0DC 80060CDC B84D0003 */  swr        $t5, 0x3($v0)
/* 3C0E0 80060CE0 8FB00010 */  lw         $s0, 0x10($sp)
.L80060CE4:
/* 3C0E4 80060CE4 A1880000 */  sb         $t0, 0x0($t4)
/* 3C0E8 80060CE8 03E00008 */  jr         $ra
/* 3C0EC 80060CEC 27BD0018 */   addiu     $sp, $sp, 0x18

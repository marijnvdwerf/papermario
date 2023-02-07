.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osContInit
/* 3BDE0 800609E0 3C028009 */  lui        $v0, %hi(__osContinitialized)
/* 3BDE4 800609E4 8C4229D0 */  lw         $v0, %lo(__osContinitialized)($v0)
/* 3BDE8 800609E8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 3BDEC 800609EC AFB40070 */  sw         $s4, 0x70($sp)
/* 3BDF0 800609F0 0080A021 */  addu       $s4, $a0, $zero
/* 3BDF4 800609F4 AFB60078 */  sw         $s6, 0x78($sp)
/* 3BDF8 800609F8 00A0B021 */  addu       $s6, $a1, $zero
/* 3BDFC 800609FC AFB50074 */  sw         $s5, 0x74($sp)
/* 3BE00 80060A00 00C0A821 */  addu       $s5, $a2, $zero
/* 3BE04 80060A04 AFBF007C */  sw         $ra, 0x7C($sp)
/* 3BE08 80060A08 AFB3006C */  sw         $s3, 0x6C($sp)
/* 3BE0C 80060A0C AFB20068 */  sw         $s2, 0x68($sp)
/* 3BE10 80060A10 AFB10064 */  sw         $s1, 0x64($sp)
/* 3BE14 80060A14 10400003 */  beqz       $v0, .L80060A24
/* 3BE18 80060A18 AFB00060 */   sw        $s0, 0x60($sp)
/* 3BE1C 80060A1C 080182D7 */  j          .L80060B5C
/* 3BE20 80060A20 00001021 */   addu      $v0, $zero, $zero
.L80060A24:
/* 3BE24 80060A24 24040001 */  addiu      $a0, $zero, 0x1
/* 3BE28 80060A28 3C018009 */  lui        $at, %hi(__osContinitialized)
/* 3BE2C 80060A2C 0C019164 */  jal        osGetTime
/* 3BE30 80060A30 AC2429D0 */   sw        $a0, %lo(__osContinitialized)($at)
/* 3BE34 80060A34 00409021 */  addu       $s2, $v0, $zero
/* 3BE38 80060A38 00609821 */  addu       $s3, $v1, $zero
/* 3BE3C 80060A3C 16400022 */  bnez       $s2, .L80060AC8
/* 3BE40 80060A40 24020004 */   addiu     $v0, $zero, 0x4
/* 3BE44 80060A44 16400007 */  bnez       $s2, .L80060A64
/* 3BE48 80060A48 27B10040 */   addiu     $s1, $sp, 0x40
/* 3BE4C 80060A4C 3C020165 */  lui        $v0, (0x165A0BB >> 16)
/* 3BE50 80060A50 3442A0BB */  ori        $v0, $v0, (0x165A0BB & 0xFFFF)
/* 3BE54 80060A54 0053102B */  sltu       $v0, $v0, $s3
/* 3BE58 80060A58 1440001B */  bnez       $v0, .L80060AC8
/* 3BE5C 80060A5C 24020004 */   addiu     $v0, $zero, 0x4
/* 3BE60 80060A60 27B10040 */  addiu      $s1, $sp, 0x40
.L80060A64:
/* 3BE64 80060A64 02202021 */  addu       $a0, $s1, $zero
/* 3BE68 80060A68 27B00058 */  addiu      $s0, $sp, 0x58
/* 3BE6C 80060A6C 02002821 */  addu       $a1, $s0, $zero
/* 3BE70 80060A70 0C018DB0 */  jal        osCreateMesgQueue
/* 3BE74 80060A74 24060001 */   addiu     $a2, $zero, 0x1
/* 3BE78 80060A78 00004021 */  addu       $t0, $zero, $zero
/* 3BE7C 80060A7C 00004821 */  addu       $t1, $zero, $zero
/* 3BE80 80060A80 27A40020 */  addiu      $a0, $sp, 0x20
/* 3BE84 80060A84 24060000 */  addiu      $a2, $zero, 0x0
/* 3BE88 80060A88 3C070165 */  lui        $a3, (0x165A0BC >> 16)
/* 3BE8C 80060A8C 34E7A0BC */  ori        $a3, $a3, (0x165A0BC & 0xFFFF)
/* 3BE90 80060A90 00F3102B */  sltu       $v0, $a3, $s3
/* 3BE94 80060A94 00F33823 */  subu       $a3, $a3, $s3
/* 3BE98 80060A98 00D23023 */  subu       $a2, $a2, $s2
/* 3BE9C 80060A9C 00C23023 */  subu       $a2, $a2, $v0
/* 3BEA0 80060AA0 AFA80010 */  sw         $t0, 0x10($sp)
/* 3BEA4 80060AA4 AFA90014 */  sw         $t1, 0x14($sp)
/* 3BEA8 80060AA8 AFB10018 */  sw         $s1, 0x18($sp)
/* 3BEAC 80060AAC 0C0191A0 */  jal        osSetTimer
/* 3BEB0 80060AB0 AFB0001C */   sw        $s0, 0x1C($sp)
/* 3BEB4 80060AB4 02202021 */  addu       $a0, $s1, $zero
/* 3BEB8 80060AB8 02002821 */  addu       $a1, $s0, $zero
/* 3BEBC 80060ABC 0C018DCC */  jal        osRecvMesg
/* 3BEC0 80060AC0 24060001 */   addiu     $a2, $zero, 0x1
/* 3BEC4 80060AC4 24020004 */  addiu      $v0, $zero, 0x4
.L80060AC8:
/* 3BEC8 80060AC8 3C01800A */  lui        $at, %hi(__osMaxControllers)
/* 3BECC 80060ACC A02291D2 */  sb         $v0, %lo(__osMaxControllers)($at)
/* 3BED0 80060AD0 0C01833C */  jal        __osPackRequestData
/* 3BED4 80060AD4 00002021 */   addu      $a0, $zero, $zero
/* 3BED8 80060AD8 24040001 */  addiu      $a0, $zero, 0x1
/* 3BEDC 80060ADC 3C11800B */  lui        $s1, %hi(__osContPifRam)
/* 3BEE0 80060AE0 2631F910 */  addiu      $s1, $s1, %lo(__osContPifRam)
/* 3BEE4 80060AE4 0C018F98 */  jal        __osSiRawStartDma
/* 3BEE8 80060AE8 02202821 */   addu      $a1, $s1, $zero
/* 3BEEC 80060AEC 02802021 */  addu       $a0, $s4, $zero
/* 3BEF0 80060AF0 27B00058 */  addiu      $s0, $sp, 0x58
/* 3BEF4 80060AF4 02002821 */  addu       $a1, $s0, $zero
/* 3BEF8 80060AF8 0C018DCC */  jal        osRecvMesg
/* 3BEFC 80060AFC 24060001 */   addiu     $a2, $zero, 0x1
/* 3BF00 80060B00 00002021 */  addu       $a0, $zero, $zero
/* 3BF04 80060B04 0C018F98 */  jal        __osSiRawStartDma
/* 3BF08 80060B08 02202821 */   addu      $a1, $s1, $zero
/* 3BF0C 80060B0C 02802021 */  addu       $a0, $s4, $zero
/* 3BF10 80060B10 02002821 */  addu       $a1, $s0, $zero
/* 3BF14 80060B14 24060001 */  addiu      $a2, $zero, 0x1
/* 3BF18 80060B18 0C018DCC */  jal        osRecvMesg
/* 3BF1C 80060B1C 00408821 */   addu      $s1, $v0, $zero
/* 3BF20 80060B20 02C02021 */  addu       $a0, $s6, $zero
/* 3BF24 80060B24 0C0182E1 */  jal        __osContGetInitData
/* 3BF28 80060B28 02A02821 */   addu      $a1, $s5, $zero
/* 3BF2C 80060B2C 240200FD */  addiu      $v0, $zero, 0xFD
/* 3BF30 80060B30 3C01800A */  lui        $at, %hi(__osContLastCmd)
/* 3BF34 80060B34 A02291F0 */  sb         $v0, %lo(__osContLastCmd)($at)
/* 3BF38 80060B38 0C018FD0 */  jal        __osSiCreateAccessQueue
/* 3BF3C 80060B3C 00000000 */   nop
/* 3BF40 80060B40 3C04800E */  lui        $a0, %hi(__osEepromTimerQ)
/* 3BF44 80060B44 24848E20 */  addiu      $a0, $a0, %lo(__osEepromTimerQ)
/* 3BF48 80060B48 3C05800A */  lui        $a1, %hi(__osEepromTimerMsg)
/* 3BF4C 80060B4C 24A591F4 */  addiu      $a1, $a1, %lo(__osEepromTimerMsg)
/* 3BF50 80060B50 0C018DB0 */  jal        osCreateMesgQueue
/* 3BF54 80060B54 24060001 */   addiu     $a2, $zero, 0x1
/* 3BF58 80060B58 02201021 */  addu       $v0, $s1, $zero
.L80060B5C:
/* 3BF5C 80060B5C 8FBF007C */  lw         $ra, 0x7C($sp)
/* 3BF60 80060B60 8FB60078 */  lw         $s6, 0x78($sp)
/* 3BF64 80060B64 8FB50074 */  lw         $s5, 0x74($sp)
/* 3BF68 80060B68 8FB40070 */  lw         $s4, 0x70($sp)
/* 3BF6C 80060B6C 8FB3006C */  lw         $s3, 0x6C($sp)
/* 3BF70 80060B70 8FB20068 */  lw         $s2, 0x68($sp)
/* 3BF74 80060B74 8FB10064 */  lw         $s1, 0x64($sp)
/* 3BF78 80060B78 8FB00060 */  lw         $s0, 0x60($sp)
/* 3BF7C 80060B7C 03E00008 */  jr         $ra
/* 3BF80 80060B80 27BD0080 */   addiu     $sp, $sp, 0x80

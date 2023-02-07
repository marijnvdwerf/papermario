.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsRWInode
/* 450C4 80069CC4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 450C8 80069CC8 AFB20020 */  sw         $s2, 0x20($sp)
/* 450CC 80069CCC 00809021 */  addu       $s2, $a0, $zero
/* 450D0 80069CD0 AFB60030 */  sw         $s6, 0x30($sp)
/* 450D4 80069CD4 00A0B021 */  addu       $s6, $a1, $zero
/* 450D8 80069CD8 AFB70034 */  sw         $s7, 0x34($sp)
/* 450DC 80069CDC 30D700FF */  andi       $s7, $a2, 0xFF
/* 450E0 80069CE0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 450E4 80069CE4 30FE00FF */  andi       $fp, $a3, 0xFF
/* 450E8 80069CE8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 450EC 80069CEC AFB5002C */  sw         $s5, 0x2C($sp)
/* 450F0 80069CF0 AFB40028 */  sw         $s4, 0x28($sp)
/* 450F4 80069CF4 AFB30024 */  sw         $s3, 0x24($sp)
/* 450F8 80069CF8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 450FC 80069CFC 16E00010 */  bnez       $s7, .L80069D40
/* 45100 80069D00 AFB00018 */   sw        $s0, 0x18($sp)
/* 45104 80069D04 3C028009 */  lui        $v0, %hi(__osPfsInodeCacheBank)
/* 45108 80069D08 90424574 */  lbu        $v0, %lo(__osPfsInodeCacheBank)($v0)
/* 4510C 80069D0C 57C2000D */  bnel       $fp, $v0, .L80069D44
/* 45110 80069D10 92420065 */   lbu       $v0, 0x65($s2)
/* 45114 80069D14 8E430008 */  lw         $v1, 0x8($s2)
/* 45118 80069D18 3C028009 */  lui        $v0, %hi(__osPfsInodeCacheChannel)
/* 4511C 80069D1C 8C424570 */  lw         $v0, %lo(__osPfsInodeCacheChannel)($v0)
/* 45120 80069D20 54620008 */  bnel       $v1, $v0, .L80069D44
/* 45124 80069D24 92420065 */   lbu       $v0, 0x65($s2)
/* 45128 80069D28 3C04800E */  lui        $a0, %hi(__osPfsInodeCache)
/* 4512C 80069D2C 2484815C */  addiu      $a0, $a0, %lo(__osPfsInodeCache)
/* 45130 80069D30 0C018A04 */  jal        bcopy
/* 45134 80069D34 24060100 */   addiu     $a2, $zero, 0x100
/* 45138 80069D38 0801A7C9 */  j          .L80069F24
/* 4513C 80069D3C 00001021 */   addu      $v0, $zero, $zero
.L80069D40:
/* 45140 80069D40 92420065 */  lbu        $v0, 0x65($s2)
.L80069D44:
/* 45144 80069D44 10400005 */  beqz       $v0, .L80069D5C
/* 45148 80069D48 02402021 */   addu      $a0, $s2, $zero
/* 4514C 80069D4C 0C01A568 */  jal        __osPfsSelectBank
/* 45150 80069D50 00002821 */   addu      $a1, $zero, $zero
/* 45154 80069D54 14400074 */  bnez       $v0, .L80069F28
/* 45158 80069D58 8FBF003C */   lw        $ra, 0x3C($sp)
.L80069D5C:
/* 4515C 80069D5C 17C00002 */  bnez       $fp, .L80069D68
/* 45160 80069D60 24150001 */   addiu     $s5, $zero, 0x1
/* 45164 80069D64 8E550060 */  lw         $s5, 0x60($s2)
.L80069D68:
/* 45168 80069D68 24020001 */  addiu      $v0, $zero, 0x1
/* 4516C 80069D6C 16E20009 */  bne        $s7, $v0, .L80069D94
/* 45170 80069D70 00008021 */   addu      $s0, $zero, $zero
/* 45174 80069D74 00152040 */  sll        $a0, $s5, 1
/* 45178 80069D78 02C42021 */  addu       $a0, $s6, $a0
/* 4517C 80069D7C 24050080 */  addiu      $a1, $zero, 0x80
/* 45180 80069D80 00B52823 */  subu       $a1, $a1, $s5
/* 45184 80069D84 0C01A584 */  jal        __osSumcalc
/* 45188 80069D88 00052840 */   sll       $a1, $a1, 1
/* 4518C 80069D8C A2C20001 */  sb         $v0, 0x1($s6)
/* 45190 80069D90 00008021 */  addu       $s0, $zero, $zero
.L80069D94:
/* 45194 80069D94 001E98C0 */  sll        $s3, $fp, 3
/* 45198 80069D98 0260A021 */  addu       $s4, $s3, $zero
/* 4519C 80069D9C 00101140 */  sll        $v0, $s0, 5
.L80069DA0:
/* 451A0 80069DA0 24080001 */  addiu      $t0, $zero, 0x1
/* 451A4 80069DA4 16E80015 */  bne        $s7, $t0, .L80069DFC
/* 451A8 80069DA8 02C28821 */   addu      $s1, $s6, $v0
/* 451AC 80069DAC 8E440004 */  lw         $a0, 0x4($s2)
/* 451B0 80069DB0 8E450008 */  lw         $a1, 0x8($s2)
/* 451B4 80069DB4 96460056 */  lhu        $a2, 0x56($s2)
/* 451B8 80069DB8 02203821 */  addu       $a3, $s1, $zero
/* 451BC 80069DBC AFA00010 */  sw         $zero, 0x10($sp)
/* 451C0 80069DC0 00D43021 */  addu       $a2, $a2, $s4
/* 451C4 80069DC4 00D03021 */  addu       $a2, $a2, $s0
/* 451C8 80069DC8 0C01A808 */  jal        __osContRamWrite
/* 451CC 80069DCC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 451D0 80069DD0 8E440004 */  lw         $a0, 0x4($s2)
/* 451D4 80069DD4 8E450008 */  lw         $a1, 0x8($s2)
/* 451D8 80069DD8 9646005A */  lhu        $a2, 0x5A($s2)
/* 451DC 80069DDC 02203821 */  addu       $a3, $s1, $zero
/* 451E0 80069DE0 AFA00010 */  sw         $zero, 0x10($sp)
/* 451E4 80069DE4 00D43021 */  addu       $a2, $a2, $s4
/* 451E8 80069DE8 00D03021 */  addu       $a2, $a2, $s0
/* 451EC 80069DEC 0C01A808 */  jal        __osContRamWrite
/* 451F0 80069DF0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 451F4 80069DF4 0801A787 */  j          .L80069E1C
/* 451F8 80069DF8 00000000 */   nop
.L80069DFC:
/* 451FC 80069DFC 02203821 */  addu       $a3, $s1, $zero
/* 45200 80069E00 8E440004 */  lw         $a0, 0x4($s2)
/* 45204 80069E04 96460056 */  lhu        $a2, 0x56($s2)
/* 45208 80069E08 8E450008 */  lw         $a1, 0x8($s2)
/* 4520C 80069E0C 00D33021 */  addu       $a2, $a2, $s3
/* 45210 80069E10 00D03021 */  addu       $a2, $a2, $s0
/* 45214 80069E14 0C01A7D8 */  jal        __osContRamRead
/* 45218 80069E18 30C6FFFF */   andi      $a2, $a2, 0xFFFF
.L80069E1C:
/* 4521C 80069E1C 14400041 */  bnez       $v0, .L80069F24
/* 45220 80069E20 26100001 */   addiu     $s0, $s0, 0x1
/* 45224 80069E24 2A020008 */  slti       $v0, $s0, 0x8
/* 45228 80069E28 1440FFDD */  bnez       $v0, .L80069DA0
/* 4522C 80069E2C 00101140 */   sll       $v0, $s0, 5
/* 45230 80069E30 16E00032 */  bnez       $s7, .L80069EFC
/* 45234 80069E34 02C02021 */   addu      $a0, $s6, $zero
/* 45238 80069E38 00158840 */  sll        $s1, $s5, 1
/* 4523C 80069E3C 02D12021 */  addu       $a0, $s6, $s1
/* 45240 80069E40 24050080 */  addiu      $a1, $zero, 0x80
/* 45244 80069E44 00B52823 */  subu       $a1, $a1, $s5
/* 45248 80069E48 0C01A584 */  jal        __osSumcalc
/* 4524C 80069E4C 00052840 */   sll       $a1, $a1, 1
/* 45250 80069E50 92C30001 */  lbu        $v1, 0x1($s6)
/* 45254 80069E54 304200FF */  andi       $v0, $v0, 0xFF
/* 45258 80069E58 10430027 */  beq        $v0, $v1, .L80069EF8
/* 4525C 80069E5C 00008021 */   addu      $s0, $zero, $zero
/* 45260 80069E60 00103940 */  sll        $a3, $s0, 5
.L80069E64:
/* 45264 80069E64 02C73821 */  addu       $a3, $s6, $a3
/* 45268 80069E68 8E440004 */  lw         $a0, 0x4($s2)
/* 4526C 80069E6C 9646005A */  lhu        $a2, 0x5A($s2)
/* 45270 80069E70 8E450008 */  lw         $a1, 0x8($s2)
/* 45274 80069E74 00D33021 */  addu       $a2, $a2, $s3
/* 45278 80069E78 00D03021 */  addu       $a2, $a2, $s0
/* 4527C 80069E7C 0C01A7D8 */  jal        __osContRamRead
/* 45280 80069E80 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 45284 80069E84 26100001 */  addiu      $s0, $s0, 0x1
/* 45288 80069E88 2A020008 */  slti       $v0, $s0, 0x8
/* 4528C 80069E8C 1440FFF5 */  bnez       $v0, .L80069E64
/* 45290 80069E90 00103940 */   sll       $a3, $s0, 5
/* 45294 80069E94 02D12021 */  addu       $a0, $s6, $s1
/* 45298 80069E98 24050080 */  addiu      $a1, $zero, 0x80
/* 4529C 80069E9C 00B52823 */  subu       $a1, $a1, $s5
/* 452A0 80069EA0 0C01A584 */  jal        __osSumcalc
/* 452A4 80069EA4 00052840 */   sll       $a1, $a1, 1
/* 452A8 80069EA8 92C30001 */  lbu        $v1, 0x1($s6)
/* 452AC 80069EAC 304200FF */  andi       $v0, $v0, 0xFF
/* 452B0 80069EB0 1443001C */  bne        $v0, $v1, .L80069F24
/* 452B4 80069EB4 24020003 */   addiu     $v0, $zero, 0x3
/* 452B8 80069EB8 00008021 */  addu       $s0, $zero, $zero
/* 452BC 80069EBC 02C08821 */  addu       $s1, $s6, $zero
/* 452C0 80069EC0 02203821 */  addu       $a3, $s1, $zero
.L80069EC4:
/* 452C4 80069EC4 8E440004 */  lw         $a0, 0x4($s2)
/* 452C8 80069EC8 8E450008 */  lw         $a1, 0x8($s2)
/* 452CC 80069ECC 96460056 */  lhu        $a2, 0x56($s2)
/* 452D0 80069ED0 26310020 */  addiu      $s1, $s1, 0x20
/* 452D4 80069ED4 AFA00010 */  sw         $zero, 0x10($sp)
/* 452D8 80069ED8 00D33021 */  addu       $a2, $a2, $s3
/* 452DC 80069EDC 00D03021 */  addu       $a2, $a2, $s0
/* 452E0 80069EE0 0C01A808 */  jal        __osContRamWrite
/* 452E4 80069EE4 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 452E8 80069EE8 26100001 */  addiu      $s0, $s0, 0x1
/* 452EC 80069EEC 2A020008 */  slti       $v0, $s0, 0x8
/* 452F0 80069EF0 1440FFF4 */  bnez       $v0, .L80069EC4
/* 452F4 80069EF4 02203821 */   addu      $a3, $s1, $zero
.L80069EF8:
/* 452F8 80069EF8 02C02021 */  addu       $a0, $s6, $zero
.L80069EFC:
/* 452FC 80069EFC 3C05800E */  lui        $a1, %hi(__osPfsInodeCache)
/* 45300 80069F00 24A5815C */  addiu      $a1, $a1, %lo(__osPfsInodeCache)
/* 45304 80069F04 3C018009 */  lui        $at, %hi(__osPfsInodeCacheBank)
/* 45308 80069F08 A03E4574 */  sb         $fp, %lo(__osPfsInodeCacheBank)($at)
/* 4530C 80069F0C 0C018A04 */  jal        bcopy
/* 45310 80069F10 24060100 */   addiu     $a2, $zero, 0x100
/* 45314 80069F14 8E430008 */  lw         $v1, 0x8($s2)
/* 45318 80069F18 00001021 */  addu       $v0, $zero, $zero
/* 4531C 80069F1C 3C018009 */  lui        $at, %hi(__osPfsInodeCacheChannel)
/* 45320 80069F20 AC234570 */  sw         $v1, %lo(__osPfsInodeCacheChannel)($at)
.L80069F24:
/* 45324 80069F24 8FBF003C */  lw         $ra, 0x3C($sp)
.L80069F28:
/* 45328 80069F28 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4532C 80069F2C 8FB70034 */  lw         $s7, 0x34($sp)
/* 45330 80069F30 8FB60030 */  lw         $s6, 0x30($sp)
/* 45334 80069F34 8FB5002C */  lw         $s5, 0x2C($sp)
/* 45338 80069F38 8FB40028 */  lw         $s4, 0x28($sp)
/* 4533C 80069F3C 8FB30024 */  lw         $s3, 0x24($sp)
/* 45340 80069F40 8FB20020 */  lw         $s2, 0x20($sp)
/* 45344 80069F44 8FB1001C */  lw         $s1, 0x1C($sp)
/* 45348 80069F48 8FB00018 */  lw         $s0, 0x18($sp)
/* 4534C 80069F4C 03E00008 */  jr         $ra
/* 45350 80069F50 27BD0040 */   addiu     $sp, $sp, 0x40
/* 45354 80069F54 00000000 */  nop
/* 45358 80069F58 00000000 */  nop
/* 4535C 80069F5C 00000000 */  nop

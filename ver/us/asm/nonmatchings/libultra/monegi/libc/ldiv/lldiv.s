.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel lldiv
/* 4809C 8006CC9C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 480A0 8006CCA0 AFB40030 */  sw         $s4, 0x30($sp)
/* 480A4 8006CCA4 0080A021 */  addu       $s4, $a0, $zero
/* 480A8 8006CCA8 AFB10024 */  sw         $s1, 0x24($sp)
/* 480AC 8006CCAC AFB00020 */  sw         $s0, 0x20($sp)
/* 480B0 8006CCB0 00C08021 */  addu       $s0, $a2, $zero
/* 480B4 8006CCB4 00E08821 */  addu       $s1, $a3, $zero
/* 480B8 8006CCB8 AFB3002C */  sw         $s3, 0x2C($sp)
/* 480BC 8006CCBC AFB20028 */  sw         $s2, 0x28($sp)
/* 480C0 8006CCC0 8FB20048 */  lw         $s2, 0x48($sp)
/* 480C4 8006CCC4 8FB3004C */  lw         $s3, 0x4C($sp)
/* 480C8 8006CCC8 02002021 */  addu       $a0, $s0, $zero
/* 480CC 8006CCCC 02202821 */  addu       $a1, $s1, $zero
/* 480D0 8006CCD0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 480D4 8006CCD4 02403021 */  addu       $a2, $s2, $zero
/* 480D8 8006CCD8 0C01B384 */  jal        __divdi3
/* 480DC 8006CCDC 02603821 */   addu      $a3, $s3, $zero
/* 480E0 8006CCE0 00404021 */  addu       $t0, $v0, $zero
/* 480E4 8006CCE4 00604821 */  addu       $t1, $v1, $zero
/* 480E8 8006CCE8 02690019 */  multu      $s3, $t1
/* 480EC 8006CCEC 00002010 */  mfhi       $a0
/* 480F0 8006CCF0 00002812 */  mflo       $a1
/* 480F4 8006CCF4 00000000 */  nop
/* 480F8 8006CCF8 00000000 */  nop
/* 480FC 8006CCFC 02680018 */  mult       $s3, $t0
/* 48100 8006CD00 00001012 */  mflo       $v0
/* 48104 8006CD04 00000000 */  nop
/* 48108 8006CD08 00000000 */  nop
/* 4810C 8006CD0C 01320018 */  mult       $t1, $s2
/* 48110 8006CD10 AFA80010 */  sw         $t0, 0x10($sp)
/* 48114 8006CD14 AFA90014 */  sw         $t1, 0x14($sp)
/* 48118 8006CD18 8FA60010 */  lw         $a2, 0x10($sp)
/* 4811C 8006CD1C 00822021 */  addu       $a0, $a0, $v0
/* 48120 8006CD20 00001812 */  mflo       $v1
/* 48124 8006CD24 00832021 */  addu       $a0, $a0, $v1
/* 48128 8006CD28 0225382B */  sltu       $a3, $s1, $a1
/* 4812C 8006CD2C 02252823 */  subu       $a1, $s1, $a1
/* 48130 8006CD30 02042023 */  subu       $a0, $s0, $a0
/* 48134 8006CD34 00872023 */  subu       $a0, $a0, $a3
/* 48138 8006CD38 AFA40018 */  sw         $a0, 0x18($sp)
/* 4813C 8006CD3C AFA5001C */  sw         $a1, 0x1C($sp)
/* 48140 8006CD40 04C10014 */  bgez       $a2, .L8006CD94
/* 48144 8006CD44 8FBF0034 */   lw        $ra, 0x34($sp)
/* 48148 8006CD48 8FA20018 */  lw         $v0, 0x18($sp)
/* 4814C 8006CD4C 5C400006 */  bgtzl      $v0, .L8006CD68
/* 48150 8006CD50 25230001 */   addiu     $v1, $t1, 0x1
/* 48154 8006CD54 14400010 */  bnez       $v0, .L8006CD98
/* 48158 8006CD58 02801021 */   addu      $v0, $s4, $zero
/* 4815C 8006CD5C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 48160 8006CD60 1040000C */  beqz       $v0, .L8006CD94
/* 48164 8006CD64 25230001 */   addiu     $v1, $t1, 0x1
.L8006CD68:
/* 48168 8006CD68 2C660001 */  sltiu      $a2, $v1, 0x1
/* 4816C 8006CD6C 01061021 */  addu       $v0, $t0, $a2
/* 48170 8006CD70 00B3382B */  sltu       $a3, $a1, $s3
/* 48174 8006CD74 00B32823 */  subu       $a1, $a1, $s3
/* 48178 8006CD78 00922023 */  subu       $a0, $a0, $s2
/* 4817C 8006CD7C 00872023 */  subu       $a0, $a0, $a3
/* 48180 8006CD80 AFA20010 */  sw         $v0, 0x10($sp)
/* 48184 8006CD84 AFA30014 */  sw         $v1, 0x14($sp)
/* 48188 8006CD88 AFA40018 */  sw         $a0, 0x18($sp)
/* 4818C 8006CD8C AFA5001C */  sw         $a1, 0x1C($sp)
/* 48190 8006CD90 8FBF0034 */  lw         $ra, 0x34($sp)
.L8006CD94:
/* 48194 8006CD94 02801021 */  addu       $v0, $s4, $zero
.L8006CD98:
/* 48198 8006CD98 8FAA0010 */  lw         $t2, 0x10($sp)
/* 4819C 8006CD9C 8FAB0014 */  lw         $t3, 0x14($sp)
/* 481A0 8006CDA0 8FAC0018 */  lw         $t4, 0x18($sp)
/* 481A4 8006CDA4 8FAD001C */  lw         $t5, 0x1C($sp)
/* 481A8 8006CDA8 AE8A0000 */  sw         $t2, 0x0($s4)
/* 481AC 8006CDAC AE8B0004 */  sw         $t3, 0x4($s4)
/* 481B0 8006CDB0 AE8C0008 */  sw         $t4, 0x8($s4)
/* 481B4 8006CDB4 AE8D000C */  sw         $t5, 0xC($s4)
/* 481B8 8006CDB8 8FB40030 */  lw         $s4, 0x30($sp)
/* 481BC 8006CDBC 8FB3002C */  lw         $s3, 0x2C($sp)
/* 481C0 8006CDC0 8FB20028 */  lw         $s2, 0x28($sp)
/* 481C4 8006CDC4 8FB10024 */  lw         $s1, 0x24($sp)
/* 481C8 8006CDC8 8FB00020 */  lw         $s0, 0x20($sp)
/* 481CC 8006CDCC 03E00008 */  jr         $ra
/* 481D0 8006CDD0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 481D4 8006CDD4 00000000 */  nop
/* 481D8 8006CDD8 00000000 */  nop
/* 481DC 8006CDDC 00000000 */  nop

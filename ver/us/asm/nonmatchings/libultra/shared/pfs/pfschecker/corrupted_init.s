.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel corrupted_init
/* 479E4 8006C5E4 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 479E8 8006C5E8 AFB20118 */  sw         $s2, 0x118($sp)
/* 479EC 8006C5EC 00809021 */  addu       $s2, $a0, $zero
/* 479F0 8006C5F0 00003021 */  addu       $a2, $zero, $zero
/* 479F4 8006C5F4 AFB3011C */  sw         $s3, 0x11C($sp)
/* 479F8 8006C5F8 24B30101 */  addiu      $s3, $a1, 0x101
/* 479FC 8006C5FC 02602021 */  addu       $a0, $s3, $zero
/* 47A00 8006C600 AFBF012C */  sw         $ra, 0x12C($sp)
/* 47A04 8006C604 AFB60128 */  sw         $s6, 0x128($sp)
/* 47A08 8006C608 AFB50124 */  sw         $s5, 0x124($sp)
/* 47A0C 8006C60C AFB40120 */  sw         $s4, 0x120($sp)
/* 47A10 8006C610 AFB10114 */  sw         $s1, 0x114($sp)
/* 47A14 8006C614 AFB00110 */  sw         $s0, 0x110($sp)
.L8006C618:
/* 47A18 8006C618 00861021 */  addu       $v0, $a0, $a2
/* 47A1C 8006C61C 24C60001 */  addiu      $a2, $a2, 0x1
/* 47A20 8006C620 28C30100 */  slti       $v1, $a2, 0x100
/* 47A24 8006C624 1460FFFC */  bnez       $v1, .L8006C618
/* 47A28 8006C628 A0400000 */   sb        $zero, 0x0($v0)
/* 47A2C 8006C62C 240200FF */  addiu      $v0, $zero, 0xFF
/* 47A30 8006C630 A0A20100 */  sb         $v0, 0x100($a1)
/* 47A34 8006C634 92430064 */  lbu        $v1, 0x64($s2)
/* 47A38 8006C638 10600034 */  beqz       $v1, .L8006C70C
/* 47A3C 8006C63C 00008021 */   addu      $s0, $zero, $zero
/* 47A40 8006C640 24160003 */  addiu      $s6, $zero, 0x3
/* 47A44 8006C644 27B40010 */  addiu      $s4, $sp, 0x10
/* 47A48 8006C648 24150001 */  addiu      $s5, $zero, 0x1
.L8006C64C:
/* 47A4C 8006C64C 16000002 */  bnez       $s0, .L8006C658
/* 47A50 8006C650 24110001 */   addiu     $s1, $zero, 0x1
/* 47A54 8006C654 8E510060 */  lw         $s1, 0x60($s2)
.L8006C658:
/* 47A58 8006C658 02402021 */  addu       $a0, $s2, $zero
/* 47A5C 8006C65C 27A50010 */  addiu      $a1, $sp, 0x10
/* 47A60 8006C660 00003021 */  addu       $a2, $zero, $zero
/* 47A64 8006C664 0C01A731 */  jal        __osPfsRWInode
/* 47A68 8006C668 02003821 */   addu      $a3, $s0, $zero
/* 47A6C 8006C66C 10400004 */  beqz       $v0, .L8006C680
/* 47A70 8006C670 02203021 */   addu      $a2, $s1, $zero
/* 47A74 8006C674 14560027 */  bne        $v0, $s6, .L8006C714
/* 47A78 8006C678 8FBF012C */   lw        $ra, 0x12C($sp)
/* 47A7C 8006C67C 02203021 */  addu       $a2, $s1, $zero
.L8006C680:
/* 47A80 8006C680 28C20080 */  slti       $v0, $a2, 0x80
/* 47A84 8006C684 1040001C */  beqz       $v0, .L8006C6F8
/* 47A88 8006C688 26030001 */   addiu     $v1, $s0, 0x1
/* 47A8C 8006C68C 02604021 */  addu       $t0, $s3, $zero
/* 47A90 8006C690 32020007 */  andi       $v0, $s0, 0x7
/* 47A94 8006C694 00553804 */  sllv       $a3, $s5, $v0
/* 47A98 8006C698 00061840 */  sll        $v1, $a2, 1
/* 47A9C 8006C69C 00742821 */  addu       $a1, $v1, $s4
.L8006C6A0:
/* 47AA0 8006C6A0 94A40000 */  lhu        $a0, 0x0($a1)
/* 47AA4 8006C6A4 8E420060 */  lw         $v0, 0x60($s2)
/* 47AA8 8006C6A8 3083FFFF */  andi       $v1, $a0, 0xFFFF
/* 47AAC 8006C6AC 0062102A */  slt        $v0, $v1, $v0
/* 47AB0 8006C6B0 1440000D */  bnez       $v0, .L8006C6E8
/* 47AB4 8006C6B4 24C60001 */   addiu     $a2, $a2, 0x1
/* 47AB8 8006C6B8 00031A02 */  srl        $v1, $v1, 8
/* 47ABC 8006C6BC 1070000A */  beq        $v1, $s0, .L8006C6E8
/* 47AC0 8006C6C0 00000000 */   nop
/* 47AC4 8006C6C4 3082007F */  andi       $v0, $a0, 0x7F
/* 47AC8 8006C6C8 00021082 */  srl        $v0, $v0, 2
/* 47ACC 8006C6CC 30630007 */  andi       $v1, $v1, 0x7
/* 47AD0 8006C6D0 00031940 */  sll        $v1, $v1, 5
/* 47AD4 8006C6D4 00431021 */  addu       $v0, $v0, $v1
/* 47AD8 8006C6D8 01021021 */  addu       $v0, $t0, $v0
/* 47ADC 8006C6DC 90440000 */  lbu        $a0, 0x0($v0)
/* 47AE0 8006C6E0 00872025 */  or         $a0, $a0, $a3
/* 47AE4 8006C6E4 A0440000 */  sb         $a0, 0x0($v0)
.L8006C6E8:
/* 47AE8 8006C6E8 28C20080 */  slti       $v0, $a2, 0x80
/* 47AEC 8006C6EC 1440FFEC */  bnez       $v0, .L8006C6A0
/* 47AF0 8006C6F0 24A50002 */   addiu     $a1, $a1, 0x2
/* 47AF4 8006C6F4 26030001 */  addiu      $v1, $s0, 0x1
.L8006C6F8:
/* 47AF8 8006C6F8 92420064 */  lbu        $v0, 0x64($s2)
/* 47AFC 8006C6FC 307000FF */  andi       $s0, $v1, 0xFF
/* 47B00 8006C700 0202102B */  sltu       $v0, $s0, $v0
/* 47B04 8006C704 1440FFD1 */  bnez       $v0, .L8006C64C
/* 47B08 8006C708 00000000 */   nop
.L8006C70C:
/* 47B0C 8006C70C 00001021 */  addu       $v0, $zero, $zero
/* 47B10 8006C710 8FBF012C */  lw         $ra, 0x12C($sp)
.L8006C714:
/* 47B14 8006C714 8FB60128 */  lw         $s6, 0x128($sp)
/* 47B18 8006C718 8FB50124 */  lw         $s5, 0x124($sp)
/* 47B1C 8006C71C 8FB40120 */  lw         $s4, 0x120($sp)
/* 47B20 8006C720 8FB3011C */  lw         $s3, 0x11C($sp)
/* 47B24 8006C724 8FB20118 */  lw         $s2, 0x118($sp)
/* 47B28 8006C728 8FB10114 */  lw         $s1, 0x114($sp)
/* 47B2C 8006C72C 8FB00110 */  lw         $s0, 0x110($sp)
/* 47B30 8006C730 03E00008 */  jr         $ra
/* 47B34 8006C734 27BD0130 */   addiu     $sp, $sp, 0x130

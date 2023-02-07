.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSetThreadPri
/* 3F570 80064170 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F574 80064174 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3F578 80064178 AFBE0014 */  sw         $fp, 0x14($sp)
/* 3F57C 8006417C AFB00010 */  sw         $s0, 0x10($sp)
/* 3F580 80064180 03A0F021 */  addu       $fp, $sp, $zero
/* 3F584 80064184 AFC40020 */  sw         $a0, 0x20($fp)
/* 3F588 80064188 0C019B40 */  jal        __osDisableInt
/* 3F58C 8006418C AFC50024 */   sw        $a1, 0x24($fp)
/* 3F590 80064190 00408021 */  addu       $s0, $v0, $zero
/* 3F594 80064194 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F598 80064198 14400004 */  bnez       $v0, .L800641AC
/* 3F59C 8006419C 00000000 */   nop
/* 3F5A0 800641A0 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 3F5A4 800641A4 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 3F5A8 800641A8 AFC20020 */  sw         $v0, 0x20($fp)
.L800641AC:
/* 3F5AC 800641AC 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F5B0 800641B0 8C430004 */  lw         $v1, 0x4($v0)
/* 3F5B4 800641B4 8FC20024 */  lw         $v0, 0x24($fp)
/* 3F5B8 800641B8 10620027 */  beq        $v1, $v0, .L80064258
/* 3F5BC 800641BC 00000000 */   nop
/* 3F5C0 800641C0 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F5C4 800641C4 8FC30024 */  lw         $v1, 0x24($fp)
/* 3F5C8 800641C8 AC430004 */  sw         $v1, 0x4($v0)
/* 3F5CC 800641CC 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F5D0 800641D0 3C038009 */  lui        $v1, %hi(__osRunningThread)
/* 3F5D4 800641D4 8C633280 */  lw         $v1, %lo(__osRunningThread)($v1)
/* 3F5D8 800641D8 1043000E */  beq        $v0, $v1, .L80064214
/* 3F5DC 800641DC 00000000 */   nop
/* 3F5E0 800641E0 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F5E4 800641E4 94430010 */  lhu        $v1, 0x10($v0)
/* 3F5E8 800641E8 24020001 */  addiu      $v0, $zero, 0x1
/* 3F5EC 800641EC 10620009 */  beq        $v1, $v0, .L80064214
/* 3F5F0 800641F0 00000000 */   nop
/* 3F5F4 800641F4 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F5F8 800641F8 8C440008 */  lw         $a0, 0x8($v0)
/* 3F5FC 800641FC 0C019140 */  jal        __osDequeueThread
/* 3F600 80064200 8FC50020 */   lw        $a1, 0x20($fp)
/* 3F604 80064204 8FC20020 */  lw         $v0, 0x20($fp)
/* 3F608 80064208 8C440008 */  lw         $a0, 0x8($v0)
/* 3F60C 8006420C 0C019AC4 */  jal        __osEnqueueThread
/* 3F610 80064210 8FC50020 */   lw        $a1, 0x20($fp)
.L80064214:
/* 3F614 80064214 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 3F618 80064218 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 3F61C 8006421C 3C038009 */  lui        $v1, %hi(__osRunQueue)
/* 3F620 80064220 8C633278 */  lw         $v1, %lo(__osRunQueue)($v1)
/* 3F624 80064224 8C420004 */  lw         $v0, 0x4($v0)
/* 3F628 80064228 8C630004 */  lw         $v1, 0x4($v1)
/* 3F62C 8006422C 0043102A */  slt        $v0, $v0, $v1
/* 3F630 80064230 10400009 */  beqz       $v0, .L80064258
/* 3F634 80064234 00000000 */   nop
/* 3F638 80064238 3C028009 */  lui        $v0, %hi(__osRunningThread)
/* 3F63C 8006423C 8C423280 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 3F640 80064240 24030002 */  addiu      $v1, $zero, 0x2
/* 3F644 80064244 A4430010 */  sh         $v1, 0x10($v0)
/* 3F648 80064248 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 3F64C 8006424C 24843278 */  addiu      $a0, $a0, %lo(__osRunQueue)
/* 3F650 80064250 0C019A81 */  jal        __osEnqueueAndYield
/* 3F654 80064254 00000000 */   nop
.L80064258:
/* 3F658 80064258 0C019B5C */  jal        __osRestoreInt
/* 3F65C 8006425C 02002021 */   addu      $a0, $s0, $zero
/* 3F660 80064260 03C0E821 */  addu       $sp, $fp, $zero
/* 3F664 80064264 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3F668 80064268 8FBE0014 */  lw         $fp, 0x14($sp)
/* 3F66C 8006426C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F670 80064270 03E00008 */  jr         $ra
/* 3F674 80064274 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3F678 80064278 00000000 */  nop
/* 3F67C 8006427C 00000000 */  nop

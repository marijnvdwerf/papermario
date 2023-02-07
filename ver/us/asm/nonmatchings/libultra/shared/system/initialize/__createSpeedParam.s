.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __createSpeedParam
/* 455C0 8006A1C0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 455C4 8006A1C4 AFBE0000 */  sw         $fp, 0x0($sp)
/* 455C8 8006A1C8 03A0F021 */  addu       $fp, $sp, $zero
/* 455CC 8006A1CC 24020007 */  addiu      $v0, $zero, 0x7
/* 455D0 8006A1D0 3C01800B */  lui        $at, %hi(D_800B2F6C)
/* 455D4 8006A1D4 A0222F6C */  sb         $v0, %lo(D_800B2F6C)($at)
/* 455D8 8006A1D8 3C02A460 */  lui        $v0, %hi(D_A4600014)
/* 455DC 8006A1DC 8C420014 */  lw         $v0, %lo(D_A4600014)($v0)
/* 455E0 8006A1E0 3C01800B */  lui        $at, %hi(D_800B2F6D)
/* 455E4 8006A1E4 A0222F6D */  sb         $v0, %lo(D_800B2F6D)($at)
/* 455E8 8006A1E8 3C02A460 */  lui        $v0, %hi(D_A4600018)
/* 455EC 8006A1EC 8C420018 */  lw         $v0, %lo(D_A4600018)($v0)
/* 455F0 8006A1F0 3C01800B */  lui        $at, %hi(D_800B2F70)
/* 455F4 8006A1F4 A0222F70 */  sb         $v0, %lo(D_800B2F70)($at)
/* 455F8 8006A1F8 3C02A460 */  lui        $v0, %hi(D_A460001C)
/* 455FC 8006A1FC 8C42001C */  lw         $v0, %lo(D_A460001C)($v0)
/* 45600 8006A200 3C01800B */  lui        $at, %hi(D_800B2F6E)
/* 45604 8006A204 A0222F6E */  sb         $v0, %lo(D_800B2F6E)($at)
/* 45608 8006A208 3C02A460 */  lui        $v0, %hi(D_A4600020)
/* 4560C 8006A20C 8C420020 */  lw         $v0, %lo(D_A4600020)($v0)
/* 45610 8006A210 3C01800B */  lui        $at, %hi(D_800B2F6F)
/* 45614 8006A214 A0222F6F */  sb         $v0, %lo(D_800B2F6F)($at)
/* 45618 8006A218 24020007 */  addiu      $v0, $zero, 0x7
/* 4561C 8006A21C 3C01800B */  lui        $at, %hi(D_800B0548)
/* 45620 8006A220 A0220548 */  sb         $v0, %lo(D_800B0548)($at)
/* 45624 8006A224 3C02A460 */  lui        $v0, %hi(D_A4600024)
/* 45628 8006A228 8C420024 */  lw         $v0, %lo(D_A4600024)($v0)
/* 4562C 8006A22C 3C01800B */  lui        $at, %hi(D_800B0549)
/* 45630 8006A230 A0220549 */  sb         $v0, %lo(D_800B0549)($at)
/* 45634 8006A234 3C02A460 */  lui        $v0, %hi(D_A4600028)
/* 45638 8006A238 8C420028 */  lw         $v0, %lo(D_A4600028)($v0)
/* 4563C 8006A23C 3C01800B */  lui        $at, %hi(D_800B054C)
/* 45640 8006A240 A022054C */  sb         $v0, %lo(D_800B054C)($at)
/* 45644 8006A244 3C02A460 */  lui        $v0, %hi(D_A460002C)
/* 45648 8006A248 8C42002C */  lw         $v0, %lo(D_A460002C)($v0)
/* 4564C 8006A24C 3C01800B */  lui        $at, %hi(D_800B054A)
/* 45650 8006A250 A022054A */  sb         $v0, %lo(D_800B054A)($at)
/* 45654 8006A254 3C02A460 */  lui        $v0, %hi(D_A4600030)
/* 45658 8006A258 8C420030 */  lw         $v0, %lo(D_A4600030)($v0)
/* 4565C 8006A25C 3C01800B */  lui        $at, %hi(D_800B054B)
/* 45660 8006A260 A022054B */  sb         $v0, %lo(D_800B054B)($at)
/* 45664 8006A264 03C0E821 */  addu       $sp, $fp, $zero
/* 45668 8006A268 8FBE0000 */  lw         $fp, 0x0($sp)
/* 4566C 8006A26C 03E00008 */  jr         $ra
/* 45670 8006A270 27BD0008 */   addiu     $sp, $sp, 0x8

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osSetTime
/* 3FA40 80064640 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 3FA44 80064644 AFBE0000 */  sw         $fp, 0x0($sp)
/* 3FA48 80064648 03A0F021 */  addu       $fp, $sp, $zero
/* 3FA4C 8006464C AFC40008 */  sw         $a0, 0x8($fp)
/* 3FA50 80064650 AFC5000C */  sw         $a1, 0xC($fp)
/* 3FA54 80064654 8FC20008 */  lw         $v0, 0x8($fp)
/* 3FA58 80064658 8FC3000C */  lw         $v1, 0xC($fp)
/* 3FA5C 8006465C 3C01800A */  lui        $at, %hi(__osCurrentTime)
/* 3FA60 80064660 AC2291D8 */  sw         $v0, %lo(__osCurrentTime)($at)
/* 3FA64 80064664 3C01800A */  lui        $at, %hi(__osCurrentTime+4)
/* 3FA68 80064668 AC2391DC */  sw         $v1, %lo(__osCurrentTime+4)($at)
/* 3FA6C 8006466C 03C0E821 */  addu       $sp, $fp, $zero
/* 3FA70 80064670 8FBE0000 */  lw         $fp, 0x0($sp)
/* 3FA74 80064674 03E00008 */  jr         $ra
/* 3FA78 80064678 27BD0008 */   addiu     $sp, $sp, 0x8
/* 3FA7C 8006467C 00000000 */  nop

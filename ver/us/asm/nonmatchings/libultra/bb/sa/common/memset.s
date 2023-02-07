.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel memset
/* 434E0 800680E0 10C00006 */  beqz       $a2, .L800680FC
/* 434E4 800680E4 00003821 */   addu      $a3, $zero, $zero
.L800680E8:
/* 434E8 800680E8 00871021 */  addu       $v0, $a0, $a3
/* 434EC 800680EC 24E70001 */  addiu      $a3, $a3, 0x1
/* 434F0 800680F0 00E6182B */  sltu       $v1, $a3, $a2
/* 434F4 800680F4 1460FFFC */  bnez       $v1, .L800680E8
/* 434F8 800680F8 A0450000 */   sb        $a1, 0x0($v0)
.L800680FC:
/* 434FC 800680FC 03E00008 */  jr         $ra
/* 43500 80068100 00801021 */   addu      $v0, $a0, $zero

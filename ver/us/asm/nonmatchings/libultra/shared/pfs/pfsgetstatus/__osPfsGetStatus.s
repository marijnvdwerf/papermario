.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osPfsGetStatus
/* 44860 80069460 00052880 */  sll        $a1, $a1, 2
/* 44864 80069464 3C028000 */  lui        $v0, %hi(__osBbPakAddress)
/* 44868 80069468 00451021 */  addu       $v0, $v0, $a1
/* 4486C 8006946C 8C420374 */  lw         $v0, %lo(__osBbPakAddress)($v0)
/* 44870 80069470 10400003 */  beqz       $v0, .L80069480
/* 44874 80069474 24020001 */   addiu     $v0, $zero, 0x1
/* 44878 80069478 03E00008 */  jr         $ra
/* 4487C 8006947C 00001021 */   addu      $v0, $zero, $zero
.L80069480:
/* 44880 80069480 03E00008 */  jr         $ra
/* 44884 80069484 00000000 */   nop

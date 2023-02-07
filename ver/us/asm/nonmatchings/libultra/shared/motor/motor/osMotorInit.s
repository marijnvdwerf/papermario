.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osMotorInit
/* 435C8 800681C8 03E00008 */  jr         $ra
/* 435CC 800681CC 2402000B */   addiu     $v0, $zero, 0xB

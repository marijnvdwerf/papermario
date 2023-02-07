.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel __osMotorAccess
/* 435C0 800681C0 03E00008 */  jr         $ra
/* 435C4 800681C4 24020005 */   addiu     $v0, $zero, 0x5

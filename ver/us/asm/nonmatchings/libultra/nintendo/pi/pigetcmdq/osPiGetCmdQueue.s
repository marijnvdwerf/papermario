.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel osPiGetCmdQueue
/* 47250 8006BE50 3C038009 */  lui        $v1, %hi(__osPiDevMgr)
/* 47254 8006BE54 24634520 */  addiu      $v1, $v1, %lo(__osPiDevMgr)
/* 47258 8006BE58 8C620000 */  lw         $v0, 0x0($v1)
/* 4725C 8006BE5C 10400003 */  beqz       $v0, .L8006BE6C
/* 47260 8006BE60 00000000 */   nop
/* 47264 8006BE64 03E00008 */  jr         $ra
/* 47268 8006BE68 8C620008 */   lw        $v0, 0x8($v1)
.L8006BE6C:
/* 4726C 8006BE6C 03E00008 */  jr         $ra
/* 47270 8006BE70 00001021 */   addu      $v0, $zero, $zero
/* 47274 8006BE74 00000000 */  nop
/* 47278 8006BE78 00000000 */  nop
/* 4727C 8006BE7C 00000000 */  nop

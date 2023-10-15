.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bba74
/* AC274 800BBA74 0F80033C */  lui        $v1, %hi(D_800ED07C)
/* AC278 800BBA78 7CD06324 */  addiu      $v1, $v1, %lo(D_800ED07C)
/* AC27C 800BBA7C 02110400 */  srl        $v0, $a0, 4
/* AC280 800BBA80 0F004230 */  andi       $v0, $v0, 0xf
/* AC284 800BBA84 21104300 */  addu       $v0, $v0, $v1
/* AC288 800BBA88 0F008430 */  andi       $a0, $a0, 0xf
/* AC28C 800BBA8C 21208300 */  addu       $a0, $a0, $v1
/* AC290 800BBA90 00004290 */  lbu        $v0, ($v0)
/* AC294 800BBA94 00008390 */  lbu        $v1, ($a0)
/* AC298 800BBA98 00120200 */  sll        $v0, $v0, 8
/* AC29C 800BBA9C 25186200 */  or         $v1, $v1, $v0
/* AC2A0 800BBAA0 641F023C */  lui        $v0, 0x1f64
/* AC2A4 800BBAA4 100043A4 */  sh         $v1, 0x10($v0)
/* AC2A8 800BBAA8 0800E003 */  jr         $ra
/* AC2AC 800BBAAC 00000000 */   nop

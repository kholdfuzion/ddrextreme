.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf8f0
/* B00F0 800BF8F0 641F023C */  lui        $v0, 0x1f64
/* B00F4 800BF8F4 CC004234 */  ori        $v0, $v0, 0xcc
/* B00F8 800BF8F8 000040A4 */  sh         $zero, ($v0)
/* B00FC 800BF8FC 0800E003 */  jr         $ra
/* B0100 800BF900 00000000 */   nop

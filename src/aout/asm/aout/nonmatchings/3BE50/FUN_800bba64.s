.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bba64
/* AC264 800BBA64 641F023C */  lui        $v0, 0x1f64
/* AC268 800BBA68 100044A4 */  sh         $a0, 0x10($v0)
/* AC26C 800BBA6C 0800E003 */  jr         $ra
/* AC270 800BBA70 00000000 */   nop

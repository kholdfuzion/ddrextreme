.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bead0
/* AF2D0 800BEAD0 0800E003 */  jr         $ra
/* AF2D4 800BEAD4 FFFF0224 */   addiu     $v0, $zero, -1

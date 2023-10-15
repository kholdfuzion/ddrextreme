.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5974
/* 96174 800A5974 0800E003 */  jr         $ra
/* 96178 800A5978 140080A4 */   sh        $zero, 0x14($a0)

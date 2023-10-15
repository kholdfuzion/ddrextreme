.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a58e0
/* 960E0 800A58E0 0800E003 */  jr         $ra
/* 960E4 800A58E4 140080A4 */   sh        $zero, 0x14($a0)

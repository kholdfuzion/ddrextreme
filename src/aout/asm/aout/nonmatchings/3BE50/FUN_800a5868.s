.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5868
/* 96068 800A5868 0800E003 */  jr         $ra
/* 9606C 800A586C 0C0085A0 */   sb        $a1, 0xc($a0)

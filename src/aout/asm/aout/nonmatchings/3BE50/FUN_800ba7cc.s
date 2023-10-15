.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba7cc
/* AAFCC 800BA7CC 1580023C */  lui        $v0, %hi(D_8014BA9C)
/* AAFD0 800BA7D0 9CBA438C */  lw         $v1, %lo(D_8014BA9C)($v0)
/* AAFD4 800BA7D4 0008023C */  lui        $v0, 0x800
/* AAFD8 800BA7D8 0800E003 */  jr         $ra
/* AAFDC 800BA7DC 24106200 */   and       $v0, $v1, $v0

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba7e0
/* AAFE0 800BA7E0 1580023C */  lui        $v0, %hi(D_8014BA9C)
/* AAFE4 800BA7E4 9CBA438C */  lw         $v1, %lo(D_8014BA9C)($v0)
/* AAFE8 800BA7E8 0010023C */  lui        $v0, 0x1000
/* AAFEC 800BA7EC 0800E003 */  jr         $ra
/* AAFF0 800BA7F0 24106200 */   and       $v0, $v1, $v0

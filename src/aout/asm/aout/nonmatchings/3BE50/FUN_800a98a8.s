.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a98a8
/* 9A0A8 800A98A8 0F80033C */  lui        $v1, %hi(D_800EC6E8)
/* 9A0AC 800A98AC E8C6628C */  lw         $v0, %lo(D_800EC6E8)($v1)
/* 9A0B0 800A98B0 0800E003 */  jr         $ra
/* 9A0B4 800A98B4 00000000 */   nop

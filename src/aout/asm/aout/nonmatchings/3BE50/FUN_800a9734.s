.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9734
/* 99F34 800A9734 0F80033C */  lui        $v1, %hi(D_800EC6EC)
/* 99F38 800A9738 ECC6628C */  lw         $v0, %lo(D_800EC6EC)($v1)
/* 99F3C 800A973C 0800E003 */  jr         $ra
/* 99F40 800A9740 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009642c
/* 86C2C 8009642C 0F80033C */  lui        $v1, %hi(D_800EBF44)
/* 86C30 80096430 44BF628C */  lw         $v0, %lo(D_800EBF44)($v1)
/* 86C34 80096434 0800E003 */  jr         $ra
/* 86C38 80096438 00000000 */   nop

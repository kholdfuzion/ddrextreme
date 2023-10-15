.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009641c
/* 86C1C 8009641C 0F80033C */  lui        $v1, %hi(D_800EBF40)
/* 86C20 80096420 40BF628C */  lw         $v0, %lo(D_800EBF40)($v1)
/* 86C24 80096424 0800E003 */  jr         $ra
/* 86C28 80096428 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_5F4
/* 63F38 80073738 0E80023C */  lui        $v0, %hi(D_800DB124)
/* 63F3C 8007373C 24B1428C */  lw         $v0, %lo(D_800DB124)($v0)
/* 63F40 80073740 00000000 */  nop
/* 63F44 80073744 0000428C */  lw         $v0, ($v0)
/* 63F48 80073748 0800E003 */  jr         $ra
/* 63F4C 8007374C 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0744
/* A0F44 800B0744 1D80033C */  lui        $v1, %hi(D_801D005C)
/* A0F48 800B0748 5C00628C */  lw         $v0, %lo(D_801D005C)($v1)
/* A0F4C 800B074C 0800E003 */  jr         $ra
/* A0F50 800B0750 00000000 */   nop

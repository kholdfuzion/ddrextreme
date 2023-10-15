.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2024
/* A2824 800B2024 1D80033C */  lui        $v1, %hi(D_801D321C)
/* A2828 800B2028 1C32628C */  lw         $v0, %lo(D_801D321C)($v1)
/* A282C 800B202C 0800E003 */  jr         $ra
/* A2830 800B2030 00000000 */   nop

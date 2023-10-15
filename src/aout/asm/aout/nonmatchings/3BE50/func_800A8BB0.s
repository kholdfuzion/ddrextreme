.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A8BB0
/* 993B0 800A8BB0 1C80033C */  lui        $v1, %hi(D_801BF778)
/* 993B4 800A8BB4 78F7628C */  lw         $v0, %lo(D_801BF778)($v1)
/* 993B8 800A8BB8 0800E003 */  jr         $ra
/* 993BC 800A8BBC 00000000 */   nop

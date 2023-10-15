.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b072c
/* A0F2C 800B072C 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0F30 800B0730 48006280 */  lb         $v0, %lo(D_801D0048)($v1)
/* A0F34 800B0734 00000000 */  nop
/* A0F38 800B0738 01004238 */  xori       $v0, $v0, 1
/* A0F3C 800B073C 0800E003 */  jr         $ra
/* A0F40 800B0740 0100422C */   sltiu     $v0, $v0, 1

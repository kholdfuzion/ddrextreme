.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2034
/* A2834 800B2034 1D80033C */  lui        $v1, %hi(D_801D3218)
/* A2838 800B2038 1832628C */  lw         $v0, %lo(D_801D3218)($v1)
/* A283C 800B203C 00000000 */  nop
/* A2840 800B2040 01004238 */  xori       $v0, $v0, 1
/* A2844 800B2044 0800E003 */  jr         $ra
/* A2848 800B2048 0100422C */   sltiu     $v0, $v0, 1

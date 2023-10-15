.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0a7c
/* A127C 800B0A7C 1D80033C */  lui        $v1, %hi(D_801D0060)
/* A1280 800B0A80 01000224 */  addiu      $v0, $zero, 1
/* A1284 800B0A84 0800E003 */  jr         $ra
/* A1288 800B0A88 600062AC */   sw        $v0, %lo(D_801D0060)($v1)

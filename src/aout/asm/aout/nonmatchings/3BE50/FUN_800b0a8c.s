.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0a8c
/* A128C 800B0A8C 1D80023C */  lui        $v0, %hi(D_801D0060)
/* A1290 800B0A90 0800E003 */  jr         $ra
/* A1294 800B0A94 600040AC */   sw        $zero, %lo(D_801D0060)($v0)

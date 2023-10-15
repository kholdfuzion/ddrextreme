.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B0E98
/* A1698 800B0E98 1D80023C */  lui        $v0, %hi(D_801D24A4)
/* A169C 800B0E9C 0800E003 */  jr         $ra
/* A16A0 800B0EA0 A42444AC */   sw        $a0, %lo(D_801D24A4)($v0)

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B6850
/* A7050 800B6850 1E80023C */  lui        $v0, %hi(D_801E07D8)
/* A7054 800B6854 D807438C */  lw         $v1, %lo(D_801E07D8)($v0)
/* A7058 800B6858 0800E003 */  jr         $ra
/* A705C 800B685C 140064AC */   sw        $a0, 0x14($v1)

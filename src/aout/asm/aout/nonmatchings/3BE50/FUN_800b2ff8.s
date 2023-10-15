.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2ff8
/* A37F8 800B2FF8 1E80023C */  lui        $v0, %hi(D_801E0767)
/* A37FC 800B2FFC 0800E003 */  jr         $ra
/* A3800 800B3000 670740A0 */   sb        $zero, %lo(D_801E0767)($v0)

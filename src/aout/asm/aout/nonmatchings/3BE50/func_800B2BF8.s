.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B2BF8
/* A33F8 800B2BF8 1E80033C */  lui        $v1, %hi(D_801E0760)
/* A33FC 800B2BFC 6007628C */  lw         $v0, %lo(D_801E0760)($v1)
/* A3400 800B2C00 0800E003 */  jr         $ra
/* A3404 800B2C04 00000000 */   nop

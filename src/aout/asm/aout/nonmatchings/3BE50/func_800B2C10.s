.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B2C10
/* A3410 800B2C10 1E80033C */  lui        $v1, %hi(D_801E0765)
/* A3414 800B2C14 65076290 */  lbu        $v0, %lo(D_801E0765)($v1)
/* A3418 800B2C18 0800E003 */  jr         $ra
/* A341C 800B2C1C 00000000 */   nop

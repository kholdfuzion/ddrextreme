.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AB9D4
/* 9C1D4 800AB9D4 1C80033C */  lui        $v1, %hi(D_801C3FA4)
/* 9C1D8 800AB9D8 A43F6290 */  lbu        $v0, %lo(D_801C3FA4)($v1)
/* 9C1DC 800AB9DC 0800E003 */  jr         $ra
/* 9C1E0 800AB9E0 00000000 */   nop

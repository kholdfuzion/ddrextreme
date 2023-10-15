.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006AC7C
/* 5B47C 8006AC7C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5B480 8006AC80 1000BFAF */  sw         $ra, 0x10($sp)
/* 5B484 8006AC84 60C4010C */  jal        FUN_80071180
/* 5B488 8006AC88 00000000 */   nop
/* 5B48C 8006AC8C 1000BF8F */  lw         $ra, 0x10($sp)
/* 5B490 8006AC90 00000000 */  nop
/* 5B494 8006AC94 0800E003 */  jr         $ra
/* 5B498 8006AC98 1800BD27 */   addiu     $sp, $sp, 0x18

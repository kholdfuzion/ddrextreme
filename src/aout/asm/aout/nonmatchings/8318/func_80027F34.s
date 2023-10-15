.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027F34
/* 18734 80027F34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18738 80027F38 1000BFAF */  sw         $ra, 0x10($sp)
/* 1873C 80027F3C 2728010C */  jal        FUN_8004a09c
/* 18740 80027F40 00000000 */   nop
/* 18744 80027F44 1D7A010C */  jal        FUN_8005e874
/* 18748 80027F48 00000000 */   nop
/* 1874C 80027F4C 4FB1020C */  jal        FUN_800ac53c
/* 18750 80027F50 00000000 */   nop
/* 18754 80027F54 1000BF8F */  lw         $ra, 0x10($sp)
/* 18758 80027F58 00000000 */  nop
/* 1875C 80027F5C 0800E003 */  jr         $ra
/* 18760 80027F60 1800BD27 */   addiu     $sp, $sp, 0x18

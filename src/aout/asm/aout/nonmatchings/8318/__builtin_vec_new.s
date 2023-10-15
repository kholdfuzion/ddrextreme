.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel __builtin_vec_new
/* D338 8001CB38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D33C 8001CB3C 1000BFAF */  sw         $ra, 0x10($sp)
/* D340 8001CB40 A8C0020C */  jal        FUN_800b02a0
/* D344 8001CB44 00000000 */   nop
/* D348 8001CB48 1000BF8F */  lw         $ra, 0x10($sp)
/* D34C 8001CB4C 00000000 */  nop
/* D350 8001CB50 0800E003 */  jr         $ra
/* D354 8001CB54 1800BD27 */   addiu     $sp, $sp, 0x18

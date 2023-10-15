.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001EB30
/* F330 8001EB30 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F334 8001EB34 1800A4AF */  sw         $a0, 0x18($sp)
/* F338 8001EB38 1800A427 */  addiu      $a0, $sp, 0x18
/* F33C 8001EB3C 1000BFAF */  sw         $ra, 0x10($sp)
/* F340 8001EB40 AB7B000C */  jal        FUN_8001eeac
/* F344 8001EB44 21280000 */   addu      $a1, $zero, $zero
/* F348 8001EB48 1000BF8F */  lw         $ra, 0x10($sp)
/* F34C 8001EB4C 00000000 */  nop
/* F350 8001EB50 0800E003 */  jr         $ra
/* F354 8001EB54 1800BD27 */   addiu     $sp, $sp, 0x18

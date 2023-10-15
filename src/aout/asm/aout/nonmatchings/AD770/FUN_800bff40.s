.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bff40
/* B0740 800BFF40 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0744 800BFF44 1000BFAF */  sw         $ra, 0x10($sp)
/* B0748 800BFF48 03FF020C */  jal        FUN_800bfc0c
/* B074C 800BFF4C 21200000 */   addu      $a0, $zero, $zero
/* B0750 800BFF50 1000BF8F */  lw         $ra, 0x10($sp)
/* B0754 800BFF54 00000000 */  nop
/* B0758 800BFF58 0800E003 */  jr         $ra
/* B075C 800BFF5C 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bff80
/* B0780 800BFF80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0784 800BFF84 1000BFAF */  sw         $ra, 0x10($sp)
/* B0788 800BFF88 6DFF020C */  jal        FUN_800bfdb4
/* B078C 800BFF8C 00000000 */   nop
/* B0790 800BFF90 1000BF8F */  lw         $ra, 0x10($sp)
/* B0794 800BFF94 00000000 */  nop
/* B0798 800BFF98 0800E003 */  jr         $ra
/* B079C 800BFF9C 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bff60
/* B0760 800BFF60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0764 800BFF64 1000BFAF */  sw         $ra, 0x10($sp)
/* B0768 800BFF68 03FF020C */  jal        FUN_800bfc0c
/* B076C 800BFF6C 01000424 */   addiu     $a0, $zero, 1
/* B0770 800BFF70 1000BF8F */  lw         $ra, 0x10($sp)
/* B0774 800BFF74 00000000 */  nop
/* B0778 800BFF78 0800E003 */  jr         $ra
/* B077C 800BFF7C 1800BD27 */   addiu     $sp, $sp, 0x18

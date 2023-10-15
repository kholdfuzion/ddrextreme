.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001ED78
/* F578 8001ED78 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F57C 8001ED7C 1000BFAF */  sw         $ra, 0x10($sp)
/* F580 8001ED80 AB7B000C */  jal        FUN_8001eeac
/* F584 8001ED84 02000524 */   addiu     $a1, $zero, 2
/* F588 8001ED88 1000BF8F */  lw         $ra, 0x10($sp)
/* F58C 8001ED8C 00000000 */  nop
/* F590 8001ED90 0800E003 */  jr         $ra
/* F594 8001ED94 1800BD27 */   addiu     $sp, $sp, 0x18

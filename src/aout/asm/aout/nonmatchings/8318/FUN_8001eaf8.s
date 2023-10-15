.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001eaf8
/* F2F8 8001EAF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F2FC 8001EAFC 1000BFAF */  sw         $ra, 0x10($sp)
/* F300 8001EB00 AD7B000C */  jal        FUN_8001eeb4
/* F304 8001EB04 21200000 */   addu      $a0, $zero, $zero
/* F308 8001EB08 1000BF8F */  lw         $ra, 0x10($sp)
/* F30C 8001EB0C 00000000 */  nop
/* F310 8001EB10 0800E003 */  jr         $ra
/* F314 8001EB14 1800BD27 */   addiu     $sp, $sp, 0x18

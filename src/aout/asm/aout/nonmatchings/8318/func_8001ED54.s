.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001ED54
/* F554 8001ED54 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F558 8001ED58 21280000 */  addu       $a1, $zero, $zero
/* F55C 8001ED5C 1000BFAF */  sw         $ra, 0x10($sp)
/* F560 8001ED60 FA74000C */  jal        FUN_8001d3e8
/* F564 8001ED64 02000624 */   addiu     $a2, $zero, 2
/* F568 8001ED68 1000BF8F */  lw         $ra, 0x10($sp)
/* F56C 8001ED6C 00000000 */  nop
/* F570 8001ED70 0800E003 */  jr         $ra
/* F574 8001ED74 1800BD27 */   addiu     $sp, $sp, 0x18

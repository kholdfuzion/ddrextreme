.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bae00
/* AB600 800BAE00 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AB604 800BAE04 2138A000 */  addu       $a3, $a1, $zero
/* AB608 800BAE08 1A000524 */  addiu      $a1, $zero, 0x1a
/* AB60C 800BAE0C 1000BFAF */  sw         $ra, 0x10($sp)
/* AB610 800BAE10 38EC020C */  jal        FUN_800bb0e0
/* AB614 800BAE14 07000624 */   addiu     $a2, $zero, 7
/* AB618 800BAE18 1000BF8F */  lw         $ra, 0x10($sp)
/* AB61C 800BAE1C 00000000 */  nop
/* AB620 800BAE20 0800E003 */  jr         $ra
/* AB624 800BAE24 1800BD27 */   addiu     $sp, $sp, 0x18

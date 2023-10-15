.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CCE74
/* BD674 800CCE74 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BD678 800CCE78 2120A000 */  addu       $a0, $a1, $zero
/* BD67C 800CCE7C F8070524 */  addiu      $a1, $zero, 0x7f8
/* BD680 800CCE80 1000BFAF */  sw         $ra, 0x10($sp)
/* BD684 800CCE84 AE31030C */  jal        FUN_800cc6b8
/* BD688 800CCE88 08000724 */   addiu     $a3, $zero, 8
/* BD68C 800CCE8C 1000BF8F */  lw         $ra, 0x10($sp)
/* BD690 800CCE90 00000000 */  nop
/* BD694 800CCE94 0800E003 */  jr         $ra
/* BD698 800CCE98 1800BD27 */   addiu     $sp, $sp, 0x18

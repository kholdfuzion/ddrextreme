.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBAF4
.L800BBAF4:
/* AC2F4 800BBAF4 000080A0 */  sb         $zero, ($a0)
/* AC2F8 800BBAF8 FFFFA524 */  addiu      $a1, $a1, -1
/* AC2FC 800BBAFC FDFFA014 */  bnez       $a1, .L800BBAF4
/* AC300 800BBB00 01008424 */   addiu     $a0, $a0, 1
/* AC304 800BBB04 0800E003 */  jr         $ra
/* AC308 800BBB08 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80052e04
/* 43604 80052E04 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 43608 80052E08 1000BFAF */  sw         $ra, 0x10($sp)
/* 4360C 80052E0C 942D010C */  jal        FUN_8004b650
/* 43610 80052E10 FF000724 */   addiu     $a3, $zero, 0xff
/* 43614 80052E14 1000BF8F */  lw         $ra, 0x10($sp)
/* 43618 80052E18 00000000 */  nop
/* 4361C 80052E1C 0800E003 */  jr         $ra
/* 43620 80052E20 1800BD27 */   addiu     $sp, $sp, 0x18

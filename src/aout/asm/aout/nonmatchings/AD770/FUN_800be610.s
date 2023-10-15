.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be610
/* AEE10 800BE610 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEE14 800BE614 FFFF0534 */  ori        $a1, $zero, 0xffff
/* AEE18 800BE618 1000BFAF */  sw         $ra, 0x10($sp)
/* AEE1C 800BE61C 14FA020C */  jal        FUN_800be850
/* AEE20 800BE620 21300000 */   addu      $a2, $zero, $zero
/* AEE24 800BE624 1000BF8F */  lw         $ra, 0x10($sp)
/* AEE28 800BE628 00000000 */  nop
/* AEE2C 800BE62C 0800E003 */  jr         $ra
/* AEE30 800BE630 1800BD27 */   addiu     $sp, $sp, 0x18

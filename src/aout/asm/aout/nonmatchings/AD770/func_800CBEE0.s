.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBEE0
/* BC6E0 800CBEE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BC6E4 800CBEE4 1000BFAF */  sw         $ra, 0x10($sp)
/* BC6E8 800CBEE8 3930030C */  jal        FUN_800cc0e4
/* BC6EC 800CBEEC 00000000 */   nop
/* BC6F0 800CBEF0 1000BF8F */  lw         $ra, 0x10($sp)
/* BC6F4 800CBEF4 00000000 */  nop
/* BC6F8 800CBEF8 0800E003 */  jr         $ra
/* BC6FC 800CBEFC 1800BD27 */   addiu     $sp, $sp, 0x18

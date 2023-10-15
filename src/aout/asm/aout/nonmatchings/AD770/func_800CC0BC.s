.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CC0BC
/* BC8BC 800CC0BC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC8C0 800CC0C0 21280000 */  addu       $a1, $zero, $zero
/* BC8C4 800CC0C4 1000A627 */  addiu      $a2, $sp, 0x10
/* BC8C8 800CC0C8 1800BFAF */  sw         $ra, 0x18($sp)
/* BC8CC 800CC0CC 592D030C */  jal        FUN_800cb564
/* BC8D0 800CC0D0 08000724 */   addiu     $a3, $zero, 8
/* BC8D4 800CC0D4 1800BF8F */  lw         $ra, 0x18($sp)
/* BC8D8 800CC0D8 00000000 */  nop
/* BC8DC 800CC0DC 0800E003 */  jr         $ra
/* BC8E0 800CC0E0 2000BD27 */   addiu     $sp, $sp, 0x20

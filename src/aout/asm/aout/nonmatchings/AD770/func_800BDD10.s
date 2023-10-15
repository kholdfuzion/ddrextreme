.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BDD10
/* AE510 800BDD10 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE514 800BDD14 1000B0AF */  sw         $s0, 0x10($sp)
/* AE518 800BDD18 1400BFAF */  sw         $ra, 0x14($sp)
/* AE51C 800BDD1C 60F8020C */  jal        FUN_800be180
/* AE520 800BDD20 21808000 */   addu      $s0, $a0, $zero
/* AE524 800BDD24 00000296 */  lhu        $v0, ($s0)
/* AE528 800BDD28 1400BF8F */  lw         $ra, 0x14($sp)
/* AE52C 800BDD2C 1000B08F */  lw         $s0, 0x10($sp)
/* AE530 800BDD30 0800E003 */  jr         $ra
/* AE534 800BDD34 1800BD27 */   addiu     $sp, $sp, 0x18

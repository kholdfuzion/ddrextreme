.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be7ec
/* AEFEC 800BE7EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEFF0 800BE7F0 FFFFA530 */  andi       $a1, $a1, 0xffff
/* AEFF4 800BE7F4 1000BFAF */  sw         $ra, 0x10($sp)
/* AEFF8 800BE7F8 14FA020C */  jal        FUN_800be850
/* AEFFC 800BE7FC 21300000 */   addu      $a2, $zero, $zero
/* AF000 800BE800 1000BF8F */  lw         $ra, 0x10($sp)
/* AF004 800BE804 00000000 */  nop
/* AF008 800BE808 0800E003 */  jr         $ra
/* AF00C 800BE80C 1800BD27 */   addiu     $sp, $sp, 0x18

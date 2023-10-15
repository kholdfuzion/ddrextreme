.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be7c8
/* AEFC8 800BE7C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEFCC 800BE7CC FFFFA530 */  andi       $a1, $a1, 0xffff
/* AEFD0 800BE7D0 1000BFAF */  sw         $ra, 0x10($sp)
/* AEFD4 800BE7D4 7EFA020C */  jal        FUN_800be9f8
/* AEFD8 800BE7D8 21300000 */   addu      $a2, $zero, $zero
/* AEFDC 800BE7DC 1000BF8F */  lw         $ra, 0x10($sp)
/* AEFE0 800BE7E0 00000000 */  nop
/* AEFE4 800BE7E4 0800E003 */  jr         $ra
/* AEFE8 800BE7E8 1800BD27 */   addiu     $sp, $sp, 0x18

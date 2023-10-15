.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6670
/* B6E70 800C6670 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B6E74 800C6674 1000BFAF */  sw         $ra, 0x10($sp)
/* B6E78 800C6678 0526030C */  jal        FUN_800c9814
/* B6E7C 800C667C 00000000 */   nop
/* B6E80 800C6680 1000BF8F */  lw         $ra, 0x10($sp)
/* B6E84 800C6684 00000000 */  nop
/* B6E88 800C6688 0800E003 */  jr         $ra
/* B6E8C 800C668C 1800BD27 */   addiu     $sp, $sp, 0x18

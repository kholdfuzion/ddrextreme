.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1118
/* B1918 800C1118 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B191C 800C111C 1000BFAF */  sw         $ra, 0x10($sp)
/* B1920 800C1120 00008494 */  lhu        $a0, ($a0)
/* B1924 800C1124 A8FD020C */  jal        FUN_800bf6a0
/* B1928 800C1128 00000000 */   nop
/* B192C 800C112C 21100000 */  addu       $v0, $zero, $zero
/* B1930 800C1130 1000BF8F */  lw         $ra, 0x10($sp)
/* B1934 800C1134 00000000 */  nop
/* B1938 800C1138 0800E003 */  jr         $ra
/* B193C 800C113C 1800BD27 */   addiu     $sp, $sp, 0x18

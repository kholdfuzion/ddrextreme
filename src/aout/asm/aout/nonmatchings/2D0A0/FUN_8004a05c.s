.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a05c
/* 3A85C 8004A05C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3A860 8004A060 1000BFAF */  sw         $ra, 0x10($sp)
/* 3A864 8004A064 F379010C */  jal        FUN_8005e7cc
/* 3A868 8004A068 00000000 */   nop
/* 3A86C 8004A06C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3A870 8004A070 00000000 */  nop
/* 3A874 8004A074 0800E003 */  jr         $ra
/* 3A878 8004A078 1800BD27 */   addiu     $sp, $sp, 0x18

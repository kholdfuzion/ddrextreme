.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6f94
/* 97794 800A6F94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97798 800A6F98 21200000 */  addu       $a0, $zero, $zero
/* 9779C 800A6F9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 977A0 800A6FA0 D19A020C */  jal        FUN_800a6b44
/* 977A4 800A6FA4 21280000 */   addu      $a1, $zero, $zero
/* 977A8 800A6FA8 01000424 */  addiu      $a0, $zero, 1
/* 977AC 800A6FAC D19A020C */  jal        FUN_800a6b44
/* 977B0 800A6FB0 21280000 */   addu      $a1, $zero, $zero
/* 977B4 800A6FB4 02000424 */  addiu      $a0, $zero, 2
/* 977B8 800A6FB8 D19A020C */  jal        FUN_800a6b44
/* 977BC 800A6FBC 21280000 */   addu      $a1, $zero, $zero
/* 977C0 800A6FC0 03000424 */  addiu      $a0, $zero, 3
/* 977C4 800A6FC4 D19A020C */  jal        FUN_800a6b44
/* 977C8 800A6FC8 21280000 */   addu      $a1, $zero, $zero
/* 977CC 800A6FCC 1000BF8F */  lw         $ra, 0x10($sp)
/* 977D0 800A6FD0 00000000 */  nop
/* 977D4 800A6FD4 0800E003 */  jr         $ra
/* 977D8 800A6FD8 1800BD27 */   addiu     $sp, $sp, 0x18

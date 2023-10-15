.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6f4c
/* 9774C 800A6F4C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97750 800A6F50 21200000 */  addu       $a0, $zero, $zero
/* 97754 800A6F54 1000BFAF */  sw         $ra, 0x10($sp)
/* 97758 800A6F58 2B97020C */  jal        FUN_800a5cac
/* 9775C 800A6F5C 21280000 */   addu      $a1, $zero, $zero
/* 97760 800A6F60 01000424 */  addiu      $a0, $zero, 1
/* 97764 800A6F64 2B97020C */  jal        FUN_800a5cac
/* 97768 800A6F68 21280000 */   addu      $a1, $zero, $zero
/* 9776C 800A6F6C 02000424 */  addiu      $a0, $zero, 2
/* 97770 800A6F70 2B97020C */  jal        FUN_800a5cac
/* 97774 800A6F74 21280000 */   addu      $a1, $zero, $zero
/* 97778 800A6F78 03000424 */  addiu      $a0, $zero, 3
/* 9777C 800A6F7C 2B97020C */  jal        FUN_800a5cac
/* 97780 800A6F80 21280000 */   addu      $a1, $zero, $zero
/* 97784 800A6F84 1000BF8F */  lw         $ra, 0x10($sp)
/* 97788 800A6F88 00000000 */  nop
/* 9778C 800A6F8C 0800E003 */  jr         $ra
/* 97790 800A6F90 1800BD27 */   addiu     $sp, $sp, 0x18

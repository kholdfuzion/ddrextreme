.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80035824
/* 26024 80035824 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 26028 80035828 1000BFAF */  sw         $ra, 0x10($sp)
/* 2602C 8003582C 7CF8020C */  jal        FUN_800be1f0
/* 26030 80035830 00000000 */   nop
/* 26034 80035834 21184000 */  addu       $v1, $v0, $zero
/* 26038 80035838 01006230 */  andi       $v0, $v1, 1
/* 2603C 8003583C 05004014 */  bnez       $v0, .L80035854
/* 26040 80035840 01000224 */   addiu     $v0, $zero, 1
/* 26044 80035844 02006230 */  andi       $v0, $v1, 2
/* 26048 80035848 02004014 */  bnez       $v0, .L80035854
/* 2604C 8003584C 02000224 */   addiu     $v0, $zero, 2
/* 26050 80035850 21106000 */  addu       $v0, $v1, $zero
.L80035854:
/* 26054 80035854 1000BF8F */  lw         $ra, 0x10($sp)
/* 26058 80035858 00000000 */  nop
/* 2605C 8003585C 0800E003 */  jr         $ra
/* 26060 80035860 1800BD27 */   addiu     $sp, $sp, 0x18

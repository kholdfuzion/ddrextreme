.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be810
/* AF010 800BE810 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AF014 800BE814 FFFFA530 */  andi       $a1, $a1, 0xffff
/* AF018 800BE818 1000BFAF */  sw         $ra, 0x10($sp)
/* AF01C 800BE81C 49FA020C */  jal        FUN_800be924
/* AF020 800BE820 21300000 */   addu      $a2, $zero, $zero
/* AF024 800BE824 1000BF8F */  lw         $ra, 0x10($sp)
/* AF028 800BE828 00000000 */  nop
/* AF02C 800BE82C 0800E003 */  jr         $ra
/* AF030 800BE830 1800BD27 */   addiu     $sp, $sp, 0x18

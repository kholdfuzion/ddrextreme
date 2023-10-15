.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800279A8
/* 181A8 800279A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 181AC 800279AC 1000BFAF */  sw         $ra, 0x10($sp)
/* 181B0 800279B0 4685020C */  jal        FUN_800a1518
/* 181B4 800279B4 08008424 */   addiu     $a0, $a0, 8
/* 181B8 800279B8 1000BF8F */  lw         $ra, 0x10($sp)
/* 181BC 800279BC 00000000 */  nop
/* 181C0 800279C0 0800E003 */  jr         $ra
/* 181C4 800279C4 1800BD27 */   addiu     $sp, $sp, 0x18

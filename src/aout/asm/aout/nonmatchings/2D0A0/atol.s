.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel atol
/* 3AE30 8004A630 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AE34 8004A634 1000BFAF */  sw         $ra, 0x10($sp)
/* 3AE38 8004A638 782D010C */  jal        FUN_8004b5e0
/* 3AE3C 8004A63C 00000000 */   nop
/* 3AE40 8004A640 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AE44 8004A644 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3AE48 8004A648 0800E003 */  jr         $ra
/* 3AE4C 8004A64C 00000000 */   nop

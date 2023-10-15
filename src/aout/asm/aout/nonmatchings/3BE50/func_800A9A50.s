.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A9A50
/* 9A250 800A9A50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A254 800A9A54 1000BFAF */  sw         $ra, 0x10($sp)
/* 9A258 800A9A58 CBC1020C */  jal        FUN_800b072c
/* 9A25C 800A9A5C 00000000 */   nop
/* 9A260 800A9A60 1000BF8F */  lw         $ra, 0x10($sp)
/* 9A264 800A9A64 00000000 */  nop
/* 9A268 800A9A68 0800E003 */  jr         $ra
/* 9A26C 800A9A6C 1800BD27 */   addiu     $sp, $sp, 0x18

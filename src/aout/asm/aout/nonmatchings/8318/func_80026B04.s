.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026B04
/* 17304 80026B04 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17308 80026B08 1000BFAF */  sw         $ra, 0x10($sp)
/* 1730C 80026B0C 2728010C */  jal        FUN_8004a09c
/* 17310 80026B10 00000000 */   nop
/* 17314 80026B14 65B9020C */  jal        FUN_800ae594
/* 17318 80026B18 00000000 */   nop
/* 1731C 80026B1C 1000BF8F */  lw         $ra, 0x10($sp)
/* 17320 80026B20 00000000 */  nop
/* 17324 80026B24 0800E003 */  jr         $ra
/* 17328 80026B28 1800BD27 */   addiu     $sp, $sp, 0x18

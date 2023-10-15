.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026B90
/* 17390 80026B90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17394 80026B94 1000BFAF */  sw         $ra, 0x10($sp)
/* 17398 80026B98 2728010C */  jal        FUN_8004a09c
/* 1739C 80026B9C 00000000 */   nop
/* 173A0 80026BA0 1D7A010C */  jal        FUN_8005e874
/* 173A4 80026BA4 00000000 */   nop
/* 173A8 80026BA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 173AC 80026BAC 00000000 */  nop
/* 173B0 80026BB0 0800E003 */  jr         $ra
/* 173B4 80026BB4 1800BD27 */   addiu     $sp, $sp, 0x18

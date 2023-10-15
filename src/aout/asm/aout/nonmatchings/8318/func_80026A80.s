.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026A80
/* 17280 80026A80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17284 80026A84 1000B0AF */  sw         $s0, 0x10($sp)
/* 17288 80026A88 1400BFAF */  sw         $ra, 0x14($sp)
/* 1728C 80026A8C EDC1020C */  jal        FUN_800b07b4
/* 17290 80026A90 21808000 */   addu      $s0, $a0, $zero
/* 17294 80026A94 6AA7010C */  jal        FUN_80069da8
/* 17298 80026A98 08000426 */   addiu     $a0, $s0, 8
/* 1729C 80026A9C 1400BF8F */  lw         $ra, 0x14($sp)
/* 172A0 80026AA0 1000B08F */  lw         $s0, 0x10($sp)
/* 172A4 80026AA4 0800E003 */  jr         $ra
/* 172A8 80026AA8 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026C14
/* 17414 80026C14 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17418 80026C18 1000B0AF */  sw         $s0, 0x10($sp)
/* 1741C 80026C1C 1400BFAF */  sw         $ra, 0x14($sp)
/* 17420 80026C20 EDC1020C */  jal        FUN_800b07b4
/* 17424 80026C24 21808000 */   addu      $s0, $a0, $zero
/* 17428 80026C28 3A63020C */  jal        FUN_80098ce8
/* 1742C 80026C2C 08000426 */   addiu     $a0, $s0, 8
/* 17430 80026C30 1400BF8F */  lw         $ra, 0x14($sp)
/* 17434 80026C34 1000B08F */  lw         $s0, 0x10($sp)
/* 17438 80026C38 0800E003 */  jr         $ra
/* 1743C 80026C3C 1800BD27 */   addiu     $sp, $sp, 0x18

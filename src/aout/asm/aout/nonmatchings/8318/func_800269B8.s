.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800269B8
/* 171B8 800269B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 171BC 800269BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 171C0 800269C0 1400BFAF */  sw         $ra, 0x14($sp)
/* 171C4 800269C4 EDC1020C */  jal        FUN_800b07b4
/* 171C8 800269C8 21808000 */   addu      $s0, $a0, $zero
/* 171CC 800269CC 6AA7010C */  jal        FUN_80069da8
/* 171D0 800269D0 08000426 */   addiu     $a0, $s0, 8
/* 171D4 800269D4 1400BF8F */  lw         $ra, 0x14($sp)
/* 171D8 800269D8 1000B08F */  lw         $s0, 0x10($sp)
/* 171DC 800269DC 0800E003 */  jr         $ra
/* 171E0 800269E0 1800BD27 */   addiu     $sp, $sp, 0x18

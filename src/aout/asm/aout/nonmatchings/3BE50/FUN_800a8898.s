.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8898
/* 99098 800A8898 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9909C 800A889C 1000B0AF */  sw         $s0, 0x10($sp)
/* 990A0 800A88A0 1400BFAF */  sw         $ra, 0x14($sp)
/* 990A4 800A88A4 5AA2020C */  jal        FUN_800a8968
/* 990A8 800A88A8 21808000 */   addu      $s0, $a0, $zero
/* 990AC 800A88AC 21204000 */  addu       $a0, $v0, $zero
/* 990B0 800A88B0 A4A2020C */  jal        FUN_800a8a90
/* 990B4 800A88B4 21280002 */   addu      $a1, $s0, $zero
/* 990B8 800A88B8 1400BF8F */  lw         $ra, 0x14($sp)
/* 990BC 800A88BC 1000B08F */  lw         $s0, 0x10($sp)
/* 990C0 800A88C0 0800E003 */  jr         $ra
/* 990C4 800A88C4 1800BD27 */   addiu     $sp, $sp, 0x18

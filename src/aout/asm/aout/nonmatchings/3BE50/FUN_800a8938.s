.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8938
/* 99138 800A8938 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9913C 800A893C 1000B0AF */  sw         $s0, 0x10($sp)
/* 99140 800A8940 1400BFAF */  sw         $ra, 0x14($sp)
/* 99144 800A8944 5AA2020C */  jal        FUN_800a8968
/* 99148 800A8948 21808000 */   addu      $s0, $a0, $zero
/* 9914C 800A894C 21204000 */  addu       $a0, $v0, $zero
/* 99150 800A8950 DBA2020C */  jal        FUN_800a8b6c
/* 99154 800A8954 21280002 */   addu      $a1, $s0, $zero
/* 99158 800A8958 1400BF8F */  lw         $ra, 0x14($sp)
/* 9915C 800A895C 1000B08F */  lw         $s0, 0x10($sp)
/* 99160 800A8960 0800E003 */  jr         $ra
/* 99164 800A8964 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a88c8
/* 990C8 800A88C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 990CC 800A88CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 990D0 800A88D0 1400BFAF */  sw         $ra, 0x14($sp)
/* 990D4 800A88D4 5AA2020C */  jal        FUN_800a8968
/* 990D8 800A88D8 21808000 */   addu      $s0, $a0, $zero
/* 990DC 800A88DC 21204000 */  addu       $a0, $v0, $zero
/* 990E0 800A88E0 B5A2020C */  jal        FUN_800a8ad4
/* 990E4 800A88E4 21280002 */   addu      $a1, $s0, $zero
/* 990E8 800A88E8 1400BF8F */  lw         $ra, 0x14($sp)
/* 990EC 800A88EC 1000B08F */  lw         $s0, 0x10($sp)
/* 990F0 800A88F0 0800E003 */  jr         $ra
/* 990F4 800A88F4 1800BD27 */   addiu     $sp, $sp, 0x18

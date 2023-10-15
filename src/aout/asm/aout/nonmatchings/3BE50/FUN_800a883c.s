.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a883c
/* 9903C 800A883C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99040 800A8840 1000B0AF */  sw         $s0, 0x10($sp)
/* 99044 800A8844 1400BFAF */  sw         $ra, 0x14($sp)
/* 99048 800A8848 5AA2020C */  jal        FUN_800a8968
/* 9904C 800A884C 21808000 */   addu      $s0, $a0, $zero
/* 99050 800A8850 21204000 */  addu       $a0, $v0, $zero
/* 99054 800A8854 5DA2020C */  jal        FUN_800a8974
/* 99058 800A8858 21280002 */   addu      $a1, $s0, $zero
/* 9905C 800A885C 1400BF8F */  lw         $ra, 0x14($sp)
/* 99060 800A8860 1000B08F */  lw         $s0, 0x10($sp)
/* 99064 800A8864 0800E003 */  jr         $ra
/* 99068 800A8868 1800BD27 */   addiu     $sp, $sp, 0x18

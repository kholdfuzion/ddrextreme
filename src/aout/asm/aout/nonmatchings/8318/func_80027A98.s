.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027A98
/* 18298 80027A98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1829C 80027A9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 182A0 80027AA0 1F78020C */  jal        FUN_8009e07c
/* 182A4 80027AA4 08008424 */   addiu     $a0, $a0, 8
/* 182A8 80027AA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 182AC 80027AAC 00000000 */  nop
/* 182B0 80027AB0 0800E003 */  jr         $ra
/* 182B4 80027AB4 1800BD27 */   addiu     $sp, $sp, 0x18

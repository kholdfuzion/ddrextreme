.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A733C
/* 97B3C 800A733C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97B40 800A7340 1000BFAF */  sw         $ra, 0x10($sp)
/* 97B44 800A7344 949A020C */  jal        FUN_800a6a50
/* 97B48 800A7348 10000424 */   addiu     $a0, $zero, 0x10
/* 97B4C 800A734C 1000BF8F */  lw         $ra, 0x10($sp)
/* 97B50 800A7350 00000000 */  nop
/* 97B54 800A7354 0800E003 */  jr         $ra
/* 97B58 800A7358 1800BD27 */   addiu     $sp, $sp, 0x18

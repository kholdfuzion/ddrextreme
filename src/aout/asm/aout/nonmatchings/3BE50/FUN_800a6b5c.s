.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6b5c
/* 9735C 800A6B5C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97360 800A6B60 1000BFAF */  sw         $ra, 0x10($sp)
/* 97364 800A6B64 8298020C */  jal        FUN_800a6208
/* 97368 800A6B68 01000624 */   addiu     $a2, $zero, 1
/* 9736C 800A6B6C 1000BF8F */  lw         $ra, 0x10($sp)
/* 97370 800A6B70 00000000 */  nop
/* 97374 800A6B74 0800E003 */  jr         $ra
/* 97378 800A6B78 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022c3c
/* 1343C 80022C3C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13440 80022C40 1000BFAF */  sw         $ra, 0x10($sp)
/* 13444 80022C44 E555010C */  jal        FUN_80055794
/* 13448 80022C48 00000000 */   nop
/* 1344C 80022C4C 1000BF8F */  lw         $ra, 0x10($sp)
/* 13450 80022C50 00000000 */  nop
/* 13454 80022C54 0800E003 */  jr         $ra
/* 13458 80022C58 1800BD27 */   addiu     $sp, $sp, 0x18

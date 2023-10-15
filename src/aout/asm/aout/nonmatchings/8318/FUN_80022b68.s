.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022b68
/* 13368 80022B68 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1336C 80022B6C 1000BFAF */  sw         $ra, 0x10($sp)
/* 13370 80022B70 D255010C */  jal        FUN_80055748
/* 13374 80022B74 00000000 */   nop
/* 13378 80022B78 1000BF8F */  lw         $ra, 0x10($sp)
/* 1337C 80022B7C 00000000 */  nop
/* 13380 80022B80 0800E003 */  jr         $ra
/* 13384 80022B84 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027E38
/* 18638 80027E38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1863C 80027E3C 1000BFAF */  sw         $ra, 0x10($sp)
/* 18640 80027E40 5276020C */  jal        FUN_8009d948
/* 18644 80027E44 08008424 */   addiu     $a0, $a0, 8
/* 18648 80027E48 1000BF8F */  lw         $ra, 0x10($sp)
/* 1864C 80027E4C 00000000 */  nop
/* 18650 80027E50 0800E003 */  jr         $ra
/* 18654 80027E54 1800BD27 */   addiu     $sp, $sp, 0x18

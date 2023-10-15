.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9030
/* 99830 800A9030 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99834 800A9034 1000BFAF */  sw         $ra, 0x10($sp)
/* 99838 800A9038 14A4020C */  jal        FUN_800a9050
/* 9983C 800A903C 00000000 */   nop
/* 99840 800A9040 1000BF8F */  lw         $ra, 0x10($sp)
/* 99844 800A9044 00000000 */  nop
/* 99848 800A9048 0800E003 */  jr         $ra
/* 9984C 800A904C 1800BD27 */   addiu     $sp, $sp, 0x18

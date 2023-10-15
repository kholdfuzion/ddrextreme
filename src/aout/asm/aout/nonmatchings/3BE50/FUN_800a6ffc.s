.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6ffc
/* 977FC 800A6FFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97800 800A7000 1000BFAF */  sw         $ra, 0x10($sp)
/* 97804 800A7004 BF96020C */  jal        FUN_800a5afc
/* 97808 800A7008 00000000 */   nop
/* 9780C 800A700C 1000BF8F */  lw         $ra, 0x10($sp)
/* 97810 800A7010 00000000 */  nop
/* 97814 800A7014 0800E003 */  jr         $ra
/* 97818 800A7018 1800BD27 */   addiu     $sp, $sp, 0x18

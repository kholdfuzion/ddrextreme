.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6fdc
/* 977DC 800A6FDC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 977E0 800A6FE0 1000BFAF */  sw         $ra, 0x10($sp)
/* 977E4 800A6FE4 5F96020C */  jal        FUN_800a597c
/* 977E8 800A6FE8 00000000 */   nop
/* 977EC 800A6FEC 1000BF8F */  lw         $ra, 0x10($sp)
/* 977F0 800A6FF0 00000000 */  nop
/* 977F4 800A6FF4 0800E003 */  jr         $ra
/* 977F8 800A6FF8 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80023020
/* 13820 80023020 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13824 80023024 1000BFAF */  sw         $ra, 0x10($sp)
/* 13828 80023028 6C55010C */  jal        FUN_800555b0
/* 1382C 8002302C 00000000 */   nop
/* 13830 80023030 1000BF8F */  lw         $ra, 0x10($sp)
/* 13834 80023034 00000000 */  nop
/* 13838 80023038 0800E003 */  jr         $ra
/* 1383C 8002303C 1800BD27 */   addiu     $sp, $sp, 0x18

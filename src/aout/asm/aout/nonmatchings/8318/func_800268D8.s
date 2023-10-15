.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800268D8
/* 170D8 800268D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 170DC 800268DC 1000BFAF */  sw         $ra, 0x10($sp)
/* 170E0 800268E0 B8C1020C */  jal        FUN_800b06e0
/* 170E4 800268E4 FE000424 */   addiu     $a0, $zero, 0xfe
/* 170E8 800268E8 6728010C */  jal        FUN_8004a19c
/* 170EC 800268EC 00000000 */   nop
/* 170F0 800268F0 1000BF8F */  lw         $ra, 0x10($sp)
/* 170F4 800268F4 00000000 */  nop
/* 170F8 800268F8 0800E003 */  jr         $ra
/* 170FC 800268FC 1800BD27 */   addiu     $sp, $sp, 0x18

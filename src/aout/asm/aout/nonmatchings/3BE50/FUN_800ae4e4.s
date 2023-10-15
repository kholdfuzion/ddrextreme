.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae4e4
/* 9ECE4 800AE4E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9ECE8 800AE4E8 1000BFAF */  sw         $ra, 0x10($sp)
/* 9ECEC 800AE4EC 8EB9020C */  jal        FUN_800ae638
/* 9ECF0 800AE4F0 00000000 */   nop
/* 9ECF4 800AE4F4 3FAC020C */  jal        FUN_800ab0fc
/* 9ECF8 800AE4F8 00000000 */   nop
/* 9ECFC 800AE4FC 7219030C */  jal        FUN_800c65c8
/* 9ED00 800AE500 22000424 */   addiu     $a0, $zero, 0x22
/* 9ED04 800AE504 D8B2020C */  jal        FUN_800acb60
/* 9ED08 800AE508 00000000 */   nop
/* 9ED0C 800AE50C 1000BF8F */  lw         $ra, 0x10($sp)
/* 9ED10 800AE510 00000000 */  nop
/* 9ED14 800AE514 0800E003 */  jr         $ra
/* 9ED18 800AE518 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a07c
/* 3A87C 8004A07C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3A880 8004A080 1000BFAF */  sw         $ra, 0x10($sp)
/* 3A884 8004A084 D677010C */  jal        FUN_8005df58
/* 3A888 8004A088 00000000 */   nop
/* 3A88C 8004A08C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3A890 8004A090 00000000 */  nop
/* 3A894 8004A094 0800E003 */  jr         $ra
/* 3A898 8004A098 1800BD27 */   addiu     $sp, $sp, 0x18

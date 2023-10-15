.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003b240
/* 2BA40 8003B240 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2BA44 8003B244 1000BFAF */  sw         $ra, 0x10($sp)
/* 2BA48 8003B248 79EB000C */  jal        FUN_8003ade4
/* 2BA4C 8003B24C 00000000 */   nop
/* 2BA50 8003B250 35B3000C */  jal        FUN_8002ccd4
/* 2BA54 8003B254 21200000 */   addu      $a0, $zero, $zero
/* 2BA58 8003B258 1000BF8F */  lw         $ra, 0x10($sp)
/* 2BA5C 8003B25C 2B100200 */  sltu       $v0, $zero, $v0
/* 2BA60 8003B260 0800E003 */  jr         $ra
/* 2BA64 8003B264 1800BD27 */   addiu     $sp, $sp, 0x18

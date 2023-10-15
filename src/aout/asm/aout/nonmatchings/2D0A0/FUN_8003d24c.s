.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003d24c
/* 2DA4C 8003D24C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2DA50 8003D250 1000BFAF */  sw         $ra, 0x10($sp)
/* 2DA54 8003D254 50F2000C */  jal        FUN_8003c940
/* 2DA58 8003D258 00000000 */   nop
/* 2DA5C 8003D25C 59B3000C */  jal        FUN_8002cd64
/* 2DA60 8003D260 21200000 */   addu      $a0, $zero, $zero
/* 2DA64 8003D264 0A004010 */  beqz       $v0, .L8003D290
/* 2DA68 8003D268 21100000 */   addu      $v0, $zero, $zero
/* 2DA6C 8003D26C 35B3000C */  jal        FUN_8002ccd4
/* 2DA70 8003D270 01000424 */   addiu     $a0, $zero, 1
/* 2DA74 8003D274 05004010 */  beqz       $v0, .L8003D28C
/* 2DA78 8003D278 21200000 */   addu      $a0, $zero, $zero
/* 2DA7C 8003D27C D79A020C */  jal        FUN_800a6b5c
/* 2DA80 8003D280 21280000 */   addu      $a1, $zero, $zero
/* 2DA84 8003D284 A4F40008 */  j          .L8003D290
/* 2DA88 8003D288 01000224 */   addiu     $v0, $zero, 1
.L8003D28C:
/* 2DA8C 8003D28C 21100000 */  addu       $v0, $zero, $zero
.L8003D290:
/* 2DA90 8003D290 1000BF8F */  lw         $ra, 0x10($sp)
/* 2DA94 8003D294 00000000 */  nop
/* 2DA98 8003D298 0800E003 */  jr         $ra
/* 2DA9C 8003D29C 1800BD27 */   addiu     $sp, $sp, 0x18

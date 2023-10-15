.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abc30
/* 9C430 800ABC30 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9C434 800ABC34 1000BFAF */  sw         $ra, 0x10($sp)
/* 9C438 800ABC38 8FAF020C */  jal        FUN_800abe3c
/* 9C43C 800ABC3C 00000000 */   nop
/* 9C440 800ABC40 08004010 */  beqz       $v0, .L800ABC64
/* 9C444 800ABC44 00000000 */   nop
/* 9C448 800ABC48 1EAF020C */  jal        FUN_800abc78
/* 9C44C 800ABC4C 21204000 */   addu      $a0, $v0, $zero
/* 9C450 800ABC50 04004014 */  bnez       $v0, .L800ABC64
/* 9C454 800ABC54 1580033C */   lui       $v1, %hi(D_8014BA8E)
/* 9C458 800ABC58 8EBA6284 */  lh         $v0, %lo(D_8014BA8E)($v1)
/* 9C45C 800ABC5C 1AAF0208 */  j          .L800ABC68
/* 9C460 800ABC60 2B100200 */   sltu      $v0, $zero, $v0
.L800ABC64:
/* 9C464 800ABC64 21100000 */  addu       $v0, $zero, $zero
.L800ABC68:
/* 9C468 800ABC68 1000BF8F */  lw         $ra, 0x10($sp)
/* 9C46C 800ABC6C 00000000 */  nop
/* 9C470 800ABC70 0800E003 */  jr         $ra
/* 9C474 800ABC74 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aaf14
/* 9B714 800AAF14 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B718 800AAF18 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B71C 800AAF1C F6AB020C */  jal        FUN_800aafd8
/* 9B720 800AAF20 00000000 */   nop
/* 9B724 800AAF24 21184000 */  addu       $v1, $v0, $zero
/* 9B728 800AAF28 02006004 */  bltz       $v1, .L800AAF34
/* 9B72C 800AAF2C FFFF0224 */   addiu     $v0, $zero, -1
/* 9B730 800AAF30 01000224 */  addiu      $v0, $zero, 1
.L800AAF34:
/* 9B734 800AAF34 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B738 800AAF38 00000000 */  nop
/* 9B73C 800AAF3C 0800E003 */  jr         $ra
/* 9B740 800AAF40 1800BD27 */   addiu     $sp, $sp, 0x18

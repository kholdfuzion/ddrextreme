.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002055c
/* 10D5C 8002055C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10D60 80020560 1000BFAF */  sw         $ra, 0x10($sp)
/* 10D64 80020564 5ACB020C */  jal        FUN_800b2d68
/* 10D68 80020568 01000424 */   addiu     $a0, $zero, 1
/* 10D6C 8002056C 47CB020C */  jal        FUN_800b2d1c
/* 10D70 80020570 21200000 */   addu      $a0, $zero, $zero
/* 10D74 80020574 7CAA000C */  jal        vsync_8002a9f0
/* 10D78 80020578 00000000 */   nop
/* 10D7C 8002057C 6C55010C */  jal        FUN_800555b0
/* 10D80 80020580 00000000 */   nop
/* 10D84 80020584 1000BF8F */  lw         $ra, 0x10($sp)
/* 10D88 80020588 00000000 */  nop
/* 10D8C 8002058C 0800E003 */  jr         $ra
/* 10D90 80020590 1800BD27 */   addiu     $sp, $sp, 0x18

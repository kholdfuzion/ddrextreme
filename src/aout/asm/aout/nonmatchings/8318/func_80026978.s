.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026978
/* 17178 80026978 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1717C 8002697C 1000BFAF */  sw         $ra, 0x10($sp)
/* 17180 80026980 62A7010C */  jal        FUN_80069d88
/* 17184 80026984 08008424 */   addiu     $a0, $a0, 8
/* 17188 80026988 04000324 */  addiu      $v1, $zero, 4
/* 1718C 8002698C 06004314 */  bne        $v0, $v1, .L800269A8
/* 17190 80026990 09000224 */   addiu     $v0, $zero, 9
/* 17194 80026994 5ACB020C */  jal        FUN_800b2d68
/* 17198 80026998 01000424 */   addiu     $a0, $zero, 1
/* 1719C 8002699C EDC1020C */  jal        FUN_800b07b4
/* 171A0 800269A0 00000000 */   nop
/* 171A4 800269A4 0E000224 */  addiu      $v0, $zero, 0xe
.L800269A8:
/* 171A8 800269A8 1000BF8F */  lw         $ra, 0x10($sp)
/* 171AC 800269AC 00000000 */  nop
/* 171B0 800269B0 0800E003 */  jr         $ra
/* 171B4 800269B4 1800BD27 */   addiu     $sp, $sp, 0x18

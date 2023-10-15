.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003adbc
/* 2B5BC 8003ADBC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2B5C0 8003ADC0 1000BFAF */  sw         $ra, 0x10($sp)
/* 2B5C4 8003ADC4 0FEA000C */  jal        FUN_8003a83c
/* 2B5C8 8003ADC8 00000000 */   nop
/* 2B5CC 8003ADCC 35B3000C */  jal        FUN_8002ccd4
/* 2B5D0 8003ADD0 21200000 */   addu      $a0, $zero, $zero
/* 2B5D4 8003ADD4 1000BF8F */  lw         $ra, 0x10($sp)
/* 2B5D8 8003ADD8 2B100200 */  sltu       $v0, $zero, $v0
/* 2B5DC 8003ADDC 0800E003 */  jr         $ra
/* 2B5E0 8003ADE0 1800BD27 */   addiu     $sp, $sp, 0x18

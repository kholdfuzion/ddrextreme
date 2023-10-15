.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026878
/* 17078 80026878 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1707C 8002687C 1000B0AF */  sw         $s0, 0x10($sp)
/* 17080 80026880 21808000 */  addu       $s0, $a0, $zero
/* 17084 80026884 1400BFAF */  sw         $ra, 0x14($sp)
/* 17088 80026888 5ACB020C */  jal        FUN_800b2d68
/* 1708C 8002688C 01000424 */   addiu     $a0, $zero, 1
/* 17090 80026890 9B9E010C */  jal        FUN_80067a6c
/* 17094 80026894 08000426 */   addiu     $a0, $s0, 8
/* 17098 80026898 1400BF8F */  lw         $ra, 0x14($sp)
/* 1709C 8002689C 1000B08F */  lw         $s0, 0x10($sp)
/* 170A0 800268A0 0800E003 */  jr         $ra
/* 170A4 800268A4 1800BD27 */   addiu     $sp, $sp, 0x18

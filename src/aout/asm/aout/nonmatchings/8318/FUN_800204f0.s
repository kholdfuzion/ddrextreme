.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800204f0
/* 10CF0 800204F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10CF4 800204F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 10CF8 800204F8 0A8A000C */  jal        FUN_80022828
/* 10CFC 800204FC 04008424 */   addiu     $a0, $a0, 4
/* 10D00 80020500 1000BF8F */  lw         $ra, 0x10($sp)
/* 10D04 80020504 00000000 */  nop
/* 10D08 80020508 0800E003 */  jr         $ra
/* 10D0C 8002050C 1800BD27 */   addiu     $sp, $sp, 0x18

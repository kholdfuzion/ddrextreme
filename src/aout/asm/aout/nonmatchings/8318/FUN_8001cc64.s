.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cc64
/* D464 8001CC64 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D468 8001CC68 1000BFAF */  sw         $ra, 0x10($sp)
/* D46C 8001CC6C 0E81000C */  jal        FUN_80020438
/* D470 8001CC70 04008424 */   addiu     $a0, $a0, 4
/* D474 8001CC74 CA7A000C */  jal        FUN_8001eb28
/* D478 8001CC78 00000000 */   nop
/* D47C 8001CC7C 1000BF8F */  lw         $ra, 0x10($sp)
/* D480 8001CC80 00000000 */  nop
/* D484 8001CC84 0800E003 */  jr         $ra
/* D488 8001CC88 1800BD27 */   addiu     $sp, $sp, 0x18

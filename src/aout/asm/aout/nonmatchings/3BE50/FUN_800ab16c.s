.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab16c
/* 9B96C 800AB16C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B970 800AB170 1C80043C */  lui        $a0, %hi(D_801C4308)
/* 9B974 800AB174 08438424 */  addiu      $a0, $a0, %lo(D_801C4308)
/* 9B978 800AB178 21280000 */  addu       $a1, $zero, $zero
/* 9B97C 800AB17C 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B980 800AB180 F6A2000C */  jal        memset
/* 9B984 800AB184 48030624 */   addiu     $a2, $zero, 0x348
/* 9B988 800AB188 1C80043C */  lui        $a0, %hi(D_801C3FB8)
/* 9B98C 800AB18C B83F8424 */  addiu      $a0, $a0, %lo(D_801C3FB8)
/* 9B990 800AB190 21280000 */  addu       $a1, $zero, $zero
/* 9B994 800AB194 F6A2000C */  jal        memset
/* 9B998 800AB198 48030624 */   addiu     $a2, $zero, 0x348
/* 9B99C 800AB19C 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B9A0 800AB1A0 00000000 */  nop
/* 9B9A4 800AB1A4 0800E003 */  jr         $ra
/* 9B9A8 800AB1A8 1800BD27 */   addiu     $sp, $sp, 0x18

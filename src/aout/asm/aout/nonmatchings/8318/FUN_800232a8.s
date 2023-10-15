.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800232a8
/* 13AA8 800232A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13AAC 800232AC 1000BFAF */  sw         $ra, 0x10($sp)
/* 13AB0 800232B0 D4BB010C */  jal        FUN_8006ef50
/* 13AB4 800232B4 08008424 */   addiu     $a0, $a0, 8
/* 13AB8 800232B8 EDC1020C */  jal        FUN_800b07b4
/* 13ABC 800232BC 00000000 */   nop
/* 13AC0 800232C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 13AC4 800232C4 00000000 */  nop
/* 13AC8 800232C8 0800E003 */  jr         $ra
/* 13ACC 800232CC 1800BD27 */   addiu     $sp, $sp, 0x18

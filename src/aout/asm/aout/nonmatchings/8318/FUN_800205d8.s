.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800205d8
/* 10DD8 800205D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10DDC 800205DC 1000BFAF */  sw         $ra, 0x10($sp)
/* 10DE0 800205E0 7A98000C */  jal        FUN_800261e8
/* 10DE4 800205E4 04008424 */   addiu     $a0, $a0, 4
/* 10DE8 800205E8 1000BF8F */  lw         $ra, 0x10($sp)
/* 10DEC 800205EC 00000000 */  nop
/* 10DF0 800205F0 0800E003 */  jr         $ra
/* 10DF4 800205F4 1800BD27 */   addiu     $sp, $sp, 0x18

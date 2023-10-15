.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003060c
/* 20E0C 8003060C F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 20E10 80030610 0800E003 */  jr         $ra
/* 20E14 80030614 1000BD27 */   addiu     $sp, $sp, 0x10

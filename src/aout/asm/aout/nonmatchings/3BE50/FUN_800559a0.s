.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800559a0
/* 461A0 800559A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 461A4 800559A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 461A8 800559A8 9358020C */  jal        FUN_8009624c
/* 461AC 800559AC 00000000 */   nop
/* 461B0 800559B0 1000BF8F */  lw         $ra, 0x10($sp)
/* 461B4 800559B4 00000000 */  nop
/* 461B8 800559B8 0800E003 */  jr         $ra
/* 461BC 800559BC 1800BD27 */   addiu     $sp, $sp, 0x18

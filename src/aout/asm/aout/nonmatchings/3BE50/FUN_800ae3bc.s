.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae3bc
/* 9EBBC 800AE3BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9EBC0 800AE3C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 9EBC4 800AE3C4 72B9020C */  jal        FUN_800ae5c8
/* 9EBC8 800AE3C8 00000000 */   nop
/* 9EBCC 800AE3CC 8EB9020C */  jal        FUN_800ae638
/* 9EBD0 800AE3D0 00000000 */   nop
/* 9EBD4 800AE3D4 AFB9020C */  jal        FUN_800ae6bc
/* 9EBD8 800AE3D8 00000000 */   nop
/* 9EBDC 800AE3DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 9EBE0 800AE3E0 00000000 */  nop
/* 9EBE4 800AE3E4 0800E003 */  jr         $ra
/* 9EBE8 800AE3E8 1800BD27 */   addiu     $sp, $sp, 0x18

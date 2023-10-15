.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSYNC_OBJ_200
/* B934 8001B134 1800BF8F */  lw         $ra, 0x18($sp)
/* B938 8001B138 2000BD27 */  addiu      $sp, $sp, 0x20
/* B93C 8001B13C 0800E003 */  jr         $ra
/* B940 8001B140 00000000 */   nop

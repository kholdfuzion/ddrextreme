.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_29E8
/* B1CC 8001A9CC 1800BF8F */  lw         $ra, 0x18($sp)
/* B1D0 8001A9D0 2000BD27 */  addiu      $sp, $sp, 0x20
/* B1D4 8001A9D4 0800E003 */  jr         $ra
/* B1D8 8001A9D8 00000000 */   nop

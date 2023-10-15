.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GEO_00_OBJ_2C
/* 2CFFC 8003C7FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 2D000 8003C800 1800BD27 */  addiu      $sp, $sp, 0x18
/* 2D004 8003C804 0800E003 */  jr         $ra
/* 2D008 8003C808 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_RRWA_OBJ_3C
/* A8D00 800B8500 1000BF8F */  lw         $ra, 0x10($sp)
/* A8D04 800B8504 1800BD27 */  addiu      $sp, $sp, 0x18
/* A8D08 800B8508 0800E003 */  jr         $ra
/* A8D0C 800B850C 00000000 */   nop
/* A8D10 800B8510 00000000 */  nop

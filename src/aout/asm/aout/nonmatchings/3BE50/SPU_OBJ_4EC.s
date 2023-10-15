.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_4EC
/* A79A0 800B71A0 1000BF8F */  lw         $ra, 0x10($sp)
/* A79A4 800B71A4 1800BD27 */  addiu      $sp, $sp, 0x18
/* A79A8 800B71A8 0800E003 */  jr         $ra
/* A79AC 800B71AC 00000000 */   nop

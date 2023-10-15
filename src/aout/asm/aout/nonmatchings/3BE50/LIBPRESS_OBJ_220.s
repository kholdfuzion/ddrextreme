.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_220
/* 63B64 80073364 1000BF8F */  lw         $ra, 0x10($sp)
/* 63B68 80073368 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63B6C 8007336C 0800E003 */  jr         $ra
/* 63B70 80073370 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel TODIGIT_OBJ_60
/* 175E8 80026DE8 1000BF8F */  lw         $ra, 0x10($sp)
/* 175EC 80026DEC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 175F0 80026DF0 0800E003 */  jr         $ra
/* 175F4 80026DF4 00000000 */   nop

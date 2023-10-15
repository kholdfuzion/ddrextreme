.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MEMMOVE_OBJ_64
/* 1176C 80020F6C 0800E003 */  jr         $ra
/* 11770 80020F70 00000000 */   nop
/* 11774 80020F74 00000000 */  nop

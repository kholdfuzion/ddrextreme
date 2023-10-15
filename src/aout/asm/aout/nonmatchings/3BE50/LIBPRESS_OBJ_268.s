.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_268
/* 63BAC 800733AC 1000BF8F */  lw         $ra, 0x10($sp)
/* 63BB0 800733B0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63BB4 800733B4 0800E003 */  jr         $ra
/* 63BB8 800733B8 00000000 */   nop

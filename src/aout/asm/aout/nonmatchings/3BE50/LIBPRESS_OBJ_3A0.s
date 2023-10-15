.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_3A0
/* 63CE4 800734E4 1000BF8F */  lw         $ra, 0x10($sp)
/* 63CE8 800734E8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63CEC 800734EC 0800E003 */  jr         $ra
/* 63CF0 800734F0 00000000 */   nop

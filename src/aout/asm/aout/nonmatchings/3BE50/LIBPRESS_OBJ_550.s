.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_550
/* 63E94 80073694 1800BF8F */  lw         $ra, 0x18($sp)
/* 63E98 80073698 2000BD27 */  addiu      $sp, $sp, 0x20
/* 63E9C 8007369C 0800E003 */  jr         $ra
/* 63EA0 800736A0 00000000 */   nop

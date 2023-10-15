.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_5E4
/* 63F28 80073728 1800BF8F */  lw         $ra, 0x18($sp)
/* 63F2C 8007372C 2000BD27 */  addiu      $sp, $sp, 0x20
/* 63F30 80073730 0800E003 */  jr         $ra
/* 63F34 80073734 00000000 */   nop

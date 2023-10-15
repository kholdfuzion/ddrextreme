.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_1B4
/* 63AF8 800732F8 000082AC */  sw         $v0, ($a0)
/* 63AFC 800732FC 00008594 */  lhu        $a1, ($a0)
/* 63B00 80073300 3DCD010C */  jal        LIBPRESS_OBJ_3B0
/* 63B04 80073304 00000000 */   nop
/* 63B08 80073308 1000BF8F */  lw         $ra, 0x10($sp)
/* 63B0C 8007330C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63B10 80073310 0800E003 */  jr         $ra
/* 63B14 80073314 00000000 */   nop

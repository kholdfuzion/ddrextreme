.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTout
/* 63B18 80073318 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63B1C 8007331C 1000BFAF */  sw         $ra, 0x10($sp)
/* 63B20 80073320 61CD010C */  jal        LIBPRESS_OBJ_440
/* 63B24 80073324 00000000 */   nop
/* 63B28 80073328 1000BF8F */  lw         $ra, 0x10($sp)
/* 63B2C 8007332C 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63B30 80073330 0800E003 */  jr         $ra
/* 63B34 80073334 00000000 */   nop

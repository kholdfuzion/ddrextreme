.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_0022_OBJ_F4
/* 1208C 8002188C 1800BF8F */  lw         $ra, 0x18($sp)
/* 12090 80021890 1400B18F */  lw         $s1, 0x14($sp)
/* 12094 80021894 1000B08F */  lw         $s0, 0x10($sp)
/* 12098 80021898 0800E003 */  jr         $ra
/* 1209C 8002189C 2000BD27 */   addiu     $sp, $sp, 0x20
/* 120A0 800218A0 00000000 */  nop
/* 120A4 800218A4 00000000 */  nop

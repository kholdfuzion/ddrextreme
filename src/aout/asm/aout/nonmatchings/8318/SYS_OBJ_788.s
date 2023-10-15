.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_788
/* 8F6C 8001876C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 8F70 80018770 1800B28F */  lw         $s2, 0x18($sp)
/* 8F74 80018774 1400B18F */  lw         $s1, 0x14($sp)
/* 8F78 80018778 1000B08F */  lw         $s0, 0x10($sp)
/* 8F7C 8001877C 0800E003 */  jr         $ra
/* 8F80 80018780 2000BD27 */   addiu     $sp, $sp, 0x20

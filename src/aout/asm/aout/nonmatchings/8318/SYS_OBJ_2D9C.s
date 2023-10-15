.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2D9C
/* B580 8001AD80 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B584 8001AD84 1800B28F */  lw         $s2, 0x18($sp)
/* B588 8001AD88 1400B18F */  lw         $s1, 0x14($sp)
/* B58C 8001AD8C 1000B08F */  lw         $s0, 0x10($sp)
/* B590 8001AD90 0800E003 */  jr         $ra
/* B594 8001AD94 2000BD27 */   addiu     $sp, $sp, 0x20

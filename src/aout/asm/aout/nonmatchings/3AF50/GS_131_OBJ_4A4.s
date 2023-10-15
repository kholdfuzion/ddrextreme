.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_131_OBJ_4A4
/* 3B3F4 8004ABF4 140022AE */  sw         $v0, 0x14($s1)
/* 3B3F8 8004ABF8 1800BF8F */  lw         $ra, 0x18($sp)
/* 3B3FC 8004ABFC 1400B18F */  lw         $s1, 0x14($sp)
/* 3B400 8004AC00 1000B08F */  lw         $s0, 0x10($sp)
/* 3B404 8004AC04 0800E003 */  jr         $ra
/* 3B408 8004AC08 2000BD27 */   addiu     $sp, $sp, 0x20

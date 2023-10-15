.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_894
/* A7D48 800B7548 1800BF8F */  lw         $ra, 0x18($sp)
/* A7D4C 800B754C 1400B18F */  lw         $s1, 0x14($sp)
/* A7D50 800B7550 1000B08F */  lw         $s0, 0x10($sp)
/* A7D54 800B7554 0800E003 */  jr         $ra
/* A7D58 800B7558 2000BD27 */   addiu     $sp, $sp, 0x20

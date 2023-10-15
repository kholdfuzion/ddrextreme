.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2870
/* B054 8001A854 1400BF8F */  lw         $ra, 0x14($sp)
/* B058 8001A858 1000B08F */  lw         $s0, 0x10($sp)
/* B05C 8001A85C 0800E003 */  jr         $ra
/* B060 8001A860 1800BD27 */   addiu     $sp, $sp, 0x18

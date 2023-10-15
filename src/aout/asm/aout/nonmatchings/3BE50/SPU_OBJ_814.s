.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_814
/* A7CC8 800B74C8 1400BF8F */  lw         $ra, 0x14($sp)
/* A7CCC 800B74CC 1000B08F */  lw         $s0, 0x10($sp)
/* A7CD0 800B74D0 0800E003 */  jr         $ra
/* A7CD4 800B74D4 1800BD27 */   addiu     $sp, $sp, 0x18

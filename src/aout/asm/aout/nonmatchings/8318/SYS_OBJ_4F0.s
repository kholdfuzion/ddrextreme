.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_4F0
/* 8CD4 800184D4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 8CD8 800184D8 1800B08F */  lw         $s0, 0x18($sp)
/* 8CDC 800184DC 0800E003 */  jr         $ra
/* 8CE0 800184E0 2000BD27 */   addiu     $sp, $sp, 0x20

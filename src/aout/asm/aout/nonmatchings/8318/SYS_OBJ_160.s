.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_160
/* 8944 80018144 1800BF8F */  lw         $ra, 0x18($sp)
/* 8948 80018148 1400B18F */  lw         $s1, 0x14($sp)
/* 894C 8001814C 1000B08F */  lw         $s0, 0x10($sp)
/* 8950 80018150 0800E003 */  jr         $ra
/* 8954 80018154 2000BD27 */   addiu     $sp, $sp, 0x20

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1FE0
/* A7C4 80019FC4 2400BF8F */  lw         $ra, 0x24($sp)
/* A7C8 80019FC8 2000B48F */  lw         $s4, 0x20($sp)
/* A7CC 80019FCC 1C00B38F */  lw         $s3, 0x1c($sp)
/* A7D0 80019FD0 1800B28F */  lw         $s2, 0x18($sp)
/* A7D4 80019FD4 1400B18F */  lw         $s1, 0x14($sp)
/* A7D8 80019FD8 1000B08F */  lw         $s0, 0x10($sp)
/* A7DC 80019FDC 0800E003 */  jr         $ra
/* A7E0 80019FE0 2800BD27 */   addiu     $sp, $sp, 0x28

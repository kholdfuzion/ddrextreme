.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_4A4
/* A87B8 800B7FB8 8400BF8F */  lw         $ra, 0x84($sp)
/* A87BC 800B7FBC 8000BE8F */  lw         $fp, 0x80($sp)
/* A87C0 800B7FC0 7C00B78F */  lw         $s7, 0x7c($sp)
/* A87C4 800B7FC4 7800B68F */  lw         $s6, 0x78($sp)
/* A87C8 800B7FC8 7400B58F */  lw         $s5, 0x74($sp)
/* A87CC 800B7FCC 7000B48F */  lw         $s4, 0x70($sp)
/* A87D0 800B7FD0 6C00B38F */  lw         $s3, 0x6c($sp)
/* A87D4 800B7FD4 6800B28F */  lw         $s2, 0x68($sp)
/* A87D8 800B7FD8 6400B18F */  lw         $s1, 0x64($sp)
/* A87DC 800B7FDC 6000B08F */  lw         $s0, 0x60($sp)
/* A87E0 800B7FE0 0800E003 */  jr         $ra
/* A87E4 800B7FE4 8800BD27 */   addiu     $sp, $sp, 0x88
/* A87E8 800B7FE8 00000000 */  nop
/* A87EC 800B7FEC 00000000 */  nop
/* A87F0 800B7FF0 00000000 */  nop

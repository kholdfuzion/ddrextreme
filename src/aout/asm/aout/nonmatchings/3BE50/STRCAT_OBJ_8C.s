.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel STRCAT_OBJ_8C
/* AD74C 800BCF4C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AD750 800BCF50 1800B28F */  lw         $s2, 0x18($sp)
/* AD754 800BCF54 1400B18F */  lw         $s1, 0x14($sp)
/* AD758 800BCF58 1000B08F */  lw         $s0, 0x10($sp)
/* AD75C 800BCF5C 0800E003 */  jr         $ra
/* AD760 800BCF60 2000BD27 */   addiu     $sp, $sp, 0x20
/* AD764 800BCF64 00000000 */  nop
/* AD768 800BCF68 00000000 */  nop
/* AD76C 800BCF6C 00000000 */  nop

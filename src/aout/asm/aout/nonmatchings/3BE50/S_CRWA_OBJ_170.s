.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_CRWA_OBJ_170
/* A91F4 800B89F4 3000BF8F */  lw         $ra, 0x30($sp)
/* A91F8 800B89F8 2C00B58F */  lw         $s5, 0x2c($sp)
/* A91FC 800B89FC 2800B48F */  lw         $s4, 0x28($sp)
/* A9200 800B8A00 2400B38F */  lw         $s3, 0x24($sp)
/* A9204 800B8A04 2000B28F */  lw         $s2, 0x20($sp)
/* A9208 800B8A08 1C00B18F */  lw         $s1, 0x1c($sp)
/* A920C 800B8A0C 1800B08F */  lw         $s0, 0x18($sp)
/* A9210 800B8A10 0800E003 */  jr         $ra
/* A9214 800B8A14 3800BD27 */   addiu     $sp, $sp, 0x38
/* A9218 800B8A18 00000000 */  nop
/* A921C 800B8A1C 00000000 */  nop
/* A9220 800B8A20 00000000 */  nop

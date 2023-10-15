.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_238C
/* AB70 8001A370 2000BF8F */  lw         $ra, 0x20($sp)
/* AB74 8001A374 1C00B38F */  lw         $s3, 0x1c($sp)
/* AB78 8001A378 1800B28F */  lw         $s2, 0x18($sp)
/* AB7C 8001A37C 1400B18F */  lw         $s1, 0x14($sp)
/* AB80 8001A380 1000B08F */  lw         $s0, 0x10($sp)
/* AB84 8001A384 0800E003 */  jr         $ra
/* AB88 8001A388 2800BD27 */   addiu     $sp, $sp, 0x28

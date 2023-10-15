.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_424
/* A78D8 800B70D8 2000BF8F */  lw         $ra, 0x20($sp)
/* A78DC 800B70DC 1C00B38F */  lw         $s3, 0x1c($sp)
/* A78E0 800B70E0 1800B28F */  lw         $s2, 0x18($sp)
/* A78E4 800B70E4 1400B18F */  lw         $s1, 0x14($sp)
/* A78E8 800B70E8 1000B08F */  lw         $s0, 0x10($sp)
/* A78EC 800B70EC 0800E003 */  jr         $ra
/* A78F0 800B70F0 2800BD27 */   addiu     $sp, $sp, 0x28

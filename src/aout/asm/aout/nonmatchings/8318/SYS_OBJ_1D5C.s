.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1D5C
/* A540 80019D40 2800BF8F */  lw         $ra, 0x28($sp)
/* A544 80019D44 2400B58F */  lw         $s5, 0x24($sp)
/* A548 80019D48 2000B48F */  lw         $s4, 0x20($sp)
/* A54C 80019D4C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A550 80019D50 1800B28F */  lw         $s2, 0x18($sp)
/* A554 80019D54 1400B18F */  lw         $s1, 0x14($sp)
/* A558 80019D58 1000B08F */  lw         $s0, 0x10($sp)
/* A55C 80019D5C 0800E003 */  jr         $ra
/* A560 80019D60 3000BD27 */   addiu     $sp, $sp, 0x30

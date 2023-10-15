.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_68C
/* BFF0 8001B7F0 1400BF8F */  lw         $ra, 0x14($sp)
/* BFF4 8001B7F4 1000B08F */  lw         $s0, 0x10($sp)
/* BFF8 8001B7F8 0800E003 */  jr         $ra
/* BFFC 8001B7FC 1800BD27 */   addiu     $sp, $sp, 0x18

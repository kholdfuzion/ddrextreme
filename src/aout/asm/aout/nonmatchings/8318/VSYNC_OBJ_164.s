.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSYNC_OBJ_164
/* B898 8001B098 2000BF8F */  lw         $ra, 0x20($sp)
/* B89C 8001B09C 1C00B18F */  lw         $s1, 0x1c($sp)
/* B8A0 8001B0A0 1800B08F */  lw         $s0, 0x18($sp)
/* B8A4 8001B0A4 0800E003 */  jr         $ra
/* B8A8 8001B0A8 2800BD27 */   addiu     $sp, $sp, 0x28

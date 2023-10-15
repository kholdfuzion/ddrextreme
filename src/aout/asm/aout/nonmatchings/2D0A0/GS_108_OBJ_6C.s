.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_108_OBJ_6C
/* 3AEBC 8004A6BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 3AEC0 8004A6C0 1800BD27 */  addiu      $sp, $sp, 0x18
/* 3AEC4 8004A6C4 0800E003 */  jr         $ra
/* 3AEC8 8004A6C8 00000000 */   nop
/* 3AECC 8004A6CC 00000000 */  nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a09c
/* 3A89C 8004A09C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3A8A0 8004A0A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 3A8A4 8004A0A4 0A7A010C */  jal        FUN_8005e828
/* 3A8A8 8004A0A8 00000000 */   nop
/* 3A8AC 8004A0AC 1000BF8F */  lw         $ra, 0x10($sp)
/* 3A8B0 8004A0B0 00000000 */  nop
/* 3A8B4 8004A0B4 0800E003 */  jr         $ra
/* 3A8B8 8004A0B8 1800BD27 */   addiu     $sp, $sp, 0x18

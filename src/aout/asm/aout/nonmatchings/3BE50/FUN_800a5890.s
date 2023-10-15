.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5890
/* 96090 800A5890 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 96094 800A5894 1000BFAF */  sw         $ra, 0x10($sp)
/* 96098 800A5898 6D4B010C */  jal        FUN_80052db4
/* 9609C 800A589C 00000000 */   nop
/* 960A0 800A58A0 0C29010C */  jal        FUN_8004a430
/* 960A4 800A58A4 00000000 */   nop
/* 960A8 800A58A8 1000BF8F */  lw         $ra, 0x10($sp)
/* 960AC 800A58AC 00000000 */  nop
/* 960B0 800A58B0 0800E003 */  jr         $ra
/* 960B4 800A58B4 1800BD27 */   addiu     $sp, $sp, 0x18

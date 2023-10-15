.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d0cc
/* 1D8CC 8002D0CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1D8D0 8002D0D0 1000BFAF */  sw         $ra, 0x10($sp)
/* 1D8D4 8002D0D4 30AC000C */  jal        FUN_8002b0c0
/* 1D8D8 8002D0D8 C81F0424 */   addiu     $a0, $zero, 0x1fc8
/* 1D8DC 8002D0DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 1D8E0 8002D0E0 00000000 */  nop
/* 1D8E4 8002D0E4 0800E003 */  jr         $ra
/* 1D8E8 8002D0E8 1800BD27 */   addiu     $sp, $sp, 0x18

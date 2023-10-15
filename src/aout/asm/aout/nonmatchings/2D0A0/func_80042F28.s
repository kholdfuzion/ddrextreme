.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80042F28
/* 33728 80042F28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3372C 80042F2C 1000BFAF */  sw         $ra, 0x10($sp)
/* 33730 80042F30 7B7A000C */  jal        FUN_8001e9ec
/* 33734 80042F34 01000424 */   addiu     $a0, $zero, 1
/* 33738 80042F38 1000BF8F */  lw         $ra, 0x10($sp)
/* 3373C 80042F3C 00000000 */  nop
/* 33740 80042F40 0800E003 */  jr         $ra
/* 33744 80042F44 1800BD27 */   addiu     $sp, $sp, 0x18

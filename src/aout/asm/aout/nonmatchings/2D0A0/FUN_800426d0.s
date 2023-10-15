.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800426d0
/* 32ED0 800426D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32ED4 800426D4 1000BFAF */  sw         $ra, 0x10($sp)
/* 32ED8 800426D8 7DC4000C */  jal        get_astruct_800311f4
/* 32EDC 800426DC 00000000 */   nop
/* 32EE0 800426E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 32EE4 800426E4 040040A4 */  sh         $zero, 4($v0)
/* 32EE8 800426E8 160040A4 */  sh         $zero, 0x16($v0)
/* 32EEC 800426EC 0800E003 */  jr         $ra
/* 32EF0 800426F0 1800BD27 */   addiu     $sp, $sp, 0x18

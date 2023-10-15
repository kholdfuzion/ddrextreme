.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800287e0
/* 18FE0 800287E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18FE4 800287E4 1000BFAF */  sw         $ra, 0x10($sp)
/* 18FE8 800287E8 1000848C */  lw         $a0, 0x10($a0)
/* 18FEC 800287EC 5562000C */  jal        DrawOTag
/* 18FF0 800287F0 00000000 */   nop
/* 18FF4 800287F4 1000BF8F */  lw         $ra, 0x10($sp)
/* 18FF8 800287F8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 18FFC 800287FC 0800E003 */  jr         $ra
/* 19000 80028800 00000000 */   nop
/* 19004 80028804 00000000 */  nop
/* 19008 80028808 00000000 */  nop
/* 1900C 8002880C 00000000 */  nop

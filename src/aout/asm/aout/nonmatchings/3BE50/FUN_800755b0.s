.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800755b0
/* 65DB0 800755B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 65DB4 800755B4 1000BFAF */  sw         $ra, 0x10($sp)
/* 65DB8 800755B8 DFD5010C */  jal        FUN_8007577c
/* 65DBC 800755BC 00000000 */   nop
/* 65DC0 800755C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 65DC4 800755C4 00000000 */  nop
/* 65DC8 800755C8 0800E003 */  jr         $ra
/* 65DCC 800755CC 1800BD27 */   addiu     $sp, $sp, 0x18

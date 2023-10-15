.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004b630
/* 3BE30 8004B630 00D8C448 */  .byte      0x00, 0xd8, 0xc4, 0x48
/* 3BE34 8004B634 0800E003 */  jr         $ra
/* 3BE38 8004B638 00000000 */   nop
/* 3BE3C 8004B63C 00000000 */  nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004b5e0
/* 3BDE0 8004B5E0 00D0C448 */  .byte      0x00, 0xd0, 0xc4, 0x48
/* 3BDE4 8004B5E4 0800E003 */  jr         $ra
/* 3BDE8 8004B5E8 00000000 */   nop
/* 3BDEC 8004B5EC 00000000 */  nop

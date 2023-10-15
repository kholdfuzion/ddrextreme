.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004b640
/* 3BE40 8004B640 00E0C448 */  .byte      0x00, 0xe0, 0xc4, 0x48
/* 3BE44 8004B644 0800E003 */  jr         $ra
/* 3BE48 8004B648 00000000 */   nop
/* 3BE4C 8004B64C 00000000 */  nop

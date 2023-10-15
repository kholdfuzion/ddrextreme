.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetColorMatrix
/* 12888 80022088 0000888C */  lw         $t0, ($a0)
/* 1288C 8002208C 0400898C */  lw         $t1, 4($a0)
/* 12890 80022090 08008A8C */  lw         $t2, 8($a0)
/* 12894 80022094 0C008B8C */  lw         $t3, 0xc($a0)
/* 12898 80022098 10008C8C */  lw         $t4, 0x10($a0)
/* 1289C 8002209C 0080C848 */  .byte      0x00, 0x80, 0xc8, 0x48
/* 128A0 800220A0 0088C948 */  .byte      0x00, 0x88, 0xc9, 0x48
/* 128A4 800220A4 0090CA48 */  .byte      0x00, 0x90, 0xca, 0x48
/* 128A8 800220A8 0098CB48 */  .byte      0x00, 0x98, 0xcb, 0x48
/* 128AC 800220AC 00A0CC48 */  .byte      0x00, 0xa0, 0xcc, 0x48
/* 128B0 800220B0 0800E003 */  jr         $ra
/* 128B4 800220B4 00000000 */   nop

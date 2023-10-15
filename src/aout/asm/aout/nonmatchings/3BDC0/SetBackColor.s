.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetBackColor
/* 3BDC0 8004B5C0 00210400 */  sll        $a0, $a0, 4
/* 3BDC4 8004B5C4 00290500 */  sll        $a1, $a1, 4
/* 3BDC8 8004B5C8 00310600 */  sll        $a2, $a2, 4
/* 3BDCC 8004B5CC 0068C448 */  .byte      0x00, 0x68, 0xc4, 0x48
/* 3BDD0 8004B5D0 0070C548 */  .byte      0x00, 0x70, 0xc5, 0x48
/* 3BDD4 8004B5D4 0078C648 */  .byte      0x00, 0x78, 0xc6, 0x48
/* 3BDD8 8004B5D8 0800E003 */  jr         $ra
/* 3BDDC 8004B5DC 00000000 */   nop

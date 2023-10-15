.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetFarColor
/* 128B8 800220B8 00210400 */  sll        $a0, $a0, 4
/* 128BC 800220BC 00290500 */  sll        $a1, $a1, 4
/* 128C0 800220C0 00310600 */  sll        $a2, $a2, 4
/* 128C4 800220C4 00A8C448 */  .byte      0x00, 0xa8, 0xc4, 0x48
/* 128C8 800220C8 00B0C548 */  .byte      0x00, 0xb0, 0xc5, 0x48
/* 128CC 800220CC 00B8C648 */  .byte      0x00, 0xb8, 0xc6, 0x48
/* 128D0 800220D0 0800E003 */  jr         $ra
/* 128D4 800220D4 00000000 */   nop

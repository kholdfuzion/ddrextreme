.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800220d8
/* 128D8 800220D8 00240400 */  sll        $a0, $a0, 0x10
/* 128DC 800220DC 002C0500 */  sll        $a1, $a1, 0x10
/* 128E0 800220E0 00C0C448 */  .byte      0x00, 0xc0, 0xc4, 0x48
/* 128E4 800220E4 00C8C548 */  .byte      0x00, 0xc8, 0xc5, 0x48
/* 128E8 800220E8 0800E003 */  jr         $ra
/* 128EC 800220EC 00000000 */   nop
/* 128F0 800220F0 00000000 */  nop
/* 128F4 800220F4 00000000 */  nop

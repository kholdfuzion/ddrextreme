.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetTPage
/* 5C034 8006B834 03008230 */  andi       $v0, $a0, 3
/* 5C038 8006B838 C0110200 */  sll        $v0, $v0, 7
/* 5C03C 8006B83C 0300A530 */  andi       $a1, $a1, 3
/* 5C040 8006B840 40290500 */  sll        $a1, $a1, 5
/* 5C044 8006B844 25104500 */  or         $v0, $v0, $a1
/* 5C048 8006B848 0001E330 */  andi       $v1, $a3, 0x100
/* 5C04C 8006B84C 03190300 */  sra        $v1, $v1, 4
/* 5C050 8006B850 25104300 */  or         $v0, $v0, $v1
/* 5C054 8006B854 FF03C630 */  andi       $a2, $a2, 0x3ff
/* 5C058 8006B858 83310600 */  sra        $a2, $a2, 6
/* 5C05C 8006B85C 25104600 */  or         $v0, $v0, $a2
/* 5C060 8006B860 0002E730 */  andi       $a3, $a3, 0x200
/* 5C064 8006B864 80380700 */  sll        $a3, $a3, 2
/* 5C068 8006B868 0800E003 */  jr         $ra
/* 5C06C 8006B86C 25104700 */   or        $v0, $v0, $a3
/* 5C070 8006B870 00000000 */  nop

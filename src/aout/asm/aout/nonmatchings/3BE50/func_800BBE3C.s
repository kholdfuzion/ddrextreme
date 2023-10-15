.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBE3C
/* AC63C 800BBE3C 1E80033C */  lui        $v1, %hi(D_801E1798)
/* AC640 800BBE40 03008430 */  andi       $a0, $a0, 3
/* AC644 800BBE44 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC648 800BBE48 C0200400 */  sll        $a0, $a0, 3
/* AC64C 800BBE4C E7FF4230 */  andi       $v0, $v0, 0xffe7
/* AC650 800BBE50 25104400 */  or         $v0, $v0, $a0
/* AC654 800BBE54 981762A4 */  sh         $v0, 0x1798($v1)
/* AC658 800BBE58 401F033C */  lui        $v1, 0x1f40
/* AC65C 800BBE5C 000062A4 */  sh         $v0, ($v1)
/* AC660 800BBE60 0800E003 */  jr         $ra
/* AC664 800BBE64 00000000 */   nop

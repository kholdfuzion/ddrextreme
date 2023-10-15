.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1780
/* 9F64 80019764 FF07A530 */  andi       $a1, $a1, 0x7ff
/* 9F68 80019768 C02A0500 */  sll        $a1, $a1, 0xb
/* 9F6C 8001976C FF078230 */  andi       $v0, $a0, 0x7ff
/* 9F70 80019770 00E5033C */  lui        $v1, 0xe500
/* 9F74 80019774 25104300 */  or         $v0, $v0, $v1
/* 9F78 80019778 0800E003 */  jr         $ra
/* 9F7C 8001977C 2510A200 */   or        $v0, $a1, $v0

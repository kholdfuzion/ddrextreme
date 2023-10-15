.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1764
/* 9F48 80019748 FF03A330 */  andi       $v1, $a1, 0x3ff
.L8001974C:
/* 9F4C 8001974C 801A0300 */  sll        $v1, $v1, 0xa
/* 9F50 80019750 FF038230 */  andi       $v0, $a0, 0x3ff
/* 9F54 80019754 00E4043C */  lui        $a0, 0xe400
/* 9F58 80019758 25104400 */  or         $v0, $v0, $a0
/* 9F5C 8001975C 0800E003 */  jr         $ra
/* 9F60 80019760 25106200 */   or        $v0, $v1, $v0

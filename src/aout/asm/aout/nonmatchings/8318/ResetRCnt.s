.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ResetRCnt
/* 873C 80017F3C FFFF8330 */  andi       $v1, $a0, 0xffff
/* 8740 80017F40 03006228 */  slti       $v0, $v1, 3
/* 8744 80017F44 07004010 */  beqz       $v0, .L80017F64
/* 8748 80017F48 01000224 */   addiu     $v0, $zero, 1
/* 874C 80017F4C 0D80043C */  lui        $a0, %hi(D_800D2B2C)
/* 8750 80017F50 2C2B848C */  lw         $a0, %lo(D_800D2B2C)($a0)
/* 8754 80017F54 00190300 */  sll        $v1, $v1, 4
/* 8758 80017F58 21186400 */  addu       $v1, $v1, $a0
/* 875C 80017F5C DA5F0008 */  j          COUNTER_OBJ_164
/* 8760 80017F60 000060A4 */   sh        $zero, ($v1)
.L80017F64:
/* 8764 80017F64 21100000 */  addu       $v0, $zero, $zero

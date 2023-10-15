.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel StartRCnt
/* 86D8 80017ED8 FFFF8230 */  andi       $v0, $a0, 0xffff
/* 86DC 80017EDC 80200200 */  sll        $a0, $v0, 2
/* 86E0 80017EE0 0D80053C */  lui        $a1, %hi(D_800D2B28)
/* 86E4 80017EE4 282BA58C */  lw         $a1, %lo(D_800D2B28)($a1)
/* 86E8 80017EE8 0D80013C */  lui        $at, %hi(D_800D2B30)
/* 86EC 80017EEC 21082400 */  addu       $at, $at, $a0
/* 86F0 80017EF0 302B248C */  lw         $a0, %lo(D_800D2B30)($at)
/* 86F4 80017EF4 0400A38C */  lw         $v1, 4($a1)
/* 86F8 80017EF8 03004228 */  slti       $v0, $v0, 3
/* 86FC 80017EFC 25186400 */  or         $v1, $v1, $a0
/* 8700 80017F00 0800E003 */  jr         $ra
/* 8704 80017F04 0400A3AC */   sw        $v1, 4($a1)

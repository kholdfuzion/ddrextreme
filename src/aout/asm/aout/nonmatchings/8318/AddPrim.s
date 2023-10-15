.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel AddPrim
/* 11F58 80021758 FF00063C */  lui        $a2, 0xff
/* 11F5C 8002175C FFFFC634 */  ori        $a2, $a2, 0xffff
/* 11F60 80021760 00FF073C */  lui        $a3, 0xff00
/* 11F64 80021764 0000A38C */  lw         $v1, ($a1)
/* 11F68 80021768 0000828C */  lw         $v0, ($a0)
/* 11F6C 8002176C 24186700 */  and        $v1, $v1, $a3
/* 11F70 80021770 24104600 */  and        $v0, $v0, $a2
/* 11F74 80021774 25186200 */  or         $v1, $v1, $v0
/* 11F78 80021778 0000A3AC */  sw         $v1, ($a1)
/* 11F7C 8002177C 0000828C */  lw         $v0, ($a0)
/* 11F80 80021780 2428A600 */  and        $a1, $a1, $a2
/* 11F84 80021784 24104700 */  and        $v0, $v0, $a3
/* 11F88 80021788 25104500 */  or         $v0, $v0, $a1
/* 11F8C 8002178C 0800E003 */  jr         $ra
/* 11F90 80021790 000082AC */   sw        $v0, ($a0)
/* 11F94 80021794 00000000 */  nop

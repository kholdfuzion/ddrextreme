.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80028870
/* 19070 80028870 1380013C */  lui        $at, %hi(D_80129160)
/* 19074 80028874 0800E003 */  jr         $ra
/* 19078 80028878 609124AC */   sw        $a0, %lo(D_80129160)($at)
/* 1907C 8002887C 00000000 */  nop

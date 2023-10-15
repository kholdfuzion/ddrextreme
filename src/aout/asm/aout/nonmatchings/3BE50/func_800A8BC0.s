.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A8BC0
/* 993C0 800A8BC0 1C80023C */  lui        $v0, %hi(D_801BF758)
/* 993C4 800A8BC4 0800E003 */  jr         $ra
/* 993C8 800A8BC8 58F74224 */   addiu     $v0, $v0, %lo(D_801BF758)

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002B178
/* 1B978 8002B178 1580033C */  lui        $v1, %hi(D_8014ABE4)
/* 1B97C 8002B17C E4AB628C */  lw         $v0, %lo(D_8014ABE4)($v1)
/* 1B980 8002B180 0800E003 */  jr         $ra
/* 1B984 8002B184 00000000 */   nop

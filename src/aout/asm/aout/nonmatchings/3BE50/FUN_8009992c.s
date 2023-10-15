.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009992c
/* 8A12C 8009992C 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 8A130 80099930 2000628C */  lw         $v0, %lo(D_800F0020)($v1)
/* 8A134 80099934 3400858C */  lw         $a1, 0x34($a0)
/* 8A138 80099938 00000000 */  nop
/* 8A13C 8009993C 23104500 */  subu       $v0, $v0, $a1
/* 8A140 80099940 4C0E4228 */  slti       $v0, $v0, 0xe4c
/* 8A144 80099944 0800E003 */  jr         $ra
/* 8A148 80099948 01004238 */   xori      $v0, $v0, 1

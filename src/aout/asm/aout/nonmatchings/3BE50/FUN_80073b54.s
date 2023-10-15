.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80073b54
/* 64354 80073B54 00008294 */  lhu        $v0, ($a0)
/* 64358 80073B58 0800E003 */  jr         $ra
/* 6435C 80073B5C 00000000 */   nop
/* 64360 80073B60 00000000 */  nop

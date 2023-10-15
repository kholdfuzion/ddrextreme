.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80073b84
/* 64384 80073B84 03000224 */  addiu      $v0, $zero, 3
/* 64388 80073B88 030082A0 */  sb         $v0, 3($a0)
/* 6438C 80073B8C 60000224 */  addiu      $v0, $zero, 0x60
/* 64390 80073B90 0800E003 */  jr         $ra
/* 64394 80073B94 070082A0 */   sb        $v0, 7($a0)
/* 64398 80073B98 00000000 */  nop
/* 6439C 80073B9C 00000000 */  nop
/* 643A0 80073BA0 00000000 */  nop

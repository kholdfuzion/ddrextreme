.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_123_OBJ_AC
/* 3B6DC 8004AEDC 23100500 */  negu       $v0, $a1
/* 3B6E0 8004AEE0 000026A5 */  sh         $a2, ($t1)
/* 3B6E4 8004AEE4 080026A5 */  sh         $a2, 8($t1)
/* 3B6E8 8004AEE8 020022A5 */  sh         $v0, 2($t1)
/* 3B6EC 8004AEEC 060025A5 */  sh         $a1, 6($t1)

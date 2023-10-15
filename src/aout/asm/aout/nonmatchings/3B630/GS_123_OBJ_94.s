.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_123_OBJ_94
/* 3B6C4 8004AEC4 23100500 */  negu       $v0, $a1
/* 3B6C8 8004AEC8 000026A5 */  sh         $a2, ($t1)
/* 3B6CC 8004AECC 100026A5 */  sh         $a2, 0x10($t1)
/* 3B6D0 8004AED0 040025A5 */  sh         $a1, 4($t1)
/* 3B6D4 8004AED4 BC2B0108 */  j          GS_123_OBJ_C0
/* 3B6D8 8004AED8 0C0022A5 */   sh        $v0, 0xc($t1)

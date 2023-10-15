.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_123_OBJ_7C
/* 3B6AC 8004AEAC 23100500 */  negu       $v0, $a1
/* 3B6B0 8004AEB0 080026A5 */  sh         $a2, 8($t1)
/* 3B6B4 8004AEB4 100026A5 */  sh         $a2, 0x10($t1)
/* 3B6B8 8004AEB8 0A0022A5 */  sh         $v0, 0xa($t1)
/* 3B6BC 8004AEBC BC2B0108 */  j          GS_123_OBJ_C0
/* 3B6C0 8004AEC0 0E0025A5 */   sh        $a1, 0xe($t1)

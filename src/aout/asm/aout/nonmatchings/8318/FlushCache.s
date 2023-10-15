.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FlushCache
/* 129D8 800221D8 A0000A24 */  addiu      $t2, $zero, 0xa0
/* 129DC 800221DC 08004001 */  jr         $t2
/* 129E0 800221E0 44000924 */   addiu     $t1, $zero, 0x44
/* 129E4 800221E4 00000000 */  nop

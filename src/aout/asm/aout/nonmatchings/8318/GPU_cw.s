.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GPU_cw
/* B6E4 8001AEE4 A0000A24 */  addiu      $t2, $zero, 0xa0
/* B6E8 8001AEE8 08004001 */  jr         $t2
/* B6EC 8001AEEC 49000924 */   addiu     $t1, $zero, 0x49
/* B6F0 8001AEF0 00000000 */  nop

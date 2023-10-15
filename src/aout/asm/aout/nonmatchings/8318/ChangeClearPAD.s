.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ChangeClearPAD
/* B944 8001B144 B0000A24 */  addiu      $t2, $zero, 0xb0
/* B948 8001B148 08004001 */  jr         $t2
/* B94C 8001B14C 5B000924 */   addiu     $t1, $zero, 0x5b
/* B950 8001B150 00000000 */  nop

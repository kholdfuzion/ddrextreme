.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001b82c
/* C02C 8001B82C A0000A24 */  addiu      $t2, $zero, 0xa0
/* C030 8001B830 08004001 */  jr         $t2
/* C034 8001B834 72000924 */   addiu     $t1, $zero, 0x72
/* C038 8001B838 00000000 */  nop
/* C03C 8001B83C 00000000 */  nop
/* C040 8001B840 00000000 */  nop

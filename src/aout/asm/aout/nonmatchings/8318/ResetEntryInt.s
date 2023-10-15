.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ResetEntryInt
/* C054 8001B854 B0000A24 */  addiu      $t2, $zero, 0xb0
/* C058 8001B858 08004001 */  jr         $t2
/* C05C 8001B85C 18000924 */   addiu     $t1, $zero, 0x18
/* C060 8001B860 00000000 */  nop

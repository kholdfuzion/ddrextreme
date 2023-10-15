.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DeliverEvent
/* A16A4 800B0EA4 B0000A24 */  addiu      $t2, $zero, 0xb0
/* A16A8 800B0EA8 08004001 */  jr         $t2
/* A16AC 800B0EAC 07000924 */   addiu     $t1, $zero, 7
/* A16B0 800B0EB0 00000000 */  nop

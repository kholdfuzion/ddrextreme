.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel UnDeliverEvent
/* A16B4 800B0EB4 B0000A24 */  addiu      $t2, $zero, 0xb0
/* A16B8 800B0EB8 08004001 */  jr         $t2
/* A16BC 800B0EBC 20000924 */   addiu     $t1, $zero, 0x20
/* A16C0 800B0EC0 00000000 */  nop

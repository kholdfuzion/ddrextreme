.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel WaitEvent
/* A9224 800B8A24 B0000A24 */  addiu      $t2, $zero, 0xb0
/* A9228 800B8A28 08004001 */  jr         $t2
/* A922C 800B8A2C 0A000924 */   addiu     $t1, $zero, 0xa
/* A9230 800B8A30 00000000 */  nop

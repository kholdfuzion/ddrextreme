.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel CloseEvent
/* A292C 800B212C B0000A24 */  addiu      $t2, $zero, 0xb0
/* A2930 800B2130 08004001 */  jr         $t2
/* A2934 800B2134 09000924 */   addiu     $t1, $zero, 9
/* A2938 800B2138 00000000 */  nop

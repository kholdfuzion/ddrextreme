.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel CloseTh
/* A293C 800B213C B0000A24 */  addiu      $t2, $zero, 0xb0
/* A2940 800B2140 08004001 */  jr         $t2
/* A2944 800B2144 0F000924 */   addiu     $t1, $zero, 0xf
/* A2948 800B2148 00000000 */  nop

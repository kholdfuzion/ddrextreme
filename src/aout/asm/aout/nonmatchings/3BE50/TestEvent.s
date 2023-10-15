.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel TestEvent
/* A12DC 800B0ADC B0000A24 */  addiu      $t2, $zero, 0xb0
/* A12E0 800B0AE0 08004001 */  jr         $t2
/* A12E4 800B0AE4 0B000924 */   addiu     $t1, $zero, 0xb
/* A12E8 800B0AE8 00000000 */  nop

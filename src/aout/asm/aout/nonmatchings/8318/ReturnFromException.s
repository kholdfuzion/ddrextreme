.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ReturnFromException
/* C044 8001B844 B0000A24 */  addiu      $t2, $zero, 0xb0
/* C048 8001B848 08004001 */  jr         $t2
/* C04C 8001B84C 17000924 */   addiu     $t1, $zero, 0x17
/* C050 8001B850 00000000 */  nop

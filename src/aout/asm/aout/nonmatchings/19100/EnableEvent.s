.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel EnableEvent
/* 1F4C4 8002ECC4 B0000A24 */  addiu      $t2, $zero, 0xb0
/* 1F4C8 8002ECC8 08004001 */  jr         $t2
/* 1F4CC 8002ECCC 0C000924 */   addiu     $t1, $zero, 0xc
/* 1F4D0 8002ECD0 00000000 */  nop

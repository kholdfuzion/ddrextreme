.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel OpenEvent
/* 1F4B4 8002ECB4 B0000A24 */  addiu      $t2, $zero, 0xb0
/* 1F4B8 8002ECB8 08004001 */  jr         $t2
/* 1F4BC 8002ECBC 08000924 */   addiu     $t1, $zero, 8
/* 1F4C0 8002ECC0 00000000 */  nop

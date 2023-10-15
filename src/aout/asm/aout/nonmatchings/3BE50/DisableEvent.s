.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DisableEvent
/* A80A4 800B78A4 B0000A24 */  addiu      $t2, $zero, 0xb0
/* A80A8 800B78A8 08004001 */  jr         $t2
/* A80AC 800B78AC 0D000924 */   addiu     $t1, $zero, 0xd
/* A80B0 800B78B0 00000000 */  nop

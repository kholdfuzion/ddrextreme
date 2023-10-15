.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ChangeTh
/* A12FC 800B0AFC B0000A24 */  addiu      $t2, $zero, 0xb0
/* A1300 800B0B00 08004001 */  jr         $t2
/* A1304 800B0B04 10000924 */   addiu     $t1, $zero, 0x10
/* A1308 800B0B08 00000000 */  nop

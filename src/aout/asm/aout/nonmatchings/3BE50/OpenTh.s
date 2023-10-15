.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel OpenTh
/* A12EC 800B0AEC B0000A24 */  addiu      $t2, $zero, 0xb0
/* A12F0 800B0AF0 08004001 */  jr         $t2
/* A12F4 800B0AF4 0E000924 */   addiu     $t1, $zero, 0xe
/* A12F8 800B0AF8 00000000 */  nop

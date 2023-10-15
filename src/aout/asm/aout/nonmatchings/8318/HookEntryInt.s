.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel HookEntryInt
/* C064 8001B864 B0000A24 */  addiu      $t2, $zero, 0xb0
/* C068 8001B868 08004001 */  jr         $t2
/* C06C 8001B86C 19000924 */   addiu     $t1, $zero, 0x19
/* C070 8001B870 00000000 */  nop

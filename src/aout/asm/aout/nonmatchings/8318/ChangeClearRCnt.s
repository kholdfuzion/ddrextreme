.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ChangeClearRCnt
/* B954 8001B154 C0000A24 */  addiu      $t2, $zero, 0xc0
/* B958 8001B158 08004001 */  jr         $t2
/* B95C 8001B15C 0A000924 */   addiu     $t1, $zero, 0xa
/* B960 8001B160 00000000 */  nop

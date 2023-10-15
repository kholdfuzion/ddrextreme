.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel write
/* AC56C 800BBD6C B0000A24 */  addiu      $t2, $zero, 0xb0
/* AC570 800BBD70 08004001 */  jr         $t2
/* AC574 800BBD74 35000924 */   addiu     $t1, $zero, 0x35
/* AC578 800BBD78 00000000 */  nop

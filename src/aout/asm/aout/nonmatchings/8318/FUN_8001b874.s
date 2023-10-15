.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001b874
/* C074 8001B874 01000424 */  addiu      $a0, $zero, 1
/* C078 8001B878 0C000000 */  syscall
/* C07C 8001B87C 0800E003 */  jr         $ra
/* C080 8001B880 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001b884
/* C084 8001B884 02000424 */  addiu      $a0, $zero, 2
/* C088 8001B888 0C000000 */  syscall
/* C08C 8001B88C 0800E003 */  jr         $ra
/* C090 8001B890 00000000 */   nop

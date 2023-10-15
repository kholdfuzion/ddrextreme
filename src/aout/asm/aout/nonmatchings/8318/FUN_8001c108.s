.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c108
/* C908 8001C108 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C90C 8001C10C 1000BFAF */  sw         $ra, 0x10($sp)
/* C910 8001C110 7CAA000C */  jal        vsync_8002a9f0
/* C914 8001C114 00000000 */   nop
/* C918 8001C118 1000BF8F */  lw         $ra, 0x10($sp)
/* C91C 8001C11C 21100000 */  addu       $v0, $zero, $zero
/* C920 8001C120 0800E003 */  jr         $ra
/* C924 8001C124 1800BD27 */   addiu     $sp, $sp, 0x18

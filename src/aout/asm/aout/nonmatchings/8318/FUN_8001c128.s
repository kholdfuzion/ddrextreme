.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c128
/* C928 8001C128 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C92C 8001C12C 1000BFAF */  sw         $ra, 0x10($sp)
/* C930 8001C130 7CAA000C */  jal        vsync_8002a9f0
/* C934 8001C134 00000000 */   nop
/* C938 8001C138 1000BF8F */  lw         $ra, 0x10($sp)
/* C93C 8001C13C 21100000 */  addu       $v0, $zero, $zero
/* C940 8001C140 0800E003 */  jr         $ra
/* C944 8001C144 1800BD27 */   addiu     $sp, $sp, 0x18

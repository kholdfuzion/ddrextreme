.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1168
/* B1968 800C1168 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B196C 800C116C 1000BFAF */  sw         $ra, 0x10($sp)
/* B1970 800C1170 0000848C */  lw         $a0, ($a0)
/* B1974 800C1174 44FD020C */  jal        FUN_800bf510
/* B1978 800C1178 00000000 */   nop
/* B197C 800C117C 21100000 */  addu       $v0, $zero, $zero
/* B1980 800C1180 1000BF8F */  lw         $ra, 0x10($sp)
/* B1984 800C1184 00000000 */  nop
/* B1988 800C1188 0800E003 */  jr         $ra
/* B198C 800C118C 1800BD27 */   addiu     $sp, $sp, 0x18

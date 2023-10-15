.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1140
/* B1940 800C1140 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1944 800C1144 1000BFAF */  sw         $ra, 0x10($sp)
/* B1948 800C1148 0000848C */  lw         $a0, ($a0)
/* B194C 800C114C 36FD020C */  jal        FUN_800bf4d8
/* B1950 800C1150 00000000 */   nop
/* B1954 800C1154 21100000 */  addu       $v0, $zero, $zero
/* B1958 800C1158 1000BF8F */  lw         $ra, 0x10($sp)
/* B195C 800C115C 00000000 */  nop
/* B1960 800C1160 0800E003 */  jr         $ra
/* B1964 800C1164 1800BD27 */   addiu     $sp, $sp, 0x18

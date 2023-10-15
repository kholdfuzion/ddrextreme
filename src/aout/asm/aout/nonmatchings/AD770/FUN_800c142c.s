.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c142c
/* B1C2C 800C142C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1C30 800C1430 1000BFAF */  sw         $ra, 0x10($sp)
/* B1C34 800C1434 00008494 */  lhu        $a0, ($a0)
/* B1C38 800C1438 41FE020C */  jal        FUN_800bf904
/* B1C3C 800C143C 00000000 */   nop
/* B1C40 800C1440 21100000 */  addu       $v0, $zero, $zero
/* B1C44 800C1444 1000BF8F */  lw         $ra, 0x10($sp)
/* B1C48 800C1448 00000000 */  nop
/* B1C4C 800C144C 0800E003 */  jr         $ra
/* B1C50 800C1450 1800BD27 */   addiu     $sp, $sp, 0x18

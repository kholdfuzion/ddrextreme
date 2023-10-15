.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1454
/* B1C54 800C1454 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1C58 800C1458 1000BFAF */  sw         $ra, 0x10($sp)
/* B1C5C 800C145C 00008490 */  lbu        $a0, ($a0)
/* B1C60 800C1460 4BFE020C */  jal        FUN_800bf92c
/* B1C64 800C1464 00000000 */   nop
/* B1C68 800C1468 21100000 */  addu       $v0, $zero, $zero
/* B1C6C 800C146C 1000BF8F */  lw         $ra, 0x10($sp)
/* B1C70 800C1470 00000000 */  nop
/* B1C74 800C1474 0800E003 */  jr         $ra
/* B1C78 800C1478 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a0bc
/* 3A8BC 8004A0BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3A8C0 8004A0C0 11000424 */  addiu      $a0, $zero, 0x11
/* 3A8C4 8004A0C4 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A8C8 8004A0C8 1000BFAF */  sw         $ra, 0x10($sp)
/* 3A8CC 8004A0CC 8876000C */  jal        FUN_8001da20
/* 3A8D0 8004A0D0 FFFF0624 */   addiu     $a2, $zero, -1
/* 3A8D4 8004A0D4 1000BF8F */  lw         $ra, 0x10($sp)
/* 3A8D8 8004A0D8 00000000 */  nop
/* 3A8DC 8004A0DC 0800E003 */  jr         $ra
/* 3A8E0 8004A0E0 1800BD27 */   addiu     $sp, $sp, 0x18

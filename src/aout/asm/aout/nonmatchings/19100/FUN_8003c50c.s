.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c50c
/* 2CD0C 8003C50C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2CD10 8003C510 1F000424 */  addiu      $a0, $zero, 0x1f
/* 2CD14 8003C514 FFFF0524 */  addiu      $a1, $zero, -1
/* 2CD18 8003C518 1000BFAF */  sw         $ra, 0x10($sp)
/* 2CD1C 8003C51C 8876000C */  jal        FUN_8001da20
/* 2CD20 8003C520 FFFF0624 */   addiu     $a2, $zero, -1
/* 2CD24 8003C524 1E000424 */  addiu      $a0, $zero, 0x1e
/* 2CD28 8003C528 FFFF0524 */  addiu      $a1, $zero, -1
/* 2CD2C 8003C52C 8876000C */  jal        FUN_8001da20
/* 2CD30 8003C530 FFFF0624 */   addiu     $a2, $zero, -1
/* 2CD34 8003C534 B3F1000C */  jal        FUN_8003c6cc
/* 2CD38 8003C538 00000000 */   nop
/* 2CD3C 8003C53C 1000BF8F */  lw         $ra, 0x10($sp)
/* 2CD40 8003C540 00000000 */  nop
/* 2CD44 8003C544 0800E003 */  jr         $ra
/* 2CD48 8003C548 1800BD27 */   addiu     $sp, $sp, 0x18

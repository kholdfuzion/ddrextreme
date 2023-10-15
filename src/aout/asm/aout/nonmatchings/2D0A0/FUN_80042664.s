.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042664
/* 32E64 80042664 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32E68 80042668 1000BFAF */  sw         $ra, 0x10($sp)
/* 32E6C 8004266C 7DC4000C */  jal        get_astruct_800311f4
/* 32E70 80042670 00000000 */   nop
/* 32E74 80042674 06000424 */  addiu      $a0, $zero, 6
/* 32E78 80042678 2C004324 */  addiu      $v1, $v0, 0x2c
/* 32E7C 8004267C 040040A4 */  sh         $zero, 4($v0)
/* 32E80 80042680 120040A4 */  sh         $zero, 0x12($v0)
/* 32E84 80042684 140040A4 */  sh         $zero, 0x14($v0)
/* 32E88 80042688 160040A4 */  sh         $zero, 0x16($v0)
.L8004268C:
/* 32E8C 8004268C 000060A4 */  sh         $zero, ($v1)
/* 32E90 80042690 FFFF8424 */  addiu      $a0, $a0, -1
/* 32E94 80042694 FDFF8104 */  bgez       $a0, .L8004268C
/* 32E98 80042698 FEFF6324 */   addiu     $v1, $v1, -2
/* 32E9C 8004269C 1000BF8F */  lw         $ra, 0x10($sp)
/* 32EA0 800426A0 00000000 */  nop
/* 32EA4 800426A4 0800E003 */  jr         $ra
/* 32EA8 800426A8 1800BD27 */   addiu     $sp, $sp, 0x18

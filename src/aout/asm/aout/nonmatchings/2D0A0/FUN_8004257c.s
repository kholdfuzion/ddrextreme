.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004257c
/* 32D7C 8004257C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32D80 80042580 1000BFAF */  sw         $ra, 0x10($sp)
/* 32D84 80042584 7DC4000C */  jal        get_astruct_800311f4
/* 32D88 80042588 00000000 */   nop
/* 32D8C 8004258C 06000424 */  addiu      $a0, $zero, 6
/* 32D90 80042590 2C004324 */  addiu      $v1, $v0, 0x2c
/* 32D94 80042594 020040A4 */  sh         $zero, 2($v0)
/* 32D98 80042598 040040A4 */  sh         $zero, 4($v0)
/* 32D9C 8004259C 120040A4 */  sh         $zero, 0x12($v0)
/* 32DA0 800425A0 140040A4 */  sh         $zero, 0x14($v0)
/* 32DA4 800425A4 160040A4 */  sh         $zero, 0x16($v0)
/* 32DA8 800425A8 180040A4 */  sh         $zero, 0x18($v0)
.L800425AC:
/* 32DAC 800425AC 000060A4 */  sh         $zero, ($v1)
/* 32DB0 800425B0 FFFF8424 */  addiu      $a0, $a0, -1
/* 32DB4 800425B4 FDFF8104 */  bgez       $a0, .L800425AC
/* 32DB8 800425B8 FEFF6324 */   addiu     $v1, $v1, -2
/* 32DBC 800425BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 32DC0 800425C0 00000000 */  nop
/* 32DC4 800425C4 0800E003 */  jr         $ra
/* 32DC8 800425C8 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800425cc
/* 32DCC 800425CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32DD0 800425D0 1000BFAF */  sw         $ra, 0x10($sp)
/* 32DD4 800425D4 7DC4000C */  jal        get_astruct_800311f4
/* 32DD8 800425D8 00000000 */   nop
/* 32DDC 800425DC 06000424 */  addiu      $a0, $zero, 6
/* 32DE0 800425E0 2C004324 */  addiu      $v1, $v0, 0x2c
/* 32DE4 800425E4 020040A4 */  sh         $zero, 2($v0)
/* 32DE8 800425E8 040040A4 */  sh         $zero, 4($v0)
/* 32DEC 800425EC 120040A4 */  sh         $zero, 0x12($v0)
/* 32DF0 800425F0 140040A4 */  sh         $zero, 0x14($v0)
/* 32DF4 800425F4 160040A4 */  sh         $zero, 0x16($v0)
/* 32DF8 800425F8 180040A4 */  sh         $zero, 0x18($v0)
.L800425FC:
/* 32DFC 800425FC 000060A4 */  sh         $zero, ($v1)
/* 32E00 80042600 FFFF8424 */  addiu      $a0, $a0, -1
/* 32E04 80042604 FDFF8104 */  bgez       $a0, .L800425FC
/* 32E08 80042608 FEFF6324 */   addiu     $v1, $v1, -2
/* 32E0C 8004260C 1000BF8F */  lw         $ra, 0x10($sp)
/* 32E10 80042610 00000000 */  nop
/* 32E14 80042614 0800E003 */  jr         $ra
/* 32E18 80042618 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_82C
/* 11664 80020E64 4C02A38F */  lw         $v1, 0x24c($sp)
/* 11668 80020E68 00000000 */  nop
/* 1166C 80020E6C 01006224 */  addiu      $v0, $v1, 1
/* 11670 80020E70 4C02A2AF */  sw         $v0, 0x24c($sp)
/* 11674 80020E74 01006580 */  lb         $a1, 1($v1)
/* 11678 80020E78 00000000 */  nop
/* 1167C 80020E7C 06FEA014 */  bnez       $a1, .L80020698
/* 11680 80020E80 25000224 */   addiu     $v0, $zero, 0x25
.L80020E84:
/* 11684 80020E84 21107202 */  addu       $v0, $s3, $s2
/* 11688 80020E88 000040A0 */  sb         $zero, ($v0)
/* 1168C 80020E8C 21104002 */  addu       $v0, $s2, $zero
/* 11690 80020E90 4402BF8F */  lw         $ra, 0x244($sp)
/* 11694 80020E94 4002B68F */  lw         $s6, 0x240($sp)
/* 11698 80020E98 3C02B58F */  lw         $s5, 0x23c($sp)
/* 1169C 80020E9C 3802B48F */  lw         $s4, 0x238($sp)
/* 116A0 80020EA0 3402B38F */  lw         $s3, 0x234($sp)
/* 116A4 80020EA4 3002B28F */  lw         $s2, 0x230($sp)
/* 116A8 80020EA8 2C02B18F */  lw         $s1, 0x22c($sp)
/* 116AC 80020EAC 2802B08F */  lw         $s0, 0x228($sp)
/* 116B0 80020EB0 0800E003 */  jr         $ra
/* 116B4 80020EB4 4802BD27 */   addiu     $sp, $sp, 0x248

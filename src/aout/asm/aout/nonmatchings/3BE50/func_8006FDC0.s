.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006FDC0
/* 605C0 8006FDC0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 605C4 8006FDC4 3400B5AF */  sw         $s5, 0x34($sp)
/* 605C8 8006FDC8 5800B58F */  lw         $s5, 0x58($sp)
/* 605CC 8006FDCC 3000B4AF */  sw         $s4, 0x30($sp)
/* 605D0 8006FDD0 7400B48F */  lw         $s4, 0x74($sp)
/* 605D4 8006FDD4 6400A28F */  lw         $v0, 0x64($sp)
/* 605D8 8006FDD8 2000B0AF */  sw         $s0, 0x20($sp)
/* 605DC 8006FDDC 6800B08F */  lw         $s0, 0x68($sp)
/* 605E0 8006FDE0 4000BEAF */  sw         $fp, 0x40($sp)
/* 605E4 8006FDE4 6C00BE8F */  lw         $fp, 0x6c($sp)
/* 605E8 8006FDE8 2400B1AF */  sw         $s1, 0x24($sp)
/* 605EC 8006FDEC 2188A000 */  addu       $s1, $a1, $zero
/* 605F0 8006FDF0 2800B2AF */  sw         $s2, 0x28($sp)
/* 605F4 8006FDF4 21908000 */  addu       $s2, $a0, $zero
/* 605F8 8006FDF8 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 605FC 8006FDFC 7000B78F */  lw         $s7, 0x70($sp)
/* 60600 8006FE00 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 60604 8006FE04 6000B38F */  lw         $s3, 0x60($sp)
/* 60608 8006FE08 4400BFAF */  sw         $ra, 0x44($sp)
/* 6060C 8006FE0C 3800B6AF */  sw         $s6, 0x38($sp)
/* 60610 8006FE10 1000B5AF */  sw         $s5, 0x10($sp)
/* 60614 8006FE14 1400B4AF */  sw         $s4, 0x14($sp)
/* 60618 8006FE18 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6061C 8006FE1C 04000286 */  lh         $v0, 4($s0)
/* 60620 8006FE20 21B0E000 */  addu       $s6, $a3, $zero
/* 60624 8006FE24 5000A6AF */  sw         $a2, 0x50($sp)
/* 60628 8006FE28 06000786 */  lh         $a3, 6($s0)
/* 6062C 8006FE2C 21305E00 */  addu       $a2, $v0, $fp
/* 60630 8006FE30 0C000286 */  lh         $v0, 0xc($s0)
/* 60634 8006FE34 2138F700 */  addu       $a3, $a3, $s7
/* 60638 8006FE38 1769010C */  jal        FUN_8005a45c
/* 6063C 8006FE3C 1800A2AF */   sw        $v0, 0x18($sp)
/* 60640 8006FE40 21204002 */  addu       $a0, $s2, $zero
/* 60644 8006FE44 16000686 */  lh         $a2, 0x16($s0)
/* 60648 8006FE48 18000786 */  lh         $a3, 0x18($s0)
/* 6064C 8006FE4C 396D010C */  jal        FUN_8005b4e4
/* 60650 8006FE50 21282002 */   addu      $a1, $s1, $zero
/* 60654 8006FE54 21204002 */  addu       $a0, $s2, $zero
/* 60658 8006FE58 21282002 */  addu       $a1, $s1, $zero
/* 6065C 8006FE5C 5000A68F */  lw         $a2, 0x50($sp)
/* 60660 8006FE60 2138C002 */  addu       $a3, $s6, $zero
/* 60664 8006FE64 1000B5AF */  sw         $s5, 0x10($sp)
/* 60668 8006FE68 976D010C */  jal        FUN_8005b65c
/* 6066C 8006FE6C 1400B4AF */   sw        $s4, 0x14($sp)
/* 60670 8006FE70 21204002 */  addu       $a0, $s2, $zero
/* 60674 8006FE74 21282002 */  addu       $a1, $s1, $zero
/* 60678 8006FE78 21306002 */  addu       $a2, $s3, $zero
/* 6067C 8006FE7C 21386002 */  addu       $a3, $s3, $zero
/* 60680 8006FE80 EB6C010C */  jal        FUN_8005b3ac
/* 60684 8006FE84 1000B3AF */   sw        $s3, 0x10($sp)
/* 60688 8006FE88 01003126 */  addiu      $s1, $s1, 1
/* 6068C 8006FE8C 21204002 */  addu       $a0, $s2, $zero
/* 60690 8006FE90 21282002 */  addu       $a1, $s1, $zero
/* 60694 8006FE94 6400A38F */  lw         $v1, 0x64($sp)
/* 60698 8006FE98 01000224 */  addiu      $v0, $zero, 1
/* 6069C 8006FE9C 1000B5AF */  sw         $s5, 0x10($sp)
/* 606A0 8006FEA0 1400A2AF */  sw         $v0, 0x14($sp)
/* 606A4 8006FEA4 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 606A8 8006FEA8 04000686 */  lh         $a2, 4($s0)
/* 606AC 8006FEAC 06000786 */  lh         $a3, 6($s0)
/* 606B0 8006FEB0 0C000286 */  lh         $v0, 0xc($s0)
/* 606B4 8006FEB4 2130DE00 */  addu       $a2, $a2, $fp
/* 606B8 8006FEB8 2138F700 */  addu       $a3, $a3, $s7
/* 606BC 8006FEBC 2138F400 */  addu       $a3, $a3, $s4
/* 606C0 8006FEC0 1769010C */  jal        FUN_8005a45c
/* 606C4 8006FEC4 1800A2AF */   sw        $v0, 0x18($sp)
/* 606C8 8006FEC8 21204002 */  addu       $a0, $s2, $zero
/* 606CC 8006FECC 16000686 */  lh         $a2, 0x16($s0)
/* 606D0 8006FED0 18000786 */  lh         $a3, 0x18($s0)
/* 606D4 8006FED4 396D010C */  jal        FUN_8005b4e4
/* 606D8 8006FED8 21282002 */   addu      $a1, $s1, $zero
/* 606DC 8006FEDC 21204002 */  addu       $a0, $s2, $zero
/* 606E0 8006FEE0 21282002 */  addu       $a1, $s1, $zero
/* 606E4 8006FEE4 21B0D402 */  addu       $s6, $s6, $s4
/* 606E8 8006FEE8 5000A68F */  lw         $a2, 0x50($sp)
/* 606EC 8006FEEC 5C00A28F */  lw         $v0, 0x5c($sp)
/* 606F0 8006FEF0 2138C002 */  addu       $a3, $s6, $zero
/* 606F4 8006FEF4 1000B5AF */  sw         $s5, 0x10($sp)
/* 606F8 8006FEF8 976D010C */  jal        FUN_8005b65c
/* 606FC 8006FEFC 1400A2AF */   sw        $v0, 0x14($sp)
/* 60700 8006FF00 21204002 */  addu       $a0, $s2, $zero
/* 60704 8006FF04 21282002 */  addu       $a1, $s1, $zero
/* 60708 8006FF08 21306002 */  addu       $a2, $s3, $zero
/* 6070C 8006FF0C 21386002 */  addu       $a3, $s3, $zero
/* 60710 8006FF10 EB6C010C */  jal        FUN_8005b3ac
/* 60714 8006FF14 1000B3AF */   sw        $s3, 0x10($sp)
/* 60718 8006FF18 01003126 */  addiu      $s1, $s1, 1
/* 6071C 8006FF1C 21204002 */  addu       $a0, $s2, $zero
/* 60720 8006FF20 7C00A38F */  lw         $v1, 0x7c($sp)
/* 60724 8006FF24 6400A28F */  lw         $v0, 0x64($sp)
/* 60728 8006FF28 21282002 */  addu       $a1, $s1, $zero
/* 6072C 8006FF2C 1000B5AF */  sw         $s5, 0x10($sp)
/* 60730 8006FF30 1400A3AF */  sw         $v1, 0x14($sp)
/* 60734 8006FF34 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 60738 8006FF38 04000686 */  lh         $a2, 4($s0)
/* 6073C 8006FF3C 06000786 */  lh         $a3, 6($s0)
/* 60740 8006FF40 0C000286 */  lh         $v0, 0xc($s0)
/* 60744 8006FF44 7800A38F */  lw         $v1, 0x78($sp)
/* 60748 8006FF48 2130DE00 */  addu       $a2, $a2, $fp
/* 6074C 8006FF4C 2138F700 */  addu       $a3, $a3, $s7
/* 60750 8006FF50 2138F400 */  addu       $a3, $a3, $s4
/* 60754 8006FF54 2138E300 */  addu       $a3, $a3, $v1
/* 60758 8006FF58 1769010C */  jal        FUN_8005a45c
/* 6075C 8006FF5C 1800A2AF */   sw        $v0, 0x18($sp)
/* 60760 8006FF60 21204002 */  addu       $a0, $s2, $zero
/* 60764 8006FF64 16000686 */  lh         $a2, 0x16($s0)
/* 60768 8006FF68 18000786 */  lh         $a3, 0x18($s0)
/* 6076C 8006FF6C 396D010C */  jal        FUN_8005b4e4
/* 60770 8006FF70 21282002 */   addu      $a1, $s1, $zero
/* 60774 8006FF74 21204002 */  addu       $a0, $s2, $zero
/* 60778 8006FF78 5000A68F */  lw         $a2, 0x50($sp)
/* 6077C 8006FF7C 5C00A28F */  lw         $v0, 0x5c($sp)
/* 60780 8006FF80 7C00A38F */  lw         $v1, 0x7c($sp)
/* 60784 8006FF84 21282002 */  addu       $a1, $s1, $zero
/* 60788 8006FF88 1000B5AF */  sw         $s5, 0x10($sp)
/* 6078C 8006FF8C 2138C202 */  addu       $a3, $s6, $v0
/* 60790 8006FF90 976D010C */  jal        FUN_8005b65c
/* 60794 8006FF94 1400A3AF */   sw        $v1, 0x14($sp)
/* 60798 8006FF98 21204002 */  addu       $a0, $s2, $zero
/* 6079C 8006FF9C 21282002 */  addu       $a1, $s1, $zero
/* 607A0 8006FFA0 21306002 */  addu       $a2, $s3, $zero
/* 607A4 8006FFA4 2138C000 */  addu       $a3, $a2, $zero
/* 607A8 8006FFA8 EB6C010C */  jal        FUN_8005b3ac
/* 607AC 8006FFAC 1000B3AF */   sw        $s3, 0x10($sp)
/* 607B0 8006FFB0 01002226 */  addiu      $v0, $s1, 1
/* 607B4 8006FFB4 4400BF8F */  lw         $ra, 0x44($sp)
/* 607B8 8006FFB8 4000BE8F */  lw         $fp, 0x40($sp)
/* 607BC 8006FFBC 3C00B78F */  lw         $s7, 0x3c($sp)
/* 607C0 8006FFC0 3800B68F */  lw         $s6, 0x38($sp)
/* 607C4 8006FFC4 3400B58F */  lw         $s5, 0x34($sp)
/* 607C8 8006FFC8 3000B48F */  lw         $s4, 0x30($sp)
/* 607CC 8006FFCC 2C00B38F */  lw         $s3, 0x2c($sp)
/* 607D0 8006FFD0 2800B28F */  lw         $s2, 0x28($sp)
/* 607D4 8006FFD4 2400B18F */  lw         $s1, 0x24($sp)
/* 607D8 8006FFD8 2000B08F */  lw         $s0, 0x20($sp)
/* 607DC 8006FFDC 0800E003 */  jr         $ra
/* 607E0 8006FFE0 4800BD27 */   addiu     $sp, $sp, 0x48

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006f6a4
/* 5FEA4 8006F6A4 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5FEA8 8006F6A8 3400B5AF */  sw         $s5, 0x34($sp)
/* 5FEAC 8006F6AC 5C00B58F */  lw         $s5, 0x5c($sp)
/* 5FEB0 8006F6B0 3000B4AF */  sw         $s4, 0x30($sp)
/* 5FEB4 8006F6B4 7000B48F */  lw         $s4, 0x70($sp)
/* 5FEB8 8006F6B8 2400B1AF */  sw         $s1, 0x24($sp)
/* 5FEBC 8006F6BC 21888000 */  addu       $s1, $a0, $zero
/* 5FEC0 8006F6C0 2000B0AF */  sw         $s0, 0x20($sp)
/* 5FEC4 8006F6C4 6400B08F */  lw         $s0, 0x64($sp)
/* 5FEC8 8006F6C8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 5FECC 8006F6CC 2198A000 */  addu       $s3, $a1, $zero
/* 5FED0 8006F6D0 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 5FED4 8006F6D4 6800B78F */  lw         $s7, 0x68($sp)
/* 5FED8 8006F6D8 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5FEDC 8006F6DC 2800B2AF */  sw         $s2, 0x28($sp)
/* 5FEE0 8006F6E0 6000B28F */  lw         $s2, 0x60($sp)
/* 5FEE4 8006F6E4 FFFF0224 */  addiu      $v0, $zero, -1
/* 5FEE8 8006F6E8 4400BFAF */  sw         $ra, 0x44($sp)
/* 5FEEC 8006F6EC 4000BEAF */  sw         $fp, 0x40($sp)
/* 5FEF0 8006F6F0 3800B6AF */  sw         $s6, 0x38($sp)
/* 5FEF4 8006F6F4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5FEF8 8006F6F8 1000B4AF */  sw         $s4, 0x10($sp)
/* 5FEFC 8006F6FC 1400B5AF */  sw         $s5, 0x14($sp)
/* 5FF00 8006F700 04000286 */  lh         $v0, 4($s0)
/* 5FF04 8006F704 21B0C000 */  addu       $s6, $a2, $zero
/* 5FF08 8006F708 5400A7AF */  sw         $a3, 0x54($sp)
/* 5FF0C 8006F70C 06000786 */  lh         $a3, 6($s0)
/* 5FF10 8006F710 21305700 */  addu       $a2, $v0, $s7
/* 5FF14 8006F714 0C000286 */  lh         $v0, 0xc($s0)
/* 5FF18 8006F718 2138E300 */  addu       $a3, $a3, $v1
/* 5FF1C 8006F71C 1769010C */  jal        FUN_8005a45c
/* 5FF20 8006F720 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FF24 8006F724 21202002 */  addu       $a0, $s1, $zero
/* 5FF28 8006F728 16000686 */  lh         $a2, 0x16($s0)
/* 5FF2C 8006F72C 18000786 */  lh         $a3, 0x18($s0)
/* 5FF30 8006F730 396D010C */  jal        FUN_8005b4e4
/* 5FF34 8006F734 21286002 */   addu      $a1, $s3, $zero
/* 5FF38 8006F738 21202002 */  addu       $a0, $s1, $zero
/* 5FF3C 8006F73C 21286002 */  addu       $a1, $s3, $zero
/* 5FF40 8006F740 5400A78F */  lw         $a3, 0x54($sp)
/* 5FF44 8006F744 2130C002 */  addu       $a2, $s6, $zero
/* 5FF48 8006F748 1000B4AF */  sw         $s4, 0x10($sp)
/* 5FF4C 8006F74C 976D010C */  jal        FUN_8005b65c
/* 5FF50 8006F750 1400B5AF */   sw        $s5, 0x14($sp)
/* 5FF54 8006F754 21202002 */  addu       $a0, $s1, $zero
/* 5FF58 8006F758 21286002 */  addu       $a1, $s3, $zero
/* 5FF5C 8006F75C 21304002 */  addu       $a2, $s2, $zero
/* 5FF60 8006F760 21384002 */  addu       $a3, $s2, $zero
/* 5FF64 8006F764 EB6C010C */  jal        FUN_8005b3ac
/* 5FF68 8006F768 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FF6C 8006F76C 01007E26 */  addiu      $fp, $s3, 1
/* 5FF70 8006F770 21202002 */  addu       $a0, $s1, $zero
/* 5FF74 8006F774 2128C003 */  addu       $a1, $fp, $zero
/* 5FF78 8006F778 04000686 */  lh         $a2, 4($s0)
/* 5FF7C 8006F77C 01000224 */  addiu      $v0, $zero, 1
/* 5FF80 8006F780 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FF84 8006F784 FFFF0224 */  addiu      $v0, $zero, -1
/* 5FF88 8006F788 1400B5AF */  sw         $s5, 0x14($sp)
/* 5FF8C 8006F78C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5FF90 8006F790 06000786 */  lh         $a3, 6($s0)
/* 5FF94 8006F794 0C000286 */  lh         $v0, 0xc($s0)
/* 5FF98 8006F798 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5FF9C 8006F79C 2130D700 */  addu       $a2, $a2, $s7
/* 5FFA0 8006F7A0 2130D400 */  addu       $a2, $a2, $s4
/* 5FFA4 8006F7A4 2138E300 */  addu       $a3, $a3, $v1
/* 5FFA8 8006F7A8 1769010C */  jal        FUN_8005a45c
/* 5FFAC 8006F7AC 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FFB0 8006F7B0 21202002 */  addu       $a0, $s1, $zero
/* 5FFB4 8006F7B4 16000686 */  lh         $a2, 0x16($s0)
/* 5FFB8 8006F7B8 18000786 */  lh         $a3, 0x18($s0)
/* 5FFBC 8006F7BC 396D010C */  jal        FUN_8005b4e4
/* 5FFC0 8006F7C0 2128C003 */   addu      $a1, $fp, $zero
/* 5FFC4 8006F7C4 21202002 */  addu       $a0, $s1, $zero
/* 5FFC8 8006F7C8 2128C003 */  addu       $a1, $fp, $zero
/* 5FFCC 8006F7CC 21B0D402 */  addu       $s6, $s6, $s4
/* 5FFD0 8006F7D0 5400A78F */  lw         $a3, 0x54($sp)
/* 5FFD4 8006F7D4 5800A28F */  lw         $v0, 0x58($sp)
/* 5FFD8 8006F7D8 2130C002 */  addu       $a2, $s6, $zero
/* 5FFDC 8006F7DC 1400B5AF */  sw         $s5, 0x14($sp)
/* 5FFE0 8006F7E0 976D010C */  jal        FUN_8005b65c
/* 5FFE4 8006F7E4 1000A2AF */   sw        $v0, 0x10($sp)
/* 5FFE8 8006F7E8 21202002 */  addu       $a0, $s1, $zero
/* 5FFEC 8006F7EC 2128C003 */  addu       $a1, $fp, $zero
/* 5FFF0 8006F7F0 21304002 */  addu       $a2, $s2, $zero
/* 5FFF4 8006F7F4 21384002 */  addu       $a3, $s2, $zero
/* 5FFF8 8006F7F8 EB6C010C */  jal        FUN_8005b3ac
/* 5FFFC 8006F7FC 1000B2AF */   sw        $s2, 0x10($sp)
/* 60000 8006F800 02007E26 */  addiu      $fp, $s3, 2
/* 60004 8006F804 21202002 */  addu       $a0, $s1, $zero
/* 60008 8006F808 04000686 */  lh         $a2, 4($s0)
/* 6000C 8006F80C 7800A38F */  lw         $v1, 0x78($sp)
/* 60010 8006F810 FFFF0224 */  addiu      $v0, $zero, -1
/* 60014 8006F814 1400B5AF */  sw         $s5, 0x14($sp)
/* 60018 8006F818 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6001C 8006F81C 2130D700 */  addu       $a2, $a2, $s7
/* 60020 8006F820 2130D400 */  addu       $a2, $a2, $s4
/* 60024 8006F824 1000A3AF */  sw         $v1, 0x10($sp)
/* 60028 8006F828 7400A38F */  lw         $v1, 0x74($sp)
/* 6002C 8006F82C 06000786 */  lh         $a3, 6($s0)
/* 60030 8006F830 0C000286 */  lh         $v0, 0xc($s0)
/* 60034 8006F834 2130C300 */  addu       $a2, $a2, $v1
/* 60038 8006F838 6C00A38F */  lw         $v1, 0x6c($sp)
/* 6003C 8006F83C 2128C003 */  addu       $a1, $fp, $zero
/* 60040 8006F840 1800A2AF */  sw         $v0, 0x18($sp)
/* 60044 8006F844 1769010C */  jal        FUN_8005a45c
/* 60048 8006F848 2138E300 */   addu      $a3, $a3, $v1
/* 6004C 8006F84C 21202002 */  addu       $a0, $s1, $zero
/* 60050 8006F850 16000686 */  lh         $a2, 0x16($s0)
/* 60054 8006F854 18000786 */  lh         $a3, 0x18($s0)
/* 60058 8006F858 396D010C */  jal        FUN_8005b4e4
/* 6005C 8006F85C 2128C003 */   addu      $a1, $fp, $zero
/* 60060 8006F860 21202002 */  addu       $a0, $s1, $zero
/* 60064 8006F864 5800A28F */  lw         $v0, 0x58($sp)
/* 60068 8006F868 5400A78F */  lw         $a3, 0x54($sp)
/* 6006C 8006F86C 7800A38F */  lw         $v1, 0x78($sp)
/* 60070 8006F870 2128C003 */  addu       $a1, $fp, $zero
/* 60074 8006F874 1400B5AF */  sw         $s5, 0x14($sp)
/* 60078 8006F878 2130C202 */  addu       $a2, $s6, $v0
/* 6007C 8006F87C 976D010C */  jal        FUN_8005b65c
/* 60080 8006F880 1000A3AF */   sw        $v1, 0x10($sp)
/* 60084 8006F884 21202002 */  addu       $a0, $s1, $zero
/* 60088 8006F888 2128C003 */  addu       $a1, $fp, $zero
/* 6008C 8006F88C 21304002 */  addu       $a2, $s2, $zero
/* 60090 8006F890 2138C000 */  addu       $a3, $a2, $zero
/* 60094 8006F894 EB6C010C */  jal        FUN_8005b3ac
/* 60098 8006F898 1000B2AF */   sw        $s2, 0x10($sp)
/* 6009C 8006F89C 03006226 */  addiu      $v0, $s3, 3
/* 600A0 8006F8A0 4400BF8F */  lw         $ra, 0x44($sp)
/* 600A4 8006F8A4 4000BE8F */  lw         $fp, 0x40($sp)
/* 600A8 8006F8A8 3C00B78F */  lw         $s7, 0x3c($sp)
/* 600AC 8006F8AC 3800B68F */  lw         $s6, 0x38($sp)
/* 600B0 8006F8B0 3400B58F */  lw         $s5, 0x34($sp)
/* 600B4 8006F8B4 3000B48F */  lw         $s4, 0x30($sp)
/* 600B8 8006F8B8 2C00B38F */  lw         $s3, 0x2c($sp)
/* 600BC 8006F8BC 2800B28F */  lw         $s2, 0x28($sp)
/* 600C0 8006F8C0 2400B18F */  lw         $s1, 0x24($sp)
/* 600C4 8006F8C4 2000B08F */  lw         $s0, 0x20($sp)
/* 600C8 8006F8C8 0800E003 */  jr         $ra
/* 600CC 8006F8CC 4800BD27 */   addiu     $sp, $sp, 0x48

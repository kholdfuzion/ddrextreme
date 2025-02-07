.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a1554
/* 91D54 800A1554 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 91D58 800A1558 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 91D5C 800A155C 21980000 */  addu       $s3, $zero, $zero
/* 91D60 800A1560 4400BFAF */  sw         $ra, 0x44($sp)
/* 91D64 800A1564 4000BEAF */  sw         $fp, 0x40($sp)
/* 91D68 800A1568 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 91D6C 800A156C 3800B6AF */  sw         $s6, 0x38($sp)
/* 91D70 800A1570 3400B5AF */  sw         $s5, 0x34($sp)
/* 91D74 800A1574 3000B4AF */  sw         $s4, 0x30($sp)
/* 91D78 800A1578 2800B2AF */  sw         $s2, 0x28($sp)
/* 91D7C 800A157C 2400B1AF */  sw         $s1, 0x24($sp)
/* 91D80 800A1580 2000B0AF */  sw         $s0, 0x20($sp)
/* 91D84 800A1584 1000A0AF */  sw         $zero, 0x10($sp)
/* 91D88 800A1588 21400000 */  addu       $t0, $zero, $zero
.L800A158C:
/* 91D8C 800A158C 01007726 */  addiu      $s7, $s3, 1
/* 91D90 800A1590 00311300 */  sll        $a2, $s3, 4
/* 91D94 800A1594 0400C624 */  addiu      $a2, $a2, 4
/* 91D98 800A1598 80381300 */  sll        $a3, $s3, 2
/* 91D9C 800A159C 2118F300 */  addu       $v1, $a3, $s3
/* 91DA0 800A15A0 C0110300 */  sll        $v0, $v1, 7
/* 91DA4 800A15A4 21186200 */  addu       $v1, $v1, $v0
/* 91DA8 800A15A8 40190300 */  sll        $v1, $v1, 5
/* 91DAC 800A15AC 23187300 */  subu       $v1, $v1, $s3
/* 91DB0 800A15B0 80180300 */  sll        $v1, $v1, 2
/* 91DB4 800A15B4 0F80043C */  lui        $a0, %hi(D_800F01D4)
/* 91DB8 800A15B8 D4018424 */  addiu      $a0, $a0, %lo(D_800F01D4)
/* 91DBC 800A15BC 21106400 */  addu       $v0, $v1, $a0
/* 91DC0 800A15C0 1B80053C */  lui        $a1, %hi(D_801B2B84)
/* 91DC4 800A15C4 842BA48C */  lw         $a0, %lo(D_801B2B84)($a1)
/* 91DC8 800A15C8 0400458C */  lw         $a1, 4($v0)
/* 91DCC 800A15CC 21908600 */  addu       $s2, $a0, $a2
/* 91DD0 800A15D0 0004B624 */  addiu      $s6, $a1, 0x400
/* 91DD4 800A15D4 0C00428E */  lw         $v0, 0xc($s2)
/* 91DD8 800A15D8 00000000 */  nop
/* 91DDC 800A15DC 83320200 */  sra        $a2, $v0, 0xa
/* 91DE0 800A15E0 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 91DE4 800A15E4 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 91DE8 800A15E8 21186200 */  addu       $v1, $v1, $v0
/* 91DEC 800A15EC 8A006290 */  lbu        $v0, 0x8a($v1)
/* 91DF0 800A15F0 07000324 */  addiu      $v1, $zero, 7
/* 91DF4 800A15F4 BC004310 */  beq        $v0, $v1, .L800A18E8
/* 91DF8 800A15F8 83A21600 */   sra       $s4, $s6, 0xa
/* 91DFC 800A15FC BA004010 */  beqz       $v0, .L800A18E8
/* 91E00 800A1600 0F80043C */   lui       $a0, %hi(D_800F01D4)
/* 91E04 800A1604 D4018424 */  addiu      $a0, $a0, %lo(D_800F01D4)
/* 91E08 800A1608 54FE8384 */  lh         $v1, -0x1ac($a0)
/* 91E0C 800A160C 02000224 */  addiu      $v0, $zero, 2
/* 91E10 800A1610 05006210 */  beq        $v1, $v0, .L800A1628
/* 91E14 800A1614 05000224 */   addiu     $v0, $zero, 5
/* 91E18 800A1618 03006210 */  beq        $v1, $v0, .L800A1628
/* 91E1C 800A161C 04000224 */   addiu     $v0, $zero, 4
/* 91E20 800A1620 0F006214 */  bne        $v1, $v0, .L800A1660
/* 91E24 800A1624 0F80043C */   lui       $a0, 0x800f
.L800A1628:
/* 91E28 800A1628 0F80043C */  lui        $a0, 0x800f
/* 91E2C 800A162C 2110F300 */  addu       $v0, $a3, $s3
/* 91E30 800A1630 C0190200 */  sll        $v1, $v0, 7
/* 91E34 800A1634 21104300 */  addu       $v0, $v0, $v1
/* 91E38 800A1638 40110200 */  sll        $v0, $v0, 5
/* 91E3C 800A163C 23105300 */  subu       $v0, $v0, $s3
/* 91E40 800A1640 80100200 */  sll        $v0, $v0, 2
/* 91E44 800A1644 21288000 */  addu       $a1, $a0, $zero
/* 91E48 800A1648 2800A524 */  addiu      $a1, $a1, 0x28
/* 91E4C 800A164C 21104500 */  addu       $v0, $v0, $a1
/* 91E50 800A1650 88004390 */  lbu        $v1, 0x88($v0)
/* 91E54 800A1654 07000224 */  addiu      $v0, $zero, 7
/* 91E58 800A1658 A3006214 */  bne        $v1, $v0, .L800A18E8
/* 91E5C 800A165C 01007726 */   addiu     $s7, $s3, 1
.L800A1660:
/* 91E60 800A1660 28008524 */  addiu      $a1, $a0, 0x28
/* 91E64 800A1664 2110F300 */  addu       $v0, $a3, $s3
/* 91E68 800A1668 C0190200 */  sll        $v1, $v0, 7
/* 91E6C 800A166C 21104300 */  addu       $v0, $v0, $v1
/* 91E70 800A1670 40110200 */  sll        $v0, $v0, 5
/* 91E74 800A1674 23105300 */  subu       $v0, $v0, $s3
/* 91E78 800A1678 80380200 */  sll        $a3, $v0, 2
/* 91E7C 800A167C 2118E500 */  addu       $v1, $a3, $a1
/* 91E80 800A1680 8E006484 */  lh         $a0, 0x8e($v1)
/* 91E84 800A1684 FFFF0224 */  addiu      $v0, $zero, -1
/* 91E88 800A1688 97008214 */  bne        $a0, $v0, .L800A18E8
/* 91E8C 800A168C 01007726 */   addiu     $s7, $s3, 1
/* 91E90 800A1690 1B80033C */  lui        $v1, %hi(D_801B2B84)
/* 91E94 800A1694 842B628C */  lw         $v0, %lo(D_801B2B84)($v1)
/* 91E98 800A1698 00000000 */  nop
/* 91E9C 800A169C 0000438C */  lw         $v1, ($v0)
/* 91EA0 800A16A0 01000424 */  addiu      $a0, $zero, 1
/* 91EA4 800A16A4 06006414 */  bne        $v1, $a0, .L800A16C0
/* 91EA8 800A16A8 00000000 */   nop
/* 91EAC 800A16AC 1000A28F */  lw         $v0, 0x10($sp)
/* 91EB0 800A16B0 00000000 */  nop
/* 91EB4 800A16B4 8C004014 */  bnez       $v0, .L800A18E8
/* 91EB8 800A16B8 00000000 */   nop
/* 91EBC 800A16BC 1000A4AF */  sw         $a0, 0x10($sp)
.L800A16C0:
/* 91EC0 800A16C0 0000448E */  lw         $a0, ($s2)
/* 91EC4 800A16C4 AC02A324 */  addiu      $v1, $a1, 0x2ac
/* 91EC8 800A16C8 2118E300 */  addu       $v1, $a3, $v1
/* 91ECC 800A16CC 80100400 */  sll        $v0, $a0, 2
/* 91ED0 800A16D0 21104400 */  addu       $v0, $v0, $a0
/* 91ED4 800A16D4 C0100200 */  sll        $v0, $v0, 3
/* 91ED8 800A16D8 21886200 */  addu       $s1, $v1, $v0
/* 91EDC 800A16DC BB850208 */  j          .L800A16EC
/* 91EE0 800A16E0 01007726 */   addiu     $s7, $s3, 1
.L800A16E4:
/* 91EE4 800A16E4 01008424 */  addiu      $a0, $a0, 1
/* 91EE8 800A16E8 28003126 */  addiu      $s1, $s1, 0x28
.L800A16EC:
/* 91EEC 800A16EC 04002386 */  lh         $v1, 4($s1)
/* 91EF0 800A16F0 FEFF0224 */  addiu      $v0, $zero, -2
/* 91EF4 800A16F4 4F006210 */  beq        $v1, $v0, .L800A1834
/* 91EF8 800A16F8 00000000 */   nop
/* 91EFC 800A16FC F9FF6004 */  bltz       $v1, .L800A16E4
/* 91F00 800A1700 00000000 */   nop
/* 91F04 800A1704 0000228E */  lw         $v0, ($s1)
/* 91F08 800A1708 00000000 */  nop
/* 91F0C 800A170C 83120200 */  sra        $v0, $v0, 0xa
/* 91F10 800A1710 2A105400 */  slt        $v0, $v0, $s4
/* 91F14 800A1714 F3FF4014 */  bnez       $v0, .L800A16E4
/* 91F18 800A1718 00000000 */   nop
.L800A171C:
/* 91F1C 800A171C 000044AE */  sw         $a0, ($s2)
/* 91F20 800A1720 21A80000 */  addu       $s5, $zero, $zero
/* 91F24 800A1724 51008612 */  beq        $s4, $a2, .L800A186C
/* 91F28 800A1728 21F00000 */   addu      $fp, $zero, $zero
/* 91F2C 800A172C 0000308E */  lw         $s0, ($s1)
/* 91F30 800A1730 21206002 */  addu       $a0, $s3, $zero
/* 91F34 800A1734 1800A8AF */  sw         $t0, 0x18($sp)
/* 91F38 800A1738 B6D5010C */  jal        FUN_800756d8
/* 91F3C 800A173C 83821000 */   sra       $s0, $s0, 0xa
/* 91F40 800A1740 1800A88F */  lw         $t0, 0x18($sp)
/* 91F44 800A1744 3D001416 */  bne        $s0, $s4, .L800A183C
/* 91F48 800A1748 00000000 */   nop
/* 91F4C 800A174C 3B000015 */  bnez       $t0, .L800A183C
/* 91F50 800A1750 21280000 */   addu      $a1, $zero, $zero
/* 91F54 800A1754 07000424 */  addiu      $a0, $zero, 7
/* 91F58 800A1758 01000624 */  addiu      $a2, $zero, 1
/* 91F5C 800A175C 04002286 */  lh         $v0, 4($s1)
/* 91F60 800A1760 04000724 */  addiu      $a3, $zero, 4
/* 91F64 800A1764 40180200 */  sll        $v1, $v0, 1
/* 91F68 800A1768 21186200 */  addu       $v1, $v1, $v0
/* 91F6C 800A176C C0180300 */  sll        $v1, $v1, 3
/* 91F70 800A1770 1280023C */  lui        $v0, %hi(D_8011864A)
/* 91F74 800A1774 4A864224 */  addiu      $v0, $v0, %lo(D_8011864A)
/* 91F78 800A1778 21186200 */  addu       $v1, $v1, $v0
/* 91F7C 800A177C 21106400 */  addu       $v0, $v1, $a0
.L800A1780:
/* 91F80 800A1780 00004290 */  lbu        $v0, ($v0)
/* 91F84 800A1784 00000000 */  nop
/* 91F88 800A1788 03004610 */  beq        $v0, $a2, .L800A1798
/* 91F8C 800A178C 00000000 */   nop
/* 91F90 800A1790 03004714 */  bne        $v0, $a3, .L800A17A0
/* 91F94 800A1794 00000000 */   nop
.L800A1798:
/* 91F98 800A1798 04108600 */  sllv       $v0, $a2, $a0
/* 91F9C 800A179C 2128A200 */  addu       $a1, $a1, $v0
.L800A17A0:
/* 91FA0 800A17A0 FFFF8424 */  addiu      $a0, $a0, -1
/* 91FA4 800A17A4 F6FF8104 */  bgez       $a0, .L800A1780
/* 91FA8 800A17A8 21106400 */   addu      $v0, $v1, $a0
/* 91FAC 800A17AC FFFFA224 */  addiu      $v0, $a1, -1
/* 91FB0 800A17B0 0A00422C */  sltiu      $v0, $v0, 0xa
/* 91FB4 800A17B4 0F004010 */  beqz       $v0, .L800A17F4
/* 91FB8 800A17B8 0180023C */   lui       $v0, %hi(D_80016924)
/* 91FBC 800A17BC 24694224 */  addiu      $v0, $v0, %lo(D_80016924)
/* 91FC0 800A17C0 80180500 */  sll        $v1, $a1, 2
/* 91FC4 800A17C4 21186200 */  addu       $v1, $v1, $v0
/* 91FC8 800A17C8 0000758C */  lw         $s5, ($v1)
/* 91FCC 800A17CC 0400428E */  lw         $v0, 4($s2)
/* 91FD0 800A17D0 00000000 */  nop
/* 91FD4 800A17D4 05005514 */  bne        $v0, $s5, .L800A17EC
/* 91FD8 800A17D8 01000324 */   addiu     $v1, $zero, 1
/* 91FDC 800A17DC 0800428E */  lw         $v0, 8($s2)
/* 91FE0 800A17E0 00000000 */  nop
/* 91FE4 800A17E4 03004314 */  bne        $v0, $v1, .L800A17F4
/* 91FE8 800A17E8 00000000 */   nop
.L800A17EC:
/* 91FEC 800A17EC B0D5010C */  jal        FUN_800756c0
/* 91FF0 800A17F0 21206002 */   addu      $a0, $s3, $zero
.L800A17F4:
/* 91FF4 800A17F4 1B00A012 */  beqz       $s5, .L800A1864
/* 91FF8 800A17F8 00000000 */   nop
/* 91FFC 800A17FC 0400428E */  lw         $v0, 4($s2)
/* 92000 800A1800 00000000 */  nop
/* 92004 800A1804 17004010 */  beqz       $v0, .L800A1864
/* 92008 800A1808 00000000 */   nop
/* 9200C 800A180C 15005514 */  bne        $v0, $s5, .L800A1864
/* 92010 800A1810 00000000 */   nop
/* 92014 800A1814 0800438E */  lw         $v1, 8($s2)
/* 92018 800A1818 00000000 */  nop
/* 9201C 800A181C 03006010 */  beqz       $v1, .L800A182C
/* 92020 800A1820 02000224 */   addiu     $v0, $zero, 2
/* 92024 800A1824 0F006214 */  bne        $v1, $v0, .L800A1864
/* 92028 800A1828 00000000 */   nop
.L800A182C:
/* 9202C 800A182C 19860208 */  j          .L800A1864
/* 92030 800A1830 02001E24 */   addiu     $fp, $zero, 2
.L800A1834:
/* 92034 800A1834 C7850208 */  j          .L800A171C
/* 92038 800A1838 01000824 */   addiu     $t0, $zero, 1
.L800A183C:
/* 9203C 800A183C 0400438E */  lw         $v1, 4($s2)
/* 92040 800A1840 00000000 */  nop
/* 92044 800A1844 07006010 */  beqz       $v1, .L800A1864
/* 92048 800A1848 01000424 */   addiu     $a0, $zero, 1
/* 9204C 800A184C 0800428E */  lw         $v0, 8($s2)
/* 92050 800A1850 00000000 */  nop
/* 92054 800A1854 03004410 */  beq        $v0, $a0, .L800A1864
/* 92058 800A1858 00000000 */   nop
/* 9205C 800A185C 21A86000 */  addu       $s5, $v1, $zero
/* 92060 800A1860 01001E24 */  addiu      $fp, $zero, 1
.L800A1864:
/* 92064 800A1864 040055AE */  sw         $s5, 4($s2)
/* 92068 800A1868 08005EAE */  sw         $fp, 8($s2)
.L800A186C:
/* 9206C 800A186C 0C0056AE */  sw         $s6, 0xc($s2)
/* 92070 800A1870 21880000 */  addu       $s1, $zero, $zero
/* 92074 800A1874 0200C106 */  bgez       $s6, .L800A1880
/* 92078 800A1878 2110C002 */   addu      $v0, $s6, $zero
/* 9207C 800A187C FF03C226 */  addiu      $v0, $s6, 0x3ff
.L800A1880:
/* 92080 800A1880 83120200 */  sra        $v0, $v0, 0xa
/* 92084 800A1884 80120200 */  sll        $v0, $v0, 0xa
/* 92088 800A1888 2328C202 */  subu       $a1, $s6, $v0
/* 9208C 800A188C 80180500 */  sll        $v1, $a1, 2
/* 92090 800A1890 0400448E */  lw         $a0, 4($s2)
/* 92094 800A1894 00000000 */  nop
/* 92098 800A1898 0C008010 */  beqz       $a0, .L800A18CC
/* 9209C 800A189C FF0F7030 */   andi      $s0, $v1, 0xfff
/* 920A0 800A18A0 0800428E */  lw         $v0, 8($s2)
/* 920A4 800A18A4 00000000 */  nop
/* 920A8 800A18A8 21888200 */  addu       $s1, $a0, $v0
/* 920AC 800A18AC FFFF4224 */  addiu      $v0, $v0, -1
/* 920B0 800A18B0 0200422C */  sltiu      $v0, $v0, 2
/* 920B4 800A18B4 05004010 */  beqz       $v0, .L800A18CC
/* 920B8 800A18B8 0001A228 */   slti      $v0, $a1, 0x100
/* 920BC 800A18BC 04004010 */  beqz       $v0, .L800A18D0
/* 920C0 800A18C0 21206002 */   addu      $a0, $s3, $zero
/* 920C4 800A18C4 ABD5010C */  jal        FUN_800756ac
/* 920C8 800A18C8 00000000 */   nop
.L800A18CC:
/* 920CC 800A18CC 21206002 */  addu       $a0, $s3, $zero
.L800A18D0:
/* 920D0 800A18D0 21282002 */  addu       $a1, $s1, $zero
/* 920D4 800A18D4 74D5010C */  jal        FUN_800755d0
/* 920D8 800A18D8 21300002 */   addu      $a2, $s0, $zero
/* 920DC 800A18DC 21206002 */  addu       $a0, $s3, $zero
/* 920E0 800A18E0 BED5010C */  jal        FUN_800756f8
/* 920E4 800A18E4 21280002 */   addu      $a1, $s0, $zero
.L800A18E8:
/* 920E8 800A18E8 2198E002 */  addu       $s3, $s7, $zero
/* 920EC 800A18EC 0200E22A */  slti       $v0, $s7, 2
/* 920F0 800A18F0 26FF4014 */  bnez       $v0, .L800A158C
/* 920F4 800A18F4 21400000 */   addu      $t0, $zero, $zero
/* 920F8 800A18F8 4400BF8F */  lw         $ra, 0x44($sp)
/* 920FC 800A18FC 4000BE8F */  lw         $fp, 0x40($sp)
/* 92100 800A1900 3C00B78F */  lw         $s7, 0x3c($sp)
/* 92104 800A1904 3800B68F */  lw         $s6, 0x38($sp)
/* 92108 800A1908 3400B58F */  lw         $s5, 0x34($sp)
/* 9210C 800A190C 3000B48F */  lw         $s4, 0x30($sp)
/* 92110 800A1910 2C00B38F */  lw         $s3, 0x2c($sp)
/* 92114 800A1914 2800B28F */  lw         $s2, 0x28($sp)
/* 92118 800A1918 2400B18F */  lw         $s1, 0x24($sp)
/* 9211C 800A191C 2000B08F */  lw         $s0, 0x20($sp)
/* 92120 800A1920 0800E003 */  jr         $ra
/* 92124 800A1924 4800BD27 */   addiu     $sp, $sp, 0x48

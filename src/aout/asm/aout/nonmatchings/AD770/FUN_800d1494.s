.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d1494
/* C1C94 800D1494 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* C1C98 800D1498 2800B0AF */  sw         $s0, 0x28($sp)
/* C1C9C 800D149C 2080103C */  lui        $s0, %hi(D_801FBD10)
/* C1CA0 800D14A0 3000B2AF */  sw         $s2, 0x30($sp)
/* C1CA4 800D14A4 10BD1226 */  addiu      $s2, $s0, %lo(D_801FBD10)
/* C1CA8 800D14A8 21204002 */  addu       $a0, $s2, $zero
/* C1CAC 800D14AC 21280000 */  addu       $a1, $zero, $zero
/* C1CB0 800D14B0 801F063C */  lui        $a2, 0x1f80
/* C1CB4 800D14B4 481F023C */  lui        $v0, 0x1f48
/* C1CB8 800D14B8 00004224 */  addiu      $v0, $v0, 0
/* C1CBC 800D14BC 801F033C */  lui        $v1, 0x1f80
/* C1CC0 800D14C0 0010C2AC */  sw         $v0, 0x1000($a2)
/* C1CC4 800D14C4 32206290 */  lbu        $v0, 0x2032($v1)
/* C1CC8 800D14C8 4C120624 */  addiu      $a2, $zero, 0x124c
/* C1CCC 800D14CC 4C00BFAF */  sw         $ra, 0x4c($sp)
/* C1CD0 800D14D0 4800BEAF */  sw         $fp, 0x48($sp)
/* C1CD4 800D14D4 4400B7AF */  sw         $s7, 0x44($sp)
/* C1CD8 800D14D8 4000B6AF */  sw         $s6, 0x40($sp)
/* C1CDC 800D14DC 3C00B5AF */  sw         $s5, 0x3c($sp)
/* C1CE0 800D14E0 3800B4AF */  sw         $s4, 0x38($sp)
/* C1CE4 800D14E4 3400B3AF */  sw         $s3, 0x34($sp)
/* C1CE8 800D14E8 2C00B1AF */  sw         $s1, 0x2c($sp)
/* C1CEC 800D14EC 02004234 */  ori        $v0, $v0, 2
/* C1CF0 800D14F0 322062A0 */  sb         $v0, 0x2032($v1)
/* C1CF4 800D14F4 F6A2000C */  jal        memset
/* C1CF8 800D14F8 21F00002 */   addu      $fp, $s0, $zero
/* C1CFC 800D14FC 9D3F030C */  jal        FUN_800cfe74
/* C1D00 800D1500 21200000 */   addu      $a0, $zero, $zero
/* C1D04 800D1504 21884000 */  addu       $s1, $v0, $zero
/* C1D08 800D1508 09012016 */  bnez       $s1, .L800D1930
/* C1D0C 800D150C 00000000 */   nop
/* C1D10 800D1510 D0014496 */  lhu        $a0, 0x1d0($s2)
/* C1D14 800D1514 00850234 */  ori        $v0, $zero, 0x8500
/* C1D18 800D1518 00DF8330 */  andi       $v1, $a0, 0xdf00
/* C1D1C 800D151C 04016214 */  bne        $v1, $v0, .L800D1930
/* C1D20 800D1520 F7FF0224 */   addiu     $v0, $zero, -9
/* C1D24 800D1524 60008330 */  andi       $v1, $a0, 0x60
/* C1D28 800D1528 03006010 */  beqz       $v1, .L800D1538
/* C1D2C 800D152C 40000224 */   addiu     $v0, $zero, 0x40
/* C1D30 800D1530 FF006214 */  bne        $v1, $v0, .L800D1930
/* C1D34 800D1534 F7FF0224 */   addiu     $v0, $zero, -9
.L800D1538:
/* C1D38 800D1538 21800000 */  addu       $s0, $zero, $zero
.L800D153C:
/* C1D3C 800D153C CD6B000C */  jal        VSync
/* C1D40 800D1540 21200000 */   addu      $a0, $zero, $zero
/* C1D44 800D1544 4A70000C */  jal        FUN_8001c128
/* C1D48 800D1548 00000000 */   nop
/* C1D4C 800D154C 2A40030C */  jal        FUN_800d00a8
/* C1D50 800D1550 21200000 */   addu      $a0, $zero, $zero
/* C1D54 800D1554 CB40030C */  jal        FUN_800d032c
/* C1D58 800D1558 21200000 */   addu      $a0, $zero, $zero
/* C1D5C 800D155C 09004014 */  bnez       $v0, .L800D1584
/* C1D60 800D1560 10BDC327 */   addiu     $v1, $fp, -0x42f0
/* C1D64 800D1564 D9116290 */  lbu        $v0, 0x11d9($v1)
/* C1D68 800D1568 00000000 */  nop
/* C1D6C 800D156C 05004014 */  bnez       $v0, .L800D1584
/* C1D70 800D1570 00000000 */   nop
/* C1D74 800D1574 96016290 */  lbu        $v0, 0x196($v1)
/* C1D78 800D1578 00000000 */  nop
/* C1D7C 800D157C 05004010 */  beqz       $v0, .L800D1594
/* C1D80 800D1580 21100000 */   addu      $v0, $zero, $zero
.L800D1584:
/* C1D84 800D1584 01001026 */  addiu      $s0, $s0, 1
/* C1D88 800D1588 DC05022A */  slti       $v0, $s0, 0x5dc
/* C1D8C 800D158C EBFF4014 */  bnez       $v0, .L800D153C
/* C1D90 800D1590 01000224 */   addiu     $v0, $zero, 1
.L800D1594:
/* C1D94 800D1594 E6004014 */  bnez       $v0, .L800D1930
/* C1D98 800D1598 FFFF0224 */   addiu     $v0, $zero, -1
/* C1D9C 800D159C 1000A427 */  addiu      $a0, $sp, 0x10
/* C1DA0 800D15A0 21280000 */  addu       $a1, $zero, $zero
/* C1DA4 800D15A4 F6A2000C */  jal        memset
/* C1DA8 800D15A8 0C000624 */   addiu     $a2, $zero, 0xc
/* C1DAC 800D15AC 21200000 */  addu       $a0, $zero, $zero
/* C1DB0 800D15B0 1000A527 */  addiu      $a1, $sp, 0x10
/* C1DB4 800D15B4 0C000624 */  addiu      $a2, $zero, 0xc
/* C1DB8 800D15B8 2080103C */  lui        $s0, %hi(D_801FBED4)
/* C1DBC 800D15BC D4BE1126 */  addiu      $s1, $s0, %lo(D_801FBED4)
/* C1DC0 800D15C0 21382002 */  addu       $a3, $s1, $zero
/* C1DC4 800D15C4 43000224 */  addiu      $v0, $zero, 0x43
/* C1DC8 800D15C8 1000A2A3 */  sb         $v0, 0x10($sp)
/* C1DCC 800D15CC 0C000224 */  addiu      $v0, $zero, 0xc
/* C1DD0 800D15D0 1600A0A3 */  sb         $zero, 0x16($sp)
/* C1DD4 800D15D4 1700A0A3 */  sb         $zero, 0x17($sp)
/* C1DD8 800D15D8 2742030C */  jal        FUN_800d089c
/* C1DDC 800D15DC 1800A2A3 */   sb        $v0, 0x18($sp)
/* C1DE0 800D15E0 03004010 */  beqz       $v0, .L800D15F0
/* C1DE4 800D15E4 00000000 */   nop
/* C1DE8 800D15E8 8A450308 */  j          .L800D1628
/* C1DEC 800D15EC 21884000 */   addu      $s1, $v0, $zero
.L800D15F0:
/* C1DF0 800D15F0 3CFE2226 */  addiu      $v0, $s1, -0x1c4
/* C1DF4 800D15F4 CC014690 */  lbu        $a2, 0x1cc($v0)
/* C1DF8 800D15F8 CD014590 */  lbu        $a1, 0x1cd($v0)
/* C1DFC 800D15FC CE014490 */  lbu        $a0, 0x1ce($v0)
/* C1E00 800D1600 CF014390 */  lbu        $v1, 0x1cf($v0)
/* C1E04 800D1604 21880000 */  addu       $s1, $zero, $zero
/* C1E08 800D1608 2300A6A3 */  sb         $a2, 0x23($sp)
/* C1E0C 800D160C 2200A5A3 */  sb         $a1, 0x22($sp)
/* C1E10 800D1610 2100A4A3 */  sb         $a0, 0x21($sp)
/* C1E14 800D1614 2000A3A3 */  sb         $v1, 0x20($sp)
/* C1E18 800D1618 CC0143A0 */  sb         $v1, 0x1cc($v0)
/* C1E1C 800D161C CD0144A0 */  sb         $a0, 0x1cd($v0)
/* C1E20 800D1620 CE0145A0 */  sb         $a1, 0x1ce($v0)
/* C1E24 800D1624 CF0146A0 */  sb         $a2, 0x1cf($v0)
.L800D1628:
/* C1E28 800D1628 C1002016 */  bnez       $s1, .L800D1930
/* C1E2C 800D162C 21102002 */   addu      $v0, $s1, $zero
/* C1E30 800D1630 2080023C */  lui        $v0, %hi(D_801FBEDC)
/* C1E34 800D1634 DCBE5624 */  addiu      $s6, $v0, %lo(D_801FBEDC)
/* C1E38 800D1638 34FEC526 */  addiu      $a1, $s6, -0x1cc
/* C1E3C 800D163C DCBE448C */  lw         $a0, -0x4124($v0)
/* C1E40 800D1640 C601A390 */  lbu        $v1, 0x1c6($a1)
/* C1E44 800D1644 C701B490 */  lbu        $s4, 0x1c7($a1)
/* C1E48 800D1648 01007224 */  addiu      $s2, $v1, 1
/* C1E4C 800D164C 2A109202 */  slt        $v0, $s4, $s2
/* C1E50 800D1650 2C004014 */  bnez       $v0, .L800D1704
/* C1E54 800D1654 34FEC4AE */   sw        $a0, -0x1cc($s6)
/* C1E58 800D1658 0C001724 */  addiu      $s7, $zero, 0xc
/* C1E5C 800D165C 2180A000 */  addu       $s0, $a1, $zero
/* C1E60 800D1660 F8FFD526 */  addiu      $s5, $s6, -8
/* C1E64 800D1664 80101200 */  sll        $v0, $s2, 2
/* C1E68 800D1668 3CFE4224 */  addiu      $v0, $v0, -0x1c4
/* C1E6C 800D166C 21985500 */  addu       $s3, $v0, $s5
.L800D1670:
/* C1E70 800D1670 1000A427 */  addiu      $a0, $sp, 0x10
/* C1E74 800D1674 21280000 */  addu       $a1, $zero, $zero
/* C1E78 800D1678 F6A2000C */  jal        memset
/* C1E7C 800D167C 0C000624 */   addiu     $a2, $zero, 0xc
/* C1E80 800D1680 21200000 */  addu       $a0, $zero, $zero
/* C1E84 800D1684 1000A527 */  addiu      $a1, $sp, 0x10
/* C1E88 800D1688 0C000624 */  addiu      $a2, $zero, 0xc
/* C1E8C 800D168C 2138A002 */  addu       $a3, $s5, $zero
/* C1E90 800D1690 43000224 */  addiu      $v0, $zero, 0x43
/* C1E94 800D1694 1000A2A3 */  sb         $v0, 0x10($sp)
/* C1E98 800D1698 1600B2A3 */  sb         $s2, 0x16($sp)
/* C1E9C 800D169C 1700A0A3 */  sb         $zero, 0x17($sp)
/* C1EA0 800D16A0 2742030C */  jal        FUN_800d089c
/* C1EA4 800D16A4 1800B7A3 */   sb        $s7, 0x18($sp)
/* C1EA8 800D16A8 0E004014 */  bnez       $v0, .L800D16E4
/* C1EAC 800D16AC 21884000 */   addu      $s1, $v0, $zero
/* C1EB0 800D16B0 CC010592 */  lbu        $a1, 0x1cc($s0)
/* C1EB4 800D16B4 CD010492 */  lbu        $a0, 0x1cd($s0)
/* C1EB8 800D16B8 CE010392 */  lbu        $v1, 0x1ce($s0)
/* C1EBC 800D16BC CF010292 */  lbu        $v0, 0x1cf($s0)
/* C1EC0 800D16C0 21880000 */  addu       $s1, $zero, $zero
/* C1EC4 800D16C4 2300A5A3 */  sb         $a1, 0x23($sp)
/* C1EC8 800D16C8 2200A4A3 */  sb         $a0, 0x22($sp)
/* C1ECC 800D16CC 2100A3A3 */  sb         $v1, 0x21($sp)
/* C1ED0 800D16D0 2000A2A3 */  sb         $v0, 0x20($sp)
/* C1ED4 800D16D4 CC0102A2 */  sb         $v0, 0x1cc($s0)
/* C1ED8 800D16D8 CD0103A2 */  sb         $v1, 0x1cd($s0)
/* C1EDC 800D16DC CE0104A2 */  sb         $a0, 0x1ce($s0)
/* C1EE0 800D16E0 CF0105A2 */  sb         $a1, 0x1cf($s0)
.L800D16E4:
/* C1EE4 800D16E4 92002016 */  bnez       $s1, .L800D1930
/* C1EE8 800D16E8 21102002 */   addu      $v0, $s1, $zero
/* C1EEC 800D16EC 0000C28E */  lw         $v0, ($s6)
/* C1EF0 800D16F0 01005226 */  addiu      $s2, $s2, 1
/* C1EF4 800D16F4 000062AE */  sw         $v0, ($s3)
/* C1EF8 800D16F8 2A109202 */  slt        $v0, $s4, $s2
/* C1EFC 800D16FC DCFF4010 */  beqz       $v0, .L800D1670
/* C1F00 800D1700 04007326 */   addiu     $s3, $s3, 4
.L800D1704:
/* C1F04 800D1704 1000A427 */  addiu      $a0, $sp, 0x10
/* C1F08 800D1708 21280000 */  addu       $a1, $zero, $zero
/* C1F0C 800D170C F6A2000C */  jal        memset
/* C1F10 800D1710 0C000624 */   addiu     $a2, $zero, 0xc
/* C1F14 800D1714 21200000 */  addu       $a0, $zero, $zero
/* C1F18 800D1718 1000A527 */  addiu      $a1, $sp, 0x10
/* C1F1C 800D171C 0C000624 */  addiu      $a2, $zero, 0xc
/* C1F20 800D1720 2080023C */  lui        $v0, %hi(D_801FBED4)
/* C1F24 800D1724 D4BE5024 */  addiu      $s0, $v0, %lo(D_801FBED4)
/* C1F28 800D1728 21380002 */  addu       $a3, $s0, $zero
/* C1F2C 800D172C 43000224 */  addiu      $v0, $zero, 0x43
/* C1F30 800D1730 AA000324 */  addiu      $v1, $zero, 0xaa
/* C1F34 800D1734 1000A2A3 */  sb         $v0, 0x10($sp)
/* C1F38 800D1738 0C000224 */  addiu      $v0, $zero, 0xc
/* C1F3C 800D173C 1600A3A3 */  sb         $v1, 0x16($sp)
/* C1F40 800D1740 1700A0A3 */  sb         $zero, 0x17($sp)
/* C1F44 800D1744 2742030C */  jal        FUN_800d089c
/* C1F48 800D1748 1800A2A3 */   sb        $v0, 0x18($sp)
/* C1F4C 800D174C 0F004014 */  bnez       $v0, .L800D178C
/* C1F50 800D1750 21884000 */   addu      $s1, $v0, $zero
/* C1F54 800D1754 3CFE0226 */  addiu      $v0, $s0, -0x1c4
/* C1F58 800D1758 CC014690 */  lbu        $a2, 0x1cc($v0)
/* C1F5C 800D175C CD014590 */  lbu        $a1, 0x1cd($v0)
/* C1F60 800D1760 CE014490 */  lbu        $a0, 0x1ce($v0)
/* C1F64 800D1764 CF014390 */  lbu        $v1, 0x1cf($v0)
/* C1F68 800D1768 21880000 */  addu       $s1, $zero, $zero
/* C1F6C 800D176C 2300A6A3 */  sb         $a2, 0x23($sp)
/* C1F70 800D1770 2200A5A3 */  sb         $a1, 0x22($sp)
/* C1F74 800D1774 2100A4A3 */  sb         $a0, 0x21($sp)
/* C1F78 800D1778 2000A3A3 */  sb         $v1, 0x20($sp)
/* C1F7C 800D177C CC0143A0 */  sb         $v1, 0x1cc($v0)
/* C1F80 800D1780 CD0144A0 */  sb         $a0, 0x1cd($v0)
/* C1F84 800D1784 CE0145A0 */  sb         $a1, 0x1ce($v0)
/* C1F88 800D1788 CF0146A0 */  sb         $a2, 0x1cf($v0)
.L800D178C:
/* C1F8C 800D178C 68002016 */  bnez       $s1, .L800D1930
/* C1F90 800D1790 21102002 */   addu      $v0, $s1, $zero
/* C1F94 800D1794 1000A427 */  addiu      $a0, $sp, 0x10
/* C1F98 800D1798 21280000 */  addu       $a1, $zero, $zero
/* C1F9C 800D179C 0C000624 */  addiu      $a2, $zero, 0xc
/* C1FA0 800D17A0 10BDD027 */  addiu      $s0, $fp, -0x42f0
/* C1FA4 800D17A4 80101200 */  sll        $v0, $s2, 2
/* C1FA8 800D17A8 0000C38E */  lw         $v1, ($s6)
/* C1FAC 800D17AC 21105000 */  addu       $v0, $v0, $s0
/* C1FB0 800D17B0 F6A2000C */  jal        memset
/* C1FB4 800D17B4 000043AC */   sw        $v1, ($v0)
/* C1FB8 800D17B8 21200000 */  addu       $a0, $zero, $zero
/* C1FBC 800D17BC 1000A527 */  addiu      $a1, $sp, 0x10
/* C1FC0 800D17C0 0C000624 */  addiu      $a2, $zero, 0xc
/* C1FC4 800D17C4 C4010726 */  addiu      $a3, $s0, 0x1c4
/* C1FC8 800D17C8 43000224 */  addiu      $v0, $zero, 0x43
/* C1FCC 800D17CC 1000A2A3 */  sb         $v0, 0x10($sp)
/* C1FD0 800D17D0 0C000224 */  addiu      $v0, $zero, 0xc
/* C1FD4 800D17D4 1600A0A3 */  sb         $zero, 0x16($sp)
/* C1FD8 800D17D8 1700A0A3 */  sb         $zero, 0x17($sp)
/* C1FDC 800D17DC 2742030C */  jal        FUN_800d089c
/* C1FE0 800D17E0 1800A2A3 */   sb        $v0, 0x18($sp)
/* C1FE4 800D17E4 03004010 */  beqz       $v0, .L800D17F4
/* C1FE8 800D17E8 00000000 */   nop
/* C1FEC 800D17EC 09460308 */  j          .L800D1824
/* C1FF0 800D17F0 21884000 */   addu      $s1, $v0, $zero
.L800D17F4:
/* C1FF4 800D17F4 CC010592 */  lbu        $a1, 0x1cc($s0)
/* C1FF8 800D17F8 CD010492 */  lbu        $a0, 0x1cd($s0)
/* C1FFC 800D17FC CE010392 */  lbu        $v1, 0x1ce($s0)
/* C2000 800D1800 CF010292 */  lbu        $v0, 0x1cf($s0)
/* C2004 800D1804 2300A5A3 */  sb         $a1, 0x23($sp)
/* C2008 800D1808 2200A4A3 */  sb         $a0, 0x22($sp)
/* C200C 800D180C 2100A3A3 */  sb         $v1, 0x21($sp)
/* C2010 800D1810 2000A2A3 */  sb         $v0, 0x20($sp)
/* C2014 800D1814 CC0102A2 */  sb         $v0, 0x1cc($s0)
/* C2018 800D1818 CD0103A2 */  sb         $v1, 0x1cd($s0)
/* C201C 800D181C CE0104A2 */  sb         $a0, 0x1ce($s0)
/* C2020 800D1820 CF0105A2 */  sb         $a1, 0x1cf($s0)
.L800D1824:
/* C2024 800D1824 42002016 */  bnez       $s1, .L800D1930
/* C2028 800D1828 21102002 */   addu      $v0, $s1, $zero
/* C202C 800D182C 1000A427 */  addiu      $a0, $sp, 0x10
/* C2030 800D1830 21280000 */  addu       $a1, $zero, $zero
/* C2034 800D1834 F6A2000C */  jal        memset
/* C2038 800D1838 0C000624 */   addiu     $a2, $zero, 0xc
/* C203C 800D183C 21200000 */  addu       $a0, $zero, $zero
/* C2040 800D1840 1000A527 */  addiu      $a1, $sp, 0x10
/* C2044 800D1844 18000624 */  addiu      $a2, $zero, 0x18
/* C2048 800D1848 2080023C */  lui        $v0, %hi(D_801FBEB4)
/* C204C 800D184C B4BE5024 */  addiu      $s0, $v0, %lo(D_801FBEB4)
/* C2050 800D1850 21380002 */  addu       $a3, $s0, $zero
/* C2054 800D1854 5A000224 */  addiu      $v0, $zero, 0x5a
/* C2058 800D1858 0E000324 */  addiu      $v1, $zero, 0xe
/* C205C 800D185C 1000A2A3 */  sb         $v0, 0x10($sp)
/* C2060 800D1860 18000224 */  addiu      $v0, $zero, 0x18
/* C2064 800D1864 1200A3A3 */  sb         $v1, 0x12($sp)
/* C2068 800D1868 1700A0A3 */  sb         $zero, 0x17($sp)
/* C206C 800D186C 2742030C */  jal        FUN_800d089c
/* C2070 800D1870 1800A2A3 */   sb        $v0, 0x18($sp)
/* C2074 800D1874 21884000 */  addu       $s1, $v0, $zero
/* C2078 800D1878 2D002016 */  bnez       $s1, .L800D1930
/* C207C 800D187C 1000A427 */   addiu     $a0, $sp, 0x10
/* C2080 800D1880 21280000 */  addu       $a1, $zero, $zero
/* C2084 800D1884 0C000624 */  addiu      $a2, $zero, 0xc
/* C2088 800D1888 5CFE1226 */  addiu      $s2, $s0, -0x1a4
/* C208C 800D188C F6A2000C */  jal        memset
/* C2090 800D1890 A60140A2 */   sb        $zero, 0x1a6($s2)
/* C2094 800D1894 21200000 */  addu       $a0, $zero, $zero
/* C2098 800D1898 1000A527 */  addiu      $a1, $sp, 0x10
/* C209C 800D189C 08000624 */  addiu      $a2, $zero, 8
/* C20A0 800D18A0 18000726 */  addiu      $a3, $s0, 0x18
/* C20A4 800D18A4 25000224 */  addiu      $v0, $zero, 0x25
/* C20A8 800D18A8 2742030C */  jal        FUN_800d089c
/* C20AC 800D18AC 1000A2A3 */   sb        $v0, 0x10($sp)
/* C20B0 800D18B0 03004010 */  beqz       $v0, .L800D18C0
/* C20B4 800D18B4 00000000 */   nop
/* C20B8 800D18B8 49460308 */  j          .L800D1924
/* C20BC 800D18BC 21884000 */   addu      $s1, $v0, $zero
.L800D18C0:
/* C20C0 800D18C0 BC01428E */  lw         $v0, 0x1bc($s2)
/* C20C4 800D18C4 00000000 */  nop
/* C20C8 800D18C8 2000A2AF */  sw         $v0, 0x20($sp)
/* C20CC 800D18CC C001438E */  lw         $v1, 0x1c0($s2)
/* C20D0 800D18D0 2300A293 */  lbu        $v0, 0x23($sp)
/* C20D4 800D18D4 2200A493 */  lbu        $a0, 0x22($sp)
/* C20D8 800D18D8 2100A593 */  lbu        $a1, 0x21($sp)
/* C20DC 800D18DC 2000A693 */  lbu        $a2, 0x20($sp)
/* C20E0 800D18E0 2000A3AF */  sw         $v1, 0x20($sp)
/* C20E4 800D18E4 2600A5A3 */  sb         $a1, 0x26($sp)
/* C20E8 800D18E8 2300A593 */  lbu        $a1, 0x23($sp)
/* C20EC 800D18EC 2400A2A3 */  sb         $v0, 0x24($sp)
/* C20F0 800D18F0 2500A4A3 */  sb         $a0, 0x25($sp)
/* C20F4 800D18F4 2700A6A3 */  sb         $a2, 0x27($sp)
/* C20F8 800D18F8 2400A68F */  lw         $a2, 0x24($sp)
/* C20FC 800D18FC 2200A293 */  lbu        $v0, 0x22($sp)
/* C2100 800D1900 2100A393 */  lbu        $v1, 0x21($sp)
/* C2104 800D1904 2000A493 */  lbu        $a0, 0x20($sp)
/* C2108 800D1908 2400A5A3 */  sb         $a1, 0x24($sp)
/* C210C 800D190C 2500A2A3 */  sb         $v0, 0x25($sp)
/* C2110 800D1910 2600A3A3 */  sb         $v1, 0x26($sp)
/* C2114 800D1914 2700A4A3 */  sb         $a0, 0x27($sp)
/* C2118 800D1918 2400A28F */  lw         $v0, 0x24($sp)
/* C211C 800D191C BC0146AE */  sw         $a2, 0x1bc($s2)
/* C2120 800D1920 C00142AE */  sw         $v0, 0x1c0($s2)
.L800D1924:
/* C2124 800D1924 02002016 */  bnez       $s1, .L800D1930
/* C2128 800D1928 21102002 */   addu      $v0, $s1, $zero
/* C212C 800D192C 21100000 */  addu       $v0, $zero, $zero
.L800D1930:
/* C2130 800D1930 4C00BF8F */  lw         $ra, 0x4c($sp)
/* C2134 800D1934 4800BE8F */  lw         $fp, 0x48($sp)
/* C2138 800D1938 4400B78F */  lw         $s7, 0x44($sp)
/* C213C 800D193C 4000B68F */  lw         $s6, 0x40($sp)
/* C2140 800D1940 3C00B58F */  lw         $s5, 0x3c($sp)
/* C2144 800D1944 3800B48F */  lw         $s4, 0x38($sp)
/* C2148 800D1948 3400B38F */  lw         $s3, 0x34($sp)
/* C214C 800D194C 3000B28F */  lw         $s2, 0x30($sp)
/* C2150 800D1950 2C00B18F */  lw         $s1, 0x2c($sp)
/* C2154 800D1954 2800B08F */  lw         $s0, 0x28($sp)
/* C2158 800D1958 0800E003 */  jr         $ra
/* C215C 800D195C 5000BD27 */   addiu     $sp, $sp, 0x50

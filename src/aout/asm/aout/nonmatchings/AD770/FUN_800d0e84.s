.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d0e84
/* C1684 800D0E84 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* C1688 800D0E88 4000BEAF */  sw         $fp, 0x40($sp)
/* C168C 800D0E8C 21F08000 */  addu       $fp, $a0, $zero
/* C1690 800D0E90 2000B0AF */  sw         $s0, 0x20($sp)
/* C1694 800D0E94 1000B027 */  addiu      $s0, $sp, 0x10
/* C1698 800D0E98 21200002 */  addu       $a0, $s0, $zero
/* C169C 800D0E9C 21280000 */  addu       $a1, $zero, $zero
/* C16A0 800D0EA0 0C000624 */  addiu      $a2, $zero, 0xc
/* C16A4 800D0EA4 4400BFAF */  sw         $ra, 0x44($sp)
/* C16A8 800D0EA8 3C00B7AF */  sw         $s7, 0x3c($sp)
/* C16AC 800D0EAC 3800B6AF */  sw         $s6, 0x38($sp)
/* C16B0 800D0EB0 3400B5AF */  sw         $s5, 0x34($sp)
/* C16B4 800D0EB4 3000B4AF */  sw         $s4, 0x30($sp)
/* C16B8 800D0EB8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C16BC 800D0EBC 2800B2AF */  sw         $s2, 0x28($sp)
/* C16C0 800D0EC0 F6A2000C */  jal        memset
/* C16C4 800D0EC4 2400B1AF */   sw        $s1, 0x24($sp)
/* C16C8 800D0EC8 FFFF0424 */  addiu      $a0, $zero, -1
/* C16CC 800D0ECC 55000224 */  addiu      $v0, $zero, 0x55
/* C16D0 800D0ED0 10000324 */  addiu      $v1, $zero, 0x10
/* C16D4 800D0ED4 18001724 */  addiu      $s7, $zero, 0x18
/* C16D8 800D0ED8 1000A2A3 */  sb         $v0, 0x10($sp)
/* C16DC 800D0EDC 1100A3A3 */  sb         $v1, 0x11($sp)
/* C16E0 800D0EE0 1500A0A3 */  sb         $zero, 0x15($sp)
/* C16E4 800D0EE4 1400A0A3 */  sb         $zero, 0x14($sp)
/* C16E8 800D0EE8 1300A0A3 */  sb         $zero, 0x13($sp)
/* C16EC 800D0EEC 1200A0A3 */  sb         $zero, 0x12($sp)
/* C16F0 800D0EF0 1600A0A3 */  sb         $zero, 0x16($sp)
/* C16F4 800D0EF4 1700A0A3 */  sb         $zero, 0x17($sp)
/* C16F8 800D0EF8 1800B7A3 */  sb         $s7, 0x18($sp)
/* C16FC 800D0EFC 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C1700 800D0F00 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C1704 800D0F04 CD6B000C */  jal        VSync
/* C1708 800D0F08 1900A0A3 */   sb        $zero, 0x19($sp)
/* C170C 800D0F0C E0011224 */  addiu      $s2, $zero, 0x1e0
/* C1710 800D0F10 481F043C */  lui        $a0, 0x1f48
/* C1714 800D0F14 21884000 */  addu       $s1, $v0, $zero
/* C1718 800D0F18 21B00002 */  addu       $s6, $s0, $zero
/* C171C 800D0F1C 0E008390 */  lbu        $v1, 0xe($a0)
/* C1720 800D0F20 00000000 */  nop
/* C1724 800D0F24 88006330 */  andi       $v1, $v1, 0x88
/* C1728 800D0F28 0F006010 */  beqz       $v1, .L800D0F68
/* C172C 800D0F2C 21A08000 */   addu      $s4, $a0, $zero
/* C1730 800D0F30 21808002 */  addu       $s0, $s4, $zero
.L800D0F34:
/* C1734 800D0F34 CD6B000C */  jal        VSync
/* C1738 800D0F38 FFFF0424 */   addiu     $a0, $zero, -1
/* C173C 800D0F3C 23105100 */  subu       $v0, $v0, $s1
/* C1740 800D0F40 2A104202 */  slt        $v0, $s2, $v0
/* C1744 800D0F44 09004014 */  bnez       $v0, .L800D0F6C
/* C1748 800D0F48 FFFF0224 */   addiu     $v0, $zero, -1
/* C174C 800D0F4C 4A70000C */  jal        FUN_8001c128
/* C1750 800D0F50 00000000 */   nop
/* C1754 800D0F54 0E000292 */  lbu        $v0, 0xe($s0)
/* C1758 800D0F58 00000000 */  nop
/* C175C 800D0F5C 88004230 */  andi       $v0, $v0, 0x88
/* C1760 800D0F60 F4FF4014 */  bnez       $v0, .L800D0F34
/* C1764 800D0F64 00000000 */   nop
.L800D0F68:
/* C1768 800D0F68 21100000 */  addu       $v0, $zero, $zero
.L800D0F6C:
/* C176C 800D0F6C 03004010 */  beqz       $v0, .L800D0F7C
/* C1770 800D0F70 E0011524 */   addiu     $s5, $zero, 0x1e0
/* C1774 800D0F74 92440308 */  j          .L800D1248
/* C1778 800D0F78 FFFF0224 */   addiu     $v0, $zero, -1
.L800D0F7C:
/* C177C 800D0F7C FFFF0424 */  addiu      $a0, $zero, -1
/* C1780 800D0F80 481F053C */  lui        $a1, 0x1f48
/* C1784 800D0F84 0100C233 */  andi       $v0, $fp, 1
/* C1788 800D0F88 00110200 */  sll        $v0, $v0, 4
/* C178C 800D0F8C A0004234 */  ori        $v0, $v0, 0xa0
/* C1790 800D0F90 481F033C */  lui        $v1, 0x1f48
/* C1794 800D0F94 0C00A2A0 */  sb         $v0, 0xc($a1)
/* C1798 800D0F98 481F053C */  lui        $a1, 0x1f48
/* C179C 800D0F9C 08000224 */  addiu      $v0, $zero, 8
/* C17A0 800D0FA0 020060A0 */  sb         $zero, 2($v1)
/* C17A4 800D0FA4 481F033C */  lui        $v1, 0x1f48
/* C17A8 800D0FA8 0A00A2A0 */  sb         $v0, 0xa($a1)
/* C17AC 800D0FAC 481F053C */  lui        $a1, 0x1f48
/* C17B0 800D0FB0 A0000224 */  addiu      $v0, $zero, 0xa0
/* C17B4 800D0FB4 080060A0 */  sb         $zero, 8($v1)
/* C17B8 800D0FB8 0E00A2A0 */  sb         $v0, 0xe($a1)
/* C17BC 800D0FBC CD6B000C */  jal        VSync
/* C17C0 800D0FC0 481F123C */   lui       $s2, 0x1f48
/* C17C4 800D0FC4 21884000 */  addu       $s1, $v0, $zero
/* C17C8 800D0FC8 2080133C */  lui        $s3, %hi(D_801FBD10)
/* C17CC 800D0FCC 10BD7026 */  addiu      $s0, $s3, %lo(D_801FBD10)
.L800D0FD0:
/* C17D0 800D0FD0 0E008292 */  lbu        $v0, 0xe($s4)
/* C17D4 800D0FD4 00000000 */  nop
/* C17D8 800D0FD8 D81102A2 */  sb         $v0, 0x11d8($s0)
/* C17DC 800D0FDC 04004392 */  lbu        $v1, 4($s2)
/* C17E0 800D0FE0 FFFF0424 */  addiu      $a0, $zero, -1
/* C17E4 800D0FE4 DA1103A2 */  sb         $v1, 0x11da($s0)
/* C17E8 800D0FE8 CD6B000C */  jal        VSync
/* C17EC 800D0FEC 00000000 */   nop
/* C17F0 800D0FF0 D8110392 */  lbu        $v1, 0x11d8($s0)
/* C17F4 800D0FF4 00000000 */  nop
/* C17F8 800D0FF8 80006330 */  andi       $v1, $v1, 0x80
/* C17FC 800D0FFC 10006014 */  bnez       $v1, .L800D1040
/* C1800 800D1000 21204000 */   addu      $a0, $v0, $zero
/* C1804 800D1004 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C1808 800D1008 00000000 */  nop
/* C180C 800D100C 08004230 */  andi       $v0, $v0, 8
/* C1810 800D1010 0C004010 */  beqz       $v0, .L800D1044
/* C1814 800D1014 23109100 */   subu      $v0, $a0, $s1
/* C1818 800D1018 DA110292 */  lbu        $v0, 0x11da($s0)
/* C181C 800D101C 00000000 */  nop
/* C1820 800D1020 01004230 */  andi       $v0, $v0, 1
/* C1824 800D1024 07004010 */  beqz       $v0, .L800D1044
/* C1828 800D1028 23109100 */   subu      $v0, $a0, $s1
/* C182C 800D102C DA110292 */  lbu        $v0, 0x11da($s0)
/* C1830 800D1030 00000000 */  nop
/* C1834 800D1034 02004230 */  andi       $v0, $v0, 2
/* C1838 800D1038 09004010 */  beqz       $v0, .L800D1060
/* C183C 800D103C 21100000 */   addu      $v0, $zero, $zero
.L800D1040:
/* C1840 800D1040 23109100 */  subu       $v0, $a0, $s1
.L800D1044:
/* C1844 800D1044 2A10A202 */  slt        $v0, $s5, $v0
/* C1848 800D1048 05004014 */  bnez       $v0, .L800D1060
/* C184C 800D104C FFFF0224 */   addiu     $v0, $zero, -1
/* C1850 800D1050 4A70000C */  jal        FUN_8001c128
/* C1854 800D1054 00000000 */   nop
/* C1858 800D1058 F4430308 */  j          .L800D0FD0
/* C185C 800D105C 00000000 */   nop
.L800D1060:
/* C1860 800D1060 79004014 */  bnez       $v0, .L800D1248
/* C1864 800D1064 FFFF0224 */   addiu     $v0, $zero, -1
/* C1868 800D1068 2180C002 */  addu       $s0, $s6, $zero
/* C186C 800D106C 06000424 */  addiu      $a0, $zero, 6
/* C1870 800D1070 10BD6226 */  addiu      $v0, $s3, -0x42f0
/* C1874 800D1074 D011438C */  lw         $v1, 0x11d0($v0)
/* C1878 800D1078 481F053C */  lui        $a1, 0x1f48
/* C187C 800D107C D41143AC */  sw         $v1, 0x11d4($v0)
.L800D1080:
/* C1880 800D1080 00000296 */  lhu        $v0, ($s0)
/* C1884 800D1084 02001026 */  addiu      $s0, $s0, 2
/* C1888 800D1088 FFFF8424 */  addiu      $a0, $a0, -1
/* C188C 800D108C 0000A2A4 */  sh         $v0, ($a1)
/* C1890 800D1090 FBFF8014 */  bnez       $a0, .L800D1080
/* C1894 800D1094 00000000 */   nop
/* C1898 800D1098 CD6B000C */  jal        VSync
/* C189C 800D109C FFFF0424 */   addiu     $a0, $zero, -1
/* C18A0 800D10A0 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C18A4 800D10A4 10BD6526 */  addiu      $a1, $s3, -0x42f0
/* C18A8 800D10A8 D411A48C */  lw         $a0, 0x11d4($a1)
/* C18AC 800D10AC D011A38C */  lw         $v1, 0x11d0($a1)
/* C18B0 800D10B0 00000000 */  nop
/* C18B4 800D10B4 0F008314 */  bne        $a0, $v1, .L800D10F4
/* C18B8 800D10B8 21884000 */   addu      $s1, $v0, $zero
/* C18BC 800D10BC 2180A000 */  addu       $s0, $a1, $zero
.L800D10C0:
/* C18C0 800D10C0 CD6B000C */  jal        VSync
/* C18C4 800D10C4 FFFF0424 */   addiu     $a0, $zero, -1
/* C18C8 800D10C8 23105100 */  subu       $v0, $v0, $s1
/* C18CC 800D10CC 2A104202 */  slt        $v0, $s2, $v0
/* C18D0 800D10D0 09004014 */  bnez       $v0, .L800D10F8
/* C18D4 800D10D4 FFFF0224 */   addiu     $v0, $zero, -1
/* C18D8 800D10D8 4A70000C */  jal        FUN_8001c128
/* C18DC 800D10DC 00000000 */   nop
/* C18E0 800D10E0 D411038E */  lw         $v1, 0x11d4($s0)
/* C18E4 800D10E4 D011028E */  lw         $v0, 0x11d0($s0)
/* C18E8 800D10E8 00000000 */  nop
/* C18EC 800D10EC F4FF6210 */  beq        $v1, $v0, .L800D10C0
/* C18F0 800D10F0 00000000 */   nop
.L800D10F4:
/* C18F4 800D10F4 21100000 */  addu       $v0, $zero, $zero
.L800D10F8:
/* C18F8 800D10F8 53004014 */  bnez       $v0, .L800D1248
/* C18FC 800D10FC FFFF0224 */   addiu     $v0, $zero, -1
/* C1900 800D1100 10BD6626 */  addiu      $a2, $s3, -0x42f0
/* C1904 800D1104 D811C290 */  lbu        $v0, 0x11d8($a2)
/* C1908 800D1108 00000000 */  nop
/* C190C 800D110C 08004230 */  andi       $v0, $v0, 8
/* C1910 800D1110 4D004010 */  beqz       $v0, .L800D1248
/* C1914 800D1114 F8FF0224 */   addiu     $v0, $zero, -8
/* C1918 800D1118 DC11C294 */  lhu        $v0, 0x11dc($a2)
/* C191C 800D111C 00000000 */  nop
/* C1920 800D1120 49005714 */  bne        $v0, $s7, .L800D1248
/* C1924 800D1124 F8FF0224 */   addiu     $v0, $zero, -8
/* C1928 800D1128 A401C524 */  addiu      $a1, $a2, 0x1a4
/* C192C 800D112C D011C38C */  lw         $v1, 0x11d0($a2)
/* C1930 800D1130 DC11C294 */  lhu        $v0, 0x11dc($a2)
/* C1934 800D1134 481F073C */  lui        $a3, 0x1f48
/* C1938 800D1138 42200200 */  srl        $a0, $v0, 1
/* C193C 800D113C D411C3AC */  sw         $v1, 0x11d4($a2)
.L800D1140:
/* C1940 800D1140 0000A294 */  lhu        $v0, ($a1)
/* C1944 800D1144 0200A524 */  addiu      $a1, $a1, 2
/* C1948 800D1148 FFFF8424 */  addiu      $a0, $a0, -1
/* C194C 800D114C 0000E2A4 */  sh         $v0, ($a3)
/* C1950 800D1150 FBFF8014 */  bnez       $a0, .L800D1140
/* C1954 800D1154 00000000 */   nop
/* C1958 800D1158 CD6B000C */  jal        VSync
/* C195C 800D115C FFFF0424 */   addiu     $a0, $zero, -1
/* C1960 800D1160 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C1964 800D1164 10BD6526 */  addiu      $a1, $s3, -0x42f0
/* C1968 800D1168 D411A48C */  lw         $a0, 0x11d4($a1)
/* C196C 800D116C D011A38C */  lw         $v1, 0x11d0($a1)
/* C1970 800D1170 00000000 */  nop
/* C1974 800D1174 0F008314 */  bne        $a0, $v1, .L800D11B4
/* C1978 800D1178 21884000 */   addu      $s1, $v0, $zero
/* C197C 800D117C 2180A000 */  addu       $s0, $a1, $zero
.L800D1180:
/* C1980 800D1180 CD6B000C */  jal        VSync
/* C1984 800D1184 FFFF0424 */   addiu     $a0, $zero, -1
/* C1988 800D1188 23105100 */  subu       $v0, $v0, $s1
/* C198C 800D118C 2A104202 */  slt        $v0, $s2, $v0
/* C1990 800D1190 09004014 */  bnez       $v0, .L800D11B8
/* C1994 800D1194 FFFF0224 */   addiu     $v0, $zero, -1
/* C1998 800D1198 4A70000C */  jal        FUN_8001c128
/* C199C 800D119C 00000000 */   nop
/* C19A0 800D11A0 D411038E */  lw         $v1, 0x11d4($s0)
/* C19A4 800D11A4 D011028E */  lw         $v0, 0x11d0($s0)
/* C19A8 800D11A8 00000000 */  nop
/* C19AC 800D11AC F4FF6210 */  beq        $v1, $v0, .L800D1180
/* C19B0 800D11B0 00000000 */   nop
.L800D11B4:
/* C19B4 800D11B4 21100000 */  addu       $v0, $zero, $zero
.L800D11B8:
/* C19B8 800D11B8 23004014 */  bnez       $v0, .L800D1248
/* C19BC 800D11BC FFFF0224 */   addiu     $v0, $zero, -1
/* C19C0 800D11C0 10BD7026 */  addiu      $s0, $s3, -0x42f0
/* C19C4 800D11C4 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C19C8 800D11C8 00000000 */  nop
/* C19CC 800D11CC 01004230 */  andi       $v0, $v0, 1
/* C19D0 800D11D0 1D004010 */  beqz       $v0, .L800D1248
/* C19D4 800D11D4 21100000 */   addu      $v0, $zero, $zero
/* C19D8 800D11D8 CB40030C */  jal        FUN_800d032c
/* C19DC 800D11DC 2120C003 */   addu      $a0, $fp, $zero
/* C19E0 800D11E0 19004014 */  bnez       $v0, .L800D1248
/* C19E4 800D11E4 00000000 */   nop
/* C19E8 800D11E8 96010392 */  lbu        $v1, 0x196($s0)
/* C19EC 800D11EC 03000224 */  addiu      $v0, $zero, 3
/* C19F0 800D11F0 10006210 */  beq        $v1, $v0, .L800D1234
/* C19F4 800D11F4 04006228 */   slti      $v0, $v1, 4
/* C19F8 800D11F8 05004010 */  beqz       $v0, .L800D1210
/* C19FC 800D11FC 02000224 */   addiu     $v0, $zero, 2
/* C1A00 800D1200 0A006210 */  beq        $v1, $v0, .L800D122C
/* C1A04 800D1204 FAFF0224 */   addiu     $v0, $zero, -6
/* C1A08 800D1208 92440308 */  j          .L800D1248
/* C1A0C 800D120C 00000000 */   nop
.L800D1210:
/* C1A10 800D1210 04000224 */  addiu      $v0, $zero, 4
/* C1A14 800D1214 09006210 */  beq        $v1, $v0, .L800D123C
/* C1A18 800D1218 05000224 */   addiu     $v0, $zero, 5
/* C1A1C 800D121C 09006210 */  beq        $v1, $v0, .L800D1244
/* C1A20 800D1220 FAFF0224 */   addiu     $v0, $zero, -6
/* C1A24 800D1224 92440308 */  j          .L800D1248
/* C1A28 800D1228 00000000 */   nop
.L800D122C:
/* C1A2C 800D122C 92440308 */  j          .L800D1248
/* C1A30 800D1230 FEFF0224 */   addiu     $v0, $zero, -2
.L800D1234:
/* C1A34 800D1234 92440308 */  j          .L800D1248
/* C1A38 800D1238 FDFF0224 */   addiu     $v0, $zero, -3
.L800D123C:
/* C1A3C 800D123C 92440308 */  j          .L800D1248
/* C1A40 800D1240 FCFF0224 */   addiu     $v0, $zero, -4
.L800D1244:
/* C1A44 800D1244 FBFF0224 */  addiu      $v0, $zero, -5
.L800D1248:
/* C1A48 800D1248 4400BF8F */  lw         $ra, 0x44($sp)
/* C1A4C 800D124C 4000BE8F */  lw         $fp, 0x40($sp)
/* C1A50 800D1250 3C00B78F */  lw         $s7, 0x3c($sp)
/* C1A54 800D1254 3800B68F */  lw         $s6, 0x38($sp)
/* C1A58 800D1258 3400B58F */  lw         $s5, 0x34($sp)
/* C1A5C 800D125C 3000B48F */  lw         $s4, 0x30($sp)
/* C1A60 800D1260 2C00B38F */  lw         $s3, 0x2c($sp)
/* C1A64 800D1264 2800B28F */  lw         $s2, 0x28($sp)
/* C1A68 800D1268 2400B18F */  lw         $s1, 0x24($sp)
/* C1A6C 800D126C 2000B08F */  lw         $s0, 0x20($sp)
/* C1A70 800D1270 0800E003 */  jr         $ra
/* C1A74 800D1274 4800BD27 */   addiu     $sp, $sp, 0x48

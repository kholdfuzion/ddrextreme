.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c15f8
/* B1DF8 800C15F8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B1DFC 800C15FC 2000B2AF */  sw         $s2, 0x20($sp)
/* B1E00 800C1600 FBFF1224 */  addiu      $s2, $zero, -5
/* B1E04 800C1604 2400BFAF */  sw         $ra, 0x24($sp)
/* B1E08 800C1608 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B1E0C 800C160C 03008014 */  bnez       $a0, .L800C161C
/* B1E10 800C1610 1800B0AF */   sw        $s0, 0x18($sp)
/* B1E14 800C1614 1F80023C */  lui        $v0, %hi(D_801F70A0)
/* B1E18 800C1618 A07040AC */  sw         $zero, %lo(D_801F70A0)($v0)
.L800C161C:
/* B1E1C 800C161C CD6B000C */  jal        VSync
/* B1E20 800C1620 FFFF0424 */   addiu     $a0, $zero, -1
/* B1E24 800C1624 1F80033C */  lui        $v1, %hi(D_801F70A0)
/* B1E28 800C1628 A070638C */  lw         $v1, %lo(D_801F70A0)($v1)
/* B1E2C 800C162C 21884000 */  addu       $s1, $v0, $zero
/* B1E30 800C1630 0600622C */  sltiu      $v0, $v1, 6
/* B1E34 800C1634 54004010 */  beqz       $v0, .L800C1788
/* B1E38 800C1638 0180023C */   lui       $v0, %hi(D_800177D8)
/* B1E3C 800C163C D8774224 */  addiu      $v0, $v0, %lo(D_800177D8)
/* B1E40 800C1640 80180300 */  sll        $v1, $v1, 2
/* B1E44 800C1644 21186200 */  addu       $v1, $v1, $v0
/* B1E48 800C1648 0000628C */  lw         $v0, ($v1)
/* B1E4C 800C164C 00000000 */  nop
/* B1E50 800C1650 08004000 */  jr         $v0
/* B1E54 800C1654 00000000 */   nop
/* B1E58 800C1658 74EF020C */  jal        FUN_800bbdd0
/* B1E5C 800C165C 21200000 */   addu      $a0, $zero, $zero
/* B1E60 800C1660 CD6B000C */  jal        VSync
/* B1E64 800C1664 01000424 */   addiu     $a0, $zero, 1
/* B1E68 800C1668 21804000 */  addu       $s0, $v0, $zero
.L800C166C:
/* B1E6C 800C166C CD6B000C */  jal        VSync
/* B1E70 800C1670 01000424 */   addiu     $a0, $zero, 1
/* B1E74 800C1674 23105000 */  subu       $v0, $v0, $s0
/* B1E78 800C1678 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1E7C 800C167C 02004228 */  slti       $v0, $v0, 2
/* B1E80 800C1680 FAFF4014 */  bnez       $v0, .L800C166C
/* B1E84 800C1684 00000000 */   nop
/* B1E88 800C1688 74EF020C */  jal        FUN_800bbdd0
/* B1E8C 800C168C 01000424 */   addiu     $a0, $zero, 1
/* B1E90 800C1690 CD6B000C */  jal        VSync
/* B1E94 800C1694 01000424 */   addiu     $a0, $zero, 1
/* B1E98 800C1698 21804000 */  addu       $s0, $v0, $zero
.L800C169C:
/* B1E9C 800C169C CD6B000C */  jal        VSync
/* B1EA0 800C16A0 01000424 */   addiu     $a0, $zero, 1
/* B1EA4 800C16A4 23105000 */  subu       $v0, $v0, $s0
/* B1EA8 800C16A8 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1EAC 800C16AC 02004228 */  slti       $v0, $v0, 2
/* B1EB0 800C16B0 FAFF4014 */  bnez       $v0, .L800C169C
/* B1EB4 800C16B4 1F80033C */   lui       $v1, %hi(D_801F70A0)
/* B1EB8 800C16B8 A070628C */  lw         $v0, %lo(D_801F70A0)($v1)
/* B1EBC 800C16BC 00000000 */  nop
/* B1EC0 800C16C0 01004224 */  addiu      $v0, $v0, 1
/* B1EC4 800C16C4 A07062AC */  sw         $v0, 0x70a0($v1)
/* B1EC8 800C16C8 1F80023C */  lui        $v0, %hi(D_801F70A0)
/* B1ECC 800C16CC A070438C */  lw         $v1, %lo(D_801F70A0)($v0)
/* B1ED0 800C16D0 1F80043C */  lui        $a0, %hi(D_801F70A4)
/* B1ED4 800C16D4 A47091AC */  sw         $s1, %lo(D_801F70A4)($a0)
/* B1ED8 800C16D8 01006324 */  addiu      $v1, $v1, 1
/* B1EDC 800C16DC E2050308 */  j          .L800C1788
/* B1EE0 800C16E0 A07043AC */   sw        $v1, 0x70a0($v0)
/* B1EE4 800C16E4 401F023C */  lui        $v0, 0x1f40
/* B1EE8 800C16E8 04004294 */  lhu        $v0, 4($v0)
/* B1EEC 800C16EC 0C000324 */  addiu      $v1, $zero, 0xc
/* B1EF0 800C16F0 02110200 */  srl        $v0, $v0, 4
/* B1EF4 800C16F4 0F004230 */  andi       $v0, $v0, 0xf
/* B1EF8 800C16F8 15004314 */  bne        $v0, $v1, .L800C1750
/* B1EFC 800C16FC 1F80023C */   lui       $v0, %hi(D_801F0001)
/* B1F00 800C1700 1F80033C */  lui        $v1, %hi(D_801F70A0)
/* B1F04 800C1704 A070628C */  lw         $v0, %lo(D_801F70A0)($v1)
/* B1F08 800C1708 00000000 */  nop
/* B1F0C 800C170C 01004224 */  addiu      $v0, $v0, %lo(D_801F0001)
/* B1F10 800C1710 E2050308 */  j          .L800C1788
/* B1F14 800C1714 A07062AC */   sw        $v0, 0x70a0($v1)
/* B1F18 800C1718 1F80023C */  lui        $v0, %hi(D_801F70A4)
/* B1F1C 800C171C A47051AC */  sw         $s1, %lo(D_801F70A4)($v0)
/* B1F20 800C1720 521F033C */  lui        $v1, 0x1f52
/* B1F24 800C1724 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B1F28 800C1728 000062A4 */  sh         $v0, ($v1)
/* B1F2C 800C172C 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B1F30 800C1730 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B1F34 800C1734 B471428C */  lw         $v0, 0x71b4($v0)
/* B1F38 800C1738 401F023C */  lui        $v0, 0x1f40
/* B1F3C 800C173C 06004294 */  lhu        $v0, 6($v0)
/* B1F40 800C1740 00000000 */  nop
/* B1F44 800C1744 10004230 */  andi       $v0, $v0, 0x10
/* B1F48 800C1748 09004010 */  beqz       $v0, .L800C1770
/* B1F4C 800C174C 1F80023C */   lui       $v0, %hi(D_801F70A4)
.L800C1750:
/* B1F50 800C1750 A470428C */  lw         $v0, %lo(D_801F70A4)($v0)
/* B1F54 800C1754 00000000 */  nop
/* B1F58 800C1758 23102202 */  subu       $v0, $s1, $v0
/* B1F5C 800C175C 04004228 */  slti       $v0, $v0, 4
/* B1F60 800C1760 0A004014 */  bnez       $v0, .L800C178C
/* B1F64 800C1764 21104002 */   addu      $v0, $s2, $zero
/* B1F68 800C1768 E2050308 */  j          .L800C1788
/* B1F6C 800C176C FFFF1224 */   addiu     $s2, $zero, -1
.L800C1770:
/* B1F70 800C1770 1F80033C */  lui        $v1, %hi(D_801F70A0)
/* B1F74 800C1774 A070628C */  lw         $v0, %lo(D_801F70A0)($v1)
/* B1F78 800C1778 00000000 */  nop
/* B1F7C 800C177C 01004224 */  addiu      $v0, $v0, 1
/* B1F80 800C1780 A07062AC */  sw         $v0, 0x70a0($v1)
/* B1F84 800C1784 21900000 */  addu       $s2, $zero, $zero
.L800C1788:
/* B1F88 800C1788 21104002 */  addu       $v0, $s2, $zero
.L800C178C:
/* B1F8C 800C178C 2400BF8F */  lw         $ra, 0x24($sp)
/* B1F90 800C1790 2000B28F */  lw         $s2, 0x20($sp)
/* B1F94 800C1794 1C00B18F */  lw         $s1, 0x1c($sp)
/* B1F98 800C1798 1800B08F */  lw         $s0, 0x18($sp)
/* B1F9C 800C179C 0800E003 */  jr         $ra
/* B1FA0 800C17A0 2800BD27 */   addiu     $sp, $sp, 0x28

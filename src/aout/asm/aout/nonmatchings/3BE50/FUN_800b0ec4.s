.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0ec4
/* A16C4 800B0EC4 C0F7BD27 */  addiu      $sp, $sp, -0x840
/* A16C8 800B0EC8 2008B0AF */  sw         $s0, 0x820($sp)
/* A16CC 800B0ECC 2180A000 */  addu       $s0, $a1, $zero
/* A16D0 800B0ED0 3408B5AF */  sw         $s5, 0x834($sp)
/* A16D4 800B0ED4 21A88000 */  addu       $s5, $a0, $zero
/* A16D8 800B0ED8 3008B4AF */  sw         $s4, 0x830($sp)
/* A16DC 800B0EDC 21A00002 */  addu       $s4, $s0, $zero
/* A16E0 800B0EE0 3808BFAF */  sw         $ra, 0x838($sp)
/* A16E4 800B0EE4 2C08B3AF */  sw         $s3, 0x82c($sp)
/* A16E8 800B0EE8 2808B2AF */  sw         $s2, 0x828($sp)
/* A16EC 800B0EEC 25000012 */  beqz       $s0, .L800B0F84
/* A16F0 800B0EF0 2408B1AF */   sw        $s1, 0x824($sp)
/* A16F4 800B0EF4 2198A002 */  addu       $s3, $s5, $zero
/* A16F8 800B0EF8 2190A002 */  addu       $s2, $s5, $zero
.L800B0EFC:
/* A16FC 800B0EFC 0108022E */  sltiu      $v0, $s0, 0x801
/* A1700 800B0F00 02004014 */  bnez       $v0, .L800B0F0C
/* A1704 800B0F04 21880002 */   addu      $s1, $s0, $zero
/* A1708 800B0F08 00081124 */  addiu      $s1, $zero, 0x800
.L800B0F0C:
/* A170C 800B0F0C 1000B2AF */  sw         $s2, 0x10($sp)
/* A1710 800B0F10 21200000 */  addu       $a0, $zero, $zero
/* A1714 800B0F14 0B000524 */  addiu      $a1, $zero, 0xb
/* A1718 800B0F18 1000A627 */  addiu      $a2, $sp, 0x10
/* A171C 800B0F1C 21FD020C */  jal        FUN_800bf484
/* A1720 800B0F20 21380000 */   addu      $a3, $zero, $zero
/* A1724 800B0F24 49004014 */  bnez       $v0, .L800B104C
/* A1728 800B0F28 FFFF0224 */   addiu     $v0, $zero, -1
/* A172C 800B0F2C 21200000 */  addu       $a0, $zero, $zero
/* A1730 800B0F30 2000A227 */  addiu      $v0, $sp, 0x20
/* A1734 800B0F34 21184000 */  addu       $v1, $v0, $zero
/* A1738 800B0F38 42301100 */  srl        $a2, $s1, 1
/* A173C 800B0F3C 1800A527 */  addiu      $a1, $sp, 0x18
/* A1740 800B0F40 1800A2AF */  sw         $v0, 0x18($sp)
/* A1744 800B0F44 0800C010 */  beqz       $a2, .L800B0F68
/* A1748 800B0F48 1C00B1AF */   sw        $s1, 0x1c($sp)
/* A174C 800B0F4C 21386002 */  addu       $a3, $s3, $zero
.L800B0F50:
/* A1750 800B0F50 2110E400 */  addu       $v0, $a3, $a0
/* A1754 800B0F54 000062A4 */  sh         $v0, ($v1)
/* A1758 800B0F58 01008424 */  addiu      $a0, $a0, 1
/* A175C 800B0F5C 2B108600 */  sltu       $v0, $a0, $a2
/* A1760 800B0F60 FBFF4014 */  bnez       $v0, .L800B0F50
/* A1764 800B0F64 02006324 */   addiu     $v1, $v1, 2
.L800B0F68:
/* A1768 800B0F68 C7FC020C */  jal        FUN_800bf31c
/* A176C 800B0F6C 21200000 */   addu      $a0, $zero, $zero
/* A1770 800B0F70 2B004014 */  bnez       $v0, .L800B1020
/* A1774 800B0F74 23801102 */   subu      $s0, $s0, $s1
/* A1778 800B0F78 00087326 */  addiu      $s3, $s3, 0x800
/* A177C 800B0F7C DFFF0016 */  bnez       $s0, .L800B0EFC
/* A1780 800B0F80 00085226 */   addiu     $s2, $s2, 0x800
.L800B0F84:
/* A1784 800B0F84 21808002 */  addu       $s0, $s4, $zero
/* A1788 800B0F88 2F000012 */  beqz       $s0, .L800B1048
/* A178C 800B0F8C 2000B427 */   addiu     $s4, $sp, 0x20
/* A1790 800B0F90 2190A002 */  addu       $s2, $s5, $zero
/* A1794 800B0F94 21984002 */  addu       $s3, $s2, $zero
.L800B0F98:
/* A1798 800B0F98 0108022E */  sltiu      $v0, $s0, 0x801
/* A179C 800B0F9C 02004014 */  bnez       $v0, .L800B0FA8
/* A17A0 800B0FA0 21880002 */   addu      $s1, $s0, $zero
/* A17A4 800B0FA4 00081124 */  addiu      $s1, $zero, 0x800
.L800B0FA8:
/* A17A8 800B0FA8 1000B3AF */  sw         $s3, 0x10($sp)
/* A17AC 800B0FAC 21200000 */  addu       $a0, $zero, $zero
/* A17B0 800B0FB0 0C000524 */  addiu      $a1, $zero, 0xc
/* A17B4 800B0FB4 1000A627 */  addiu      $a2, $sp, 0x10
/* A17B8 800B0FB8 21FD020C */  jal        FUN_800bf484
/* A17BC 800B0FBC 21380000 */   addu      $a3, $zero, $zero
/* A17C0 800B0FC0 22004014 */  bnez       $v0, .L800B104C
/* A17C4 800B0FC4 FFFF0224 */   addiu     $v0, $zero, -1
/* A17C8 800B0FC8 21208002 */  addu       $a0, $s4, $zero
/* A17CC 800B0FCC 21280000 */  addu       $a1, $zero, $zero
/* A17D0 800B0FD0 F6A2000C */  jal        memset
/* A17D4 800B0FD4 00080624 */   addiu     $a2, $zero, 0x800
/* A17D8 800B0FD8 21200000 */  addu       $a0, $zero, $zero
/* A17DC 800B0FDC 1800A527 */  addiu      $a1, $sp, 0x18
/* A17E0 800B0FE0 1800B4AF */  sw         $s4, 0x18($sp)
/* A17E4 800B0FE4 F4FC020C */  jal        FUN_800bf3d0
/* A17E8 800B0FE8 1C00B1AF */   sw        $s1, 0x1c($sp)
/* A17EC 800B0FEC 0C004014 */  bnez       $v0, .L800B1020
/* A17F0 800B0FF0 21188002 */   addu      $v1, $s4, $zero
/* A17F4 800B0FF4 42101100 */  srl        $v0, $s1, 1
/* A17F8 800B0FF8 0F004010 */  beqz       $v0, .L800B1038
/* A17FC 800B0FFC 21200000 */   addu      $a0, $zero, $zero
/* A1800 800B1000 21384002 */  addu       $a3, $s2, $zero
/* A1804 800B1004 21304000 */  addu       $a2, $v0, $zero
/* A1808 800B1008 21286000 */  addu       $a1, $v1, $zero
.L800B100C:
/* A180C 800B100C 2110E400 */  addu       $v0, $a3, $a0
/* A1810 800B1010 0000A394 */  lhu        $v1, ($a1)
/* A1814 800B1014 FFFF4230 */  andi       $v0, $v0, 0xffff
/* A1818 800B1018 03006210 */  beq        $v1, $v0, .L800B1028
/* A181C 800B101C 00000000 */   nop
.L800B1020:
/* A1820 800B1020 13C40208 */  j          .L800B104C
/* A1824 800B1024 FFFF0224 */   addiu     $v0, $zero, -1
.L800B1028:
/* A1828 800B1028 01008424 */  addiu      $a0, $a0, 1
/* A182C 800B102C 2B108600 */  sltu       $v0, $a0, $a2
/* A1830 800B1030 F6FF4014 */  bnez       $v0, .L800B100C
/* A1834 800B1034 0200A524 */   addiu     $a1, $a1, 2
.L800B1038:
/* A1838 800B1038 23801102 */  subu       $s0, $s0, $s1
/* A183C 800B103C 00085226 */  addiu      $s2, $s2, 0x800
/* A1840 800B1040 D5FF0016 */  bnez       $s0, .L800B0F98
/* A1844 800B1044 00087326 */   addiu     $s3, $s3, 0x800
.L800B1048:
/* A1848 800B1048 21100000 */  addu       $v0, $zero, $zero
.L800B104C:
/* A184C 800B104C 3808BF8F */  lw         $ra, 0x838($sp)
/* A1850 800B1050 3408B58F */  lw         $s5, 0x834($sp)
/* A1854 800B1054 3008B48F */  lw         $s4, 0x830($sp)
/* A1858 800B1058 2C08B38F */  lw         $s3, 0x82c($sp)
/* A185C 800B105C 2808B28F */  lw         $s2, 0x828($sp)
/* A1860 800B1060 2408B18F */  lw         $s1, 0x824($sp)
/* A1864 800B1064 2008B08F */  lw         $s0, 0x820($sp)
/* A1868 800B1068 0800E003 */  jr         $ra
/* A186C 800B106C 4008BD27 */   addiu     $sp, $sp, 0x840

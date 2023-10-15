.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b16b4
/* A1EB4 800B16B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A1EB8 800B16B8 1000B0AF */  sw         $s0, 0x10($sp)
/* A1EBC 800B16BC FFFF9030 */  andi       $s0, $a0, 0xffff
/* A1EC0 800B16C0 1800B2AF */  sw         $s2, 0x18($sp)
/* A1EC4 800B16C4 FFFFB230 */  andi       $s2, $a1, 0xffff
/* A1EC8 800B16C8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A1ECC 800B16CC FF00D330 */  andi       $s3, $a2, 0xff
/* A1ED0 800B16D0 1400B1AF */  sw         $s1, 0x14($sp)
/* A1ED4 800B16D4 42880700 */  srl        $s1, $a3, 1
/* A1ED8 800B16D8 FFFF3126 */  addiu      $s1, $s1, -1
/* A1EDC 800B16DC FFFF0224 */  addiu      $v0, $zero, -1
/* A1EE0 800B16E0 1C002212 */  beq        $s1, $v0, .L800B1754
/* A1EE4 800B16E4 2000BFAF */   sw        $ra, 0x20($sp)
/* A1EE8 800B16E8 00800232 */  andi       $v0, $s0, 0x8000
.L800B16EC:
/* A1EEC 800B16EC 00400332 */  andi       $v1, $s0, 0x4000
/* A1EF0 800B16F0 40200300 */  sll        $a0, $v1, 1
/* A1EF4 800B16F4 21304000 */  addu       $a2, $v0, $zero
/* A1EF8 800B16F8 05004410 */  beq        $v0, $a0, .L800B1710
/* A1EFC 800B16FC 21286000 */   addu      $a1, $v1, $zero
/* A1F00 800B1700 C21B1200 */  srl        $v1, $s2, 0xf
/* A1F04 800B1704 40101200 */  sll        $v0, $s2, 1
/* A1F08 800B1708 C5C50208 */  j          .L800B1714
/* A1F0C 800B170C 25106200 */   or        $v0, $v1, $v0
.L800B1710:
/* A1F10 800B1710 21104002 */  addu       $v0, $s2, $zero
.L800B1714:
/* A1F14 800B1714 FFFF5230 */  andi       $s2, $v0, 0xffff
/* A1F18 800B1718 FF3F0232 */  andi       $v0, $s0, 0x3fff
/* A1F1C 800B171C 40100200 */  sll        $v0, $v0, 1
/* A1F20 800B1720 821B0500 */  srl        $v1, $a1, 0xe
/* A1F24 800B1724 25104300 */  or         $v0, $v0, $v1
/* A1F28 800B1728 25104600 */  or         $v0, $v0, $a2
/* A1F2C 800B172C 01006326 */  addiu      $v1, $s3, 1
/* A1F30 800B1730 FF007330 */  andi       $s3, $v1, 0xff
/* A1F34 800B1734 03006016 */  bnez       $s3, .L800B1744
/* A1F38 800B1738 FFFF5030 */   andi      $s0, $v0, 0xffff
/* A1F3C 800B173C 7CAA000C */  jal        vsync_8002a9f0
/* A1F40 800B1740 00000000 */   nop
.L800B1744:
/* A1F44 800B1744 FFFF3126 */  addiu      $s1, $s1, -1
/* A1F48 800B1748 FFFF0224 */  addiu      $v0, $zero, -1
/* A1F4C 800B174C E7FF2216 */  bne        $s1, $v0, .L800B16EC
/* A1F50 800B1750 00800232 */   andi      $v0, $s0, 0x8000
.L800B1754:
/* A1F54 800B1754 3800A28F */  lw         $v0, 0x38($sp)
/* A1F58 800B1758 2000BF8F */  lw         $ra, 0x20($sp)
/* A1F5C 800B175C 1400B18F */  lw         $s1, 0x14($sp)
/* A1F60 800B1760 000050A4 */  sh         $s0, ($v0)
/* A1F64 800B1764 3C00A38F */  lw         $v1, 0x3c($sp)
/* A1F68 800B1768 1000B08F */  lw         $s0, 0x10($sp)
/* A1F6C 800B176C 000072A4 */  sh         $s2, ($v1)
/* A1F70 800B1770 4000A28F */  lw         $v0, 0x40($sp)
/* A1F74 800B1774 1800B28F */  lw         $s2, 0x18($sp)
/* A1F78 800B1778 000053A0 */  sb         $s3, ($v0)
/* A1F7C 800B177C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A1F80 800B1780 0800E003 */  jr         $ra
/* A1F84 800B1784 2800BD27 */   addiu     $sp, $sp, 0x28

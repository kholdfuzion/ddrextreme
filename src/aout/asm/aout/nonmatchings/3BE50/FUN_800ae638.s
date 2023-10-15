.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae638
/* 9EE38 800AE638 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9EE3C 800AE63C 1C80023C */  lui        $v0, %hi(D_801C4658)
/* 9EE40 800AE640 1000B0AF */  sw         $s0, 0x10($sp)
/* 9EE44 800AE644 58465024 */  addiu      $s0, $v0, %lo(D_801C4658)
/* 9EE48 800AE648 1400B1AF */  sw         $s1, 0x14($sp)
/* 9EE4C 800AE64C FFFF1124 */  addiu      $s1, $zero, -1
/* 9EE50 800AE650 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9EE54 800AE654 1800B2AF */  sw         $s2, 0x18($sp)
/* 9EE58 800AE658 584640AC */  sw         $zero, 0x4658($v0)
/* 9EE5C 800AE65C 0400048E */  lw         $a0, 4($s0)
/* 9EE60 800AE660 00000000 */  nop
/* 9EE64 800AE664 03009110 */  beq        $a0, $s1, .L800AE674
/* 9EE68 800AE668 21904000 */   addu      $s2, $v0, $zero
/* 9EE6C 800AE66C 6618030C */  jal        FUN_800c6198
/* 9EE70 800AE670 00000000 */   nop
.L800AE674:
/* 9EE74 800AE674 01000324 */  addiu      $v1, $zero, 1
/* 9EE78 800AE678 0C000226 */  addiu      $v0, $s0, 0xc
/* 9EE7C 800AE67C 040011AE */  sw         $s1, 4($s0)
/* 9EE80 800AE680 080000A2 */  sb         $zero, 8($s0)
/* 9EE84 800AE684 090000A2 */  sb         $zero, 9($s0)
/* 9EE88 800AE688 0A0000A2 */  sb         $zero, 0xa($s0)
.L800AE68C:
/* 9EE8C 800AE68C 000040A0 */  sb         $zero, ($v0)
/* 9EE90 800AE690 FFFF6324 */  addiu      $v1, $v1, -1
/* 9EE94 800AE694 FDFF6104 */  bgez       $v1, .L800AE68C
/* 9EE98 800AE698 FFFF4224 */   addiu     $v0, $v0, -1
/* 9EE9C 800AE69C 58464226 */  addiu      $v0, $s2, 0x4658
/* 9EEA0 800AE6A0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9EEA4 800AE6A4 1800B28F */  lw         $s2, 0x18($sp)
/* 9EEA8 800AE6A8 1400B18F */  lw         $s1, 0x14($sp)
/* 9EEAC 800AE6AC 1000B08F */  lw         $s0, 0x10($sp)
/* 9EEB0 800AE6B0 100040AC */  sw         $zero, 0x10($v0)
/* 9EEB4 800AE6B4 0800E003 */  jr         $ra
/* 9EEB8 800AE6B8 2000BD27 */   addiu     $sp, $sp, 0x20

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBDEC
/* BC5EC 800CBDEC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BC5F0 800CBDF0 1400B1AF */  sw         $s1, 0x14($sp)
/* BC5F4 800CBDF4 21888000 */  addu       $s1, $a0, $zero
/* BC5F8 800CBDF8 1800B2AF */  sw         $s2, 0x18($sp)
/* BC5FC 800CBDFC 2190C000 */  addu       $s2, $a2, $zero
/* BC600 800CBE00 83200500 */  sra        $a0, $a1, 2
/* BC604 800CBE04 1E008430 */  andi       $a0, $a0, 0x1e
/* BC608 800CBE08 81008434 */  ori        $a0, $a0, 0x81
/* BC60C 800CBE0C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BC610 800CBE10 2198E000 */  addu       $s3, $a3, $zero
/* BC614 800CBE14 2000BFAF */  sw         $ra, 0x20($sp)
/* BC618 800CBE18 E42D030C */  jal        FUN_800cb790
/* BC61C 800CBE1C 1000B0AF */   sw        $s0, 0x10($sp)
/* BC620 800CBE20 05004010 */  beqz       $v0, .L800CBE38
/* BC624 800CBE24 21800000 */   addu      $s0, $zero, $zero
/* BC628 800CBE28 D32D030C */  jal        FUN_800cb74c
/* BC62C 800CBE2C FFFF0424 */   addiu     $a0, $zero, -1
/* BC630 800CBE30 B12F0308 */  j          .L800CBEC4
/* BC634 800CBE34 00000000 */   nop
.L800CBE38:
/* BC638 800CBE38 00002492 */  lbu        $a0, ($s1)
/* BC63C 800CBE3C 442B030C */  jal        FUN_800cad10
/* BC640 800CBE40 01003126 */   addiu     $s1, $s1, 1
/* BC644 800CBE44 0C004014 */  bnez       $v0, .L800CBE78
/* BC648 800CBE48 01001026 */   addiu     $s0, $s0, 1
/* BC64C 800CBE4C 0800022A */  slti       $v0, $s0, 8
/* BC650 800CBE50 F9FF4014 */  bnez       $v0, .L800CBE38
/* BC654 800CBE54 00000000 */   nop
/* BC658 800CBE58 E42D030C */  jal        FUN_800cb790
/* BC65C 800CBE5C 55000424 */   addiu     $a0, $zero, 0x55
/* BC660 800CBE60 09004010 */  beqz       $v0, .L800CBE88
/* BC664 800CBE64 FFFF6726 */   addiu     $a3, $s3, -1
/* BC668 800CBE68 D32D030C */  jal        FUN_800cb74c
/* BC66C 800CBE6C FDFF0424 */   addiu     $a0, $zero, -3
/* BC670 800CBE70 B12F0308 */  j          .L800CBEC4
/* BC674 800CBE74 00000000 */   nop
.L800CBE78:
/* BC678 800CBE78 D32D030C */  jal        FUN_800cb74c
/* BC67C 800CBE7C FEFF0424 */   addiu     $a0, $zero, -2
/* BC680 800CBE80 B12F0308 */  j          .L800CBEC4
/* BC684 800CBE84 00000000 */   nop
.L800CBE88:
/* BC688 800CBE88 0800E018 */  blez       $a3, .L800CBEAC
/* BC68C 800CBE8C 21800000 */   addu      $s0, $zero, $zero
/* BC690 800CBE90 2188E000 */  addu       $s1, $a3, $zero
.L800CBE94:
/* BC694 800CBE94 D62B030C */  jal        FUN_800caf58
/* BC698 800CBE98 01001026 */   addiu     $s0, $s0, 1
/* BC69C 800CBE9C 000042A2 */  sb         $v0, ($s2)
/* BC6A0 800CBEA0 2A101102 */  slt        $v0, $s0, $s1
/* BC6A4 800CBEA4 FBFF4014 */  bnez       $v0, .L800CBE94
/* BC6A8 800CBEA8 01005226 */   addiu     $s2, $s2, 1
.L800CBEAC:
/* BC6AC 800CBEAC 292C030C */  jal        FUN_800cb0a4
/* BC6B0 800CBEB0 00000000 */   nop
/* BC6B4 800CBEB4 000042A2 */  sb         $v0, ($s2)
/* BC6B8 800CBEB8 B32D030C */  jal        FUN_800cb6cc
/* BC6BC 800CBEBC 04000424 */   addiu     $a0, $zero, 4
/* BC6C0 800CBEC0 21100000 */  addu       $v0, $zero, $zero
.L800CBEC4:
/* BC6C4 800CBEC4 2000BF8F */  lw         $ra, 0x20($sp)
/* BC6C8 800CBEC8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC6CC 800CBECC 1800B28F */  lw         $s2, 0x18($sp)
/* BC6D0 800CBED0 1400B18F */  lw         $s1, 0x14($sp)
/* BC6D4 800CBED4 1000B08F */  lw         $s0, 0x10($sp)
/* BC6D8 800CBED8 0800E003 */  jr         $ra
/* BC6DC 800CBEDC 2800BD27 */   addiu     $sp, $sp, 0x28

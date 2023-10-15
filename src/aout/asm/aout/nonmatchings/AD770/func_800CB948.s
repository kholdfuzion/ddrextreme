.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CB948
/* BC148 800CB948 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BC14C 800CB94C 1400B1AF */  sw         $s1, 0x14($sp)
/* BC150 800CB950 21888000 */  addu       $s1, $a0, $zero
/* BC154 800CB954 1000B0AF */  sw         $s0, 0x10($sp)
/* BC158 800CB958 2180A000 */  addu       $s0, $a1, $zero
/* BC15C 800CB95C 1800B2AF */  sw         $s2, 0x18($sp)
/* BC160 800CB960 2190C000 */  addu       $s2, $a2, $zero
/* BC164 800CB964 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BC168 800CB968 2198E000 */  addu       $s3, $a3, $zero
/* BC16C 800CB96C 03221000 */  sra        $a0, $s0, 8
/* BC170 800CB970 01008430 */  andi       $a0, $a0, 1
/* BC174 800CB974 2000BFAF */  sw         $ra, 0x20($sp)
/* BC178 800CB978 E42D030C */  jal        FUN_800cb790
/* BC17C 800CB97C 60008434 */   ori       $a0, $a0, 0x60
/* BC180 800CB980 05004010 */  beqz       $v0, .L800CB998
/* BC184 800CB984 00000000 */   nop
/* BC188 800CB988 D32D030C */  jal        FUN_800cb74c
/* BC18C 800CB98C FFFF0424 */   addiu     $a0, $zero, -1
/* BC190 800CB990 8D2E0308 */  j          .L800CBA34
/* BC194 800CB994 00000000 */   nop
.L800CB998:
/* BC198 800CB998 442B030C */  jal        FUN_800cad10
/* BC19C 800CB99C FF000432 */   andi      $a0, $s0, 0xff
/* BC1A0 800CB9A0 11004014 */  bnez       $v0, .L800CB9E8
/* BC1A4 800CB9A4 21800000 */   addu      $s0, $zero, $zero
.L800CB9A8:
/* BC1A8 800CB9A8 00002492 */  lbu        $a0, ($s1)
/* BC1AC 800CB9AC 442B030C */  jal        FUN_800cad10
/* BC1B0 800CB9B0 01003126 */   addiu     $s1, $s1, 1
/* BC1B4 800CB9B4 0C004014 */  bnez       $v0, .L800CB9E8
/* BC1B8 800CB9B8 01001026 */   addiu     $s0, $s0, 1
/* BC1BC 800CB9BC 0800022A */  slti       $v0, $s0, 8
/* BC1C0 800CB9C0 F9FF4014 */  bnez       $v0, .L800CB9A8
/* BC1C4 800CB9C4 00000000 */   nop
/* BC1C8 800CB9C8 E42D030C */  jal        FUN_800cb790
/* BC1CC 800CB9CC C0000424 */   addiu     $a0, $zero, 0xc0
/* BC1D0 800CB9D0 09004010 */  beqz       $v0, .L800CB9F8
/* BC1D4 800CB9D4 FFFF6726 */   addiu     $a3, $s3, -1
/* BC1D8 800CB9D8 D32D030C */  jal        FUN_800cb74c
/* BC1DC 800CB9DC FDFF0424 */   addiu     $a0, $zero, -3
/* BC1E0 800CB9E0 8D2E0308 */  j          .L800CBA34
/* BC1E4 800CB9E4 00000000 */   nop
.L800CB9E8:
/* BC1E8 800CB9E8 D32D030C */  jal        FUN_800cb74c
/* BC1EC 800CB9EC FEFF0424 */   addiu     $a0, $zero, -2
/* BC1F0 800CB9F0 8D2E0308 */  j          .L800CBA34
/* BC1F4 800CB9F4 00000000 */   nop
.L800CB9F8:
/* BC1F8 800CB9F8 0800E018 */  blez       $a3, .L800CBA1C
/* BC1FC 800CB9FC 21800000 */   addu      $s0, $zero, $zero
/* BC200 800CBA00 2188E000 */  addu       $s1, $a3, $zero
.L800CBA04:
/* BC204 800CBA04 D62B030C */  jal        FUN_800caf58
/* BC208 800CBA08 01001026 */   addiu     $s0, $s0, 1
/* BC20C 800CBA0C 000042A2 */  sb         $v0, ($s2)
/* BC210 800CBA10 2A101102 */  slt        $v0, $s0, $s1
/* BC214 800CBA14 FBFF4014 */  bnez       $v0, .L800CBA04
/* BC218 800CBA18 01005226 */   addiu     $s2, $s2, 1
.L800CBA1C:
/* BC21C 800CBA1C 292C030C */  jal        FUN_800cb0a4
/* BC220 800CBA20 00000000 */   nop
/* BC224 800CBA24 000042A2 */  sb         $v0, ($s2)
/* BC228 800CBA28 B32D030C */  jal        FUN_800cb6cc
/* BC22C 800CBA2C 04000424 */   addiu     $a0, $zero, 4
/* BC230 800CBA30 21100000 */  addu       $v0, $zero, $zero
.L800CBA34:
/* BC234 800CBA34 2000BF8F */  lw         $ra, 0x20($sp)
/* BC238 800CBA38 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC23C 800CBA3C 1800B28F */  lw         $s2, 0x18($sp)
/* BC240 800CBA40 1400B18F */  lw         $s1, 0x14($sp)
/* BC244 800CBA44 1000B08F */  lw         $s0, 0x10($sp)
/* BC248 800CBA48 0800E003 */  jr         $ra
/* BC24C 800CBA4C 2800BD27 */   addiu     $sp, $sp, 0x28

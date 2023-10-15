.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca170
/* BA970 800CA170 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BA974 800CA174 1400B1AF */  sw         $s1, 0x14($sp)
/* BA978 800CA178 21888000 */  addu       $s1, $a0, $zero
/* BA97C 800CA17C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA980 800CA180 2198A000 */  addu       $s3, $a1, $zero
/* BA984 800CA184 1000B0AF */  sw         $s0, 0x10($sp)
/* BA988 800CA188 2180C000 */  addu       $s0, $a2, $zero
/* BA98C 800CA18C 1800B2AF */  sw         $s2, 0x18($sp)
/* BA990 800CA190 2000BFAF */  sw         $ra, 0x20($sp)
/* BA994 800CA194 A509030C */  jal        FUN_800c2694
/* BA998 800CA198 2190E000 */   addu      $s2, $a3, $zero
/* BA99C 800CA19C 21200000 */  addu       $a0, $zero, $zero
/* BA9A0 800CA1A0 0A000224 */  addiu      $v0, $zero, 0xa
/* BA9A4 800CA1A4 1A0022A2 */  sb         $v0, 0x1a($s1)
/* BA9A8 800CA1A8 72000224 */  addiu      $v0, $zero, 0x72
/* BA9AC 800CA1AC 0C00258E */  lw         $a1, 0xc($s1)
/* BA9B0 800CA1B0 70001026 */  addiu      $s0, $s0, 0x70
/* BA9B4 800CA1B4 2A0020A2 */  sb         $zero, 0x2a($s1)
/* BA9B8 800CA1B8 0000A2A0 */  sb         $v0, ($a1)
/* BA9BC 800CA1BC 0100B0A0 */  sb         $s0, 1($a1)
/* BA9C0 800CA1C0 21188500 */  addu       $v1, $a0, $a1
.L800CA1C4:
/* BA9C4 800CA1C4 21104402 */  addu       $v0, $s2, $a0
/* BA9C8 800CA1C8 00004290 */  lbu        $v0, ($v0)
/* BA9CC 800CA1CC 01008424 */  addiu      $a0, $a0, 1
/* BA9D0 800CA1D0 020062A0 */  sb         $v0, 2($v1)
/* BA9D4 800CA1D4 08008228 */  slti       $v0, $a0, 8
/* BA9D8 800CA1D8 FAFF4014 */  bnez       $v0, .L800CA1C4
/* BA9DC 800CA1DC 21188500 */   addu      $v1, $a0, $a1
/* BA9E0 800CA1E0 21202002 */  addu       $a0, $s1, $zero
/* BA9E4 800CA1E4 21286002 */  addu       $a1, $s3, $zero
/* BA9E8 800CA1E8 21300000 */  addu       $a2, $zero, $zero
/* BA9EC 800CA1EC B209030C */  jal        FUN_800c26c8
/* BA9F0 800CA1F0 2138C000 */   addu      $a3, $a2, $zero
/* BA9F4 800CA1F4 2000BF8F */  lw         $ra, 0x20($sp)
/* BA9F8 800CA1F8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA9FC 800CA1FC 1800B28F */  lw         $s2, 0x18($sp)
/* BAA00 800CA200 1400B18F */  lw         $s1, 0x14($sp)
/* BAA04 800CA204 1000B08F */  lw         $s0, 0x10($sp)
/* BAA08 800CA208 0800E003 */  jr         $ra
/* BAA0C 800CA20C 2800BD27 */   addiu     $sp, $sp, 0x28

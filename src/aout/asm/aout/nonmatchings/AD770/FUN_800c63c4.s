.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c63c4
/* B6BC4 800C63C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6BC8 800C63C8 1400B1AF */  sw         $s1, 0x14($sp)
/* B6BCC 800C63CC 2188A000 */  addu       $s1, $a1, $zero
/* B6BD0 800C63D0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6BD4 800C63D4 2198C000 */  addu       $s3, $a2, $zero
/* B6BD8 800C63D8 40100400 */  sll        $v0, $a0, 1
/* B6BDC 800C63DC 21104400 */  addu       $v0, $v0, $a0
/* B6BE0 800C63E0 C0100200 */  sll        $v0, $v0, 3
/* B6BE4 800C63E4 21104400 */  addu       $v0, $v0, $a0
/* B6BE8 800C63E8 C0100200 */  sll        $v0, $v0, 3
/* B6BEC 800C63EC 2080033C */  lui        $v1, %hi(D_801FB540)
/* B6BF0 800C63F0 40B56324 */  addiu      $v1, $v1, %lo(D_801FB540)
/* B6BF4 800C63F4 1000B0AF */  sw         $s0, 0x10($sp)
/* B6BF8 800C63F8 21804300 */  addu       $s0, $v0, $v1
/* B6BFC 800C63FC 2000BFAF */  sw         $ra, 0x20($sp)
/* B6C00 800C6400 1800B2AF */  sw         $s2, 0x18($sp)
/* B6C04 800C6404 9800048E */  lw         $a0, 0x98($s0)
/* B6C08 800C6408 2A1C030C */  jal        FUN_800c70a8
/* B6C0C 800C640C A4001226 */   addiu     $s2, $s0, 0xa4
/* B6C10 800C6410 09004010 */  beqz       $v0, .L800C6438
/* B6C14 800C6414 01000224 */   addiu     $v0, $zero, 1
/* B6C18 800C6418 0400048E */  lw         $a0, 4($s0)
/* B6C1C 800C641C 00000000 */  nop
/* B6C20 800C6420 13008214 */  bne        $a0, $v0, .L800C6470
/* B6C24 800C6424 FFFF0224 */   addiu     $v0, $zero, -1
/* B6C28 800C6428 0800438E */  lw         $v1, 8($s2)
/* B6C2C 800C642C FEFF0224 */  addiu      $v0, $zero, -2
/* B6C30 800C6430 03006214 */  bne        $v1, $v0, .L800C6440
/* B6C34 800C6434 00000000 */   nop
.L800C6438:
/* B6C38 800C6438 1C190308 */  j          .L800C6470
/* B6C3C 800C643C FFFF0224 */   addiu     $v0, $zero, -1
.L800C6440:
/* B6C40 800C6440 04006416 */  bne        $s3, $a0, .L800C6454
/* B6C44 800C6444 02000224 */   addiu     $v0, $zero, 2
/* B6C48 800C6448 0800028E */  lw         $v0, 8($s0)
/* B6C4C 800C644C 1A190308 */  j          .L800C6468
/* B6C50 800C6450 21882202 */   addu      $s1, $s1, $v0
.L800C6454:
/* B6C54 800C6454 04006216 */  bne        $s3, $v0, .L800C6468
/* B6C58 800C6458 00000000 */   nop
/* B6C5C 800C645C A000028E */  lw         $v0, 0xa0($s0)
/* B6C60 800C6460 00000000 */  nop
/* B6C64 800C6464 21882202 */  addu       $s1, $s1, $v0
.L800C6468:
/* B6C68 800C6468 080011AE */  sw         $s1, 8($s0)
/* B6C6C 800C646C 21102002 */  addu       $v0, $s1, $zero
.L800C6470:
/* B6C70 800C6470 2000BF8F */  lw         $ra, 0x20($sp)
/* B6C74 800C6474 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6C78 800C6478 1800B28F */  lw         $s2, 0x18($sp)
/* B6C7C 800C647C 1400B18F */  lw         $s1, 0x14($sp)
/* B6C80 800C6480 1000B08F */  lw         $s0, 0x10($sp)
/* B6C84 800C6484 0800E003 */  jr         $ra
/* B6C88 800C6488 2800BD27 */   addiu     $sp, $sp, 0x28

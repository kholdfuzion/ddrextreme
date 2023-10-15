.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0380
/* B0B80 800C0380 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B0B84 800C0384 2000BFAF */  sw         $ra, 0x20($sp)
/* B0B88 800C0388 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B0B8C 800C038C 1800B2AF */  sw         $s2, 0x18($sp)
/* B0B90 800C0390 1400B1AF */  sw         $s1, 0x14($sp)
/* B0B94 800C0394 1000B0AF */  sw         $s0, 0x10($sp)
/* B0B98 800C0398 2198C000 */  addu       $s3, $a2, $zero
/* B0B9C 800C039C FF00B030 */  andi       $s0, $a1, 0xff
/* B0BA0 800C03A0 03000016 */  bnez       $s0, .L800C03B0
/* B0BA4 800C03A4 FF009130 */   andi      $s1, $a0, 0xff
/* B0BA8 800C03A8 02010308 */  j          .L800C0408
/* B0BAC 800C03AC FFFF0224 */   addiu     $v0, $zero, -1
.L800C03B0:
/* B0BB0 800C03B0 F6FF020C */  jal        FUN_800bffd8
/* B0BB4 800C03B4 00000000 */   nop
/* B0BB8 800C03B8 FEFF0324 */  addiu      $v1, $zero, -2
/* B0BBC 800C03BC 03004314 */  bne        $v0, $v1, .L800C03CC
/* B0BC0 800C03C0 21900000 */   addu      $s2, $zero, $zero
/* B0BC4 800C03C4 02010308 */  j          .L800C0408
/* B0BC8 800C03C8 FEFF0224 */   addiu     $v0, $zero, -2
.L800C03CC:
/* B0BCC 800C03CC 21202002 */  addu       $a0, $s1, $zero
/* B0BD0 800C03D0 5F00030C */  jal        FUN_800c017c
/* B0BD4 800C03D4 21280002 */   addu      $a1, $s0, $zero
/* B0BD8 800C03D8 01000324 */  addiu      $v1, $zero, 1
/* B0BDC 800C03DC 06004310 */  beq        $v0, $v1, .L800C03F8
/* B0BE0 800C03E0 21200002 */   addu      $a0, $s0, $zero
/* B0BE4 800C03E4 9100030C */  jal        FUN_800c0244
/* B0BE8 800C03E8 21286002 */   addu      $a1, $s3, $zero
/* B0BEC 800C03EC 01000324 */  addiu      $v1, $zero, 1
/* B0BF0 800C03F0 02004314 */  bne        $v0, $v1, .L800C03FC
/* B0BF4 800C03F4 00000000 */   nop
.L800C03F8:
/* B0BF8 800C03F8 FDFF1224 */  addiu      $s2, $zero, -3
.L800C03FC:
/* B0BFC 800C03FC 0C00030C */  jal        FUN_800c0030
/* B0C00 800C0400 00000000 */   nop
/* B0C04 800C0404 21104002 */  addu       $v0, $s2, $zero
.L800C0408:
/* B0C08 800C0408 2000BF8F */  lw         $ra, 0x20($sp)
/* B0C0C 800C040C 1C00B38F */  lw         $s3, 0x1c($sp)
/* B0C10 800C0410 1800B28F */  lw         $s2, 0x18($sp)
/* B0C14 800C0414 1400B18F */  lw         $s1, 0x14($sp)
/* B0C18 800C0418 1000B08F */  lw         $s0, 0x10($sp)
/* B0C1C 800C041C 0800E003 */  jr         $ra
/* B0C20 800C0420 2800BD27 */   addiu     $sp, $sp, 0x28

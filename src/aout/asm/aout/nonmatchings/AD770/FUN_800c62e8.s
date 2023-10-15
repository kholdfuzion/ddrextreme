.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c62e8
/* B6AE8 800C62E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6AEC 800C62EC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6AF0 800C62F0 2198A000 */  addu       $s3, $a1, $zero
/* B6AF4 800C62F4 2000B4AF */  sw         $s4, 0x20($sp)
/* B6AF8 800C62F8 21A0C000 */  addu       $s4, $a2, $zero
/* B6AFC 800C62FC 1800B2AF */  sw         $s2, 0x18($sp)
/* B6B00 800C6300 FFFF1224 */  addiu      $s2, $zero, -1
/* B6B04 800C6304 40100400 */  sll        $v0, $a0, 1
/* B6B08 800C6308 21104400 */  addu       $v0, $v0, $a0
/* B6B0C 800C630C C0100200 */  sll        $v0, $v0, 3
/* B6B10 800C6310 21104400 */  addu       $v0, $v0, $a0
/* B6B14 800C6314 C0100200 */  sll        $v0, $v0, 3
/* B6B18 800C6318 2080033C */  lui        $v1, %hi(D_801FB540)
/* B6B1C 800C631C 40B56324 */  addiu      $v1, $v1, %lo(D_801FB540)
/* B6B20 800C6320 1000B0AF */  sw         $s0, 0x10($sp)
/* B6B24 800C6324 21804300 */  addu       $s0, $v0, $v1
/* B6B28 800C6328 1400B1AF */  sw         $s1, 0x14($sp)
/* B6B2C 800C632C 2400BFAF */  sw         $ra, 0x24($sp)
/* B6B30 800C6330 0400038E */  lw         $v1, 4($s0)
/* B6B34 800C6334 01000224 */  addiu      $v0, $zero, 1
/* B6B38 800C6338 19006214 */  bne        $v1, $v0, .L800C63A0
/* B6B3C 800C633C A4001126 */   addiu     $s1, $s0, 0xa4
/* B6B40 800C6340 0C00028E */  lw         $v0, 0xc($s0)
/* B6B44 800C6344 00000000 */  nop
/* B6B48 800C6348 02004230 */  andi       $v0, $v0, 2
/* B6B4C 800C634C 14004010 */  beqz       $v0, .L800C63A0
/* B6B50 800C6350 FEFF0224 */   addiu     $v0, $zero, -2
/* B6B54 800C6354 0800238E */  lw         $v1, 8($s1)
/* B6B58 800C6358 00000000 */  nop
/* B6B5C 800C635C 11006210 */  beq        $v1, $v0, .L800C63A4
/* B6B60 800C6360 21104002 */   addu      $v0, $s2, $zero
/* B6B64 800C6364 9800048E */  lw         $a0, 0x98($s0)
/* B6B68 800C6368 2A1C030C */  jal        FUN_800c70a8
/* B6B6C 800C636C 00000000 */   nop
/* B6B70 800C6370 0B004010 */  beqz       $v0, .L800C63A0
/* B6B74 800C6374 21202002 */   addu      $a0, $s1, $zero
/* B6B78 800C6378 0C0030AE */  sw         $s0, 0xc($s1)
/* B6B7C 800C637C 100033AE */  sw         $s3, 0x10($s1)
/* B6B80 800C6380 140034AE */  sw         $s4, 0x14($s1)
/* B6B84 800C6384 0C00068E */  lw         $a2, 0xc($s0)
/* B6B88 800C6388 03000524 */  addiu      $a1, $zero, 3
/* B6B8C 800C638C 82300600 */  srl        $a2, $a2, 2
/* B6B90 800C6390 0100C638 */  xori       $a2, $a2, 1
/* B6B94 800C6394 1F1B030C */  jal        FUN_800c6c7c
/* B6B98 800C6398 0100C630 */   andi      $a2, $a2, 1
/* B6B9C 800C639C 21904000 */  addu       $s2, $v0, $zero
.L800C63A0:
/* B6BA0 800C63A0 21104002 */  addu       $v0, $s2, $zero
.L800C63A4:
/* B6BA4 800C63A4 2400BF8F */  lw         $ra, 0x24($sp)
/* B6BA8 800C63A8 2000B48F */  lw         $s4, 0x20($sp)
/* B6BAC 800C63AC 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6BB0 800C63B0 1800B28F */  lw         $s2, 0x18($sp)
/* B6BB4 800C63B4 1400B18F */  lw         $s1, 0x14($sp)
/* B6BB8 800C63B8 1000B08F */  lw         $s0, 0x10($sp)
/* B6BBC 800C63BC 0800E003 */  jr         $ra
/* B6BC0 800C63C0 2800BD27 */   addiu     $sp, $sp, 0x28

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5adc
/* B62DC 800C5ADC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B62E0 800C5AE0 1800B2AF */  sw         $s2, 0x18($sp)
/* B62E4 800C5AE4 21900000 */  addu       $s2, $zero, $zero
/* B62E8 800C5AE8 2000B4AF */  sw         $s4, 0x20($sp)
/* B62EC 800C5AEC 2080023C */  lui        $v0, %hi(D_801FB764)
/* B62F0 800C5AF0 1000B0AF */  sw         $s0, 0x10($sp)
/* B62F4 800C5AF4 64B75024 */  addiu      $s0, $v0, %lo(D_801FB764)
/* B62F8 800C5AF8 1400B1AF */  sw         $s1, 0x14($sp)
/* B62FC 800C5AFC B4BC1126 */  addiu      $s1, $s0, -0x434c
/* B6300 800C5B00 01000424 */  addiu      $a0, $zero, 1
/* B6304 800C5B04 2400BFAF */  sw         $ra, 0x24($sp)
/* B6308 800C5B08 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B630C 800C5B0C 0400238E */  lw         $v1, 4($s1)
/* B6310 800C5B10 B4BC138E */  lw         $s3, -0x434c($s0)
/* B6314 800C5B14 10006410 */  beq        $v1, $a0, .L800C5B58
/* B6318 800C5B18 21A04002 */   addu      $s4, $s2, $zero
/* B631C 800C5B1C 02006228 */  slti       $v0, $v1, 2
/* B6320 800C5B20 05004010 */  beqz       $v0, .L800C5B38
/* B6324 800C5B24 00000000 */   nop
/* B6328 800C5B28 0A006010 */  beqz       $v1, .L800C5B54
/* B632C 800C5B2C 00000000 */   nop
/* B6330 800C5B30 F3160308 */  j          .L800C5BCC
/* B6334 800C5B34 00000000 */   nop
.L800C5B38:
/* B6338 800C5B38 02000224 */  addiu      $v0, $zero, 2
/* B633C 800C5B3C 13006210 */  beq        $v1, $v0, .L800C5B8C
/* B6340 800C5B40 03000224 */   addiu     $v0, $zero, 3
/* B6344 800C5B44 1F006210 */  beq        $v1, $v0, .L800C5BC4
/* B6348 800C5B48 00000000 */   nop
/* B634C 800C5B4C F3160308 */  j          .L800C5BCC
/* B6350 800C5B50 00000000 */   nop
.L800C5B54:
/* B6354 800C5B54 040024AE */  sw         $a0, 4($s1)
.L800C5B58:
/* B6358 800C5B58 0C00048E */  lw         $a0, 0xc($s0)
/* B635C 800C5B5C 1000058E */  lw         $a1, 0x10($s0)
/* B6360 800C5B60 1400068E */  lw         $a2, 0x14($s0)
/* B6364 800C5B64 1800078E */  lw         $a3, 0x18($s0)
/* B6368 800C5B68 5D25030C */  jal        FUN_800c9574
/* B636C 800C5B6C 00000000 */   nop
/* B6370 800C5B70 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B6374 800C5B74 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B6378 800C5B78 0400628C */  lw         $v0, 4($v1)
/* B637C 800C5B7C 00000000 */  nop
/* B6380 800C5B80 01004224 */  addiu      $v0, $v0, 1
/* B6384 800C5B84 F3160308 */  j          .L800C5BCC
/* B6388 800C5B88 040062AC */   sw        $v0, 4($v1)
.L800C5B8C:
/* B638C 800C5B8C F224030C */  jal        FUN_800c93c8
/* B6390 800C5B90 00000000 */   nop
/* B6394 800C5B94 21904000 */  addu       $s2, $v0, $zero
/* B6398 800C5B98 FEFF0224 */  addiu      $v0, $zero, -2
/* B639C 800C5B9C 0B004212 */  beq        $s2, $v0, .L800C5BCC
/* B63A0 800C5BA0 00000000 */   nop
/* B63A4 800C5BA4 03004012 */  beqz       $s2, .L800C5BB4
/* B63A8 800C5BA8 00000000 */   nop
/* B63AC 800C5BAC F3160308 */  j          .L800C5BCC
/* B63B0 800C5BB0 01001424 */   addiu     $s4, $zero, 1
.L800C5BB4:
/* B63B4 800C5BB4 0400228E */  lw         $v0, 4($s1)
/* B63B8 800C5BB8 00000000 */  nop
/* B63BC 800C5BBC 01004224 */  addiu      $v0, $v0, 1
/* B63C0 800C5BC0 040022AE */  sw         $v0, 4($s1)
.L800C5BC4:
/* B63C4 800C5BC4 21980000 */  addu       $s3, $zero, $zero
/* B63C8 800C5BC8 080000AE */  sw         $zero, 8($s0)
.L800C5BCC:
/* B63CC 800C5BCC 04008012 */  beqz       $s4, .L800C5BE0
/* B63D0 800C5BD0 21106002 */   addu      $v0, $s3, $zero
/* B63D4 800C5BD4 21980000 */  addu       $s3, $zero, $zero
/* B63D8 800C5BD8 080012AE */  sw         $s2, 8($s0)
/* B63DC 800C5BDC 21106002 */  addu       $v0, $s3, $zero
.L800C5BE0:
/* B63E0 800C5BE0 2400BF8F */  lw         $ra, 0x24($sp)
/* B63E4 800C5BE4 2000B48F */  lw         $s4, 0x20($sp)
/* B63E8 800C5BE8 1C00B38F */  lw         $s3, 0x1c($sp)
/* B63EC 800C5BEC 1800B28F */  lw         $s2, 0x18($sp)
/* B63F0 800C5BF0 1400B18F */  lw         $s1, 0x14($sp)
/* B63F4 800C5BF4 1000B08F */  lw         $s0, 0x10($sp)
/* B63F8 800C5BF8 0800E003 */  jr         $ra
/* B63FC 800C5BFC 2800BD27 */   addiu     $sp, $sp, 0x28

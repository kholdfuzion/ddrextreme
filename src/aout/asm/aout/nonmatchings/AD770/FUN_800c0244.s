.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0244
/* B0A44 800C0244 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B0A48 800C0248 2800BFAF */  sw         $ra, 0x28($sp)
/* B0A4C 800C024C 2400B5AF */  sw         $s5, 0x24($sp)
/* B0A50 800C0250 2000B4AF */  sw         $s4, 0x20($sp)
/* B0A54 800C0254 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B0A58 800C0258 1800B2AF */  sw         $s2, 0x18($sp)
/* B0A5C 800C025C 1400B1AF */  sw         $s1, 0x14($sp)
/* B0A60 800C0260 1000B0AF */  sw         $s0, 0x10($sp)
/* B0A64 800C0264 21A8A000 */  addu       $s5, $a1, $zero
/* B0A68 800C0268 55FE020C */  jal        FUN_800bf954
/* B0A6C 800C026C FFFF9430 */   andi      $s4, $a0, 0xffff
/* B0A70 800C0270 5AFF020C */  jal        FUN_800bfd68
/* B0A74 800C0274 3A000424 */   addiu     $a0, $zero, 0x3a
/* B0A78 800C0278 E0FF020C */  jal        FUN_800bff80
/* B0A7C 800C027C 00000000 */   nop
/* B0A80 800C0280 0F004014 */  bnez       $v0, .L800C02C0
/* B0A84 800C0284 00000000 */   nop
/* B0A88 800C0288 5AFF020C */  jal        FUN_800bfd68
/* B0A8C 800C028C 69000424 */   addiu     $a0, $zero, 0x69
/* B0A90 800C0290 E0FF020C */  jal        FUN_800bff80
/* B0A94 800C0294 00000000 */   nop
/* B0A98 800C0298 09004014 */  bnez       $v0, .L800C02C0
/* B0A9C 800C029C 00000000 */   nop
/* B0AA0 800C02A0 55FE020C */  jal        FUN_800bf954
/* B0AA4 800C02A4 00000000 */   nop
/* B0AA8 800C02A8 5AFF020C */  jal        FUN_800bfd68
/* B0AAC 800C02AC 3B000424 */   addiu     $a0, $zero, 0x3b
/* B0AB0 800C02B0 E0FF020C */  jal        FUN_800bff80
/* B0AB4 800C02B4 00000000 */   nop
/* B0AB8 800C02B8 05004010 */  beqz       $v0, .L800C02D0
/* B0ABC 800C02BC FFFF8226 */   addiu     $v0, $s4, -1
.L800C02C0:
/* B0AC0 800C02C0 A7FE020C */  jal        FUN_800bfa9c
/* B0AC4 800C02C4 00000000 */   nop
/* B0AC8 800C02C8 D7000308 */  j          .L800C035C
/* B0ACC 800C02CC 01000224 */   addiu     $v0, $zero, 1
.L800C02D0:
/* B0AD0 800C02D0 13004018 */  blez       $v0, .L800C0320
/* B0AD4 800C02D4 21800000 */   addu      $s0, $zero, $zero
/* B0AD8 800C02D8 21984000 */  addu       $s3, $v0, $zero
.L800C02DC:
/* B0ADC 800C02DC B9FF020C */  jal        FUN_800bfee4
/* B0AE0 800C02E0 00000000 */   nop
/* B0AE4 800C02E4 D0FF020C */  jal        FUN_800bff40
/* B0AE8 800C02E8 21904000 */   addu      $s2, $v0, $zero
/* B0AEC 800C02EC B9FF020C */  jal        FUN_800bfee4
/* B0AF0 800C02F0 00000000 */   nop
/* B0AF4 800C02F4 D0FF020C */  jal        FUN_800bff40
/* B0AF8 800C02F8 21884000 */   addu      $s1, $v0, $zero
/* B0AFC 800C02FC 40101000 */  sll        $v0, $s0, 1
/* B0B00 800C0300 21105500 */  addu       $v0, $v0, $s5
/* B0B04 800C0304 001A1200 */  sll        $v1, $s2, 8
/* B0B08 800C0308 25187100 */  or         $v1, $v1, $s1
/* B0B0C 800C030C 000043A4 */  sh         $v1, ($v0)
/* B0B10 800C0310 01001026 */  addiu      $s0, $s0, 1
/* B0B14 800C0314 2A101302 */  slt        $v0, $s0, $s3
/* B0B18 800C0318 F0FF4014 */  bnez       $v0, .L800C02DC
/* B0B1C 800C031C 00000000 */   nop
.L800C0320:
/* B0B20 800C0320 B9FF020C */  jal        FUN_800bfee4
/* B0B24 800C0324 00000000 */   nop
/* B0B28 800C0328 D0FF020C */  jal        FUN_800bff40
/* B0B2C 800C032C 21904000 */   addu      $s2, $v0, $zero
/* B0B30 800C0330 B9FF020C */  jal        FUN_800bfee4
/* B0B34 800C0334 00000000 */   nop
/* B0B38 800C0338 D8FF020C */  jal        FUN_800bff60
/* B0B3C 800C033C 21884000 */   addu      $s1, $v0, $zero
/* B0B40 800C0340 40181400 */  sll        $v1, $s4, 1
/* B0B44 800C0344 21187500 */  addu       $v1, $v1, $s5
/* B0B48 800C0348 00121200 */  sll        $v0, $s2, 8
/* B0B4C 800C034C 25105100 */  or         $v0, $v0, $s1
/* B0B50 800C0350 A7FE020C */  jal        FUN_800bfa9c
/* B0B54 800C0354 FEFF62A4 */   sh        $v0, -2($v1)
/* B0B58 800C0358 21100000 */  addu       $v0, $zero, $zero
.L800C035C:
/* B0B5C 800C035C 2800BF8F */  lw         $ra, 0x28($sp)
/* B0B60 800C0360 2400B58F */  lw         $s5, 0x24($sp)
/* B0B64 800C0364 2000B48F */  lw         $s4, 0x20($sp)
/* B0B68 800C0368 1C00B38F */  lw         $s3, 0x1c($sp)
/* B0B6C 800C036C 1800B28F */  lw         $s2, 0x18($sp)
/* B0B70 800C0370 1400B18F */  lw         $s1, 0x14($sp)
/* B0B74 800C0374 1000B08F */  lw         $s0, 0x10($sp)
/* B0B78 800C0378 0800E003 */  jr         $ra
/* B0B7C 800C037C 3000BD27 */   addiu     $sp, $sp, 0x30

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBA50
/* BC250 800CBA50 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BC254 800CBA54 1400B1AF */  sw         $s1, 0x14($sp)
/* BC258 800CBA58 21888000 */  addu       $s1, $a0, $zero
/* BC25C 800CBA5C 1000B0AF */  sw         $s0, 0x10($sp)
/* BC260 800CBA60 2180A000 */  addu       $s0, $a1, $zero
/* BC264 800CBA64 1800B2AF */  sw         $s2, 0x18($sp)
/* BC268 800CBA68 2190C000 */  addu       $s2, $a2, $zero
/* BC26C 800CBA6C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BC270 800CBA70 2198E000 */  addu       $s3, $a3, $zero
/* BC274 800CBA74 0900622A */  slti       $v0, $s3, 9
/* BC278 800CBA78 03004014 */  bnez       $v0, .L800CBA88
/* BC27C 800CBA7C 2000BFAF */   sw        $ra, 0x20($sp)
/* BC280 800CBA80 D32E0308 */  j          .L800CBB4C
/* BC284 800CBA84 FEFF0224 */   addiu     $v0, $zero, -2
.L800CBA88:
/* BC288 800CBA88 03221000 */  sra        $a0, $s0, 8
/* BC28C 800CBA8C 01008430 */  andi       $a0, $a0, 1
/* BC290 800CBA90 E42D030C */  jal        FUN_800cb790
/* BC294 800CBA94 40008434 */   ori       $a0, $a0, 0x40
/* BC298 800CBA98 05004010 */  beqz       $v0, .L800CBAB0
/* BC29C 800CBA9C 00000000 */   nop
/* BC2A0 800CBAA0 D32D030C */  jal        FUN_800cb74c
/* BC2A4 800CBAA4 FFFF0424 */   addiu     $a0, $zero, -1
/* BC2A8 800CBAA8 D32E0308 */  j          .L800CBB4C
/* BC2AC 800CBAAC 00000000 */   nop
.L800CBAB0:
/* BC2B0 800CBAB0 442B030C */  jal        FUN_800cad10
/* BC2B4 800CBAB4 FF000432 */   andi      $a0, $s0, 0xff
/* BC2B8 800CBAB8 11004014 */  bnez       $v0, .L800CBB00
/* BC2BC 800CBABC 21800000 */   addu      $s0, $zero, $zero
.L800CBAC0:
/* BC2C0 800CBAC0 00002492 */  lbu        $a0, ($s1)
/* BC2C4 800CBAC4 442B030C */  jal        FUN_800cad10
/* BC2C8 800CBAC8 01003126 */   addiu     $s1, $s1, 1
/* BC2CC 800CBACC 0C004014 */  bnez       $v0, .L800CBB00
/* BC2D0 800CBAD0 01001026 */   addiu     $s0, $s0, 1
/* BC2D4 800CBAD4 0800022A */  slti       $v0, $s0, 8
/* BC2D8 800CBAD8 F9FF4014 */  bnez       $v0, .L800CBAC0
/* BC2DC 800CBADC 00000000 */   nop
/* BC2E0 800CBAE0 E42D030C */  jal        FUN_800cb790
/* BC2E4 800CBAE4 C0000424 */   addiu     $a0, $zero, 0xc0
/* BC2E8 800CBAE8 09004010 */  beqz       $v0, .L800CBB10
/* BC2EC 800CBAEC 00000000 */   nop
/* BC2F0 800CBAF0 D32D030C */  jal        FUN_800cb74c
/* BC2F4 800CBAF4 FDFF0424 */   addiu     $a0, $zero, -3
/* BC2F8 800CBAF8 D32E0308 */  j          .L800CBB4C
/* BC2FC 800CBAFC 00000000 */   nop
.L800CBB00:
/* BC300 800CBB00 D32D030C */  jal        FUN_800cb74c
/* BC304 800CBB04 FEFF0424 */   addiu     $a0, $zero, -2
/* BC308 800CBB08 D32E0308 */  j          .L800CBB4C
/* BC30C 800CBB0C 00000000 */   nop
.L800CBB10:
/* BC310 800CBB10 0900601A */  blez       $s3, .L800CBB38
/* BC314 800CBB14 21800000 */   addu      $s0, $zero, $zero
.L800CBB18:
/* BC318 800CBB18 00004492 */  lbu        $a0, ($s2)
/* BC31C 800CBB1C 442B030C */  jal        FUN_800cad10
/* BC320 800CBB20 01005226 */   addiu     $s2, $s2, 1
/* BC324 800CBB24 F6FF4014 */  bnez       $v0, .L800CBB00
/* BC328 800CBB28 01001026 */   addiu     $s0, $s0, 1
/* BC32C 800CBB2C 2A101302 */  slt        $v0, $s0, $s3
/* BC330 800CBB30 F9FF4014 */  bnez       $v0, .L800CBB18
/* BC334 800CBB34 00000000 */   nop
.L800CBB38:
/* BC338 800CBB38 162B030C */  jal        FUN_800cac58
/* BC33C 800CBB3C 00000000 */   nop
/* BC340 800CBB40 B32D030C */  jal        FUN_800cb6cc
/* BC344 800CBB44 04000424 */   addiu     $a0, $zero, 4
/* BC348 800CBB48 21100000 */  addu       $v0, $zero, $zero
.L800CBB4C:
/* BC34C 800CBB4C 2000BF8F */  lw         $ra, 0x20($sp)
/* BC350 800CBB50 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC354 800CBB54 1800B28F */  lw         $s2, 0x18($sp)
/* BC358 800CBB58 1400B18F */  lw         $s1, 0x14($sp)
/* BC35C 800CBB5C 1000B08F */  lw         $s0, 0x10($sp)
/* BC360 800CBB60 0800E003 */  jr         $ra
/* BC364 800CBB64 2800BD27 */   addiu     $sp, $sp, 0x28

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2afc
/* B32FC 800C2AFC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B3300 800C2B00 2000B4AF */  sw         $s4, 0x20($sp)
/* B3304 800C2B04 21A0E000 */  addu       $s4, $a3, $zero
/* B3308 800C2B08 2400BFAF */  sw         $ra, 0x24($sp)
/* B330C 800C2B0C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B3310 800C2B10 1800B2AF */  sw         $s2, 0x18($sp)
/* B3314 800C2B14 1400B1AF */  sw         $s1, 0x14($sp)
/* B3318 800C2B18 E905030C */  jal        FUN_800c17a4
/* B331C 800C2B1C 1000B0AF */   sw        $s0, 0x10($sp)
/* B3320 800C2B20 21804000 */  addu       $s0, $v0, $zero
/* B3324 800C2B24 15000016 */  bnez       $s0, .L800C2B7C
/* B3328 800C2B28 FDFF0224 */   addiu     $v0, $zero, -3
/* B332C 800C2B2C 21880000 */  addu       $s1, $zero, $zero
/* B3330 800C2B30 FBFF1224 */  addiu      $s2, $zero, -5
/* B3334 800C2B34 FDFF1324 */  addiu      $s3, $zero, -3
.L800C2B38:
/* B3338 800C2B38 EC0A030C */  jal        FUN_800c2bb0
/* B333C 800C2B3C 0A000424 */   addiu     $a0, $zero, 0xa
/* B3340 800C2B40 3B06030C */  jal        FUN_800c18ec
/* B3344 800C2B44 21208002 */   addu      $a0, $s4, $zero
/* B3348 800C2B48 21804000 */  addu       $s0, $v0, $zero
/* B334C 800C2B4C 07001212 */  beq        $s0, $s2, .L800C2B6C
/* B3350 800C2B50 00000000 */   nop
/* B3354 800C2B54 0E001316 */  bne        $s0, $s3, .L800C2B90
/* B3358 800C2B58 21100002 */   addu      $v0, $s0, $zero
/* B335C 800C2B5C 1F05030C */  jal        FUN_800c147c
/* B3360 800C2B60 00000000 */   nop
/* B3364 800C2B64 DF0A0308 */  j          .L800C2B7C
/* B3368 800C2B68 FDFF0224 */   addiu     $v0, $zero, -3
.L800C2B6C:
/* B336C 800C2B6C 01003126 */  addiu      $s1, $s1, 1
/* B3370 800C2B70 0A00222A */  slti       $v0, $s1, 0xa
/* B3374 800C2B74 F0FF4014 */  bnez       $v0, .L800C2B38
/* B3378 800C2B78 FDFF0224 */   addiu     $v0, $zero, -3
.L800C2B7C:
/* B337C 800C2B7C 04000216 */  bne        $s0, $v0, .L800C2B90
/* B3380 800C2B80 21100002 */   addu      $v0, $s0, $zero
/* B3384 800C2B84 1F05030C */  jal        FUN_800c147c
/* B3388 800C2B88 00000000 */   nop
/* B338C 800C2B8C 21100002 */  addu       $v0, $s0, $zero
.L800C2B90:
/* B3390 800C2B90 2400BF8F */  lw         $ra, 0x24($sp)
/* B3394 800C2B94 2000B48F */  lw         $s4, 0x20($sp)
/* B3398 800C2B98 1C00B38F */  lw         $s3, 0x1c($sp)
/* B339C 800C2B9C 1800B28F */  lw         $s2, 0x18($sp)
/* B33A0 800C2BA0 1400B18F */  lw         $s1, 0x14($sp)
/* B33A4 800C2BA4 1000B08F */  lw         $s0, 0x10($sp)
/* B33A8 800C2BA8 0800E003 */  jr         $ra
/* B33AC 800C2BAC 2800BD27 */   addiu     $sp, $sp, 0x28

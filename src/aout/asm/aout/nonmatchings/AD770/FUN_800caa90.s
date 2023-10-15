.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800caa90
/* BB290 800CAA90 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BB294 800CAA94 2400B5AF */  sw         $s5, 0x24($sp)
/* BB298 800CAA98 21A88000 */  addu       $s5, $a0, $zero
/* BB29C 800CAA9C 2800B6AF */  sw         $s6, 0x28($sp)
/* BB2A0 800CAAA0 21B0A000 */  addu       $s6, $a1, $zero
/* BB2A4 800CAAA4 1000B0AF */  sw         $s0, 0x10($sp)
/* BB2A8 800CAAA8 2180C000 */  addu       $s0, $a2, $zero
/* BB2AC 800CAAAC 2C00B7AF */  sw         $s7, 0x2c($sp)
/* BB2B0 800CAAB0 21B8E000 */  addu       $s7, $a3, $zero
/* BB2B4 800CAAB4 1400B1AF */  sw         $s1, 0x14($sp)
/* BB2B8 800CAAB8 21880000 */  addu       $s1, $zero, $zero
/* BB2BC 800CAABC 3000BFAF */  sw         $ra, 0x30($sp)
/* BB2C0 800CAAC0 2000B4AF */  sw         $s4, 0x20($sp)
/* BB2C4 800CAAC4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BB2C8 800CAAC8 2F2D030C */  jal        FUN_800cb4bc
/* BB2CC 800CAACC 1800B2AF */   sw        $s2, 0x18($sp)
/* BB2D0 800CAAD0 03004014 */  bnez       $v0, .L800CAAE0
/* BB2D4 800CAAD4 21900000 */   addu      $s2, $zero, $zero
/* BB2D8 800CAAD8 D32A0308 */  j          .L800CAB4C
/* BB2DC 800CAADC F4FF0224 */   addiu     $v0, $zero, -0xc
.L800CAAE0:
/* BB2E0 800CAAE0 2A103702 */  slt        $v0, $s1, $s7
/* BB2E4 800CAAE4 18004010 */  beqz       $v0, .L800CAB48
/* BB2E8 800CAAE8 21980002 */   addu      $s3, $s0, $zero
/* BB2EC 800CAAEC FDFF1424 */  addiu      $s4, $zero, -3
/* BB2F0 800CAAF0 21800000 */  addu       $s0, $zero, $zero
.L800CAAF4:
/* BB2F4 800CAAF4 4A70000C */  jal        FUN_8001c128
/* BB2F8 800CAAF8 00000000 */   nop
/* BB2FC 800CAAFC 2120A002 */  addu       $a0, $s5, $zero
/* BB300 800CAB00 2128D202 */  addu       $a1, $s6, $s2
/* BB304 800CAB04 21307202 */  addu       $a2, $s3, $s2
/* BB308 800CAB08 592D030C */  jal        FUN_800cb564
/* BB30C 800CAB0C 08000724 */   addiu     $a3, $zero, 8
/* BB310 800CAB10 21884000 */  addu       $s1, $v0, $zero
/* BB314 800CAB14 0D003412 */  beq        $s1, $s4, .L800CAB4C
/* BB318 800CAB18 21102002 */   addu      $v0, $s1, $zero
/* BB31C 800CAB1C 05002012 */  beqz       $s1, .L800CAB34
/* BB320 800CAB20 0900022A */   slti      $v0, $s0, 9
/* BB324 800CAB24 01001026 */  addiu      $s0, $s0, 1
/* BB328 800CAB28 0900022A */  slti       $v0, $s0, 9
/* BB32C 800CAB2C F1FF4014 */  bnez       $v0, .L800CAAF4
/* BB330 800CAB30 00000000 */   nop
.L800CAB34:
/* BB334 800CAB34 04004010 */  beqz       $v0, .L800CAB48
/* BB338 800CAB38 08005226 */   addiu     $s2, $s2, 8
/* BB33C 800CAB3C 2A105702 */  slt        $v0, $s2, $s7
/* BB340 800CAB40 ECFF4014 */  bnez       $v0, .L800CAAF4
/* BB344 800CAB44 21800000 */   addu      $s0, $zero, $zero
.L800CAB48:
/* BB348 800CAB48 21102002 */  addu       $v0, $s1, $zero
.L800CAB4C:
/* BB34C 800CAB4C 3000BF8F */  lw         $ra, 0x30($sp)
/* BB350 800CAB50 2C00B78F */  lw         $s7, 0x2c($sp)
/* BB354 800CAB54 2800B68F */  lw         $s6, 0x28($sp)
/* BB358 800CAB58 2400B58F */  lw         $s5, 0x24($sp)
/* BB35C 800CAB5C 2000B48F */  lw         $s4, 0x20($sp)
/* BB360 800CAB60 1C00B38F */  lw         $s3, 0x1c($sp)
/* BB364 800CAB64 1800B28F */  lw         $s2, 0x18($sp)
/* BB368 800CAB68 1400B18F */  lw         $s1, 0x14($sp)
/* BB36C 800CAB6C 1000B08F */  lw         $s0, 0x10($sp)
/* BB370 800CAB70 0800E003 */  jr         $ra
/* BB374 800CAB74 3800BD27 */   addiu     $sp, $sp, 0x38

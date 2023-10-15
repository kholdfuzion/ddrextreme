.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc1e8
/* BC9E8 800CC1E8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* BC9EC 800CC1EC 3000B6AF */  sw         $s6, 0x30($sp)
/* BC9F0 800CC1F0 21B00000 */  addu       $s6, $zero, $zero
/* BC9F4 800CC1F4 2C00B5AF */  sw         $s5, 0x2c($sp)
/* BC9F8 800CC1F8 21A8C002 */  addu       $s5, $s6, $zero
/* BC9FC 800CC1FC 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BCA00 800CC200 2080113C */  lui        $s1, 0x8020
/* BCA04 800CC204 2800B4AF */  sw         $s4, 0x28($sp)
/* BCA08 800CC208 6A1F143C */  lui        $s4, 0x1f6a
/* BCA0C 800CC20C 3400B7AF */  sw         $s7, 0x34($sp)
/* BCA10 800CC210 401F173C */  lui        $s7, 0x1f40
/* BCA14 800CC214 3800BFAF */  sw         $ra, 0x38($sp)
/* BCA18 800CC218 2400B3AF */  sw         $s3, 0x24($sp)
/* BCA1C 800CC21C 2000B2AF */  sw         $s2, 0x20($sp)
/* BCA20 800CC220 1800B0AF */  sw         $s0, 0x18($sp)
.L800CC224:
/* BCA24 800CC224 78F0020C */  jal        FUN_800bc1e0
/* BCA28 800CC228 21200000 */   addu      $a0, $zero, $zero
/* BCA2C 800CC22C 08BD2396 */  lhu        $v1, -0x42f8($s1)
/* BCA30 800CC230 00000000 */  nop
/* BCA34 800CC234 FDFF6530 */  andi       $a1, $v1, 0xfffd
/* BCA38 800CC238 F9FF6430 */  andi       $a0, $v1, 0xfff9
/* BCA3C 800CC23C F1FF6330 */  andi       $v1, $v1, 0xfff1
/* BCA40 800CC240 000085A6 */  sh         $a1, ($s4)
/* BCA44 800CC244 000084A6 */  sh         $a0, ($s4)
/* BCA48 800CC248 000083A6 */  sh         $v1, ($s4)
/* BCA4C 800CC24C 1000A0AF */  sw         $zero, 0x10($sp)
/* BCA50 800CC250 1000A28F */  lw         $v0, 0x10($sp)
/* BCA54 800CC254 08BD25A6 */  sh         $a1, -0x42f8($s1)
/* BCA58 800CC258 08BD24A6 */  sh         $a0, -0x42f8($s1)
/* BCA5C 800CC25C EE30030C */  jal        FUN_800cc3b8
/* BCA60 800CC260 08BD23A6 */   sh        $v1, -0x42f8($s1)
/* BCA64 800CC264 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BCA68 800CC268 00000000 */  nop
/* BCA6C 800CC26C 08004234 */  ori        $v0, $v0, 8
/* BCA70 800CC270 000082A6 */  sh         $v0, ($s4)
/* BCA74 800CC274 1000A0AF */  sw         $zero, 0x10($sp)
/* BCA78 800CC278 1000A38F */  lw         $v1, 0x10($sp)
/* BCA7C 800CC27C EE30030C */  jal        FUN_800cc3b8
/* BCA80 800CC280 08BD22A6 */   sh        $v0, -0x42f8($s1)
/* BCA84 800CC284 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BCA88 800CC288 00000000 */  nop
/* BCA8C 800CC28C 02004234 */  ori        $v0, $v0, 2
/* BCA90 800CC290 000082A6 */  sh         $v0, ($s4)
/* BCA94 800CC294 1000A0AF */  sw         $zero, 0x10($sp)
/* BCA98 800CC298 1000A38F */  lw         $v1, 0x10($sp)
/* BCA9C 800CC29C F730030C */  jal        FUN_800cc3dc
/* BCAA0 800CC2A0 08BD22A6 */   sh        $v0, -0x42f8($s1)
/* BCAA4 800CC2A4 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BCAA8 800CC2A8 21980000 */  addu       $s3, $zero, $zero
/* BCAAC 800CC2AC FDFF4230 */  andi       $v0, $v0, 0xfffd
/* BCAB0 800CC2B0 000082A6 */  sh         $v0, ($s4)
/* BCAB4 800CC2B4 1000A0AF */  sw         $zero, 0x10($sp)
/* BCAB8 800CC2B8 1000A38F */  lw         $v1, 0x10($sp)
/* BCABC 800CC2BC 21906002 */  addu       $s2, $s3, $zero
/* BCAC0 800CC2C0 F730030C */  jal        FUN_800cc3dc
/* BCAC4 800CC2C4 08BD22A6 */   sh        $v0, -0x42f8($s1)
.L800CC2C8:
/* BCAC8 800CC2C8 21800000 */  addu       $s0, $zero, $zero
.L800CC2CC:
/* BCACC 800CC2CC 08BD2496 */  lhu        $a0, -0x42f8($s1)
/* BCAD0 800CC2D0 0600E396 */  lhu        $v1, 6($s7)
/* BCAD4 800CC2D4 02008434 */  ori        $a0, $a0, 2
/* BCAD8 800CC2D8 000084A6 */  sh         $a0, ($s4)
/* BCADC 800CC2DC 1000A0AF */  sw         $zero, 0x10($sp)
/* BCAE0 800CC2E0 1000A28F */  lw         $v0, 0x10($sp)
/* BCAE4 800CC2E4 40101300 */  sll        $v0, $s3, 1
/* BCAE8 800CC2E8 82180300 */  srl        $v1, $v1, 2
/* BCAEC 800CC2EC 01006330 */  andi       $v1, $v1, 1
/* BCAF0 800CC2F0 25984300 */  or         $s3, $v0, $v1
/* BCAF4 800CC2F4 F730030C */  jal        FUN_800cc3dc
/* BCAF8 800CC2F8 08BD24A6 */   sh        $a0, -0x42f8($s1)
/* BCAFC 800CC2FC 08BD2396 */  lhu        $v1, -0x42f8($s1)
/* BCB00 800CC300 00000000 */  nop
/* BCB04 800CC304 FDFF6330 */  andi       $v1, $v1, 0xfffd
/* BCB08 800CC308 000083A6 */  sh         $v1, ($s4)
/* BCB0C 800CC30C 1000A0AF */  sw         $zero, 0x10($sp)
/* BCB10 800CC310 1000A28F */  lw         $v0, 0x10($sp)
/* BCB14 800CC314 01001026 */  addiu      $s0, $s0, 1
/* BCB18 800CC318 F730030C */  jal        FUN_800cc3dc
/* BCB1C 800CC31C 08BD23A6 */   sh        $v1, -0x42f8($s1)
/* BCB20 800CC320 0800022A */  slti       $v0, $s0, 8
/* BCB24 800CC324 E9FF4014 */  bnez       $v0, .L800CC2CC
/* BCB28 800CC328 00000000 */   nop
/* BCB2C 800CC32C 01005226 */  addiu      $s2, $s2, 1
/* BCB30 800CC330 0400422A */  slti       $v0, $s2, 4
/* BCB34 800CC334 E4FF4014 */  bnez       $v0, .L800CC2C8
/* BCB38 800CC338 535A043C */   lui       $a0, 0x5a53
/* BCB3C 800CC33C 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BCB40 800CC340 00000000 */  nop
/* BCB44 800CC344 02004234 */  ori        $v0, $v0, 2
/* BCB48 800CC348 000082A6 */  sh         $v0, ($s4)
/* BCB4C 800CC34C 1000A0AF */  sw         $zero, 0x10($sp)
/* BCB50 800CC350 1000A38F */  lw         $v1, 0x10($sp)
/* BCB54 800CC354 01008434 */  ori        $a0, $a0, 1
/* BCB58 800CC358 05006416 */  bne        $s3, $a0, .L800CC370
/* BCB5C 800CC35C 08BD22A6 */   sh        $v0, -0x42f8($s1)
/* BCB60 800CC360 7C33030C */  jal        FUN_800ccdf0
/* BCB64 800CC364 03001624 */   addiu     $s6, $zero, 3
/* BCB68 800CC368 E3300308 */  j          .L800CC38C
/* BCB6C 800CC36C 2110C002 */   addu      $v0, $s6, $zero
.L800CC370:
/* BCB70 800CC370 FFFF0224 */  addiu      $v0, $zero, -1
/* BCB74 800CC374 04006212 */  beq        $s3, $v0, .L800CC388
/* BCB78 800CC378 0100B526 */   addiu     $s5, $s5, 1
/* BCB7C 800CC37C 0300A22A */  slti       $v0, $s5, 3
/* BCB80 800CC380 A8FF4014 */  bnez       $v0, .L800CC224
/* BCB84 800CC384 00000000 */   nop
.L800CC388:
/* BCB88 800CC388 2110C002 */  addu       $v0, $s6, $zero
.L800CC38C:
/* BCB8C 800CC38C 3800BF8F */  lw         $ra, 0x38($sp)
/* BCB90 800CC390 3400B78F */  lw         $s7, 0x34($sp)
/* BCB94 800CC394 3000B68F */  lw         $s6, 0x30($sp)
/* BCB98 800CC398 2C00B58F */  lw         $s5, 0x2c($sp)
/* BCB9C 800CC39C 2800B48F */  lw         $s4, 0x28($sp)
/* BCBA0 800CC3A0 2400B38F */  lw         $s3, 0x24($sp)
/* BCBA4 800CC3A4 2000B28F */  lw         $s2, 0x20($sp)
/* BCBA8 800CC3A8 1C00B18F */  lw         $s1, 0x1c($sp)
/* BCBAC 800CC3AC 1800B08F */  lw         $s0, 0x18($sp)
/* BCBB0 800CC3B0 0800E003 */  jr         $ra
/* BCBB4 800CC3B4 4000BD27 */   addiu     $sp, $sp, 0x40

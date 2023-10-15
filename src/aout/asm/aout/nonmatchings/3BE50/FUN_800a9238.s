.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9238
/* 99A38 800A9238 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 99A3C 800A923C 1400B1AF */  sw         $s1, 0x14($sp)
/* 99A40 800A9240 21880000 */  addu       $s1, $zero, $zero
/* 99A44 800A9244 1800B2AF */  sw         $s2, 0x18($sp)
/* 99A48 800A9248 21908000 */  addu       $s2, $a0, $zero
/* 99A4C 800A924C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 99A50 800A9250 2E001324 */  addiu      $s3, $zero, 0x2e
/* 99A54 800A9254 2000BFAF */  sw         $ra, 0x20($sp)
/* 99A58 800A9258 BFA40208 */  j          .L800A92FC
/* 99A5C 800A925C 1000B0AF */   sw        $s0, 0x10($sp)
.L800A9260:
/* 99A60 800A9260 00004392 */  lbu        $v1, ($s2)
/* 99A64 800A9264 00000000 */  nop
/* 99A68 800A9268 21006010 */  beqz       $v1, .L800A92F0
/* 99A6C 800A926C 21280000 */   addu      $a1, $zero, $zero
/* 99A70 800A9270 19007310 */  beq        $v1, $s3, .L800A92D8
/* 99A74 800A9274 21104502 */   addu      $v0, $s2, $a1
/* 99A78 800A9278 00000292 */  lbu        $v0, ($s0)
/* 99A7C 800A927C 00000000 */  nop
/* 99A80 800A9280 15004314 */  bne        $v0, $v1, .L800A92D8
/* 99A84 800A9284 21104502 */   addu      $v0, $s2, $a1
/* 99A88 800A9288 2E000624 */  addiu      $a2, $zero, 0x2e
/* 99A8C 800A928C 0100A524 */  addiu      $a1, $a1, 1
.L800A9290:
/* 99A90 800A9290 21104502 */  addu       $v0, $s2, $a1
/* 99A94 800A9294 00004490 */  lbu        $a0, ($v0)
/* 99A98 800A9298 00000000 */  nop
/* 99A9C 800A929C 21008010 */  beqz       $a0, .L800A9324
/* 99AA0 800A92A0 21102002 */   addu      $v0, $s1, $zero
/* 99AA4 800A92A4 0B008610 */  beq        $a0, $a2, .L800A92D4
/* 99AA8 800A92A8 FFFFA224 */   addiu     $v0, $a1, -1
/* 99AAC 800A92AC 0200422C */  sltiu      $v0, $v0, 2
/* 99AB0 800A92B0 F7FF4014 */  bnez       $v0, .L800A9290
/* 99AB4 800A92B4 0100A524 */   addiu     $a1, $a1, 1
/* 99AB8 800A92B8 FFFFA524 */  addiu      $a1, $a1, -1
/* 99ABC 800A92BC 21100502 */  addu       $v0, $s0, $a1
/* 99AC0 800A92C0 00004390 */  lbu        $v1, ($v0)
/* 99AC4 800A92C4 00000000 */  nop
/* 99AC8 800A92C8 F1FF6410 */  beq        $v1, $a0, .L800A9290
/* 99ACC 800A92CC 0100A524 */   addiu     $a1, $a1, 1
/* 99AD0 800A92D0 FFFFA524 */  addiu      $a1, $a1, -1
.L800A92D4:
/* 99AD4 800A92D4 21104502 */  addu       $v0, $s2, $a1
.L800A92D8:
/* 99AD8 800A92D8 00004290 */  lbu        $v0, ($v0)
/* 99ADC 800A92DC 00000000 */  nop
/* 99AE0 800A92E0 03004010 */  beqz       $v0, .L800A92F0
/* 99AE4 800A92E4 00000000 */   nop
/* 99AE8 800A92E8 03005314 */  bne        $v0, $s3, .L800A92F8
/* 99AEC 800A92EC 00000000 */   nop
.L800A92F0:
/* 99AF0 800A92F0 C9A40208 */  j          .L800A9324
/* 99AF4 800A92F4 21102002 */   addu      $v0, $s1, $zero
.L800A92F8:
/* 99AF8 800A92F8 01003126 */  addiu      $s1, $s1, 1
.L800A92FC:
/* 99AFC 800A92FC FFFF0234 */  ori        $v0, $zero, 0xffff
/* 99B00 800A9300 2A105100 */  slt        $v0, $v0, $s1
/* 99B04 800A9304 07004014 */  bnez       $v0, .L800A9324
/* 99B08 800A9308 FFFF0224 */   addiu     $v0, $zero, -1
/* 99B0C 800A930C 83C2020C */  jal        FUN_800b0a0c
/* 99B10 800A9310 FFFF2432 */   andi      $a0, $s1, 0xffff
/* 99B14 800A9314 7CAA000C */  jal        vsync_8002a9f0
/* 99B18 800A9318 21804000 */   addu      $s0, $v0, $zero
/* 99B1C 800A931C D0FF0016 */  bnez       $s0, .L800A9260
/* 99B20 800A9320 FFFF0224 */   addiu     $v0, $zero, -1
.L800A9324:
/* 99B24 800A9324 2000BF8F */  lw         $ra, 0x20($sp)
/* 99B28 800A9328 1C00B38F */  lw         $s3, 0x1c($sp)
/* 99B2C 800A932C 1800B28F */  lw         $s2, 0x18($sp)
/* 99B30 800A9330 1400B18F */  lw         $s1, 0x14($sp)
/* 99B34 800A9334 1000B08F */  lw         $s0, 0x10($sp)
/* 99B38 800A9338 0800E003 */  jr         $ra
/* 99B3C 800A933C 2800BD27 */   addiu     $sp, $sp, 0x28

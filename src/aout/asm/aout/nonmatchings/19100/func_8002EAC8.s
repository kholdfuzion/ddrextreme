.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002EAC8
/* 1F2C8 8002EAC8 D8FEBD27 */  addiu      $sp, $sp, -0x128
/* 1F2CC 8002EACC 2001B4AF */  sw         $s4, 0x120($sp)
/* 1F2D0 8002EAD0 21A08000 */  addu       $s4, $a0, $zero
/* 1F2D4 8002EAD4 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 1F2D8 8002EAD8 0E80133C */  lui        $s3, 0x800e
/* 1F2DC 8002EADC 1801B2AF */  sw         $s2, 0x118($sp)
/* 1F2E0 8002EAE0 07001224 */  addiu      $s2, $zero, 7
/* 1F2E4 8002EAE4 1401B1AF */  sw         $s1, 0x114($sp)
/* 1F2E8 8002EAE8 01001124 */  addiu      $s1, $zero, 1
/* 1F2EC 8002EAEC 2401BFAF */  sw         $ra, 0x124($sp)
/* 1F2F0 8002EAF0 1001B0AF */  sw         $s0, 0x110($sp)
.L8002EAF4:
/* 1F2F4 8002EAF4 21208002 */  addu       $a0, $s4, $zero
.L8002EAF8:
/* 1F2F8 8002EAF8 548D6526 */  addiu      $a1, $s3, -0x72ac
.L8002EAFC:
/* 1F2FC 8002EAFC 03000624 */  addiu      $a2, $zero, 3
/* 1F300 8002EB00 BAB4000C */  jal        FUN_8002d2e8
/* 1F304 8002EB04 1000A727 */   addiu     $a3, $sp, 0x10
/* 1F308 8002EB08 21804000 */  addu       $s0, $v0, $zero
/* 1F30C 8002EB0C 03000106 */  bgez       $s0, .L8002EB1C
/* 1F310 8002EB10 00000000 */   nop
/* 1F314 8002EB14 DFB9000C */  jal        FUN_8002e77c
/* 1F318 8002EB18 0C000424 */   addiu     $a0, $zero, 0xc
.L8002EB1C:
/* 1F31C 8002EB1C F6FF1216 */  bne        $s0, $s2, .L8002EAF8
/* 1F320 8002EB20 21208002 */   addu      $a0, $s4, $zero
/* 1F324 8002EB24 1000A293 */  lbu        $v0, 0x10($sp)
/* 1F328 8002EB28 00000000 */  nop
/* 1F32C 8002EB2C F2FF5114 */  bne        $v0, $s1, .L8002EAF8
/* 1F330 8002EB30 00000000 */   nop
/* 1F334 8002EB34 1100A393 */  lbu        $v1, 0x11($sp)
/* 1F338 8002EB38 00000000 */  nop
/* 1F33C 8002EB3C EFFF6214 */  bne        $v1, $v0, .L8002EAFC
/* 1F340 8002EB40 548D6526 */   addiu     $a1, $s3, -0x72ac
/* 1F344 8002EB44 1300A493 */  lbu        $a0, 0x13($sp)
/* 1F348 8002EB48 00000000 */  nop
/* 1F34C 8002EB4C E9FF8314 */  bne        $a0, $v1, .L8002EAF4
/* 1F350 8002EB50 00000000 */   nop
/* 1F354 8002EB54 1500A293 */  lbu        $v0, 0x15($sp)
/* 1F358 8002EB58 00000000 */  nop
/* 1F35C 8002EB5C E7FF4414 */  bne        $v0, $a0, .L8002EAFC
/* 1F360 8002EB60 21208002 */   addu      $a0, $s4, $zero
/* 1F364 8002EB64 1200A293 */  lbu        $v0, 0x12($sp)
/* 1F368 8002EB68 1400A393 */  lbu        $v1, 0x14($sp)
/* 1F36C 8002EB6C 1600A493 */  lbu        $a0, 0x16($sp)
/* 1F370 8002EB70 2401BF8F */  lw         $ra, 0x124($sp)
/* 1F374 8002EB74 2001B48F */  lw         $s4, 0x120($sp)
/* 1F378 8002EB78 1C01B38F */  lw         $s3, 0x11c($sp)
/* 1F37C 8002EB7C 1801B28F */  lw         $s2, 0x118($sp)
/* 1F380 8002EB80 1401B18F */  lw         $s1, 0x114($sp)
/* 1F384 8002EB84 1001B08F */  lw         $s0, 0x110($sp)
/* 1F388 8002EB88 00140200 */  sll        $v0, $v0, 0x10
/* 1F38C 8002EB8C 001A0300 */  sll        $v1, $v1, 8
/* 1F390 8002EB90 25104300 */  or         $v0, $v0, $v1
/* 1F394 8002EB94 25104400 */  or         $v0, $v0, $a0
/* 1F398 8002EB98 0800E003 */  jr         $ra
/* 1F39C 8002EB9C 2801BD27 */   addiu     $sp, $sp, 0x128

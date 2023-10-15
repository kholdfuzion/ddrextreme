.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005B294
/* 4BA94 8005B294 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 4BA98 8005B298 2140A000 */  addu       $t0, $a1, $zero
/* 4BA9C 8005B29C 8400B3AF */  sw         $s3, 0x84($sp)
/* 4BAA0 8005B2A0 2198C000 */  addu       $s3, $a2, $zero
/* 4BAA4 8005B2A4 80100400 */  sll        $v0, $a0, 2
/* 4BAA8 8005B2A8 21104400 */  addu       $v0, $v0, $a0
/* 4BAAC 8005B2AC C0100200 */  sll        $v0, $v0, 3
/* 4BAB0 8005B2B0 21104400 */  addu       $v0, $v0, $a0
/* 4BAB4 8005B2B4 C0100200 */  sll        $v0, $v0, 3
/* 4BAB8 8005B2B8 23104400 */  subu       $v0, $v0, $a0
/* 4BABC 8005B2BC 80100200 */  sll        $v0, $v0, 2
/* 4BAC0 8005B2C0 21104400 */  addu       $v0, $v0, $a0
/* 4BAC4 8005B2C4 C0100200 */  sll        $v0, $v0, 3
/* 4BAC8 8005B2C8 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BACC 8005B2CC 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BAD0 8005B2D0 21184300 */  addu       $v1, $v0, $v1
/* 4BAD4 8005B2D4 A000A68F */  lw         $a2, 0xa0($sp)
/* 4BAD8 8005B2D8 1980043C */  lui        $a0, %hi(D_80189980)
/* 4BADC 8005B2DC 8000B2AF */  sw         $s2, 0x80($sp)
/* 4BAE0 8005B2E0 A800B28F */  lw         $s2, 0xa8($sp)
/* 4BAE4 8005B2E4 80998424 */  addiu      $a0, $a0, %lo(D_80189980)
/* 4BAE8 8005B2E8 7C00B1AF */  sw         $s1, 0x7c($sp)
/* 4BAEC 8005B2EC 21884400 */  addu       $s1, $v0, $a0
/* 4BAF0 8005B2F0 8800BFAF */  sw         $ra, 0x88($sp)
/* 4BAF4 8005B2F4 05000005 */  bltz       $t0, .L8005B30C
/* 4BAF8 8005B2F8 7800B0AF */   sw        $s0, 0x78($sp)
/* 4BAFC 8005B2FC 01000224 */  addiu      $v0, $zero, 1
/* 4BB00 8005B300 040062AC */  sw         $v0, 4($v1)
/* 4BB04 8005B304 C66C0108 */  j          .L8005B318
/* 4BB08 8005B308 040022AE */   sw        $v0, 4($s1)
.L8005B30C:
/* 4BB0C 8005B30C 040060AC */  sw         $zero, 4($v1)
/* 4BB10 8005B310 E46C0108 */  j          .L8005B390
/* 4BB14 8005B314 040020AE */   sw        $zero, 4($s1)
.L8005B318:
/* 4BB18 8005B318 20006424 */  addiu      $a0, $v1, 0x20
/* 4BB1C 8005B31C 1800B027 */  addiu      $s0, $sp, 0x18
/* 4BB20 8005B320 21280002 */  addu       $a1, $s0, $zero
/* 4BB24 8005B324 A400A28F */  lw         $v0, 0xa4($sp)
/* 4BB28 8005B328 00010324 */  addiu      $v1, $zero, 0x100
/* 4BB2C 8005B32C 2800A3A7 */  sh         $v1, 0x28($sp)
/* 4BB30 8005B330 2A00A3A7 */  sh         $v1, 0x2a($sp)
/* 4BB34 8005B334 00014326 */  addiu      $v1, $s2, 0x100
/* 4BB38 8005B338 1000A8A7 */  sh         $t0, 0x10($sp)
/* 4BB3C 8005B33C 1400A7A7 */  sh         $a3, 0x14($sp)
/* 4BB40 8005B340 1600A6A7 */  sh         $a2, 0x16($sp)
/* 4BB44 8005B344 1800A8A7 */  sh         $t0, 0x18($sp)
/* 4BB48 8005B348 1C00A7A7 */  sh         $a3, 0x1c($sp)
/* 4BB4C 8005B34C 1E00A6A7 */  sh         $a2, 0x1e($sp)
/* 4BB50 8005B350 2400A0A7 */  sh         $zero, 0x24($sp)
/* 4BB54 8005B354 2600A0A7 */  sh         $zero, 0x26($sp)
/* 4BB58 8005B358 2C00A0A7 */  sh         $zero, 0x2c($sp)
/* 4BB5C 8005B35C 2E00A0A3 */  sb         $zero, 0x2e($sp)
/* 4BB60 8005B360 2F00A0A3 */  sb         $zero, 0x2f($sp)
/* 4BB64 8005B364 3000A0A3 */  sb         $zero, 0x30($sp)
/* 4BB68 8005B368 2200A3A7 */  sh         $v1, 0x22($sp)
/* 4BB6C 8005B36C 2000A2A7 */  sh         $v0, 0x20($sp)
/* 4BB70 8005B370 00016226 */  addiu      $v0, $s3, 0x100
/* 4BB74 8005B374 6B64000C */  jal        SetDrawEnv
/* 4BB78 8005B378 1A00A2A7 */   sh        $v0, 0x1a($sp)
/* 4BB7C 8005B37C 20002426 */  addiu      $a0, $s1, 0x20
/* 4BB80 8005B380 21280002 */  addu       $a1, $s0, $zero
/* 4BB84 8005B384 1A00B3A7 */  sh         $s3, 0x1a($sp)
/* 4BB88 8005B388 6B64000C */  jal        SetDrawEnv
/* 4BB8C 8005B38C 2200B2A7 */   sh        $s2, 0x22($sp)
.L8005B390:
/* 4BB90 8005B390 8800BF8F */  lw         $ra, 0x88($sp)
/* 4BB94 8005B394 8400B38F */  lw         $s3, 0x84($sp)
/* 4BB98 8005B398 8000B28F */  lw         $s2, 0x80($sp)
/* 4BB9C 8005B39C 7C00B18F */  lw         $s1, 0x7c($sp)
/* 4BBA0 8005B3A0 7800B08F */  lw         $s0, 0x78($sp)
/* 4BBA4 8005B3A4 0800E003 */  jr         $ra
/* 4BBA8 8005B3A8 9000BD27 */   addiu     $sp, $sp, 0x90

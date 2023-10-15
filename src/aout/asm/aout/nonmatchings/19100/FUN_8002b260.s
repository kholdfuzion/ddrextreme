.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b260
/* 1BA60 8002B260 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1BA64 8002B264 621F023C */  lui        $v0, 0x1f62
/* 1BA68 8002B268 1400B1AF */  sw         $s1, 0x14($sp)
/* 1BA6C 8002B26C 00005124 */  addiu      $s1, $v0, 0
/* 1BA70 8002B270 1000B0AF */  sw         $s0, 0x10($sp)
/* 1BA74 8002B274 20001024 */  addiu      $s0, $zero, 0x20
/* 1BA78 8002B278 55000324 */  addiu      $v1, $zero, 0x55
/* 1BA7C 8002B27C 2000BFAF */  sw         $ra, 0x20($sp)
/* 1BA80 8002B280 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1BA84 8002B284 1800B2AF */  sw         $s2, 0x18($sp)
/* 1BA88 8002B288 21103002 */  addu       $v0, $s1, $s0
.L8002B28C:
/* 1BA8C 8002B28C 000043A0 */  sb         $v1, ($v0)
/* 1BA90 8002B290 02001026 */  addiu      $s0, $s0, 2
/* 1BA94 8002B294 F81F022A */  slti       $v0, $s0, 0x1ff8
/* 1BA98 8002B298 FCFF4014 */  bnez       $v0, .L8002B28C
/* 1BA9C 8002B29C 21103002 */   addu      $v0, $s1, $s0
/* 1BAA0 8002B2A0 20001024 */  addiu      $s0, $zero, 0x20
/* 1BAA4 8002B2A4 55001324 */  addiu      $s3, $zero, 0x55
/* 1BAA8 8002B2A8 0180123C */  lui        $s2, %hi(D_80011028)
/* 1BAAC 8002B2AC 21103002 */  addu       $v0, $s1, $s0
.L8002B2B0:
/* 1BAB0 8002B2B0 00004390 */  lbu        $v1, ($v0)
/* 1BAB4 8002B2B4 00000000 */  nop
/* 1BAB8 8002B2B8 04007310 */  beq        $v1, $s3, .L8002B2CC
/* 1BABC 8002B2BC 28104426 */   addiu     $a0, $s2, %lo(D_80011028)
/* 1BAC0 8002B2C0 FFFF0524 */  addiu      $a1, $zero, -1
/* 1BAC4 8002B2C4 58AA000C */  jal        error_8002a960
/* 1BAC8 8002B2C8 21300000 */   addu      $a2, $zero, $zero
.L8002B2CC:
/* 1BACC 8002B2CC 02001026 */  addiu      $s0, $s0, 2
/* 1BAD0 8002B2D0 F81F022A */  slti       $v0, $s0, 0x1ff8
/* 1BAD4 8002B2D4 F6FF4014 */  bnez       $v0, .L8002B2B0
/* 1BAD8 8002B2D8 21103002 */   addu      $v0, $s1, $s0
/* 1BADC 8002B2DC 20001024 */  addiu      $s0, $zero, 0x20
/* 1BAE0 8002B2E0 AA000324 */  addiu      $v1, $zero, 0xaa
/* 1BAE4 8002B2E4 21103002 */  addu       $v0, $s1, $s0
.L8002B2E8:
/* 1BAE8 8002B2E8 000043A0 */  sb         $v1, ($v0)
/* 1BAEC 8002B2EC 02001026 */  addiu      $s0, $s0, 2
/* 1BAF0 8002B2F0 F81F022A */  slti       $v0, $s0, 0x1ff8
/* 1BAF4 8002B2F4 FCFF4014 */  bnez       $v0, .L8002B2E8
/* 1BAF8 8002B2F8 21103002 */   addu      $v0, $s1, $s0
/* 1BAFC 8002B2FC 20001024 */  addiu      $s0, $zero, 0x20
/* 1BB00 8002B300 AA001324 */  addiu      $s3, $zero, 0xaa
/* 1BB04 8002B304 0180123C */  lui        $s2, %hi(D_80011028)
.L8002B308:
/* 1BB08 8002B308 21103002 */  addu       $v0, $s1, $s0
/* 1BB0C 8002B30C 00004390 */  lbu        $v1, ($v0)
/* 1BB10 8002B310 00000000 */  nop
/* 1BB14 8002B314 04007310 */  beq        $v1, $s3, .L8002B328
/* 1BB18 8002B318 28104426 */   addiu     $a0, $s2, %lo(D_80011028)
/* 1BB1C 8002B31C FFFF0524 */  addiu      $a1, $zero, -1
/* 1BB20 8002B320 58AA000C */  jal        error_8002a960
/* 1BB24 8002B324 21300000 */   addu      $a2, $zero, $zero
.L8002B328:
/* 1BB28 8002B328 02001026 */  addiu      $s0, $s0, 2
/* 1BB2C 8002B32C F81F022A */  slti       $v0, $s0, 0x1ff8
/* 1BB30 8002B330 F5FF4014 */  bnez       $v0, .L8002B308
/* 1BB34 8002B334 1580023C */   lui       $v0, %hi(D_8014BA50)
/* 1BB38 8002B338 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* 1BB3C 8002B33C 1580033C */  lui        $v1, %hi(D_8014ABF0)
/* 1BB40 8002B340 F0AB6324 */  addiu      $v1, $v1, %lo(D_8014ABF0)
/* 1BB44 8002B344 500E6424 */  addiu      $a0, $v1, 0xe50
.L8002B348:
/* 1BB48 8002B348 0000658C */  lw         $a1, ($v1)
/* 1BB4C 8002B34C 0400668C */  lw         $a2, 4($v1)
/* 1BB50 8002B350 0800678C */  lw         $a3, 8($v1)
/* 1BB54 8002B354 0C00688C */  lw         $t0, 0xc($v1)
/* 1BB58 8002B358 000045AC */  sw         $a1, ($v0)
/* 1BB5C 8002B35C 040046AC */  sw         $a2, 4($v0)
/* 1BB60 8002B360 080047AC */  sw         $a3, 8($v0)
/* 1BB64 8002B364 0C0048AC */  sw         $t0, 0xc($v0)
/* 1BB68 8002B368 10006324 */  addiu      $v1, $v1, 0x10
/* 1BB6C 8002B36C F6FF6414 */  bne        $v1, $a0, .L8002B348
/* 1BB70 8002B370 10004224 */   addiu     $v0, $v0, 0x10
/* 1BB74 8002B374 0000648C */  lw         $a0, ($v1)
/* 1BB78 8002B378 0400658C */  lw         $a1, 4($v1)
/* 1BB7C 8002B37C 0800668C */  lw         $a2, 8($v1)
/* 1BB80 8002B380 000044AC */  sw         $a0, ($v0)
/* 1BB84 8002B384 040045AC */  sw         $a1, 4($v0)
/* 1BB88 8002B388 B8B2000C */  jal        FUN_8002cae0
/* 1BB8C 8002B38C 080046AC */   sw        $a2, 8($v0)
/* 1BB90 8002B390 91AE000C */  jal        FUN_8002ba44
/* 1BB94 8002B394 00000000 */   nop
/* 1BB98 8002B398 2000BF8F */  lw         $ra, 0x20($sp)
/* 1BB9C 8002B39C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1BBA0 8002B3A0 1800B28F */  lw         $s2, 0x18($sp)
/* 1BBA4 8002B3A4 1400B18F */  lw         $s1, 0x14($sp)
/* 1BBA8 8002B3A8 1000B08F */  lw         $s0, 0x10($sp)
/* 1BBAC 8002B3AC 0800E003 */  jr         $ra
/* 1BBB0 8002B3B0 2800BD27 */   addiu     $sp, $sp, 0x28

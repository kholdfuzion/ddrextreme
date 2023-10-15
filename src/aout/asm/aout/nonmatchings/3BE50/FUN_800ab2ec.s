.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab2ec
/* 9BAEC 800AB2EC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9BAF0 800AB2F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BAF4 800AB2F4 21800000 */  addu       $s0, $zero, $zero
/* 9BAF8 800AB2F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BAFC 800AB2FC 21888000 */  addu       $s1, $a0, $zero
/* 9BB00 800AB300 1800B2AF */  sw         $s2, 0x18($sp)
/* 9BB04 800AB304 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9BB08 800AB308 0CAF020C */  jal        FUN_800abc30
/* 9BB0C 800AB30C 2190A000 */   addu      $s2, $a1, $zero
/* 9BB10 800AB310 1D004010 */  beqz       $v0, .L800AB388
/* 9BB14 800AB314 21100000 */   addu      $v0, $zero, $zero
/* 9BB18 800AB318 08A5020C */  jal        FUN_800a9420
/* 9BB1C 800AB31C 21202002 */   addu      $a0, $s1, $zero
/* 9BB20 800AB320 21184000 */  addu       $v1, $v0, $zero
/* 9BB24 800AB324 0001622C */  sltiu      $v0, $v1, 0x100
/* 9BB28 800AB328 03004014 */  bnez       $v0, .L800AB338
/* 9BB2C 800AB32C 80280300 */   sll       $a1, $v1, 2
/* 9BB30 800AB330 E2AC0208 */  j          .L800AB388
/* 9BB34 800AB334 21100000 */   addu      $v0, $zero, $zero
.L800AB338:
/* 9BB38 800AB338 21200000 */  addu       $a0, $zero, $zero
/* 9BB3C 800AB33C 02000724 */  addiu      $a3, $zero, 2
/* 9BB40 800AB340 1C80023C */  lui        $v0, %hi(D_801BFE96)
/* 9BB44 800AB344 96FE4624 */  addiu      $a2, $v0, %lo(D_801BFE96)
.L800AB348:
/* 9BB48 800AB348 03004716 */  bne        $s2, $a3, .L800AB358
/* 9BB4C 800AB34C 02008224 */   addiu     $v0, $a0, 2
/* 9BB50 800AB350 D7AC0208 */  j          .L800AB35C
/* 9BB54 800AB354 2110A200 */   addu      $v0, $a1, $v0
.L800AB358:
/* 9BB58 800AB358 2110A400 */  addu       $v0, $a1, $a0
.L800AB35C:
/* 9BB5C 800AB35C 00110200 */  sll        $v0, $v0, 4
/* 9BB60 800AB360 21104600 */  addu       $v0, $v0, $a2
/* 9BB64 800AB364 00004384 */  lh         $v1, ($v0)
/* 9BB68 800AB368 00000000 */  nop
/* 9BB6C 800AB36C 02006018 */  blez       $v1, .L800AB378
/* 9BB70 800AB370 00000000 */   nop
/* 9BB74 800AB374 01001026 */  addiu      $s0, $s0, 1
.L800AB378:
/* 9BB78 800AB378 01008424 */  addiu      $a0, $a0, 1
/* 9BB7C 800AB37C 02008228 */  slti       $v0, $a0, 2
/* 9BB80 800AB380 F1FF4014 */  bnez       $v0, .L800AB348
/* 9BB84 800AB384 21100002 */   addu      $v0, $s0, $zero
.L800AB388:
/* 9BB88 800AB388 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9BB8C 800AB38C 1800B28F */  lw         $s2, 0x18($sp)
/* 9BB90 800AB390 1400B18F */  lw         $s1, 0x14($sp)
/* 9BB94 800AB394 1000B08F */  lw         $s0, 0x10($sp)
/* 9BB98 800AB398 0800E003 */  jr         $ra
/* 9BB9C 800AB39C 2000BD27 */   addiu     $sp, $sp, 0x20

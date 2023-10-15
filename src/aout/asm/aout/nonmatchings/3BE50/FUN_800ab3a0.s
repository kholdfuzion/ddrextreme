.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab3a0
/* 9BBA0 800AB3A0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 9BBA4 800AB3A4 2400B5AF */  sw         $s5, 0x24($sp)
/* 9BBA8 800AB3A8 21A88000 */  addu       $s5, $a0, $zero
/* 9BBAC 800AB3AC 2000B4AF */  sw         $s4, 0x20($sp)
/* 9BBB0 800AB3B0 21A0A000 */  addu       $s4, $a1, $zero
/* 9BBB4 800AB3B4 1800B2AF */  sw         $s2, 0x18($sp)
/* 9BBB8 800AB3B8 21900000 */  addu       $s2, $zero, $zero
/* 9BBBC 800AB3BC 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BBC0 800AB3C0 21880000 */  addu       $s1, $zero, $zero
/* 9BBC4 800AB3C4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9BBC8 800AB3C8 FFFF1334 */  ori        $s3, $zero, 0xffff
/* 9BBCC 800AB3CC 2800BFAF */  sw         $ra, 0x28($sp)
/* 9BBD0 800AB3D0 1000B0AF */  sw         $s0, 0x10($sp)
.L800AB3D4:
/* 9BBD4 800AB3D4 08A5020C */  jal        FUN_800a9420
/* 9BBD8 800AB3D8 21208002 */   addu      $a0, $s4, $zero
/* 9BBDC 800AB3DC 80100200 */  sll        $v0, $v0, 2
/* 9BBE0 800AB3E0 21105100 */  addu       $v0, $v0, $s1
/* 9BBE4 800AB3E4 8BAF020C */  jal        FUN_800abe2c
/* 9BBE8 800AB3E8 40800200 */   sll       $s0, $v0, 1
/* 9BBEC 800AB3EC 02000106 */  bgez       $s0, .L800AB3F8
/* 9BBF0 800AB3F0 21280002 */   addu      $a1, $s0, $zero
/* 9BBF4 800AB3F4 3F000526 */  addiu      $a1, $s0, 0x3f
.L800AB3F8:
/* 9BBF8 800AB3F8 2120A002 */  addu       $a0, $s5, $zero
/* 9BBFC 800AB3FC 83290500 */  sra        $a1, $a1, 6
/* 9BC00 800AB400 6ED5000C */  jal        FUN_800355b8
/* 9BC04 800AB404 2128A200 */   addu      $a1, $a1, $v0
/* 9BC08 800AB408 3F000332 */  andi       $v1, $s0, 0x3f
/* 9BC0C 800AB40C C01A0300 */  sll        $v1, $v1, 0xb
/* 9BC10 800AB410 21104300 */  addu       $v0, $v0, $v1
/* 9BC14 800AB414 00004494 */  lhu        $a0, ($v0)
/* 9BC18 800AB418 00000000 */  nop
/* 9BC1C 800AB41C 02009310 */  beq        $a0, $s3, .L800AB428
/* 9BC20 800AB420 00000000 */   nop
/* 9BC24 800AB424 01005226 */  addiu      $s2, $s2, 1
.L800AB428:
/* 9BC28 800AB428 01003126 */  addiu      $s1, $s1, 1
/* 9BC2C 800AB42C 0400222A */  slti       $v0, $s1, 4
/* 9BC30 800AB430 E8FF4014 */  bnez       $v0, .L800AB3D4
/* 9BC34 800AB434 21104002 */   addu      $v0, $s2, $zero
/* 9BC38 800AB438 2800BF8F */  lw         $ra, 0x28($sp)
/* 9BC3C 800AB43C 2400B58F */  lw         $s5, 0x24($sp)
/* 9BC40 800AB440 2000B48F */  lw         $s4, 0x20($sp)
/* 9BC44 800AB444 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9BC48 800AB448 1800B28F */  lw         $s2, 0x18($sp)
/* 9BC4C 800AB44C 1400B18F */  lw         $s1, 0x14($sp)
/* 9BC50 800AB450 1000B08F */  lw         $s0, 0x10($sp)
/* 9BC54 800AB454 0800E003 */  jr         $ra
/* 9BC58 800AB458 3000BD27 */   addiu     $sp, $sp, 0x30

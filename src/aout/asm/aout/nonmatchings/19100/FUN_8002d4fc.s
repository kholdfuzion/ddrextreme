.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d4fc
/* 1DCFC 8002D4FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1DD00 8002D500 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 1DD04 8002D504 1800B2AF */  sw         $s2, 0x18($sp)
/* 1DD08 8002D508 1400B1AF */  sw         $s1, 0x14($sp)
/* 1DD0C 8002D50C 45B4000C */  jal        FUN_8002d114
/* 1DD10 8002D510 1000B0AF */   sw        $s0, 0x10($sp)
/* 1DD14 8002D514 0E80123C */  lui        $s2, 0x800e
/* 1DD18 8002D518 1580113C */  lui        $s1, 0x8015
/* 1DD1C 8002D51C 77001024 */  addiu      $s0, $zero, 0x77
.L8002D520:
/* 1DD20 8002D520 7CAA000C */  jal        vsync_8002a9f0
/* 1DD24 8002D524 FFFF1026 */   addiu     $s0, $s0, -1
/* 1DD28 8002D528 CD6B000C */  jal        VSync
/* 1DD2C 8002D52C 21200000 */   addu      $a0, $zero, $zero
/* 1DD30 8002D530 FBFF0106 */  bgez       $s0, .L8002D520
/* 1DD34 8002D534 1580043C */   lui       $a0, %hi(D_8014CCC0)
/* 1DD38 8002D538 C0CC8424 */  addiu      $a0, $a0, %lo(D_8014CCC0)
/* 1DD3C 8002D53C 21280000 */  addu       $a1, $zero, $zero
/* 1DD40 8002D540 F6A2000C */  jal        memset
/* 1DD44 8002D544 00120624 */   addiu     $a2, $zero, 0x1200
/* 1DD48 8002D548 01001024 */  addiu      $s0, $zero, 1
/* 1DD4C 8002D54C 488D4526 */  addiu      $a1, $s2, -0x72b8
.L8002D550:
/* 1DD50 8002D550 0100B0A0 */  sb         $s0, 1($a1)
/* 1DD54 8002D554 FF000424 */  addiu      $a0, $zero, 0xff
/* 1DD58 8002D558 02000624 */  addiu      $a2, $zero, 2
/* 1DD5C 8002D55C BAB4000C */  jal        FUN_8002d2e8
/* 1DD60 8002D560 A0CB2726 */   addiu     $a3, $s1, -0x3460
/* 1DD64 8002D564 21184000 */  addu       $v1, $v0, $zero
/* 1DD68 8002D568 FBFF0224 */  addiu      $v0, $zero, -5
/* 1DD6C 8002D56C 05006210 */  beq        $v1, $v0, .L8002D584
/* 1DD70 8002D570 FBFF6228 */   slti      $v0, $v1, -5
/* 1DD74 8002D574 05004014 */  bnez       $v0, .L8002D58C
/* 1DD78 8002D578 00000000 */   nop
/* 1DD7C 8002D57C 03006104 */  bgez       $v1, .L8002D58C
/* 1DD80 8002D580 00000000 */   nop
.L8002D584:
/* 1DD84 8002D584 74B50008 */  j          .L8002D5D0
/* 1DD88 8002D588 F6FF0224 */   addiu     $v0, $zero, -0xa
.L8002D58C:
/* 1DD8C 8002D58C A0CB2392 */  lbu        $v1, -0x3460($s1)
/* 1DD90 8002D590 01000224 */  addiu      $v0, $zero, 1
/* 1DD94 8002D594 03006210 */  beq        $v1, $v0, .L8002D5A4
/* 1DD98 8002D598 00000000 */   nop
/* 1DD9C 8002D59C DFB9000C */  jal        FUN_8002e77c
/* 1DDA0 8002D5A0 03000424 */   addiu     $a0, $zero, 3
.L8002D5A4:
/* 1DDA4 8002D5A4 B206030C */  jal        FUN_800c1ac8
/* 1DDA8 8002D5A8 00000000 */   nop
/* 1DDAC 8002D5AC 08004010 */  beqz       $v0, .L8002D5D0
/* 1DDB0 8002D5B0 21100002 */   addu      $v0, $s0, $zero
/* 1DDB4 8002D5B4 01001026 */  addiu      $s0, $s0, 1
/* 1DDB8 8002D5B8 2000022A */  slti       $v0, $s0, 0x20
/* 1DDBC 8002D5BC E4FF4014 */  bnez       $v0, .L8002D550
/* 1DDC0 8002D5C0 488D4526 */   addiu     $a1, $s2, -0x72b8
/* 1DDC4 8002D5C4 DFB9000C */  jal        FUN_8002e77c
/* 1DDC8 8002D5C8 05000424 */   addiu     $a0, $zero, 5
/* 1DDCC 8002D5CC FFFF0224 */  addiu      $v0, $zero, -1
.L8002D5D0:
/* 1DDD0 8002D5D0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 1DDD4 8002D5D4 1800B28F */  lw         $s2, 0x18($sp)
/* 1DDD8 8002D5D8 1400B18F */  lw         $s1, 0x14($sp)
/* 1DDDC 8002D5DC 1000B08F */  lw         $s0, 0x10($sp)
/* 1DDE0 8002D5E0 0800E003 */  jr         $ra
/* 1DDE4 8002D5E4 2000BD27 */   addiu     $sp, $sp, 0x20

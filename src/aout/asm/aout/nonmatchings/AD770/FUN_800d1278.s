.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d1278
/* C1A78 800D1278 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* C1A7C 800D127C 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C1A80 800D1280 1000B0AF */  sw         $s0, 0x10($sp)
/* C1A84 800D1284 10BD5024 */  addiu      $s0, $v0, %lo(D_801FBD10)
/* C1A88 800D1288 1800BFAF */  sw         $ra, 0x18($sp)
/* C1A8C 800D128C 1400B1AF */  sw         $s1, 0x14($sp)
/* C1A90 800D1290 DF110392 */  lbu        $v1, 0x11df($s0)
/* C1A94 800D1294 03000224 */  addiu      $v0, $zero, 3
/* C1A98 800D1298 FF007130 */  andi       $s1, $v1, 0xff
/* C1A9C 800D129C 2F002216 */  bne        $s1, $v0, .L800D135C
/* C1AA0 800D12A0 F6FF0224 */   addiu     $v0, $zero, -0xa
/* C1AA4 800D12A4 DF1100A2 */  sb         $zero, 0x11df($s0)
/* C1AA8 800D12A8 E811028E */  lw         $v0, 0x11e8($s0)
/* C1AAC 800D12AC 00000000 */  nop
/* C1AB0 800D12B0 04004010 */  beqz       $v0, .L800D12C4
/* C1AB4 800D12B4 00000000 */   nop
/* C1AB8 800D12B8 E811028E */  lw         $v0, 0x11e8($s0)
/* C1ABC 800D12BC D7440308 */  j          .L800D135C
/* C1AC0 800D12C0 00000000 */   nop
.L800D12C4:
/* C1AC4 800D12C4 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C1AC8 800D12C8 00000000 */  nop
/* C1ACC 800D12CC 01004230 */  andi       $v0, $v0, 1
/* C1AD0 800D12D0 22004010 */  beqz       $v0, .L800D135C
/* C1AD4 800D12D4 21100000 */   addu      $v0, $zero, $zero
/* C1AD8 800D12D8 FE02030C */  jal        FUN_800c0bf8
/* C1ADC 800D12DC 00000000 */   nop
/* C1AE0 800D12E0 01004230 */  andi       $v0, $v0, 1
/* C1AE4 800D12E4 1D004010 */  beqz       $v0, .L800D135C
/* C1AE8 800D12E8 FAFF0224 */   addiu     $v0, $zero, -6
/* C1AEC 800D12EC CB40030C */  jal        FUN_800d032c
/* C1AF0 800D12F0 21200000 */   addu      $a0, $zero, $zero
/* C1AF4 800D12F4 19004014 */  bnez       $v0, .L800D135C
/* C1AF8 800D12F8 00000000 */   nop
/* C1AFC 800D12FC 96010392 */  lbu        $v1, 0x196($s0)
/* C1B00 800D1300 00000000 */  nop
/* C1B04 800D1304 10007110 */  beq        $v1, $s1, .L800D1348
/* C1B08 800D1308 04006228 */   slti      $v0, $v1, 4
/* C1B0C 800D130C 05004010 */  beqz       $v0, .L800D1324
/* C1B10 800D1310 02000224 */   addiu     $v0, $zero, 2
/* C1B14 800D1314 0A006210 */  beq        $v1, $v0, .L800D1340
/* C1B18 800D1318 FAFF0224 */   addiu     $v0, $zero, -6
/* C1B1C 800D131C D7440308 */  j          .L800D135C
/* C1B20 800D1320 00000000 */   nop
.L800D1324:
/* C1B24 800D1324 04000224 */  addiu      $v0, $zero, 4
/* C1B28 800D1328 09006210 */  beq        $v1, $v0, .L800D1350
/* C1B2C 800D132C 05000224 */   addiu     $v0, $zero, 5
/* C1B30 800D1330 09006210 */  beq        $v1, $v0, .L800D1358
/* C1B34 800D1334 FAFF0224 */   addiu     $v0, $zero, -6
/* C1B38 800D1338 D7440308 */  j          .L800D135C
/* C1B3C 800D133C 00000000 */   nop
.L800D1340:
/* C1B40 800D1340 D7440308 */  j          .L800D135C
/* C1B44 800D1344 FEFF0224 */   addiu     $v0, $zero, -2
.L800D1348:
/* C1B48 800D1348 D7440308 */  j          .L800D135C
/* C1B4C 800D134C FDFF0224 */   addiu     $v0, $zero, -3
.L800D1350:
/* C1B50 800D1350 D7440308 */  j          .L800D135C
/* C1B54 800D1354 FCFF0224 */   addiu     $v0, $zero, -4
.L800D1358:
/* C1B58 800D1358 FBFF0224 */  addiu      $v0, $zero, -5
.L800D135C:
/* C1B5C 800D135C 1800BF8F */  lw         $ra, 0x18($sp)
/* C1B60 800D1360 1400B18F */  lw         $s1, 0x14($sp)
/* C1B64 800D1364 1000B08F */  lw         $s0, 0x10($sp)
/* C1B68 800D1368 0800E003 */  jr         $ra
/* C1B6C 800D136C 2000BD27 */   addiu     $sp, $sp, 0x20

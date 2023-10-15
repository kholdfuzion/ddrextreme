.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B1B14
/* A2314 800B1B14 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A2318 800B1B18 2400B5AF */  sw         $s5, 0x24($sp)
/* A231C 800B1B1C FFFF1524 */  addiu      $s5, $zero, -1
/* A2320 800B1B20 1D80023C */  lui        $v0, 0x801d
/* A2324 800B1B24 2000B4AF */  sw         $s4, 0x20($sp)
/* A2328 800B1B28 21A04000 */  addu       $s4, $v0, $zero
/* A232C 800B1B2C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A2330 800B1B30 1D80133C */  lui        $s3, 0x801d
/* A2334 800B1B34 1800B2AF */  sw         $s2, 0x18($sp)
/* A2338 800B1B38 1D80123C */  lui        $s2, 0x801d
/* A233C 800B1B3C 3000BEAF */  sw         $fp, 0x30($sp)
/* A2340 800B1B40 F6FF1E24 */  addiu      $fp, $zero, -0xa
/* A2344 800B1B44 3400BFAF */  sw         $ra, 0x34($sp)
/* A2348 800B1B48 2C00B7AF */  sw         $s7, 0x2c($sp)
/* A234C 800B1B4C 2800B6AF */  sw         $s6, 0x28($sp)
/* A2350 800B1B50 1400B1AF */  sw         $s1, 0x14($sp)
/* A2354 800B1B54 1000B0AF */  sw         $s0, 0x10($sp)
/* A2358 800B1B58 E6C60208 */  j          .L800B1B98
/* A235C 800B1B5C 183240AC */   sw        $zero, 0x3218($v0)
.L800B1B60:
/* A2360 800B1B60 0800028E */  lw         $v0, 8($s0)
/* A2364 800B1B64 00000000 */  nop
/* A2368 800B1B68 09004010 */  beqz       $v0, .L800B1B90
/* A236C 800B1B6C 00000000 */   nop
/* A2370 800B1B70 9E44030C */  jal        FUN_800d1278
/* A2374 800B1B74 00000000 */   nop
/* A2378 800B1B78 03004010 */  beqz       $v0, .L800B1B88
/* A237C 800B1B7C 040002AE */   sw        $v0, 4($s0)
/* A2380 800B1B80 03005E10 */  beq        $v0, $fp, .L800B1B90
/* A2384 800B1B84 00000000 */   nop
.L800B1B88:
/* A2388 800B1B88 080000AE */  sw         $zero, 8($s0)
/* A238C 800B1B8C 183280AE */  sw         $zero, 0x3218($s4)
.L800B1B90:
/* A2390 800B1B90 BFC2020C */  jal        ChangeTh
/* A2394 800B1B94 00FF043C */   lui       $a0, 0xff00
.L800B1B98:
/* A2398 800B1B98 B82C638E */  lw         $v1, 0x2cb8($s3)
/* A239C 800B1B9C BC2C428E */  lw         $v0, 0x2cbc($s2)
/* A23A0 800B1BA0 00000000 */  nop
/* A23A4 800B1BA4 EEFF6210 */  beq        $v1, $v0, .L800B1B60
/* A23A8 800B1BA8 18329026 */   addiu     $s0, $s4, 0x3218
/* A23AC 800B1BAC 0DC8020C */  jal        FUN_800b2034
/* A23B0 800B1BB0 00000000 */   nop
/* A23B4 800B1BB4 EAFF4014 */  bnez       $v0, .L800B1B60
/* A23B8 800B1BB8 01000224 */   addiu     $v0, $zero, 1
/* A23BC 800B1BBC B82C648E */  lw         $a0, 0x2cb8($s3)
/* A23C0 800B1BC0 BC2C438E */  lw         $v1, 0x2cbc($s2)
/* A23C4 800B1BC4 00000000 */  nop
/* A23C8 800B1BC8 1D008310 */  beq        $a0, $v1, .L800B1C40
/* A23CC 800B1BCC 183282AE */   sw        $v0, 0x3218($s4)
/* A23D0 800B1BD0 1D80113C */  lui        $s1, 0x801d
/* A23D4 800B1BD4 1D80023C */  lui        $v0, %hi(D_801D2CC8)
/* A23D8 800B1BD8 C82C5024 */  addiu      $s0, $v0, %lo(D_801D2CC8)
/* A23DC 800B1BDC FFFF1724 */  addiu      $s7, $zero, -1
/* A23E0 800B1BE0 0180163C */  lui        $s6, %hi(D_800170EC)
.L800B1BE4:
/* A23E4 800B1BE4 46C6020C */  jal        FUN_800b1918
/* A23E8 800B1BE8 00000000 */   nop
/* A23EC 800B1BEC 21A84000 */  addu       $s5, $v0, $zero
/* A23F0 800B1BF0 0900B716 */  bne        $s5, $s7, .L800B1C18
/* A23F4 800B1BF4 EC70C426 */   addiu     $a0, $s6, %lo(D_800170EC)
/* A23F8 800B1BF8 02000524 */  addiu      $a1, $zero, 2
/* A23FC 800B1BFC 21300000 */  addu       $a2, $zero, $zero
/* A2400 800B1C00 BC2C40AE */  sw         $zero, 0x2cbc($s2)
/* A2404 800B1C04 B82C60AE */  sw         $zero, 0x2cb8($s3)
/* A2408 800B1C08 58AA000C */  jal        error_8002a960
/* A240C 800B1C0C 082E30AE */   sw        $s0, 0x2e08($s1)
/* A2410 800B1C10 0BC70208 */  j          .L800B1C2C
/* A2414 800B1C14 00000000 */   nop
.L800B1C18:
/* A2418 800B1C18 0400A012 */  beqz       $s5, .L800B1C2C
/* A241C 800B1C1C 00000000 */   nop
/* A2420 800B1C20 BC2C40AE */  sw         $zero, 0x2cbc($s2)
/* A2424 800B1C24 B82C60AE */  sw         $zero, 0x2cb8($s3)
/* A2428 800B1C28 082E30AE */  sw         $s0, 0x2e08($s1)
.L800B1C2C:
/* A242C 800B1C2C B82C638E */  lw         $v1, 0x2cb8($s3)
/* A2430 800B1C30 BC2C428E */  lw         $v0, 0x2cbc($s2)
/* A2434 800B1C34 00000000 */  nop
/* A2438 800B1C38 EAFF6214 */  bne        $v1, $v0, .L800B1BE4
/* A243C 800B1C3C 00000000 */   nop
.L800B1C40:
/* A2440 800B1C40 D5FFA016 */  bnez       $s5, .L800B1B98
/* A2444 800B1C44 183280AE */   sw        $zero, 0x3218($s4)
/* A2448 800B1C48 1D6E000C */  jal        FUN_8001b874
/* A244C 800B1C4C 00000000 */   nop
/* A2450 800B1C50 00F3043C */  lui        $a0, 0xf300
/* A2454 800B1C54 00018434 */  ori        $a0, $a0, 0x100
/* A2458 800B1C58 A9C3020C */  jal        DeliverEvent
/* A245C 800B1C5C 21280000 */   addu      $a1, $zero, $zero
/* A2460 800B1C60 216E000C */  jal        FUN_8001b884
/* A2464 800B1C64 00000000 */   nop
/* A2468 800B1C68 E6C60208 */  j          .L800B1B98
/* A246C 800B1C6C 00000000 */   nop

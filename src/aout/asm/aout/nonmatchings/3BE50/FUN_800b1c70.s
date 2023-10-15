.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1c70
/* A2470 800B1C70 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A2474 800B1C74 1000B0AF */  sw         $s0, 0x10($sp)
/* A2478 800B1C78 1D80103C */  lui        $s0, %hi(D_801D3218)
/* A247C 800B1C7C 1400B1AF */  sw         $s1, 0x14($sp)
/* A2480 800B1C80 18321126 */  addiu      $s1, $s0, %lo(D_801D3218)
/* A2484 800B1C84 1800B2AF */  sw         $s2, 0x18($sp)
/* A2488 800B1C88 21908000 */  addu       $s2, $a0, $zero
/* A248C 800B1C8C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A2490 800B1C90 2198A000 */  addu       $s3, $a1, $zero
/* A2494 800B1C94 2400BFAF */  sw         $ra, 0x24($sp)
/* A2498 800B1C98 2000B4AF */  sw         $s4, 0x20($sp)
/* A249C 800B1C9C 183200AE */  sw         $zero, 0x3218($s0)
/* A24A0 800B1CA0 040020AE */  sw         $zero, 4($s1)
/* A24A4 800B1CA4 FA48030C */  jal        FUN_800d23e8
/* A24A8 800B1CA8 080020AE */   sw        $zero, 8($s1)
/* A24AC 800B1CAC 54004014 */  bnez       $v0, .L800B1E00
/* A24B0 800B1CB0 21A00002 */   addu      $s4, $s0, $zero
/* A24B4 800B1CB4 1D6E000C */  jal        FUN_8001b874
/* A24B8 800B1CB8 00000000 */   nop
/* A24BC 800B1CBC 0D80043C */  lui        $a0, %hi(D_800CFAC0)
/* A24C0 800B1CC0 72F1020C */  jal        FUN_800bc5c8
/* A24C4 800B1CC4 C0FA8424 */   addiu     $a0, $a0, %lo(D_800CFAC0)
/* A24C8 800B1CC8 216E000C */  jal        FUN_8001b884
/* A24CC 800B1CCC 00000000 */   nop
/* A24D0 800B1CD0 2545030C */  jal        FUN_800d1494
/* A24D4 800B1CD4 00000000 */   nop
/* A24D8 800B1CD8 56004014 */  bnez       $v0, .L800B1E34
/* A24DC 800B1CDC FFFF0224 */   addiu     $v0, $zero, -1
/* A24E0 800B1CE0 584A030C */  jal        FUN_800d2960
/* A24E4 800B1CE4 84050424 */   addiu     $a0, $zero, 0x584
/* A24E8 800B1CE8 52004014 */  bnez       $v0, .L800B1E34
/* A24EC 800B1CEC FFFF0224 */   addiu     $v0, $zero, -1
/* A24F0 800B1CF0 21802002 */  addu       $s0, $s1, $zero
/* A24F4 800B1CF4 43C70208 */  j          .L800B1D0C
/* A24F8 800B1CF8 F6FF1124 */   addiu     $s1, $zero, -0xa
.L800B1CFC:
/* A24FC 800B1CFC 4D005114 */  bne        $v0, $s1, .L800B1E34
/* A2500 800B1D00 FFFF0224 */   addiu     $v0, $zero, -1
/* A2504 800B1D04 7CAA000C */  jal        vsync_8002a9f0
/* A2508 800B1D08 00000000 */   nop
.L800B1D0C:
/* A250C 800B1D0C 9E44030C */  jal        FUN_800d1278
/* A2510 800B1D10 00000000 */   nop
/* A2514 800B1D14 F9FF4014 */  bnez       $v0, .L800B1CFC
/* A2518 800B1D18 040002AE */   sw        $v0, 4($s0)
/* A251C 800B1D1C 3D004016 */  bnez       $s2, .L800B1E14
/* A2520 800B1D20 1D80043C */   lui       $a0, 0x801d
/* A2524 800B1D24 18329026 */  addiu      $s0, $s4, 0x3218
/* A2528 800B1D28 21200002 */  addu       $a0, $s0, $zero
/* A252C 800B1D2C 21280000 */  addu       $a1, $zero, $zero
/* A2530 800B1D30 F6A2000C */  jal        memset
/* A2534 800B1D34 14C00634 */   ori       $a2, $zero, 0xc014
/* A2538 800B1D38 1D80023C */  lui        $v0, %hi(D_801D2CBC)
/* A253C 800B1D3C 1D80033C */  lui        $v1, 0x801d
/* A2540 800B1D40 1D80043C */  lui        $a0, 0x801d
/* A2544 800B1D44 100013AE */  sw         $s3, 0x10($s0)
/* A2548 800B1D48 BC2C40AC */  sw         $zero, %lo(D_801D2CBC)($v0)
/* A254C 800B1D4C 1D80023C */  lui        $v0, %hi(D_801D2CC8)
/* A2550 800B1D50 C82C4224 */  addiu      $v0, $v0, %lo(D_801D2CC8)
/* A2554 800B1D54 B82C60AC */  sw         $zero, 0x2cb8($v1)
/* A2558 800B1D58 1D6E000C */  jal        FUN_8001b874
/* A255C 800B1D5C 082E82AC */   sw        $v0, 0x2e08($a0)
/* A2560 800B1D60 C3C2020C */  jal        FUN_800b0b0c
/* A2564 800B1D64 1D80103C */   lui       $s0, 0x801d
/* A2568 800B1D68 0B80043C */  lui        $a0, %hi(func_800B1B14)
/* A256C 800B1D6C 141B8424 */  addiu      $a0, $a0, %lo(func_800B1B14)
/* A2570 800B1D70 1D80053C */  lui        $a1, %hi(D_801D3214)
/* A2574 800B1D74 1432A524 */  addiu      $a1, $a1, %lo(D_801D3214)
/* A2578 800B1D78 BBC2020C */  jal        OpenTh
/* A257C 800B1D7C 21304000 */   addu      $a2, $v0, $zero
/* A2580 800B1D80 216E000C */  jal        FUN_8001b884
/* A2584 800B1D84 0C2E02AE */   sw        $v0, 0x2e0c($s0)
/* A2588 800B1D88 0C2E038E */  lw         $v1, 0x2e0c($s0)
/* A258C 800B1D8C FFFF0224 */  addiu      $v0, $zero, -1
/* A2590 800B1D90 0A006210 */  beq        $v1, $v0, .L800B1DBC
/* A2594 800B1D94 FFFF0524 */   addiu     $a1, $zero, -1
/* A2598 800B1D98 21280000 */  addu       $a1, $zero, $zero
/* A259C 800B1D9C FFFF6330 */  andi       $v1, $v1, 0xffff
/* A25A0 800B1DA0 40100300 */  sll        $v0, $v1, 1
/* A25A4 800B1DA4 21104300 */  addu       $v0, $v0, $v1
/* A25A8 800B1DA8 80110200 */  sll        $v0, $v0, 6
/* A25AC 800B1DAC 1001048C */  lw         $a0, 0x110($zero)
/* A25B0 800B1DB0 04040324 */  addiu      $v1, $zero, 0x404
/* A25B4 800B1DB4 21104400 */  addu       $v0, $v0, $a0
/* A25B8 800B1DB8 940043AC */  sw         $v1, 0x94($v0)
.L800B1DBC:
/* A25BC 800B1DBC FFFF1124 */  addiu      $s1, $zero, -1
/* A25C0 800B1DC0 1C00B110 */  beq        $a1, $s1, .L800B1E34
/* A25C4 800B1DC4 FFFF0224 */   addiu     $v0, $zero, -1
/* A25C8 800B1DC8 1D6E000C */  jal        FUN_8001b874
/* A25CC 800B1DCC 18329026 */   addiu     $s0, $s4, 0x3218
/* A25D0 800B1DD0 00F3043C */  lui        $a0, 0xf300
/* A25D4 800B1DD4 00018434 */  ori        $a0, $a0, 0x100
/* A25D8 800B1DD8 01000524 */  addiu      $a1, $zero, 1
/* A25DC 800B1DDC 00100624 */  addiu      $a2, $zero, 0x1000
/* A25E0 800B1DE0 2DBB000C */  jal        OpenEvent
/* A25E4 800B1DE4 21386002 */   addu      $a3, $s3, $zero
/* A25E8 800B1DE8 216E000C */  jal        FUN_8001b884
/* A25EC 800B1DEC 0C0002AE */   sw        $v0, 0xc($s0)
/* A25F0 800B1DF0 0C00048E */  lw         $a0, 0xc($s0)
/* A25F4 800B1DF4 00000000 */  nop
/* A25F8 800B1DF8 03009114 */  bne        $a0, $s1, .L800B1E08
/* A25FC 800B1DFC 00000000 */   nop
.L800B1E00:
/* A2600 800B1E00 8DC70208 */  j          .L800B1E34
/* A2604 800B1E04 FFFF0224 */   addiu     $v0, $zero, -1
.L800B1E08:
/* A2608 800B1E08 31BB000C */  jal        EnableEvent
/* A260C 800B1E0C 00000000 */   nop
/* A2610 800B1E10 1D80043C */  lui        $a0, %hi(D_801D322C)
.L800B1E14:
/* A2614 800B1E14 2C328424 */  addiu      $a0, $a0, %lo(D_801D322C)
/* A2618 800B1E18 00608524 */  addiu      $a1, $a0, 0x6000
/* A261C 800B1E1C 5846030C */  jal        FUN_800d1960
/* A2620 800B1E20 00600624 */   addiu     $a2, $zero, 0x6000
/* A2624 800B1E24 21184000 */  addu       $v1, $v0, $zero
/* A2628 800B1E28 02006014 */  bnez       $v1, .L800B1E34
/* A262C 800B1E2C FFFF0224 */   addiu     $v0, $zero, -1
/* A2630 800B1E30 21100000 */  addu       $v0, $zero, $zero
.L800B1E34:
/* A2634 800B1E34 2400BF8F */  lw         $ra, 0x24($sp)
/* A2638 800B1E38 2000B48F */  lw         $s4, 0x20($sp)
/* A263C 800B1E3C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A2640 800B1E40 1800B28F */  lw         $s2, 0x18($sp)
/* A2644 800B1E44 1400B18F */  lw         $s1, 0x14($sp)
/* A2648 800B1E48 1000B08F */  lw         $s0, 0x10($sp)
/* A264C 800B1E4C 0800E003 */  jr         $ra
/* A2650 800B1E50 2800BD27 */   addiu     $sp, $sp, 0x28

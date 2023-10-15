.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1ae0
/* B22E0 800C1AE0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B22E4 800C1AE4 1F80053C */  lui        $a1, %hi(D_801F71C0)
/* B22E8 800C1AE8 2400B5AF */  sw         $s5, 0x24($sp)
/* B22EC 800C1AEC C071B524 */  addiu      $s5, $a1, %lo(D_801F71C0)
/* B22F0 800C1AF0 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B22F4 800C1AF4 2800B6AF */  sw         $s6, 0x28($sp)
/* B22F8 800C1AF8 2000B4AF */  sw         $s4, 0x20($sp)
/* B22FC 800C1AFC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B2300 800C1B00 1800B2AF */  sw         $s2, 0x18($sp)
/* B2304 800C1B04 1400B1AF */  sw         $s1, 0x14($sp)
/* B2308 800C1B08 1000B0AF */  sw         $s0, 0x10($sp)
/* B230C 800C1B0C 0E01A392 */  lbu        $v1, 0x10e($s5)
/* B2310 800C1B10 0C00A426 */  addiu      $a0, $s5, 0xc
/* B2314 800C1B14 40100300 */  sll        $v0, $v1, 1
/* B2318 800C1B18 21104300 */  addu       $v0, $v0, $v1
/* B231C 800C1B1C 00190200 */  sll        $v1, $v0, 4
/* B2320 800C1B20 23186200 */  subu       $v1, $v1, $v0
/* B2324 800C1B24 C071A28C */  lw         $v0, 0x71c0($a1)
/* B2328 800C1B28 80180300 */  sll        $v1, $v1, 2
/* B232C 800C1B2C 3B06030C */  jal        FUN_800c18ec
/* B2330 800C1B30 21884300 */   addu      $s1, $v0, $v1
/* B2334 800C1B34 21904000 */  addu       $s2, $v0, $zero
/* B2338 800C1B38 4500401E */  bgtz       $s2, .L800C1C50
/* B233C 800C1B3C FBFF1024 */   addiu     $s0, $zero, -5
/* B2340 800C1B40 09005016 */  bne        $s2, $s0, .L800C1B68
/* B2344 800C1B44 00000000 */   nop
/* B2348 800C1B48 CD6B000C */  jal        VSync
/* B234C 800C1B4C FFFF0424 */   addiu     $a0, $zero, -1
/* B2350 800C1B50 0400A38E */  lw         $v1, 4($s5)
/* B2354 800C1B54 00000000 */  nop
/* B2358 800C1B58 23104300 */  subu       $v0, $v0, $v1
/* B235C 800C1B5C 3D004228 */  slti       $v0, $v0, 0x3d
/* B2360 800C1B60 AE004014 */  bnez       $v0, .L800C1E1C
/* B2364 800C1B64 00000000 */   nop
.L800C1B68:
/* B2368 800C1B68 8400228E */  lw         $v0, 0x84($s1)
/* B236C 800C1B6C 00000000 */  nop
/* B2370 800C1B70 01004224 */  addiu      $v0, $v0, 1
/* B2374 800C1B74 840022AE */  sw         $v0, 0x84($s1)
/* B2378 800C1B78 FCFF0224 */  addiu      $v0, $zero, -4
/* B237C 800C1B7C 0C004216 */  bne        $s2, $v0, .L800C1BB0
/* B2380 800C1B80 0F01A0A2 */   sb        $zero, 0x10f($s5)
/* B2384 800C1B84 08002426 */  addiu      $a0, $s1, 8
/* B2388 800C1B88 FFFF0624 */  addiu      $a2, $zero, -1
/* B238C 800C1B8C 8800228E */  lw         $v0, 0x88($s1)
/* B2390 800C1B90 0800258E */  lw         $a1, 8($s1)
/* B2394 800C1B94 01004224 */  addiu      $v0, $v0, 1
/* B2398 800C1B98 1F0A030C */  jal        FUN_800c287c
/* B239C 800C1B9C 880022AE */   sw        $v0, 0x88($s1)
/* B23A0 800C1BA0 6D0A030C */  jal        FUN_800c29b4
/* B23A4 800C1BA4 21202002 */   addu      $a0, $s1, $zero
/* B23A8 800C1BA8 87070308 */  j          .L800C1E1C
/* B23AC 800C1BAC 00000000 */   nop
.L800C1BB0:
/* B23B0 800C1BB0 06004016 */  bnez       $s2, .L800C1BCC
/* B23B4 800C1BB4 00000000 */   nop
/* B23B8 800C1BB8 8C00228E */  lw         $v0, 0x8c($s1)
/* B23BC 800C1BBC 00000000 */  nop
/* B23C0 800C1BC0 01004224 */  addiu      $v0, $v0, 1
/* B23C4 800C1BC4 0C070308 */  j          .L800C1C30
/* B23C8 800C1BC8 8C0022AE */   sw        $v0, 0x8c($s1)
.L800C1BCC:
/* B23CC 800C1BCC 06005016 */  bne        $s2, $s0, .L800C1BE8
/* B23D0 800C1BD0 FEFF0224 */   addiu     $v0, $zero, -2
/* B23D4 800C1BD4 9000228E */  lw         $v0, 0x90($s1)
/* B23D8 800C1BD8 00000000 */  nop
/* B23DC 800C1BDC 01004224 */  addiu      $v0, $v0, 1
/* B23E0 800C1BE0 0C070308 */  j          .L800C1C30
/* B23E4 800C1BE4 900022AE */   sw        $v0, 0x90($s1)
.L800C1BE8:
/* B23E8 800C1BE8 06004216 */  bne        $s2, $v0, .L800C1C04
/* B23EC 800C1BEC FDFF0224 */   addiu     $v0, $zero, -3
/* B23F0 800C1BF0 9400228E */  lw         $v0, 0x94($s1)
/* B23F4 800C1BF4 00000000 */  nop
/* B23F8 800C1BF8 01004224 */  addiu      $v0, $v0, 1
/* B23FC 800C1BFC 0C070308 */  j          .L800C1C30
/* B2400 800C1C00 940022AE */   sw        $v0, 0x94($s1)
.L800C1C04:
/* B2404 800C1C04 06004216 */  bne        $s2, $v0, .L800C1C20
/* B2408 800C1C08 00000000 */   nop
/* B240C 800C1C0C 9800228E */  lw         $v0, 0x98($s1)
/* B2410 800C1C10 00000000 */  nop
/* B2414 800C1C14 01004224 */  addiu      $v0, $v0, 1
/* B2418 800C1C18 0C070308 */  j          .L800C1C30
/* B241C 800C1C1C 980022AE */   sw        $v0, 0x98($s1)
.L800C1C20:
/* B2420 800C1C20 9C00228E */  lw         $v0, 0x9c($s1)
/* B2424 800C1C24 00000000 */  nop
/* B2428 800C1C28 01004224 */  addiu      $v0, $v0, 1
/* B242C 800C1C2C 9C0022AE */  sw         $v0, 0x9c($s1)
.L800C1C30:
/* B2430 800C1C30 A000228E */  lw         $v0, 0xa0($s1)
/* B2434 800C1C34 21200000 */  addu       $a0, $zero, $zero
/* B2438 800C1C38 01004224 */  addiu      $v0, $v0, 1
/* B243C 800C1C3C 7E05030C */  jal        FUN_800c15f8
/* B2440 800C1C40 A00022AE */   sw        $v0, 0xa0($s1)
/* B2444 800C1C44 02000224 */  addiu      $v0, $zero, 2
/* B2448 800C1C48 87070308 */  j          .L800C1E1C
/* B244C 800C1C4C 0F01A2A2 */   sb        $v0, 0x10f($s5)
.L800C1C50:
/* B2450 800C1C50 0F01A0A2 */  sb         $zero, 0x10f($s5)
/* B2454 800C1C54 8000228E */  lw         $v0, 0x80($s1)
/* B2458 800C1C58 0800308E */  lw         $s0, 8($s1)
/* B245C 800C1C5C 01004224 */  addiu      $v0, $v0, 1
/* B2460 800C1C60 800022AE */  sw         $v0, 0x80($s1)
/* B2464 800C1C64 0C00A392 */  lbu        $v1, 0xc($s5)
/* B2468 800C1C68 06000012 */  beqz       $s0, .L800C1C84
/* B246C 800C1C6C 21B04002 */   addu      $s6, $s2, $zero
.L800C1C70:
/* B2470 800C1C70 2D0003A2 */  sb         $v1, 0x2d($s0)
/* B2474 800C1C74 0000108E */  lw         $s0, ($s0)
/* B2478 800C1C78 00000000 */  nop
/* B247C 800C1C7C FCFF0016 */  bnez       $s0, .L800C1C70
/* B2480 800C1C80 00000000 */   nop
.L800C1C84:
/* B2484 800C1C84 03000224 */  addiu      $v0, $zero, 3
/* B2488 800C1C88 0E006214 */  bne        $v1, $v0, .L800C1CC4
/* B248C 800C1C8C 08002426 */   addiu     $a0, $s1, 8
/* B2490 800C1C90 FFFF0624 */  addiu      $a2, $zero, -1
/* B2494 800C1C94 A800228E */  lw         $v0, 0xa8($s1)
/* B2498 800C1C98 0800258E */  lw         $a1, 8($s1)
/* B249C 800C1C9C 01004224 */  addiu      $v0, $v0, 1
/* B24A0 800C1CA0 1F0A030C */  jal        FUN_800c287c
/* B24A4 800C1CA4 A80022AE */   sw        $v0, 0xa8($s1)
/* B24A8 800C1CA8 6D0A030C */  jal        FUN_800c29b4
/* B24AC 800C1CAC 21202002 */   addu      $a0, $s1, $zero
/* B24B0 800C1CB0 8400228E */  lw         $v0, 0x84($s1)
/* B24B4 800C1CB4 00000000 */  nop
/* B24B8 800C1CB8 01004224 */  addiu      $v0, $v0, 1
/* B24BC 800C1CBC 87070308 */  j          .L800C1E1C
/* B24C0 800C1CC0 840022AE */   sw        $v0, 0x84($s1)
.L800C1CC4:
/* B24C4 800C1CC4 0800308E */  lw         $s0, 8($s1)
/* B24C8 800C1CC8 00000000 */  nop
/* B24CC 800C1CCC 46000012 */  beqz       $s0, .L800C1DE8
/* B24D0 800C1CD0 01001224 */   addiu     $s2, $zero, 1
.L800C1CD4:
/* B24D4 800C1CD4 2310D202 */  subu       $v0, $s6, $s2
/* B24D8 800C1CD8 FFFF5324 */  addiu      $s3, $v0, -1
/* B24DC 800C1CDC 2D006006 */  bltz       $s3, .L800C1D94
/* B24E0 800C1CE0 21A00000 */   addu      $s4, $zero, $zero
/* B24E4 800C1CE4 2110B202 */  addu       $v0, $s5, $s2
/* B24E8 800C1CE8 0C004290 */  lbu        $v0, 0xc($v0)
/* B24EC 800C1CEC 00000000 */  nop
/* B24F0 800C1CF0 FF004330 */  andi       $v1, $v0, 0xff
/* B24F4 800C1CF4 2E0002A2 */  sb         $v0, 0x2e($s0)
/* B24F8 800C1CF8 01000224 */  addiu      $v0, $zero, 1
/* B24FC 800C1CFC 04006210 */  beq        $v1, $v0, .L800C1D10
/* B2500 800C1D00 01005226 */   addiu     $s2, $s2, 1
/* B2504 800C1D04 03000224 */  addiu      $v0, $zero, 3
/* B2508 800C1D08 1F006214 */  bne        $v1, $v0, .L800C1D88
/* B250C 800C1D0C 00000000 */   nop
.L800C1D10:
/* B2510 800C1D10 0800028E */  lw         $v0, 8($s0)
/* B2514 800C1D14 00000000 */  nop
/* B2518 800C1D18 05004010 */  beqz       $v0, .L800C1D30
/* B251C 800C1D1C 21200002 */   addu      $a0, $s0, $zero
/* B2520 800C1D20 0C004526 */  addiu      $a1, $s2, 0xc
/* B2524 800C1D24 2128A502 */  addu       $a1, $s5, $a1
/* B2528 800C1D28 09F84000 */  jalr       $v0
/* B252C 800C1D2C 21306002 */   addu      $a2, $s3, $zero
.L800C1D30:
/* B2530 800C1D30 2A000392 */  lbu        $v1, 0x2a($s0)
/* B2534 800C1D34 00000000 */  nop
/* B2538 800C1D38 2A106302 */  slt        $v0, $s3, $v1
/* B253C 800C1D3C 10004014 */  bnez       $v0, .L800C1D80
/* B2540 800C1D40 21106000 */   addu      $v0, $v1, $zero
/* B2544 800C1D44 11004010 */  beqz       $v0, .L800C1D8C
/* B2548 800C1D48 00000000 */   nop
/* B254C 800C1D4C 2B000492 */  lbu        $a0, 0x2b($s0)
/* B2550 800C1D50 00000000 */  nop
/* B2554 800C1D54 2B108200 */  sltu       $v0, $a0, $v0
/* B2558 800C1D58 02004010 */  beqz       $v0, .L800C1D64
/* B255C 800C1D5C 21A06000 */   addu      $s4, $v1, $zero
/* B2560 800C1D60 2A0004A2 */  sb         $a0, 0x2a($s0)
.L800C1D64:
/* B2564 800C1D64 21285502 */  addu       $a1, $s2, $s5
/* B2568 800C1D68 1C00048E */  lw         $a0, 0x1c($s0)
/* B256C 800C1D6C 2A000692 */  lbu        $a2, 0x2a($s0)
/* B2570 800C1D70 BD6B000C */  jal        memcpy
/* B2574 800C1D74 0C00A524 */   addiu     $a1, $a1, 0xc
/* B2578 800C1D78 63070308 */  j          .L800C1D8C
/* B257C 800C1D7C 00000000 */   nop
.L800C1D80:
/* B2580 800C1D80 63070308 */  j          .L800C1D8C
/* B2584 800C1D84 FFFF1324 */   addiu     $s3, $zero, -1
.L800C1D88:
/* B2588 800C1D88 2A0000A2 */  sb         $zero, 0x2a($s0)
.L800C1D8C:
/* B258C 800C1D8C 12006106 */  bgez       $s3, .L800C1DD8
/* B2590 800C1D90 00000000 */   nop
.L800C1D94:
/* B2594 800C1D94 AC00228E */  lw         $v0, 0xac($s1)
/* B2598 800C1D98 21180002 */  addu       $v1, $s0, $zero
/* B259C 800C1D9C 01004224 */  addiu      $v0, $v0, 1
/* B25A0 800C1DA0 07000012 */  beqz       $s0, .L800C1DC0
/* B25A4 800C1DA4 AC0022AE */   sw        $v0, 0xac($s1)
.L800C1DA8:
/* B25A8 800C1DA8 2F0060A0 */  sb         $zero, 0x2f($v1)
/* B25AC 800C1DAC 2A0060A0 */  sb         $zero, 0x2a($v1)
/* B25B0 800C1DB0 0000638C */  lw         $v1, ($v1)
/* B25B4 800C1DB4 00000000 */  nop
/* B25B8 800C1DB8 FBFF6014 */  bnez       $v1, .L800C1DA8
/* B25BC 800C1DBC 00000000 */   nop
.L800C1DC0:
/* B25C0 800C1DC0 08002426 */  addiu      $a0, $s1, 8
/* B25C4 800C1DC4 21280002 */  addu       $a1, $s0, $zero
/* B25C8 800C1DC8 1F0A030C */  jal        FUN_800c287c
/* B25CC 800C1DCC FFFF0624 */   addiu     $a2, $zero, -1
/* B25D0 800C1DD0 7B070308 */  j          .L800C1DEC
/* B25D4 800C1DD4 2A105602 */   slt       $v0, $s2, $s6
.L800C1DD8:
/* B25D8 800C1DD8 0000108E */  lw         $s0, ($s0)
/* B25DC 800C1DDC 00000000 */  nop
/* B25E0 800C1DE0 BCFF0016 */  bnez       $s0, .L800C1CD4
/* B25E4 800C1DE4 21905402 */   addu      $s2, $s2, $s4
.L800C1DE8:
/* B25E8 800C1DE8 2A105602 */  slt        $v0, $s2, $s6
.L800C1DEC:
/* B25EC 800C1DEC 05004010 */  beqz       $v0, .L800C1E04
/* B25F0 800C1DF0 00000000 */   nop
/* B25F4 800C1DF4 B000228E */  lw         $v0, 0xb0($s1)
/* B25F8 800C1DF8 00000000 */  nop
/* B25FC 800C1DFC 01004224 */  addiu      $v0, $v0, 1
/* B2600 800C1E00 B00022AE */  sw         $v0, 0xb0($s1)
.L800C1E04:
/* B2604 800C1E04 08002426 */  addiu      $a0, $s1, 8
/* B2608 800C1E08 0800258E */  lw         $a1, 8($s1)
/* B260C 800C1E0C 1F0A030C */  jal        FUN_800c287c
/* B2610 800C1E10 21300000 */   addu      $a2, $zero, $zero
/* B2614 800C1E14 6B0A030C */  jal        FUN_800c29ac
/* B2618 800C1E18 21202002 */   addu      $a0, $s1, $zero
.L800C1E1C:
/* B261C 800C1E1C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B2620 800C1E20 2800B68F */  lw         $s6, 0x28($sp)
/* B2624 800C1E24 2400B58F */  lw         $s5, 0x24($sp)
/* B2628 800C1E28 2000B48F */  lw         $s4, 0x20($sp)
/* B262C 800C1E2C 1C00B38F */  lw         $s3, 0x1c($sp)
/* B2630 800C1E30 1800B28F */  lw         $s2, 0x18($sp)
/* B2634 800C1E34 1400B18F */  lw         $s1, 0x14($sp)
/* B2638 800C1E38 1000B08F */  lw         $s0, 0x10($sp)
/* B263C 800C1E3C 0800E003 */  jr         $ra
/* B2640 800C1E40 3000BD27 */   addiu     $sp, $sp, 0x30

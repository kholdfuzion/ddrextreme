.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d1960
/* C2160 800D1960 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C2164 800D1964 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C2168 800D1968 21988000 */  addu       $s3, $a0, $zero
/* C216C 800D196C 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2170 800D1970 10BD4724 */  addiu      $a3, $v0, %lo(D_801FBD10)
/* C2174 800D1974 3800B6AF */  sw         $s6, 0x38($sp)
/* C2178 800D1978 21B0A000 */  addu       $s6, $a1, $zero
/* C217C 800D197C 3400B5AF */  sw         $s5, 0x34($sp)
/* C2180 800D1980 21A8C000 */  addu       $s5, $a2, $zero
/* C2184 800D1984 2118D502 */  addu       $v1, $s6, $s5
/* C2188 800D1988 3C00BFAF */  sw         $ra, 0x3c($sp)
/* C218C 800D198C 3000B4AF */  sw         $s4, 0x30($sp)
/* C2190 800D1990 2800B2AF */  sw         $s2, 0x28($sp)
/* C2194 800D1994 2400B1AF */  sw         $s1, 0x24($sp)
/* C2198 800D1998 2000B0AF */  sw         $s0, 0x20($sp)
/* C219C 800D199C DF11E490 */  lbu        $a0, 0x11df($a3)
/* C21A0 800D19A0 21A04000 */  addu       $s4, $v0, $zero
/* C21A4 800D19A4 3812F3AC */  sw         $s3, 0x1238($a3)
/* C21A8 800D19A8 3C12F6AC */  sw         $s6, 0x123c($a3)
/* C21AC 800D19AC 3412F5AC */  sw         $s5, 0x1234($a3)
/* C21B0 800D19B0 03008010 */  beqz       $a0, .L800D19C0
/* C21B4 800D19B4 4012E3AC */   sw        $v1, 0x1240($a3)
/* C21B8 800D19B8 89460308 */  j          .L800D1A24
/* C21BC 800D19BC FBFF0224 */   addiu     $v0, $zero, -5
.L800D19C0:
/* C21C0 800D19C0 21200000 */  addu       $a0, $zero, $zero
/* C21C4 800D19C4 1000A527 */  addiu      $a1, $sp, 0x10
/* C21C8 800D19C8 A8000224 */  addiu      $v0, $zero, 0xa8
/* C21CC 800D19CC 1000A2A3 */  sb         $v0, 0x10($sp)
/* C21D0 800D19D0 10000224 */  addiu      $v0, $zero, 0x10
/* C21D4 800D19D4 1500A2A3 */  sb         $v0, 0x15($sp)
/* C21D8 800D19D8 01000224 */  addiu      $v0, $zero, 1
/* C21DC 800D19DC 1900A2A3 */  sb         $v0, 0x19($sp)
/* C21E0 800D19E0 02000224 */  addiu      $v0, $zero, 2
/* C21E4 800D19E4 1100A0A3 */  sb         $zero, 0x11($sp)
/* C21E8 800D19E8 1200A0A3 */  sb         $zero, 0x12($sp)
/* C21EC 800D19EC 1300A0A3 */  sb         $zero, 0x13($sp)
/* C21F0 800D19F0 1400A0A3 */  sb         $zero, 0x14($sp)
/* C21F4 800D19F4 1600A0A3 */  sb         $zero, 0x16($sp)
/* C21F8 800D19F8 1700A0A3 */  sb         $zero, 0x17($sp)
/* C21FC 800D19FC 1800A0A3 */  sb         $zero, 0x18($sp)
/* C2200 800D1A00 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C2204 800D1A04 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C2208 800D1A08 DF11E2A0 */  sb         $v0, 0x11df($a3)
/* C220C 800D1A0C 00080224 */  addiu      $v0, $zero, 0x800
/* C2210 800D1A10 E011F3AC */  sw         $s3, 0x11e0($a3)
/* C2214 800D1A14 E411E2AC */  sw         $v0, 0x11e4($a3)
/* C2218 800D1A18 E811E0AC */  sw         $zero, 0x11e8($a3)
/* C221C 800D1A1C AC41030C */  jal        FUN_800d06b0
/* C2220 800D1A20 00000000 */   nop
.L800D1A24:
/* C2224 800D1A24 DF004014 */  bnez       $v0, .L800D1DA4
/* C2228 800D1A28 00000000 */   nop
/* C222C 800D1A2C CD6B000C */  jal        VSync
/* C2230 800D1A30 FFFF0424 */   addiu     $a0, $zero, -1
/* C2234 800D1A34 21804000 */  addu       $s0, $v0, $zero
/* C2238 800D1A38 98460308 */  j          .L800D1A60
/* C223C 800D1A3C F6FF1124 */   addiu     $s1, $zero, -0xa
.L800D1A40:
/* C2240 800D1A40 CD6B000C */  jal        VSync
/* C2244 800D1A44 FFFF0424 */   addiu     $a0, $zero, -1
/* C2248 800D1A48 23105000 */  subu       $v0, $v0, $s0
/* C224C 800D1A4C E1014228 */  slti       $v0, $v0, 0x1e1
/* C2250 800D1A50 D4004010 */  beqz       $v0, .L800D1DA4
/* C2254 800D1A54 F8FF0224 */   addiu     $v0, $zero, -8
/* C2258 800D1A58 4A70000C */  jal        FUN_8001c128
/* C225C 800D1A5C 00000000 */   nop
.L800D1A60:
/* C2260 800D1A60 9E44030C */  jal        FUN_800d1278
/* C2264 800D1A64 00000000 */   nop
/* C2268 800D1A68 F5FF5110 */  beq        $v0, $s1, .L800D1A40
/* C226C 800D1A6C 00000000 */   nop
/* C2270 800D1A70 CC004014 */  bnez       $v0, .L800D1DA4
/* C2274 800D1A74 21886002 */   addu      $s1, $s3, $zero
/* C2278 800D1A78 00002392 */  lbu        $v1, ($s1)
/* C227C 800D1A7C 01000224 */  addiu      $v0, $zero, 1
/* C2280 800D1A80 C8006214 */  bne        $v1, $v0, .L800D1DA4
/* C2284 800D1A84 F5FF0224 */   addiu     $v0, $zero, -0xb
/* C2288 800D1A88 01002426 */  addiu      $a0, $s1, 1
/* C228C 800D1A8C 0180053C */  lui        $a1, %hi(D_80017B10)
/* C2290 800D1A90 107BA524 */  addiu      $a1, $a1, %lo(D_80017B10)
/* C2294 800D1A94 35BB000C */  jal        strncmp
/* C2298 800D1A98 05000624 */   addiu     $a2, $zero, 5
/* C229C 800D1A9C C1004014 */  bnez       $v0, .L800D1DA4
/* C22A0 800D1AA0 F5FF0224 */   addiu     $v0, $zero, -0xb
/* C22A4 800D1AA4 10BD8726 */  addiu      $a3, $s4, -0x42f0
/* C22A8 800D1AA8 85002292 */  lbu        $v0, 0x85($s1)
/* C22AC 800D1AAC 84002392 */  lbu        $v1, 0x84($s1)
/* C22B0 800D1AB0 00120200 */  sll        $v0, $v0, 8
/* C22B4 800D1AB4 25186200 */  or         $v1, $v1, $v0
/* C22B8 800D1AB8 3012E3A4 */  sh         $v1, 0x1230($a3)
/* C22BC 800D1ABC 8D002292 */  lbu        $v0, 0x8d($s1)
/* C22C0 800D1AC0 8C002492 */  lbu        $a0, 0x8c($s1)
/* C22C4 800D1AC4 8E002392 */  lbu        $v1, 0x8e($s1)
/* C22C8 800D1AC8 00120200 */  sll        $v0, $v0, 8
/* C22CC 800D1ACC 25208200 */  or         $a0, $a0, $v0
/* C22D0 800D1AD0 001C0300 */  sll        $v1, $v1, 0x10
/* C22D4 800D1AD4 8F002292 */  lbu        $v0, 0x8f($s1)
/* C22D8 800D1AD8 25208300 */  or         $a0, $a0, $v1
/* C22DC 800D1ADC 00160200 */  sll        $v0, $v0, 0x18
/* C22E0 800D1AE0 25308200 */  or         $a2, $a0, $v0
/* C22E4 800D1AE4 AE00C010 */  beqz       $a2, .L800D1DA0
/* C22E8 800D1AE8 2C12E6AC */   sw        $a2, 0x122c($a3)
/* C22EC 800D1AEC 3012E294 */  lhu        $v0, 0x1230($a3)
/* C22F0 800D1AF0 DF11E390 */  lbu        $v1, 0x11df($a3)
/* C22F4 800D1AF4 C2120200 */  srl        $v0, $v0, 0xb
/* C22F8 800D1AF8 03006010 */  beqz       $v1, .L800D1B08
/* C22FC 800D1AFC 01004824 */   addiu     $t0, $v0, 1
/* C2300 800D1B00 DC460308 */  j          .L800D1B70
/* C2304 800D1B04 FBFF0224 */   addiu     $v0, $zero, -5
.L800D1B08:
/* C2308 800D1B08 21200000 */  addu       $a0, $zero, $zero
/* C230C 800D1B0C 1000A527 */  addiu      $a1, $sp, 0x10
/* C2310 800D1B10 A8000224 */  addiu      $v0, $zero, 0xa8
/* C2314 800D1B14 1000A2A3 */  sb         $v0, 0x10($sp)
/* C2318 800D1B18 02160600 */  srl        $v0, $a2, 0x18
/* C231C 800D1B1C 021C0600 */  srl        $v1, $a2, 0x10
/* C2320 800D1B20 1200A2A3 */  sb         $v0, 0x12($sp)
/* C2324 800D1B24 02120600 */  srl        $v0, $a2, 8
/* C2328 800D1B28 1400A2A3 */  sb         $v0, 0x14($sp)
/* C232C 800D1B2C 02000224 */  addiu      $v0, $zero, 2
/* C2330 800D1B30 1100A0A3 */  sb         $zero, 0x11($sp)
/* C2334 800D1B34 1300A3A3 */  sb         $v1, 0x13($sp)
/* C2338 800D1B38 1500A6A3 */  sb         $a2, 0x15($sp)
/* C233C 800D1B3C 1600A0A3 */  sb         $zero, 0x16($sp)
/* C2340 800D1B40 1700A0A3 */  sb         $zero, 0x17($sp)
/* C2344 800D1B44 1800A0A3 */  sb         $zero, 0x18($sp)
/* C2348 800D1B48 1900A8A3 */  sb         $t0, 0x19($sp)
/* C234C 800D1B4C 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C2350 800D1B50 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C2354 800D1B54 DF11E2A0 */  sb         $v0, 0x11df($a3)
/* C2358 800D1B58 C0120800 */  sll        $v0, $t0, 0xb
/* C235C 800D1B5C E011F1AC */  sw         $s1, 0x11e0($a3)
/* C2360 800D1B60 E411E2AC */  sw         $v0, 0x11e4($a3)
/* C2364 800D1B64 E811E0AC */  sw         $zero, 0x11e8($a3)
/* C2368 800D1B68 AC41030C */  jal        FUN_800d06b0
/* C236C 800D1B6C 00000000 */   nop
.L800D1B70:
/* C2370 800D1B70 8C004014 */  bnez       $v0, .L800D1DA4
/* C2374 800D1B74 00000000 */   nop
/* C2378 800D1B78 CD6B000C */  jal        VSync
/* C237C 800D1B7C FFFF0424 */   addiu     $a0, $zero, -1
/* C2380 800D1B80 21804000 */  addu       $s0, $v0, $zero
/* C2384 800D1B84 EB460308 */  j          .L800D1BAC
/* C2388 800D1B88 F6FF1224 */   addiu     $s2, $zero, -0xa
.L800D1B8C:
/* C238C 800D1B8C CD6B000C */  jal        VSync
/* C2390 800D1B90 FFFF0424 */   addiu     $a0, $zero, -1
/* C2394 800D1B94 23105000 */  subu       $v0, $v0, $s0
/* C2398 800D1B98 E1014228 */  slti       $v0, $v0, 0x1e1
/* C239C 800D1B9C 81004010 */  beqz       $v0, .L800D1DA4
/* C23A0 800D1BA0 F8FF0224 */   addiu     $v0, $zero, -8
/* C23A4 800D1BA4 4A70000C */  jal        FUN_8001c128
/* C23A8 800D1BA8 00000000 */   nop
.L800D1BAC:
/* C23AC 800D1BAC 9E44030C */  jal        FUN_800d1278
/* C23B0 800D1BB0 00000000 */   nop
/* C23B4 800D1BB4 F5FF5210 */  beq        $v0, $s2, .L800D1B8C
/* C23B8 800D1BB8 00000000 */   nop
/* C23BC 800D1BBC 79004014 */  bnez       $v0, .L800D1DA4
/* C23C0 800D1BC0 10BD9226 */   addiu     $s2, $s4, -0x42f0
/* C23C4 800D1BC4 00006392 */  lbu        $v1, ($s3)
/* C23C8 800D1BC8 02470308 */  j          .L800D1C08
/* C23CC 800D1BCC 1A125026 */   addiu     $s0, $s2, 0x121a
.L800D1BD0:
/* C23D0 800D1BD0 10124490 */  lbu        $a0, 0x1210($v0)
/* C23D4 800D1BD4 01000224 */  addiu      $v0, $zero, 1
/* C23D8 800D1BD8 01008330 */  andi       $v1, $a0, 1
/* C23DC 800D1BDC 03006214 */  bne        $v1, $v0, .L800D1BEC
/* C23E0 800D1BE0 21102402 */   addu      $v0, $s1, $a0
/* C23E4 800D1BE4 FC460308 */  j          .L800D1BF0
/* C23E8 800D1BE8 09005124 */   addiu     $s1, $v0, 9
.L800D1BEC:
/* C23EC 800D1BEC 08005124 */  addiu      $s1, $v0, 8
.L800D1BF0:
/* C23F0 800D1BF0 00002292 */  lbu        $v0, ($s1)
/* C23F4 800D1BF4 00000000 */  nop
/* C23F8 800D1BF8 69004010 */  beqz       $v0, .L800D1DA0
/* C23FC 800D1BFC 21184000 */   addu      $v1, $v0, $zero
/* C2400 800D1C00 10BD9226 */  addiu      $s2, $s4, -0x42f0
/* C2404 800D1C04 1A125026 */  addiu      $s0, $s2, 0x121a
.L800D1C08:
/* C2408 800D1C08 21200002 */  addu       $a0, $s0, $zero
/* C240C 800D1C0C 101243A2 */  sb         $v1, 0x1210($s2)
/* C2410 800D1C10 01002292 */  lbu        $v0, 1($s1)
/* C2414 800D1C14 10124692 */  lbu        $a2, 0x1210($s2)
/* C2418 800D1C18 08002526 */  addiu      $a1, $s1, 8
/* C241C 800D1C1C 111242A2 */  sb         $v0, 0x1211($s2)
/* C2420 800D1C20 03002392 */  lbu        $v1, 3($s1)
/* C2424 800D1C24 02002292 */  lbu        $v0, 2($s1)
/* C2428 800D1C28 04002792 */  lbu        $a3, 4($s1)
/* C242C 800D1C2C 001A0300 */  sll        $v1, $v1, 8
/* C2430 800D1C30 25104300 */  or         $v0, $v0, $v1
/* C2434 800D1C34 003C0700 */  sll        $a3, $a3, 0x10
/* C2438 800D1C38 05002392 */  lbu        $v1, 5($s1)
/* C243C 800D1C3C 25104700 */  or         $v0, $v0, $a3
/* C2440 800D1C40 001E0300 */  sll        $v1, $v1, 0x18
/* C2444 800D1C44 25104300 */  or         $v0, $v0, $v1
/* C2448 800D1C48 141242AE */  sw         $v0, 0x1214($s2)
/* C244C 800D1C4C 07002392 */  lbu        $v1, 7($s1)
/* C2450 800D1C50 06002292 */  lbu        $v0, 6($s1)
/* C2454 800D1C54 001A0300 */  sll        $v1, $v1, 8
/* C2458 800D1C58 25104300 */  or         $v0, $v0, $v1
/* C245C 800D1C5C 55BB000C */  jal        strncpy
/* C2460 800D1C60 181242A6 */   sh        $v0, 0x1218($s2)
/* C2464 800D1C64 10124392 */  lbu        $v1, 0x1210($s2)
/* C2468 800D1C68 00000000 */  nop
/* C246C 800D1C6C 21187000 */  addu       $v1, $v1, $s0
/* C2470 800D1C70 000060A0 */  sb         $zero, ($v1)
/* C2474 800D1C74 1A124292 */  lbu        $v0, 0x121a($s2)
/* C2478 800D1C78 00000000 */  nop
/* C247C 800D1C7C D4FF4014 */  bnez       $v0, .L800D1BD0
/* C2480 800D1C80 10BD8226 */   addiu     $v0, $s4, -0x42f0
/* C2484 800D1C84 10124392 */  lbu        $v1, 0x1210($s2)
/* C2488 800D1C88 01000224 */  addiu      $v0, $zero, 1
/* C248C 800D1C8C D0FF6214 */  bne        $v1, $v0, .L800D1BD0
/* C2490 800D1C90 10BD8226 */   addiu     $v0, $s4, -0x42f0
/* C2494 800D1C94 18124296 */  lhu        $v0, 0x1218($s2)
/* C2498 800D1C98 00000000 */  nop
/* C249C 800D1C9C CCFF4314 */  bne        $v0, $v1, .L800D1BD0
/* C24A0 800D1CA0 10BD8226 */   addiu     $v0, $s4, -0x42f0
/* C24A4 800D1CA4 2130A002 */  addu       $a2, $s5, $zero
/* C24A8 800D1CA8 0200C104 */  bgez       $a2, .L800D1CB4
/* C24AC 800D1CAC 21184002 */   addu      $v1, $s2, $zero
/* C24B0 800D1CB0 FF07C624 */  addiu      $a2, $a2, 0x7ff
.L800D1CB4:
/* C24B4 800D1CB4 C3320600 */  sra        $a2, $a2, 0xb
/* C24B8 800D1CB8 DF116290 */  lbu        $v0, 0x11df($v1)
/* C24BC 800D1CBC 1412678C */  lw         $a3, 0x1214($v1)
/* C24C0 800D1CC0 1E004014 */  bnez       $v0, .L800D1D3C
/* C24C4 800D1CC4 FBFF0224 */   addiu     $v0, $zero, -5
/* C24C8 800D1CC8 21200000 */  addu       $a0, $zero, $zero
/* C24CC 800D1CCC 1000A527 */  addiu      $a1, $sp, 0x10
/* C24D0 800D1CD0 A8000224 */  addiu      $v0, $zero, 0xa8
/* C24D4 800D1CD4 1000A2A3 */  sb         $v0, 0x10($sp)
/* C24D8 800D1CD8 02160700 */  srl        $v0, $a3, 0x18
/* C24DC 800D1CDC 021C0700 */  srl        $v1, $a3, 0x10
/* C24E0 800D1CE0 1200A2A3 */  sb         $v0, 0x12($sp)
/* C24E4 800D1CE4 02120700 */  srl        $v0, $a3, 8
/* C24E8 800D1CE8 1400A2A3 */  sb         $v0, 0x14($sp)
/* C24EC 800D1CEC 02160600 */  srl        $v0, $a2, 0x18
/* C24F0 800D1CF0 1300A3A3 */  sb         $v1, 0x13($sp)
/* C24F4 800D1CF4 021C0600 */  srl        $v1, $a2, 0x10
/* C24F8 800D1CF8 1600A2A3 */  sb         $v0, 0x16($sp)
/* C24FC 800D1CFC 02120600 */  srl        $v0, $a2, 8
/* C2500 800D1D00 1800A2A3 */  sb         $v0, 0x18($sp)
/* C2504 800D1D04 02000224 */  addiu      $v0, $zero, 2
/* C2508 800D1D08 1100A0A3 */  sb         $zero, 0x11($sp)
/* C250C 800D1D0C 1500A7A3 */  sb         $a3, 0x15($sp)
/* C2510 800D1D10 1700A3A3 */  sb         $v1, 0x17($sp)
/* C2514 800D1D14 1900A6A3 */  sb         $a2, 0x19($sp)
/* C2518 800D1D18 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C251C 800D1D1C 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C2520 800D1D20 DF1142A2 */  sb         $v0, 0x11df($s2)
/* C2524 800D1D24 C0120600 */  sll        $v0, $a2, 0xb
/* C2528 800D1D28 E01156AE */  sw         $s6, 0x11e0($s2)
/* C252C 800D1D2C E41142AE */  sw         $v0, 0x11e4($s2)
/* C2530 800D1D30 E81140AE */  sw         $zero, 0x11e8($s2)
/* C2534 800D1D34 AC41030C */  jal        FUN_800d06b0
/* C2538 800D1D38 00000000 */   nop
.L800D1D3C:
/* C253C 800D1D3C 19004014 */  bnez       $v0, .L800D1DA4
/* C2540 800D1D40 00000000 */   nop
/* C2544 800D1D44 CD6B000C */  jal        VSync
/* C2548 800D1D48 FFFF0424 */   addiu     $a0, $zero, -1
/* C254C 800D1D4C 21804000 */  addu       $s0, $v0, $zero
/* C2550 800D1D50 5E470308 */  j          .L800D1D78
/* C2554 800D1D54 F6FF1124 */   addiu     $s1, $zero, -0xa
.L800D1D58:
/* C2558 800D1D58 CD6B000C */  jal        VSync
/* C255C 800D1D5C FFFF0424 */   addiu     $a0, $zero, -1
/* C2560 800D1D60 23105000 */  subu       $v0, $v0, $s0
/* C2564 800D1D64 E1014228 */  slti       $v0, $v0, 0x1e1
/* C2568 800D1D68 0E004010 */  beqz       $v0, .L800D1DA4
/* C256C 800D1D6C F8FF0224 */   addiu     $v0, $zero, -8
/* C2570 800D1D70 4A70000C */  jal        FUN_8001c128
/* C2574 800D1D74 00000000 */   nop
.L800D1D78:
/* C2578 800D1D78 9E44030C */  jal        FUN_800d1278
/* C257C 800D1D7C 00000000 */   nop
/* C2580 800D1D80 F5FF5110 */  beq        $v0, $s1, .L800D1D58
/* C2584 800D1D84 00000000 */   nop
/* C2588 800D1D88 06004014 */  bnez       $v0, .L800D1DA4
/* C258C 800D1D8C 10BD8326 */   addiu     $v1, $s4, -0x42f0
/* C2590 800D1D90 1412648C */  lw         $a0, 0x1214($v1)
/* C2594 800D1D94 21100000 */  addu       $v0, $zero, $zero
/* C2598 800D1D98 69470308 */  j          .L800D1DA4
/* C259C 800D1D9C 441264AC */   sw        $a0, 0x1244($v1)
.L800D1DA0:
/* C25A0 800D1DA0 F5FF0224 */  addiu      $v0, $zero, -0xb
.L800D1DA4:
/* C25A4 800D1DA4 3C00BF8F */  lw         $ra, 0x3c($sp)
/* C25A8 800D1DA8 3800B68F */  lw         $s6, 0x38($sp)
/* C25AC 800D1DAC 3400B58F */  lw         $s5, 0x34($sp)
/* C25B0 800D1DB0 3000B48F */  lw         $s4, 0x30($sp)
/* C25B4 800D1DB4 2C00B38F */  lw         $s3, 0x2c($sp)
/* C25B8 800D1DB8 2800B28F */  lw         $s2, 0x28($sp)
/* C25BC 800D1DBC 2400B18F */  lw         $s1, 0x24($sp)
/* C25C0 800D1DC0 2000B08F */  lw         $s0, 0x20($sp)
/* C25C4 800D1DC4 0800E003 */  jr         $ra
/* C25C8 800D1DC8 4000BD27 */   addiu     $sp, $sp, 0x40

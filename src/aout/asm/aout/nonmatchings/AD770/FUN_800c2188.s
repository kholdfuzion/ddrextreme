.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2188
/* B2988 800C2188 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B298C 800C218C 1F80053C */  lui        $a1, 0x801f
/* B2990 800C2190 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B2994 800C2194 FFFF9324 */  addiu      $s3, $a0, -1
/* B2998 800C2198 40101300 */  sll        $v0, $s3, 1
/* B299C 800C219C 21105300 */  addu       $v0, $v0, $s3
/* B29A0 800C21A0 00190200 */  sll        $v1, $v0, 4
/* B29A4 800C21A4 23186200 */  subu       $v1, $v1, $v0
/* B29A8 800C21A8 C071A28C */  lw         $v0, 0x71c0($a1)
/* B29AC 800C21AC 80180300 */  sll        $v1, $v1, 2
/* B29B0 800C21B0 2400B5AF */  sw         $s5, 0x24($sp)
/* B29B4 800C21B4 C071B524 */  addiu      $s5, $a1, 0x71c0
/* B29B8 800C21B8 2800BFAF */  sw         $ra, 0x28($sp)
/* B29BC 800C21BC 2000B4AF */  sw         $s4, 0x20($sp)
/* B29C0 800C21C0 1800B2AF */  sw         $s2, 0x18($sp)
/* B29C4 800C21C4 1400B1AF */  sw         $s1, 0x14($sp)
/* B29C8 800C21C8 1000B0AF */  sw         $s0, 0x10($sp)
/* B29CC 800C21CC 21804300 */  addu       $s0, $v0, $v1
/* B29D0 800C21D0 0000048E */  lw         $a0, ($s0)
/* B29D4 800C21D4 00000000 */  nop
/* B29D8 800C21D8 1F008010 */  beqz       $a0, .L800C2258
/* B29DC 800C21DC FFFF1424 */   addiu     $s4, $zero, -1
/* B29E0 800C21E0 1D008010 */  beqz       $a0, .L800C2258
/* B29E4 800C21E4 21880000 */   addu      $s1, $zero, $zero
.L800C21E8:
/* B29E8 800C21E8 2F008290 */  lbu        $v0, 0x2f($a0)
/* B29EC 800C21EC 0000928C */  lw         $s2, ($a0)
/* B29F0 800C21F0 04004010 */  beqz       $v0, .L800C2204
/* B29F4 800C21F4 FFFF4224 */   addiu     $v0, $v0, -1
/* B29F8 800C21F8 2F0082A0 */  sb         $v0, 0x2f($a0)
/* B29FC 800C21FC 93080308 */  j          .L800C224C
/* B2A00 800C2200 21888000 */   addu      $s1, $a0, $zero
.L800C2204:
/* B2A04 800C2204 07002016 */  bnez       $s1, .L800C2224
/* B2A08 800C2208 040094AC */   sw        $s4, 4($a0)
/* B2A0C 800C220C 0000828C */  lw         $v0, ($a0)
/* B2A10 800C2210 00000000 */  nop
/* B2A14 800C2214 06004014 */  bnez       $v0, .L800C2230
/* B2A18 800C2218 000002AE */   sw        $v0, ($s0)
/* B2A1C 800C221C 8C080308 */  j          .L800C2230
/* B2A20 800C2220 040000AE */   sw        $zero, 4($s0)
.L800C2224:
/* B2A24 800C2224 0000828C */  lw         $v0, ($a0)
/* B2A28 800C2228 00000000 */  nop
/* B2A2C 800C222C 000022AE */  sw         $v0, ($s1)
.L800C2230:
/* B2A30 800C2230 0800828C */  lw         $v0, 8($a0)
/* B2A34 800C2234 00000000 */  nop
/* B2A38 800C2238 04004010 */  beqz       $v0, .L800C224C
/* B2A3C 800C223C 000080AC */   sw        $zero, ($a0)
/* B2A40 800C2240 21280000 */  addu       $a1, $zero, $zero
/* B2A44 800C2244 09F84000 */  jalr       $v0
/* B2A48 800C2248 2130A000 */   addu      $a2, $a1, $zero
.L800C224C:
/* B2A4C 800C224C 21204002 */  addu       $a0, $s2, $zero
/* B2A50 800C2250 E5FF8014 */  bnez       $a0, .L800C21E8
/* B2A54 800C2254 00000000 */   nop
.L800C2258:
/* B2A58 800C2258 0800048E */  lw         $a0, 8($s0)
/* B2A5C 800C225C 08001226 */  addiu      $s2, $s0, 8
/* B2A60 800C2260 1F008010 */  beqz       $a0, .L800C22E0
/* B2A64 800C2264 FFFF1424 */   addiu     $s4, $zero, -1
/* B2A68 800C2268 1D008010 */  beqz       $a0, .L800C22E0
/* B2A6C 800C226C 21800000 */   addu      $s0, $zero, $zero
.L800C2270:
/* B2A70 800C2270 2F008290 */  lbu        $v0, 0x2f($a0)
/* B2A74 800C2274 0000918C */  lw         $s1, ($a0)
/* B2A78 800C2278 04004010 */  beqz       $v0, .L800C228C
/* B2A7C 800C227C FFFF4224 */   addiu     $v0, $v0, -1
/* B2A80 800C2280 2F0082A0 */  sb         $v0, 0x2f($a0)
/* B2A84 800C2284 B5080308 */  j          .L800C22D4
/* B2A88 800C2288 21808000 */   addu      $s0, $a0, $zero
.L800C228C:
/* B2A8C 800C228C 07000016 */  bnez       $s0, .L800C22AC
/* B2A90 800C2290 040094AC */   sw        $s4, 4($a0)
/* B2A94 800C2294 0000828C */  lw         $v0, ($a0)
/* B2A98 800C2298 00000000 */  nop
/* B2A9C 800C229C 06004014 */  bnez       $v0, .L800C22B8
/* B2AA0 800C22A0 000042AE */   sw        $v0, ($s2)
/* B2AA4 800C22A4 AE080308 */  j          .L800C22B8
/* B2AA8 800C22A8 040040AE */   sw        $zero, 4($s2)
.L800C22AC:
/* B2AAC 800C22AC 0000828C */  lw         $v0, ($a0)
/* B2AB0 800C22B0 00000000 */  nop
/* B2AB4 800C22B4 000002AE */  sw         $v0, ($s0)
.L800C22B8:
/* B2AB8 800C22B8 0800828C */  lw         $v0, 8($a0)
/* B2ABC 800C22BC 00000000 */  nop
/* B2AC0 800C22C0 04004010 */  beqz       $v0, .L800C22D4
/* B2AC4 800C22C4 000080AC */   sw        $zero, ($a0)
/* B2AC8 800C22C8 21280000 */  addu       $a1, $zero, $zero
/* B2ACC 800C22CC 09F84000 */  jalr       $v0
/* B2AD0 800C22D0 2130A000 */   addu      $a2, $a1, $zero
.L800C22D4:
/* B2AD4 800C22D4 21202002 */  addu       $a0, $s1, $zero
/* B2AD8 800C22D8 E5FF8014 */  bnez       $a0, .L800C2270
/* B2ADC 800C22DC 00000000 */   nop
.L800C22E0:
/* B2AE0 800C22E0 0E01A292 */  lbu        $v0, 0x10e($s5)
/* B2AE4 800C22E4 00000000 */  nop
/* B2AE8 800C22E8 23005314 */  bne        $v0, $s3, .L800C2378
/* B2AEC 800C22EC 00000000 */   nop
/* B2AF0 800C22F0 7E05030C */  jal        FUN_800c15f8
/* B2AF4 800C22F4 21200000 */   addu      $a0, $zero, $zero
/* B2AF8 800C22F8 1F80053C */  lui        $a1, %hi(D_801F71C0)
/* B2AFC 800C22FC C071B124 */  addiu      $s1, $a1, %lo(D_801F71C0)
/* B2B00 800C2300 0E012392 */  lbu        $v1, 0x10e($s1)
/* B2B04 800C2304 01000424 */  addiu      $a0, $zero, 1
/* B2B08 800C2308 04108300 */  sllv       $v0, $v1, $a0
/* B2B0C 800C230C 21104300 */  addu       $v0, $v0, $v1
/* B2B10 800C2310 00190200 */  sll        $v1, $v0, 4
/* B2B14 800C2314 23186200 */  subu       $v1, $v1, $v0
/* B2B18 800C2318 C071A28C */  lw         $v0, 0x71c0($a1)
/* B2B1C 800C231C 80180300 */  sll        $v1, $v1, 2
/* B2B20 800C2320 7E05030C */  jal        FUN_800c15f8
/* B2B24 800C2324 21804300 */   addu      $s0, $v0, $v1
/* B2B28 800C2328 21184000 */  addu       $v1, $v0, $zero
/* B2B2C 800C232C FBFF0224 */  addiu      $v0, $zero, -5
/* B2B30 800C2330 11006210 */  beq        $v1, $v0, .L800C2378
/* B2B34 800C2334 00000000 */   nop
/* B2B38 800C2338 09006014 */  bnez       $v1, .L800C2360
/* B2B3C 800C233C 0F0120A2 */   sb        $zero, 0x10f($s1)
/* B2B40 800C2340 08000426 */  addiu      $a0, $s0, 8
/* B2B44 800C2344 0800058E */  lw         $a1, 8($s0)
/* B2B48 800C2348 1F0A030C */  jal        FUN_800c287c
/* B2B4C 800C234C FFFF0624 */   addiu     $a2, $zero, -1
/* B2B50 800C2350 6D0A030C */  jal        FUN_800c29b4
/* B2B54 800C2354 21200002 */   addu      $a0, $s0, $zero
/* B2B58 800C2358 DE080308 */  j          .L800C2378
/* B2B5C 800C235C 00000000 */   nop
.L800C2360:
/* B2B60 800C2360 08000426 */  addiu      $a0, $s0, 8
/* B2B64 800C2364 0800058E */  lw         $a1, 8($s0)
/* B2B68 800C2368 1F0A030C */  jal        FUN_800c287c
/* B2B6C 800C236C F7FF0624 */   addiu     $a2, $zero, -9
/* B2B70 800C2370 690A030C */  jal        FUN_800c29a4
/* B2B74 800C2374 00000000 */   nop
.L800C2378:
/* B2B78 800C2378 2800BF8F */  lw         $ra, 0x28($sp)
/* B2B7C 800C237C 2400B58F */  lw         $s5, 0x24($sp)
/* B2B80 800C2380 2000B48F */  lw         $s4, 0x20($sp)
/* B2B84 800C2384 1C00B38F */  lw         $s3, 0x1c($sp)
/* B2B88 800C2388 1800B28F */  lw         $s2, 0x18($sp)
/* B2B8C 800C238C 1400B18F */  lw         $s1, 0x14($sp)
/* B2B90 800C2390 1000B08F */  lw         $s0, 0x10($sp)
/* B2B94 800C2394 0800E003 */  jr         $ra
/* B2B98 800C2398 3000BD27 */   addiu     $sp, $sp, 0x30

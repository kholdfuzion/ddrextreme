.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aac20
/* 9B420 800AAC20 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 9B424 800AAC24 3000BFAF */  sw         $ra, 0x30($sp)
/* 9B428 800AAC28 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 9B42C 800AAC2C 2800B6AF */  sw         $s6, 0x28($sp)
/* 9B430 800AAC30 2400B5AF */  sw         $s5, 0x24($sp)
/* 9B434 800AAC34 2000B4AF */  sw         $s4, 0x20($sp)
/* 9B438 800AAC38 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9B43C 800AAC3C 1800B2AF */  sw         $s2, 0x18($sp)
/* 9B440 800AAC40 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B444 800AAC44 8FAF020C */  jal        FUN_800abe3c
/* 9B448 800AAC48 1000B0AF */   sw        $s0, 0x10($sp)
/* 9B44C 800AAC4C 21B04000 */  addu       $s6, $v0, $zero
/* 9B450 800AAC50 21980000 */  addu       $s3, $zero, $zero
/* 9B454 800AAC54 1C80023C */  lui        $v0, %hi(D_801BFE88)
/* 9B458 800AAC58 88FE5424 */  addiu      $s4, $v0, %lo(D_801BFE88)
/* 9B45C 800AAC5C 0E009526 */  addiu      $s5, $s4, 0xe
/* 9B460 800AAC60 21B88002 */  addu       $s7, $s4, $zero
.L800AAC64:
/* 9B464 800AAC64 7CAA000C */  jal        vsync_8002a9f0
/* 9B468 800AAC68 00811300 */   sll       $s0, $s3, 4
/* 9B46C 800AAC6C 21101502 */  addu       $v0, $s0, $s5
/* 9B470 800AAC70 21181402 */  addu       $v1, $s0, $s4
/* 9B474 800AAC74 000040A4 */  sh         $zero, ($v0)
/* 9B478 800AAC78 8BAF020C */  jal        FUN_800abe2c
/* 9B47C 800AAC7C 000060A0 */   sb        $zero, ($v1)
/* 9B480 800AAC80 40881300 */  sll        $s1, $s3, 1
/* 9B484 800AAC84 21282002 */  addu       $a1, $s1, $zero
/* 9B488 800AAC88 02002106 */  bgez       $s1, .L800AAC94
/* 9B48C 800AAC8C 21900002 */   addu      $s2, $s0, $zero
/* 9B490 800AAC90 3F002526 */  addiu      $a1, $s1, 0x3f
.L800AAC94:
/* 9B494 800AAC94 2120C002 */  addu       $a0, $s6, $zero
/* 9B498 800AAC98 83290500 */  sra        $a1, $a1, 6
/* 9B49C 800AAC9C 6ED5000C */  jal        FUN_800355b8
/* 9B4A0 800AACA0 2128A200 */   addu      $a1, $a1, $v0
/* 9B4A4 800AACA4 3F002332 */  andi       $v1, $s1, 0x3f
/* 9B4A8 800AACA8 C01A0300 */  sll        $v1, $v1, 0xb
/* 9B4AC 800AACAC 21804300 */  addu       $s0, $v0, $v1
/* 9B4B0 800AACB0 17AD020C */  jal        FUN_800ab45c
/* 9B4B4 800AACB4 21206002 */   addu      $a0, $s3, $zero
/* 9B4B8 800AACB8 18004004 */  bltz       $v0, .L800AAD1C
/* 9B4BC 800AACBC 01006426 */   addiu     $a0, $s3, 1
/* 9B4C0 800AACC0 00000396 */  lhu        $v1, ($s0)
/* 9B4C4 800AACC4 ADDE0234 */  ori        $v0, $zero, 0xdead
/* 9B4C8 800AACC8 14006214 */  bne        $v1, $v0, .L800AAD1C
/* 9B4CC 800AACCC 02001026 */   addiu     $s0, $s0, 2
/* 9B4D0 800AACD0 00000396 */  lhu        $v1, ($s0)
/* 9B4D4 800AACD4 CEFA0234 */  ori        $v0, $zero, 0xface
/* 9B4D8 800AACD8 10006214 */  bne        $v1, $v0, .L800AAD1C
/* 9B4DC 800AACDC 21300000 */   addu      $a2, $zero, $zero
/* 9B4E0 800AACE0 02000726 */  addiu      $a3, $s0, 2
/* 9B4E4 800AACE4 21285702 */  addu       $a1, $s2, $s7
.L800AACE8:
/* 9B4E8 800AACE8 2110E600 */  addu       $v0, $a3, $a2
/* 9B4EC 800AACEC 0100C624 */  addiu      $a2, $a2, 1
/* 9B4F0 800AACF0 00004390 */  lbu        $v1, ($v0)
/* 9B4F4 800AACF4 0A00C228 */  slti       $v0, $a2, 0xa
/* 9B4F8 800AACF8 0000A3A0 */  sb         $v1, ($a1)
/* 9B4FC 800AACFC FAFF4014 */  bnez       $v0, .L800AACE8
/* 9B500 800AAD00 0100A524 */   addiu     $a1, $a1, 1
/* 9B504 800AAD04 2110D200 */  addu       $v0, $a2, $s2
/* 9B508 800AAD08 21105400 */  addu       $v0, $v0, $s4
/* 9B50C 800AAD0C 21185502 */  addu       $v1, $s2, $s5
/* 9B510 800AAD10 000040A0 */  sb         $zero, ($v0)
/* 9B514 800AAD14 01000224 */  addiu      $v0, $zero, 1
/* 9B518 800AAD18 000062A4 */  sh         $v0, ($v1)
.L800AAD1C:
/* 9B51C 800AAD1C 21988000 */  addu       $s3, $a0, $zero
/* 9B520 800AAD20 00048228 */  slti       $v0, $a0, 0x400
/* 9B524 800AAD24 CFFF4014 */  bnez       $v0, .L800AAC64
/* 9B528 800AAD28 21100000 */   addu      $v0, $zero, $zero
/* 9B52C 800AAD2C 3000BF8F */  lw         $ra, 0x30($sp)
/* 9B530 800AAD30 2C00B78F */  lw         $s7, 0x2c($sp)
/* 9B534 800AAD34 2800B68F */  lw         $s6, 0x28($sp)
/* 9B538 800AAD38 2400B58F */  lw         $s5, 0x24($sp)
/* 9B53C 800AAD3C 2000B48F */  lw         $s4, 0x20($sp)
/* 9B540 800AAD40 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9B544 800AAD44 1800B28F */  lw         $s2, 0x18($sp)
/* 9B548 800AAD48 1400B18F */  lw         $s1, 0x14($sp)
/* 9B54C 800AAD4C 1000B08F */  lw         $s0, 0x10($sp)
/* 9B550 800AAD50 0800E003 */  jr         $ra
/* 9B554 800AAD54 3800BD27 */   addiu     $sp, $sp, 0x38

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d22c0
/* C2AC0 800D22C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* C2AC4 800D22C4 01008230 */  andi       $v0, $a0, 1
/* C2AC8 800D22C8 FFFF0424 */  addiu      $a0, $zero, -1
/* C2ACC 800D22CC 481F033C */  lui        $v1, 0x1f48
/* C2AD0 800D22D0 00110200 */  sll        $v0, $v0, 4
/* C2AD4 800D22D4 A0004234 */  ori        $v0, $v0, 0xa0
/* C2AD8 800D22D8 1000B0AF */  sw         $s0, 0x10($sp)
/* C2ADC 800D22DC 4C1F103C */  lui        $s0, 0x1f4c
/* C2AE0 800D22E0 0C0062A0 */  sb         $v0, 0xc($v1)
/* C2AE4 800D22E4 0A000224 */  addiu      $v0, $zero, 0xa
/* C2AE8 800D22E8 481F033C */  lui        $v1, 0x1f48
/* C2AEC 800D22EC 0C0002A2 */  sb         $v0, 0xc($s0)
/* C2AF0 800D22F0 481F023C */  lui        $v0, 0x1f48
/* C2AF4 800D22F4 020060A0 */  sb         $zero, 2($v1)
/* C2AF8 800D22F8 481F033C */  lui        $v1, 0x1f48
/* C2AFC 800D22FC 080040A0 */  sb         $zero, 8($v0)
/* C2B00 800D2300 481F023C */  lui        $v0, 0x1f48
/* C2B04 800D2304 0A0060A0 */  sb         $zero, 0xa($v1)
/* C2B08 800D2308 481F033C */  lui        $v1, 0x1f48
/* C2B0C 800D230C 481F053C */  lui        $a1, 0x1f48
/* C2B10 800D2310 040040A0 */  sb         $zero, 4($v0)
/* C2B14 800D2314 08000224 */  addiu      $v0, $zero, 8
/* C2B18 800D2318 2400BFAF */  sw         $ra, 0x24($sp)
/* C2B1C 800D231C 2000B4AF */  sw         $s4, 0x20($sp)
/* C2B20 800D2320 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C2B24 800D2324 1800B2AF */  sw         $s2, 0x18($sp)
/* C2B28 800D2328 1400B1AF */  sw         $s1, 0x14($sp)
/* C2B2C 800D232C 060060A0 */  sb         $zero, 6($v1)
/* C2B30 800D2330 0E00A2A0 */  sb         $v0, 0xe($a1)
/* C2B34 800D2334 CD6B000C */  jal        VSync
/* C2B38 800D2338 E0011224 */   addiu     $s2, $zero, 0x1e0
/* C2B3C 800D233C 21884000 */  addu       $s1, $v0, $zero
/* C2B40 800D2340 481F033C */  lui        $v1, 0x1f48
/* C2B44 800D2344 21A00002 */  addu       $s4, $s0, $zero
/* C2B48 800D2348 0E006290 */  lbu        $v0, 0xe($v1)
/* C2B4C 800D234C 00000000 */  nop
/* C2B50 800D2350 0E004010 */  beqz       $v0, .L800D238C
/* C2B54 800D2354 2080133C */   lui       $s3, 0x8020
/* C2B58 800D2358 21806000 */  addu       $s0, $v1, $zero
.L800D235C:
/* C2B5C 800D235C CD6B000C */  jal        VSync
/* C2B60 800D2360 FFFF0424 */   addiu     $a0, $zero, -1
/* C2B64 800D2364 23105100 */  subu       $v0, $v0, $s1
/* C2B68 800D2368 2A104202 */  slt        $v0, $s2, $v0
/* C2B6C 800D236C 08004014 */  bnez       $v0, .L800D2390
/* C2B70 800D2370 FFFF0224 */   addiu     $v0, $zero, -1
/* C2B74 800D2374 4A70000C */  jal        FUN_8001c128
/* C2B78 800D2378 00000000 */   nop
/* C2B7C 800D237C 0E000292 */  lbu        $v0, 0xe($s0)
/* C2B80 800D2380 00000000 */  nop
/* C2B84 800D2384 F5FF4014 */  bnez       $v0, .L800D235C
/* C2B88 800D2388 00000000 */   nop
.L800D238C:
/* C2B8C 800D238C 21100000 */  addu       $v0, $zero, $zero
.L800D2390:
/* C2B90 800D2390 08004014 */  bnez       $v0, .L800D23B4
/* C2B94 800D2394 FFFF0224 */   addiu     $v0, $zero, -1
/* C2B98 800D2398 21100000 */  addu       $v0, $zero, $zero
/* C2B9C 800D239C 10BD6426 */  addiu      $a0, $s3, -0x42f0
/* C2BA0 800D23A0 08000324 */  addiu      $v1, $zero, 8
/* C2BA4 800D23A4 E81180AC */  sw         $zero, 0x11e8($a0)
/* C2BA8 800D23A8 DF1180A0 */  sb         $zero, 0x11df($a0)
/* C2BAC 800D23AC F1480308 */  j          .L800D23C4
/* C2BB0 800D23B0 00000000 */   nop
.L800D23B4:
/* C2BB4 800D23B4 10BD6426 */  addiu      $a0, $s3, -0x42f0
/* C2BB8 800D23B8 08000324 */  addiu      $v1, $zero, 8
/* C2BBC 800D23BC DF1180A0 */  sb         $zero, 0x11df($a0)
/* C2BC0 800D23C0 E81180AC */  sw         $zero, 0x11e8($a0)
.L800D23C4:
/* C2BC4 800D23C4 0C0083A2 */  sb         $v1, 0xc($s4)
/* C2BC8 800D23C8 2400BF8F */  lw         $ra, 0x24($sp)
/* C2BCC 800D23CC 2000B48F */  lw         $s4, 0x20($sp)
/* C2BD0 800D23D0 1C00B38F */  lw         $s3, 0x1c($sp)
/* C2BD4 800D23D4 1800B28F */  lw         $s2, 0x18($sp)
/* C2BD8 800D23D8 1400B18F */  lw         $s1, 0x14($sp)
/* C2BDC 800D23DC 1000B08F */  lw         $s0, 0x10($sp)
/* C2BE0 800D23E0 0800E003 */  jr         $ra
/* C2BE4 800D23E4 2800BD27 */   addiu     $sp, $sp, 0x28

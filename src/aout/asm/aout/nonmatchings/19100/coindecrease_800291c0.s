.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel coindecrease_800291c0
/* 199C0 800291C0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 199C4 800291C4 02000224 */  addiu      $v0, $zero, 2
/* 199C8 800291C8 3800BFAF */  sw         $ra, 0x38($sp)
/* 199CC 800291CC 3400B3AF */  sw         $s3, 0x34($sp)
/* 199D0 800291D0 3000B2AF */  sw         $s2, 0x30($sp)
/* 199D4 800291D4 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 199D8 800291D8 06008214 */  bne        $a0, $v0, .L800291F4
/* 199DC 800291DC 2800B0AF */   sw        $s0, 0x28($sp)
/* 199E0 800291E0 1580033C */  lui        $v1, %hi(D_8014BA50)
/* 199E4 800291E4 50BA6224 */  addiu      $v0, $v1, %lo(D_8014BA50)
/* 199E8 800291E8 2E005184 */  lh         $s1, 0x2e($v0)
/* 199EC 800291EC 81A40008 */  j          .L80029204
/* 199F0 800291F0 1380123C */   lui       $s2, 0x8013
.L800291F4:
/* 199F4 800291F4 1580033C */  lui        $v1, %hi(D_8014BA50)
/* 199F8 800291F8 50BA6224 */  addiu      $v0, $v1, %lo(D_8014BA50)
/* 199FC 800291FC 2C005184 */  lh         $s1, 0x2c($v0)
/* 19A00 80029200 1380123C */  lui        $s2, 0x8013
.L80029204:
/* 19A04 80029204 50BA7024 */  addiu      $s0, $v1, -0x45b0
/* 19A08 80029208 10000286 */  lh         $v0, 0x10($s0)
/* 19A0C 8002920C 00000000 */  nop
/* 19A10 80029210 CF004014 */  bnez       $v0, .L80029550
/* 19A14 80029214 1380133C */   lui       $s3, 0x8013
/* 19A18 80029218 26000586 */  lh         $a1, 0x26($s0)
/* 19A1C 8002921C 00000000 */  nop
/* 19A20 80029220 0800A01C */  bgtz       $a1, .L80029244
/* 19A24 80029224 1800A5AF */   sw        $a1, 0x18($sp)
/* 19A28 80029228 FFFF0224 */  addiu      $v0, $zero, -1
/* 19A2C 8002922C 1000A2AF */  sw         $v0, 0x10($sp)
/* 19A30 80029230 0180043C */  lui        $a0, %hi(D_80010E98)
/* 19A34 80029234 980E8424 */  addiu      $a0, $a0, %lo(D_80010E98)
/* 19A38 80029238 21300000 */  addu       $a2, $zero, $zero
/* 19A3C 8002923C 27F3020C */  jal        HardWareError_800bcc9c
/* 19A40 80029240 FFFF0724 */   addiu     $a3, $zero, -1
.L80029244:
/* 19A44 80029244 20000586 */  lh         $a1, 0x20($s0)
/* 19A48 80029248 00000000 */  nop
/* 19A4C 8002924C 0800A01C */  bgtz       $a1, .L80029270
/* 19A50 80029250 2000A5AF */   sw        $a1, 0x20($sp)
/* 19A54 80029254 FFFF0224 */  addiu      $v0, $zero, -1
/* 19A58 80029258 1000A2AF */  sw         $v0, 0x10($sp)
/* 19A5C 8002925C 0180043C */  lui        $a0, %hi(D_80010E98)
/* 19A60 80029260 980E8424 */  addiu      $a0, $a0, %lo(D_80010E98)
/* 19A64 80029264 02000624 */  addiu      $a2, $zero, 2
/* 19A68 80029268 27F3020C */  jal        HardWareError_800bcc9c
/* 19A6C 8002926C FFFF0724 */   addiu     $a3, $zero, -1
.L80029270:
/* 19A70 80029270 28000586 */  lh         $a1, 0x28($s0)
/* 19A74 80029274 00000000 */  nop
/* 19A78 80029278 0800A01C */  bgtz       $a1, .L8002929C
/* 19A7C 8002927C 1C00A5AF */   sw        $a1, 0x1c($sp)
/* 19A80 80029280 FFFF0224 */  addiu      $v0, $zero, -1
/* 19A84 80029284 1000A2AF */  sw         $v0, 0x10($sp)
/* 19A88 80029288 0180043C */  lui        $a0, %hi(D_80010E98)
/* 19A8C 8002928C 980E8424 */  addiu      $a0, $a0, %lo(D_80010E98)
/* 19A90 80029290 01000624 */  addiu      $a2, $zero, 1
/* 19A94 80029294 27F3020C */  jal        HardWareError_800bcc9c
/* 19A98 80029298 FFFF0724 */   addiu     $a3, $zero, -1
.L8002929C:
/* 19A9C 8002929C 22000586 */  lh         $a1, 0x22($s0)
/* 19AA0 800292A0 00000000 */  nop
/* 19AA4 800292A4 0800A01C */  bgtz       $a1, .L800292C8
/* 19AA8 800292A8 2400A5AF */   sw        $a1, 0x24($sp)
/* 19AAC 800292AC FFFF0224 */  addiu      $v0, $zero, -1
/* 19AB0 800292B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 19AB4 800292B4 0180043C */  lui        $a0, %hi(D_80010E98)
/* 19AB8 800292B8 980E8424 */  addiu      $a0, $a0, %lo(D_80010E98)
/* 19ABC 800292BC 03000624 */  addiu      $a2, $zero, 3
/* 19AC0 800292C0 27F3020C */  jal        HardWareError_800bcc9c
/* 19AC4 800292C4 FFFF0724 */   addiu     $a3, $zero, -1
.L800292C8:
/* 19AC8 800292C8 90AB4726 */  addiu      $a3, $s2, -0x5470
/* 19ACC 800292CC 98AB6526 */  addiu      $a1, $s3, -0x5468
/* 19AD0 800292D0 90AB428E */  lw         $v0, -0x5470($s2)
/* 19AD4 800292D4 0400E68C */  lw         $a2, 4($a3)
/* 19AD8 800292D8 98AB648E */  lw         $a0, -0x5468($s3)
/* 19ADC 800292DC 0400A38C */  lw         $v1, 4($a1)
/* 19AE0 800292E0 21104600 */  addu       $v0, $v0, $a2
/* 19AE4 800292E4 21104400 */  addu       $v0, $v0, $a0
/* 19AE8 800292E8 21104300 */  addu       $v0, $v0, $v1
/* 19AEC 800292EC 2A105100 */  slt        $v0, $v0, $s1
/* 19AF0 800292F0 0E004010 */  beqz       $v0, .L8002932C
/* 19AF4 800292F4 21200000 */   addu      $a0, $zero, $zero
/* 19AF8 800292F8 90AB40AE */  sw         $zero, -0x5470($s2)
/* 19AFC 800292FC B8B9000C */  jal        FUN_8002e6e0
/* 19B00 80029300 0400E0AC */   sw        $zero, 4($a3)
/* 19B04 80029304 21200000 */  addu       $a0, $zero, $zero
/* 19B08 80029308 BFB9000C */  jal        FUN_8002e6fc
/* 19B0C 8002930C 21284000 */   addu      $a1, $v0, $zero
/* 19B10 80029310 B8B9000C */  jal        FUN_8002e6e0
/* 19B14 80029314 01000424 */   addiu     $a0, $zero, 1
/* 19B18 80029318 01000424 */  addiu      $a0, $zero, 1
/* 19B1C 8002931C BFB9000C */  jal        FUN_8002e6fc
/* 19B20 80029320 21284000 */   addu      $a1, $v0, $zero
/* 19B24 80029324 55A50008 */  j          .L80029554
/* 19B28 80029328 90AB4426 */   addiu     $a0, $s2, -0x5470
.L8002932C:
/* 19B2C 8002932C 2A10D100 */  slt        $v0, $a2, $s1
/* 19B30 80029330 04004014 */  bnez       $v0, .L80029344
/* 19B34 80029334 2310D100 */   subu      $v0, $a2, $s1
/* 19B38 80029338 0400E2AC */  sw         $v0, 4($a3)
/* 19B3C 8002933C D3A40008 */  j          .L8002934C
/* 19B40 80029340 21880000 */   addu      $s1, $zero, $zero
.L80029344:
/* 19B44 80029344 23882602 */  subu       $s1, $s1, $a2
/* 19B48 80029348 0400E0AC */  sw         $zero, 4($a3)
.L8002934C:
/* 19B4C 8002934C 90AB438E */  lw         $v1, -0x5470($s2)
/* 19B50 80029350 00000000 */  nop
/* 19B54 80029354 2A107100 */  slt        $v0, $v1, $s1
/* 19B58 80029358 04004014 */  bnez       $v0, .L8002936C
/* 19B5C 8002935C 23107100 */   subu      $v0, $v1, $s1
/* 19B60 80029360 90AB42AE */  sw         $v0, -0x5470($s2)
/* 19B64 80029364 DDA40008 */  j          .L80029374
/* 19B68 80029368 21880000 */   addu      $s1, $zero, $zero
.L8002936C:
/* 19B6C 8002936C 23882302 */  subu       $s1, $s1, $v1
/* 19B70 80029370 90AB40AE */  sw         $zero, -0x5470($s2)
.L80029374:
/* 19B74 80029374 D4B9000C */  jal        FUN_8002e750
/* 19B78 80029378 00000000 */   nop
/* 19B7C 8002937C FFFF0324 */  addiu      $v1, $zero, -1
/* 19B80 80029380 73004310 */  beq        $v0, $v1, .L80029550
/* 19B84 80029384 98AB6226 */   addiu     $v0, $s3, -0x5468
/* 19B88 80029388 0400448C */  lw         $a0, 4($v0)
/* 19B8C 8002938C 00000000 */  nop
/* 19B90 80029390 2A189100 */  slt        $v1, $a0, $s1
/* 19B94 80029394 1D006014 */  bnez       $v1, .L8002940C
/* 19B98 80029398 00000000 */   nop
/* 19B9C 8002939C 1C00A28F */  lw         $v0, 0x1c($sp)
/* 19BA0 800293A0 00000000 */  nop
/* 19BA4 800293A4 1A002202 */  div        $zero, $s1, $v0
/* 19BA8 800293A8 12200000 */  mflo       $a0
/* 19BAC 800293AC 10180000 */  mfhi       $v1
/* 19BB0 800293B0 02004014 */  bnez       $v0, .L800293BC
/* 19BB4 800293B4 00000000 */   nop
/* 19BB8 800293B8 CD010000 */  break      0, 7
.L800293BC:
/* 19BBC 800293BC 02004014 */   bnez      $v0, .L800293C8
/* 19BC0 800293C0 00000000 */   nop
/* 19BC4 800293C4 CD010000 */  break      0, 7
.L800293C8:
/* 19BC8 800293C8 2B180300 */   sltu      $v1, $zero, $v1
/* 19BCC 800293CC 2400A58F */  lw         $a1, 0x24($sp)
/* 19BD0 800293D0 21808300 */  addu       $s0, $a0, $v1
/* 19BD4 800293D4 18000502 */  mult       $s0, $a1
/* 19BD8 800293D8 12280000 */  mflo       $a1
/* 19BDC 800293DC BFB9000C */  jal        FUN_8002e6fc
/* 19BE0 800293E0 01000424 */   addiu     $a0, $zero, 1
/* 19BE4 800293E4 1C00A38F */  lw         $v1, 0x1c($sp)
/* 19BE8 800293E8 00000000 */  nop
/* 19BEC 800293EC 18000302 */  mult       $s0, $v1
/* 19BF0 800293F0 90AB4426 */  addiu      $a0, $s2, -0x5470
/* 19BF4 800293F4 0400828C */  lw         $v0, 4($a0)
/* 19BF8 800293F8 12180000 */  mflo       $v1
/* 19BFC 800293FC 21104300 */  addu       $v0, $v0, $v1
/* 19C00 80029400 23105100 */  subu       $v0, $v0, $s1
/* 19C04 80029404 37A50008 */  j          .L800294DC
/* 19C08 80029408 040082AC */   sw        $v0, 4($a0)
.L8002940C:
/* 19C0C 8002940C 1C00A28F */  lw         $v0, 0x1c($sp)
/* 19C10 80029410 00000000 */  nop
/* 19C14 80029414 1A008200 */  div        $zero, $a0, $v0
/* 19C18 80029418 12200000 */  mflo       $a0
/* 19C1C 8002941C 10180000 */  mfhi       $v1
/* 19C20 80029420 02004014 */  bnez       $v0, .L8002942C
/* 19C24 80029424 00000000 */   nop
/* 19C28 80029428 CD010000 */  break      0, 7
.L8002942C:
/* 19C2C 8002942C 02004014 */   bnez      $v0, .L80029438
/* 19C30 80029430 00000000 */   nop
/* 19C34 80029434 CD010000 */  break      0, 7
.L80029438:
/* 19C38 80029438 2B180300 */   sltu      $v1, $zero, $v1
/* 19C3C 8002943C 2400A58F */  lw         $a1, 0x24($sp)
/* 19C40 80029440 21808300 */  addu       $s0, $a0, $v1
/* 19C44 80029444 18000502 */  mult       $s0, $a1
/* 19C48 80029448 12280000 */  mflo       $a1
/* 19C4C 8002944C BFB9000C */  jal        FUN_8002e6fc
/* 19C50 80029450 01000424 */   addiu     $a0, $zero, 1
/* 19C54 80029454 1C00A38F */  lw         $v1, 0x1c($sp)
/* 19C58 80029458 00000000 */  nop
/* 19C5C 8002945C 18000302 */  mult       $s0, $v1
/* 19C60 80029460 90AB4526 */  addiu      $a1, $s2, -0x5470
/* 19C64 80029464 0400A28C */  lw         $v0, 4($a1)
/* 19C68 80029468 1800A48F */  lw         $a0, 0x18($sp)
/* 19C6C 8002946C 12180000 */  mflo       $v1
/* 19C70 80029470 21104300 */  addu       $v0, $v0, $v1
/* 19C74 80029474 23882202 */  subu       $s1, $s1, $v0
/* 19C78 80029478 1A002402 */  div        $zero, $s1, $a0
/* 19C7C 8002947C 12300000 */  mflo       $a2
/* 19C80 80029480 0400A0AC */  sw         $zero, 4($a1)
/* 19C84 80029484 10180000 */  mfhi       $v1
/* 19C88 80029488 02008014 */  bnez       $a0, .L80029494
/* 19C8C 8002948C 00000000 */   nop
/* 19C90 80029490 CD010000 */  break      0, 7
.L80029494:
/* 19C94 80029494 02008014 */   bnez      $a0, .L800294A0
/* 19C98 80029498 00000000 */   nop
/* 19C9C 8002949C CD010000 */  break      0, 7
.L800294A0:
/* 19CA0 800294A0 2B180300 */   sltu      $v1, $zero, $v1
/* 19CA4 800294A4 2000A58F */  lw         $a1, 0x20($sp)
/* 19CA8 800294A8 2180C300 */  addu       $s0, $a2, $v1
/* 19CAC 800294AC 18000502 */  mult       $s0, $a1
/* 19CB0 800294B0 12280000 */  mflo       $a1
/* 19CB4 800294B4 BFB9000C */  jal        FUN_8002e6fc
/* 19CB8 800294B8 21200000 */   addu      $a0, $zero, $zero
/* 19CBC 800294BC 1800A38F */  lw         $v1, 0x18($sp)
/* 19CC0 800294C0 00000000 */  nop
/* 19CC4 800294C4 18000302 */  mult       $s0, $v1
/* 19CC8 800294C8 90AB428E */  lw         $v0, -0x5470($s2)
/* 19CCC 800294CC 12180000 */  mflo       $v1
/* 19CD0 800294D0 21104300 */  addu       $v0, $v0, $v1
/* 19CD4 800294D4 23105100 */  subu       $v0, $v0, $s1
/* 19CD8 800294D8 90AB42AE */  sw         $v0, -0x5470($s2)
.L800294DC:
/* 19CDC 800294DC B8B9000C */  jal        FUN_8002e6e0
/* 19CE0 800294E0 21200000 */   addu      $a0, $zero, $zero
/* 19CE4 800294E4 2000A38F */  lw         $v1, 0x20($sp)
/* 19CE8 800294E8 00000000 */  nop
/* 19CEC 800294EC 1A004300 */  div        $zero, $v0, $v1
/* 19CF0 800294F0 98AB7026 */  addiu      $s0, $s3, -0x5468
/* 19CF4 800294F4 12100000 */  mflo       $v0
/* 19CF8 800294F8 02006014 */  bnez       $v1, .L80029504
/* 19CFC 800294FC 00000000 */   nop
/* 19D00 80029500 CD010000 */  break      0, 7
.L80029504:
/* 19D04 80029504 1800A58F */   lw        $a1, 0x18($sp)
/* 19D08 80029508 00000000 */  nop
/* 19D0C 8002950C 1800A200 */  mult       $a1, $v0
/* 19D10 80029510 01000424 */  addiu      $a0, $zero, 1
/* 19D14 80029514 12280000 */  mflo       $a1
/* 19D18 80029518 B8B9000C */  jal        FUN_8002e6e0
/* 19D1C 8002951C 98AB65AE */   sw        $a1, -0x5468($s3)
/* 19D20 80029520 2400A38F */  lw         $v1, 0x24($sp)
/* 19D24 80029524 00000000 */  nop
/* 19D28 80029528 1A004300 */  div        $zero, $v0, $v1
/* 19D2C 8002952C 12100000 */  mflo       $v0
/* 19D30 80029530 02006014 */  bnez       $v1, .L8002953C
/* 19D34 80029534 00000000 */   nop
/* 19D38 80029538 CD010000 */  break      0, 7
.L8002953C:
/* 19D3C 8002953C 1C00A48F */   lw        $a0, 0x1c($sp)
/* 19D40 80029540 00000000 */  nop
/* 19D44 80029544 18008200 */  mult       $a0, $v0
/* 19D48 80029548 12200000 */  mflo       $a0
/* 19D4C 8002954C 040004AE */  sw         $a0, 4($s0)
.L80029550:
/* 19D50 80029550 90AB4426 */  addiu      $a0, $s2, -0x5470
.L80029554:
/* 19D54 80029554 0400838C */  lw         $v1, 4($a0)
/* 19D58 80029558 98AB6426 */  addiu      $a0, $s3, -0x5468
/* 19D5C 8002955C 90AB428E */  lw         $v0, -0x5470($s2)
/* 19D60 80029560 0400858C */  lw         $a1, 4($a0)
/* 19D64 80029564 3800BF8F */  lw         $ra, 0x38($sp)
/* 19D68 80029568 3000B28F */  lw         $s2, 0x30($sp)
/* 19D6C 8002956C 2C00B18F */  lw         $s1, 0x2c($sp)
/* 19D70 80029570 2800B08F */  lw         $s0, 0x28($sp)
/* 19D74 80029574 21104300 */  addu       $v0, $v0, $v1
/* 19D78 80029578 98AB638E */  lw         $v1, -0x5468($s3)
/* 19D7C 8002957C 3400B38F */  lw         $s3, 0x34($sp)
/* 19D80 80029580 21104300 */  addu       $v0, $v0, $v1
/* 19D84 80029584 21104500 */  addu       $v0, $v0, $a1
/* 19D88 80029588 0800E003 */  jr         $ra
/* 19D8C 8002958C 4000BD27 */   addiu     $sp, $sp, 0x40

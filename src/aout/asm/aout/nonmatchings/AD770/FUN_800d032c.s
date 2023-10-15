.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d032c
/* C0B2C 800D032C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C0B30 800D0330 3000B4AF */  sw         $s4, 0x30($sp)
/* C0B34 800D0334 21A08000 */  addu       $s4, $a0, $zero
/* C0B38 800D0338 2000B0AF */  sw         $s0, 0x20($sp)
/* C0B3C 800D033C 1000B027 */  addiu      $s0, $sp, 0x10
/* C0B40 800D0340 21200002 */  addu       $a0, $s0, $zero
/* C0B44 800D0344 21280000 */  addu       $a1, $zero, $zero
/* C0B48 800D0348 0C000624 */  addiu      $a2, $zero, 0xc
/* C0B4C 800D034C 3C00BFAF */  sw         $ra, 0x3c($sp)
/* C0B50 800D0350 3800B6AF */  sw         $s6, 0x38($sp)
/* C0B54 800D0354 3400B5AF */  sw         $s5, 0x34($sp)
/* C0B58 800D0358 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C0B5C 800D035C 2800B2AF */  sw         $s2, 0x28($sp)
/* C0B60 800D0360 F6A2000C */  jal        memset
/* C0B64 800D0364 2400B1AF */   sw        $s1, 0x24($sp)
/* C0B68 800D0368 FFFF0424 */  addiu      $a0, $zero, -1
/* C0B6C 800D036C 03000224 */  addiu      $v0, $zero, 3
/* C0B70 800D0370 10000324 */  addiu      $v1, $zero, 0x10
/* C0B74 800D0374 1000A2A3 */  sb         $v0, 0x10($sp)
/* C0B78 800D0378 CD6B000C */  jal        VSync
/* C0B7C 800D037C 1400A3A3 */   sb        $v1, 0x14($sp)
/* C0B80 800D0380 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C0B84 800D0384 481F043C */  lui        $a0, 0x1f48
/* C0B88 800D0388 21884000 */  addu       $s1, $v0, $zero
/* C0B8C 800D038C 21B00002 */  addu       $s6, $s0, $zero
/* C0B90 800D0390 0E008390 */  lbu        $v1, 0xe($a0)
/* C0B94 800D0394 00000000 */  nop
/* C0B98 800D0398 88006330 */  andi       $v1, $v1, 0x88
/* C0B9C 800D039C 0F006010 */  beqz       $v1, .L800D03DC
/* C0BA0 800D03A0 21988000 */   addu      $s3, $a0, $zero
/* C0BA4 800D03A4 21806002 */  addu       $s0, $s3, $zero
.L800D03A8:
/* C0BA8 800D03A8 CD6B000C */  jal        VSync
/* C0BAC 800D03AC FFFF0424 */   addiu     $a0, $zero, -1
/* C0BB0 800D03B0 23105100 */  subu       $v0, $v0, $s1
/* C0BB4 800D03B4 2A104202 */  slt        $v0, $s2, $v0
/* C0BB8 800D03B8 09004014 */  bnez       $v0, .L800D03E0
/* C0BBC 800D03BC FFFF0224 */   addiu     $v0, $zero, -1
/* C0BC0 800D03C0 4A70000C */  jal        FUN_8001c128
/* C0BC4 800D03C4 00000000 */   nop
/* C0BC8 800D03C8 0E000292 */  lbu        $v0, 0xe($s0)
/* C0BCC 800D03CC 00000000 */  nop
/* C0BD0 800D03D0 88004230 */  andi       $v0, $v0, 0x88
/* C0BD4 800D03D4 F4FF4014 */  bnez       $v0, .L800D03A8
/* C0BD8 800D03D8 00000000 */   nop
.L800D03DC:
/* C0BDC 800D03DC 21100000 */  addu       $v0, $zero, $zero
.L800D03E0:
/* C0BE0 800D03E0 A9004014 */  bnez       $v0, .L800D0688
/* C0BE4 800D03E4 FFFF0224 */   addiu     $v0, $zero, -1
/* C0BE8 800D03E8 E0011524 */  addiu      $s5, $zero, 0x1e0
/* C0BEC 800D03EC FFFF0424 */  addiu      $a0, $zero, -1
/* C0BF0 800D03F0 481F053C */  lui        $a1, 0x1f48
/* C0BF4 800D03F4 01008232 */  andi       $v0, $s4, 1
/* C0BF8 800D03F8 00110200 */  sll        $v0, $v0, 4
/* C0BFC 800D03FC A0004234 */  ori        $v0, $v0, 0xa0
/* C0C00 800D0400 481F033C */  lui        $v1, 0x1f48
/* C0C04 800D0404 0C00A2A0 */  sb         $v0, 0xc($a1)
/* C0C08 800D0408 481F053C */  lui        $a1, 0x1f48
/* C0C0C 800D040C 08000224 */  addiu      $v0, $zero, 8
/* C0C10 800D0410 020060A0 */  sb         $zero, 2($v1)
/* C0C14 800D0414 481F033C */  lui        $v1, 0x1f48
/* C0C18 800D0418 2080103C */  lui        $s0, %hi(D_801FBD10)
/* C0C1C 800D041C 10BD1126 */  addiu      $s1, $s0, %lo(D_801FBD10)
/* C0C20 800D0420 0A00A2A0 */  sb         $v0, 0xa($a1)
/* C0C24 800D0424 080060A0 */  sb         $zero, 8($v1)
/* C0C28 800D0428 481F033C */  lui        $v1, 0x1f48
/* C0C2C 800D042C A0000224 */  addiu      $v0, $zero, 0xa0
/* C0C30 800D0430 DF1120A2 */  sb         $zero, 0x11df($s1)
/* C0C34 800D0434 0E0062A0 */  sb         $v0, 0xe($v1)
/* C0C38 800D0438 CD6B000C */  jal        VSync
/* C0C3C 800D043C 21A00002 */   addu      $s4, $s0, $zero
/* C0C40 800D0440 21904000 */  addu       $s2, $v0, $zero
/* C0C44 800D0444 481F103C */  lui        $s0, 0x1f48
.L800D0448:
/* C0C48 800D0448 0E006292 */  lbu        $v0, 0xe($s3)
/* C0C4C 800D044C 00000000 */  nop
/* C0C50 800D0450 D81122A2 */  sb         $v0, 0x11d8($s1)
/* C0C54 800D0454 04000392 */  lbu        $v1, 4($s0)
/* C0C58 800D0458 FFFF0424 */  addiu      $a0, $zero, -1
/* C0C5C 800D045C DA1123A2 */  sb         $v1, 0x11da($s1)
/* C0C60 800D0460 CD6B000C */  jal        VSync
/* C0C64 800D0464 00000000 */   nop
/* C0C68 800D0468 D8112392 */  lbu        $v1, 0x11d8($s1)
/* C0C6C 800D046C 00000000 */  nop
/* C0C70 800D0470 80006330 */  andi       $v1, $v1, 0x80
/* C0C74 800D0474 10006014 */  bnez       $v1, .L800D04B8
/* C0C78 800D0478 21204000 */   addu      $a0, $v0, $zero
/* C0C7C 800D047C D8112292 */  lbu        $v0, 0x11d8($s1)
/* C0C80 800D0480 00000000 */  nop
/* C0C84 800D0484 08004230 */  andi       $v0, $v0, 8
/* C0C88 800D0488 0C004010 */  beqz       $v0, .L800D04BC
/* C0C8C 800D048C 23109200 */   subu      $v0, $a0, $s2
/* C0C90 800D0490 DA112292 */  lbu        $v0, 0x11da($s1)
/* C0C94 800D0494 00000000 */  nop
/* C0C98 800D0498 01004230 */  andi       $v0, $v0, 1
/* C0C9C 800D049C 07004010 */  beqz       $v0, .L800D04BC
/* C0CA0 800D04A0 23109200 */   subu      $v0, $a0, $s2
/* C0CA4 800D04A4 DA112292 */  lbu        $v0, 0x11da($s1)
/* C0CA8 800D04A8 00000000 */  nop
/* C0CAC 800D04AC 02004230 */  andi       $v0, $v0, 2
/* C0CB0 800D04B0 09004010 */  beqz       $v0, .L800D04D8
/* C0CB4 800D04B4 21100000 */   addu      $v0, $zero, $zero
.L800D04B8:
/* C0CB8 800D04B8 23109200 */  subu       $v0, $a0, $s2
.L800D04BC:
/* C0CBC 800D04BC 2A10A202 */  slt        $v0, $s5, $v0
/* C0CC0 800D04C0 05004014 */  bnez       $v0, .L800D04D8
/* C0CC4 800D04C4 FFFF0224 */   addiu     $v0, $zero, -1
/* C0CC8 800D04C8 4A70000C */  jal        FUN_8001c128
/* C0CCC 800D04CC 00000000 */   nop
/* C0CD0 800D04D0 12410308 */  j          .L800D0448
/* C0CD4 800D04D4 00000000 */   nop
.L800D04D8:
/* C0CD8 800D04D8 6B004014 */  bnez       $v0, .L800D0688
/* C0CDC 800D04DC FFFF0224 */   addiu     $v0, $zero, -1
/* C0CE0 800D04E0 2180C002 */  addu       $s0, $s6, $zero
/* C0CE4 800D04E4 06000424 */  addiu      $a0, $zero, 6
/* C0CE8 800D04E8 10BD8326 */  addiu      $v1, $s4, -0x42f0
/* C0CEC 800D04EC 481F133C */  lui        $s3, 0x1f48
/* C0CF0 800D04F0 D011628C */  lw         $v0, 0x11d0($v1)
/* C0CF4 800D04F4 21286002 */  addu       $a1, $s3, $zero
/* C0CF8 800D04F8 D41162AC */  sw         $v0, 0x11d4($v1)
.L800D04FC:
/* C0CFC 800D04FC 00000296 */  lhu        $v0, ($s0)
/* C0D00 800D0500 02001026 */  addiu      $s0, $s0, 2
/* C0D04 800D0504 FFFF8424 */  addiu      $a0, $a0, -1
/* C0D08 800D0508 0000A2A4 */  sh         $v0, ($a1)
/* C0D0C 800D050C FBFF8014 */  bnez       $a0, .L800D04FC
/* C0D10 800D0510 00000000 */   nop
/* C0D14 800D0514 CD6B000C */  jal        VSync
/* C0D18 800D0518 FFFF0424 */   addiu     $a0, $zero, -1
/* C0D1C 800D051C E0011224 */  addiu      $s2, $zero, 0x1e0
/* C0D20 800D0520 10BD8526 */  addiu      $a1, $s4, -0x42f0
/* C0D24 800D0524 D411A48C */  lw         $a0, 0x11d4($a1)
/* C0D28 800D0528 D011A38C */  lw         $v1, 0x11d0($a1)
/* C0D2C 800D052C 00000000 */  nop
/* C0D30 800D0530 0F008314 */  bne        $a0, $v1, .L800D0570
/* C0D34 800D0534 21804000 */   addu      $s0, $v0, $zero
/* C0D38 800D0538 2188A000 */  addu       $s1, $a1, $zero
.L800D053C:
/* C0D3C 800D053C CD6B000C */  jal        VSync
/* C0D40 800D0540 FFFF0424 */   addiu     $a0, $zero, -1
/* C0D44 800D0544 23105000 */  subu       $v0, $v0, $s0
/* C0D48 800D0548 2A104202 */  slt        $v0, $s2, $v0
/* C0D4C 800D054C 09004014 */  bnez       $v0, .L800D0574
/* C0D50 800D0550 FFFF0224 */   addiu     $v0, $zero, -1
/* C0D54 800D0554 4A70000C */  jal        FUN_8001c128
/* C0D58 800D0558 00000000 */   nop
/* C0D5C 800D055C D411238E */  lw         $v1, 0x11d4($s1)
/* C0D60 800D0560 D011228E */  lw         $v0, 0x11d0($s1)
/* C0D64 800D0564 00000000 */  nop
/* C0D68 800D0568 F4FF6210 */  beq        $v1, $v0, .L800D053C
/* C0D6C 800D056C 00000000 */   nop
.L800D0570:
/* C0D70 800D0570 21100000 */  addu       $v0, $zero, $zero
.L800D0574:
/* C0D74 800D0574 44004014 */  bnez       $v0, .L800D0688
/* C0D78 800D0578 FFFF0224 */   addiu     $v0, $zero, -1
/* C0D7C 800D057C 10BD8626 */  addiu      $a2, $s4, -0x42f0
/* C0D80 800D0580 D811C290 */  lbu        $v0, 0x11d8($a2)
/* C0D84 800D0584 00000000 */  nop
/* C0D88 800D0588 01004230 */  andi       $v0, $v0, 1
/* C0D8C 800D058C 3E004014 */  bnez       $v0, .L800D0688
/* C0D90 800D0590 F9FF0224 */   addiu     $v0, $zero, -7
/* C0D94 800D0594 DC11C394 */  lhu        $v1, 0x11dc($a2)
/* C0D98 800D0598 10000224 */  addiu      $v0, $zero, 0x10
/* C0D9C 800D059C 3A006214 */  bne        $v1, $v0, .L800D0688
/* C0DA0 800D05A0 F8FF0224 */   addiu     $v0, $zero, -8
/* C0DA4 800D05A4 D811C290 */  lbu        $v0, 0x11d8($a2)
/* C0DA8 800D05A8 00000000 */  nop
/* C0DAC 800D05AC 08004230 */  andi       $v0, $v0, 8
/* C0DB0 800D05B0 03004014 */  bnez       $v0, .L800D05C0
/* C0DB4 800D05B4 9401C424 */   addiu     $a0, $a2, 0x194
/* C0DB8 800D05B8 A2410308 */  j          .L800D0688
/* C0DBC 800D05BC F8FF0224 */   addiu     $v0, $zero, -8
.L800D05C0:
/* C0DC0 800D05C0 21280000 */  addu       $a1, $zero, $zero
/* C0DC4 800D05C4 D011C28C */  lw         $v0, 0x11d0($a2)
/* C0DC8 800D05C8 DC11C394 */  lhu        $v1, 0x11dc($a2)
/* C0DCC 800D05CC D411C2AC */  sw         $v0, 0x11d4($a2)
/* C0DD0 800D05D0 82300300 */  srl        $a2, $v1, 2
/* C0DD4 800D05D4 0A00C010 */  beqz       $a2, .L800D0600
/* C0DD8 800D05D8 00006726 */   addiu     $a3, $s3, 0
.L800D05DC:
/* C0DDC 800D05DC 0000E294 */  lhu        $v0, ($a3)
/* C0DE0 800D05E0 0100A524 */  addiu      $a1, $a1, 1
/* C0DE4 800D05E4 000082A4 */  sh         $v0, ($a0)
/* C0DE8 800D05E8 02008424 */  addiu      $a0, $a0, 2
/* C0DEC 800D05EC 0000E394 */  lhu        $v1, ($a3)
/* C0DF0 800D05F0 2B10A600 */  sltu       $v0, $a1, $a2
/* C0DF4 800D05F4 000083A4 */  sh         $v1, ($a0)
/* C0DF8 800D05F8 F8FF4014 */  bnez       $v0, .L800D05DC
/* C0DFC 800D05FC 02008424 */   addiu     $a0, $a0, 2
.L800D0600:
/* C0E00 800D0600 CD6B000C */  jal        VSync
/* C0E04 800D0604 FFFF0424 */   addiu     $a0, $zero, -1
/* C0E08 800D0608 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C0E0C 800D060C 10BD8526 */  addiu      $a1, $s4, -0x42f0
/* C0E10 800D0610 D411A48C */  lw         $a0, 0x11d4($a1)
/* C0E14 800D0614 D011A38C */  lw         $v1, 0x11d0($a1)
/* C0E18 800D0618 00000000 */  nop
/* C0E1C 800D061C 0F008314 */  bne        $a0, $v1, .L800D065C
/* C0E20 800D0620 21804000 */   addu      $s0, $v0, $zero
/* C0E24 800D0624 2188A000 */  addu       $s1, $a1, $zero
.L800D0628:
/* C0E28 800D0628 CD6B000C */  jal        VSync
/* C0E2C 800D062C FFFF0424 */   addiu     $a0, $zero, -1
/* C0E30 800D0630 23105000 */  subu       $v0, $v0, $s0
/* C0E34 800D0634 2A104202 */  slt        $v0, $s2, $v0
/* C0E38 800D0638 09004014 */  bnez       $v0, .L800D0660
/* C0E3C 800D063C FFFF0224 */   addiu     $v0, $zero, -1
/* C0E40 800D0640 4A70000C */  jal        FUN_8001c128
/* C0E44 800D0644 00000000 */   nop
/* C0E48 800D0648 D411238E */  lw         $v1, 0x11d4($s1)
/* C0E4C 800D064C D011228E */  lw         $v0, 0x11d0($s1)
/* C0E50 800D0650 00000000 */  nop
/* C0E54 800D0654 F4FF6210 */  beq        $v1, $v0, .L800D0628
/* C0E58 800D0658 00000000 */   nop
.L800D065C:
/* C0E5C 800D065C 21100000 */  addu       $v0, $zero, $zero
.L800D0660:
/* C0E60 800D0660 08004014 */  bnez       $v0, .L800D0684
/* C0E64 800D0664 10BD8226 */   addiu     $v0, $s4, -0x42f0
/* C0E68 800D0668 D8114390 */  lbu        $v1, 0x11d8($v0)
/* C0E6C 800D066C 00000000 */  nop
/* C0E70 800D0670 01006330 */  andi       $v1, $v1, 1
/* C0E74 800D0674 04006014 */  bnez       $v1, .L800D0688
/* C0E78 800D0678 F9FF0224 */   addiu     $v0, $zero, -7
/* C0E7C 800D067C A2410308 */  j          .L800D0688
/* C0E80 800D0680 21100000 */   addu      $v0, $zero, $zero
.L800D0684:
/* C0E84 800D0684 FFFF0224 */  addiu      $v0, $zero, -1
.L800D0688:
/* C0E88 800D0688 3C00BF8F */  lw         $ra, 0x3c($sp)
/* C0E8C 800D068C 3800B68F */  lw         $s6, 0x38($sp)
/* C0E90 800D0690 3400B58F */  lw         $s5, 0x34($sp)
/* C0E94 800D0694 3000B48F */  lw         $s4, 0x30($sp)
/* C0E98 800D0698 2C00B38F */  lw         $s3, 0x2c($sp)
/* C0E9C 800D069C 2800B28F */  lw         $s2, 0x28($sp)
/* C0EA0 800D06A0 2400B18F */  lw         $s1, 0x24($sp)
/* C0EA4 800D06A4 2000B08F */  lw         $s0, 0x20($sp)
/* C0EA8 800D06A8 0800E003 */  jr         $ra
/* C0EAC 800D06AC 4000BD27 */   addiu     $sp, $sp, 0x40

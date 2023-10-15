.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e378
/* 1EB78 8002E378 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1EB7C 8002E37C 21400000 */  addu       $t0, $zero, $zero
/* 1EB80 8002E380 1F000924 */  addiu      $t1, $zero, 0x1f
/* 1EB84 8002E384 15800F3C */  lui        $t7, 0x8015
/* 1EB88 8002E388 1400B1AF */  sw         $s1, 0x14($sp)
/* 1EB8C 8002E38C 1580113C */  lui        $s1, 0x8015
/* 1EB90 8002E390 1580073C */  lui        $a3, 0x8015
/* 1EB94 8002E394 1000B0AF */  sw         $s0, 0x10($sp)
/* 1EB98 8002E398 2180E000 */  addu       $s0, $a3, $zero
/* 1EB9C 8002E39C 1580063C */  lui        $a2, 0x8015
/* 1EBA0 8002E3A0 21C8C000 */  addu       $t9, $a2, $zero
/* 1EBA4 8002E3A4 1580053C */  lui        $a1, 0x8015
/* 1EBA8 8002E3A8 21C0A000 */  addu       $t8, $a1, $zero
/* 1EBAC 8002E3AC FFFF0E24 */  addiu      $t6, $zero, -1
/* 1EBB0 8002E3B0 20000B24 */  addiu      $t3, $zero, 0x20
/* 1EBB4 8002E3B4 1580023C */  lui        $v0, %hi(D_8014CCC0)
/* 1EBB8 8002E3B8 C0CC4224 */  addiu      $v0, $v0, %lo(D_8014CCC0)
/* 1EBBC 8002E3BC 70114A24 */  addiu      $t2, $v0, 0x1170
/* 1EBC0 8002E3C0 FFFF0D24 */  addiu      $t5, $zero, -1
/* 1EBC4 8002E3C4 21600000 */  addu       $t4, $zero, $zero
/* 1EBC8 8002E3C8 1580043C */  lui        $a0, %hi(D_8014CB80)
/* 1EBCC 8002E3CC 03000224 */  addiu      $v0, $zero, 3
/* 1EBD0 8002E3D0 FFFF0324 */  addiu      $v1, $zero, -1
/* 1EBD4 8002E3D4 80CB82AC */  sw         $v0, %lo(D_8014CB80)($a0)
/* 1EBD8 8002E3D8 1580023C */  lui        $v0, %hi(D_8014CCA0)
/* 1EBDC 8002E3DC 1580043C */  lui        $a0, %hi(D_8014DEF8)
/* 1EBE0 8002E3E0 A0CC40AC */  sw         $zero, %lo(D_8014CCA0)($v0)
/* 1EBE4 8002E3E4 F8DE8224 */  addiu      $v0, $a0, %lo(D_8014DEF8)
/* 1EBE8 8002E3E8 88CBE3AC */  sw         $v1, -0x3478($a3)
/* 1EBEC 8002E3EC 8CCBC3AC */  sw         $v1, -0x3474($a2)
/* 1EBF0 8002E3F0 1580033C */  lui        $v1, %hi(D_8014DED0)
/* 1EBF4 8002E3F4 1800BFAF */  sw         $ra, 0x18($sp)
/* 1EBF8 8002E3F8 90CBA0AC */  sw         $zero, -0x3470($a1)
/* 1EBFC 8002E3FC 040040AC */  sw         $zero, 4($v0)
/* 1EC00 8002E400 D0DE60AC */  sw         $zero, %lo(D_8014DED0)($v1)
/* 1EC04 8002E404 D0DE6324 */  addiu      $v1, $v1, -0x2130
/* 1EC08 8002E408 1580023C */  lui        $v0, %hi(D_8014DF08)
/* 1EC0C 8002E40C F8DE80AC */  sw         $zero, -0x2108($a0)
/* 1EC10 8002E410 040060AC */  sw         $zero, 4($v1)
/* 1EC14 8002E414 080060AC */  sw         $zero, 8($v1)
/* 1EC18 8002E418 0C0060AC */  sw         $zero, 0xc($v1)
/* 1EC1C 8002E41C 08DF40AC */  sw         $zero, %lo(D_8014DF08)($v0)
/* 1EC20 8002E420 08DF4224 */  addiu      $v0, $v0, -0x20f8
/* 1EC24 8002E424 040040AC */  sw         $zero, 4($v0)
/* 1EC28 8002E428 080040AC */  sw         $zero, 8($v0)
/* 1EC2C 8002E42C 0C0040AC */  sw         $zero, 0xc($v0)
/* 1EC30 8002E430 100040AC */  sw         $zero, 0x10($v0)
/* 1EC34 8002E434 140040AC */  sw         $zero, 0x14($v0)
/* 1EC38 8002E438 180040AC */  sw         $zero, 0x18($v0)
/* 1EC3C 8002E43C 1C0040AC */  sw         $zero, 0x1c($v0)
.L8002E440:
/* 1EC40 8002E440 84004285 */  lh         $v0, 0x84($t2)
/* 1EC44 8002E444 00000000 */  nop
/* 1EC48 8002E448 10004010 */  beqz       $v0, .L8002E48C
/* 1EC4C 8002E44C 00000000 */   nop
/* 1EC50 8002E450 86004285 */  lh         $v0, 0x86($t2)
/* 1EC54 8002E454 00000000 */  nop
/* 1EC58 8002E458 0C004018 */  blez       $v0, .L8002E48C
/* 1EC5C 8002E45C 00000000 */   nop
/* 1EC60 8002E460 07000015 */  bnez       $t0, .L8002E480
/* 1EC64 8002E464 02004228 */   slti      $v0, $v0, 2
/* 1EC68 8002E468 21706001 */  addu       $t6, $t3, $zero
/* 1EC6C 8002E46C 07004014 */  bnez       $v0, .L8002E48C
/* 1EC70 8002E470 01000824 */   addiu     $t0, $zero, 1
/* 1EC74 8002E474 2168C001 */  addu       $t5, $t6, $zero
/* 1EC78 8002E478 22B90008 */  j          .L8002E488
/* 1EC7C 8002E47C 01000C24 */   addiu     $t4, $zero, 1
.L8002E480:
/* 1EC80 8002E480 21686001 */  addu       $t5, $t3, $zero
/* 1EC84 8002E484 21600000 */  addu       $t4, $zero, $zero
.L8002E488:
/* 1EC88 8002E488 02000824 */  addiu      $t0, $zero, 2
.L8002E48C:
/* 1EC8C 8002E48C FFFF6B25 */  addiu      $t3, $t3, -1
/* 1EC90 8002E490 FFFF2925 */  addiu      $t1, $t1, -1
/* 1EC94 8002E494 04002005 */  bltz       $t1, .L8002E4A8
/* 1EC98 8002E498 70FF4A25 */   addiu     $t2, $t2, -0x90
/* 1EC9C 8002E49C 02000229 */  slti       $v0, $t0, 2
/* 1ECA0 8002E4A0 E7FF4014 */  bnez       $v0, .L8002E440
/* 1ECA4 8002E4A4 00000000 */   nop
.L8002E4A8:
/* 1ECA8 8002E4A8 21400000 */  addu       $t0, $zero, $zero
/* 1ECAC 8002E4AC 1F000924 */  addiu      $t1, $zero, 0x1f
/* 1ECB0 8002E4B0 2138E001 */  addu       $a3, $t7, $zero
/* 1ECB4 8002E4B4 E0DEE225 */  addiu      $v0, $t7, -0x2120
/* 1ECB8 8002E4B8 21204000 */  addu       $a0, $v0, $zero
/* 1ECBC 8002E4BC 1580033C */  lui        $v1, %hi(D_8014CCC0)
/* 1ECC0 8002E4C0 C0CC6324 */  addiu      $v1, $v1, %lo(D_8014CCC0)
/* 1ECC4 8002E4C4 70116524 */  addiu      $a1, $v1, 0x1170
/* 1ECC8 8002E4C8 FFFF0624 */  addiu      $a2, $zero, -1
/* 1ECCC 8002E4CC FFFF0324 */  addiu      $v1, $zero, -1
/* 1ECD0 8002E4D0 90CB0CAF */  sw         $t4, -0x3470($t8)
/* 1ECD4 8002E4D4 8CCB2DAF */  sw         $t5, -0x3474($t9)
/* 1ECD8 8002E4D8 88CB0EAE */  sw         $t6, -0x3478($s0)
/* 1ECDC 8002E4DC 080043AC */  sw         $v1, 8($v0)
/* 1ECE0 8002E4E0 E0DEE3AD */  sw         $v1, -0x2120($t7)
.L8002E4E4:
/* 1ECE4 8002E4E4 8400A284 */  lh         $v0, 0x84($a1)
/* 1ECE8 8002E4E8 00000000 */  nop
/* 1ECEC 8002E4EC 13004010 */  beqz       $v0, .L8002E53C
/* 1ECF0 8002E4F0 00000000 */   nop
/* 1ECF4 8002E4F4 8A00A284 */  lh         $v0, 0x8a($a1)
/* 1ECF8 8002E4F8 00000000 */  nop
/* 1ECFC 8002E4FC 0F004018 */  blez       $v0, .L8002E53C
/* 1ED00 8002E500 00000000 */   nop
/* 1ED04 8002E504 0B000015 */  bnez       $t0, .L8002E534
/* 1ED08 8002E508 02000824 */   addiu     $t0, $zero, 2
/* 1ED0C 8002E50C 01000324 */  addiu      $v1, $zero, 1
/* 1ED10 8002E510 04004314 */  bne        $v0, $v1, .L8002E524
/* 1ED14 8002E514 21302001 */   addu      $a2, $t1, $zero
/* 1ED18 8002E518 040080AC */  sw         $zero, 4($a0)
/* 1ED1C 8002E51C 4FB90008 */  j          .L8002E53C
/* 1ED20 8002E520 01000824 */   addiu     $t0, $zero, 1
.L8002E524:
/* 1ED24 8002E524 040080AC */  sw         $zero, 4($a0)
/* 1ED28 8002E528 080086AC */  sw         $a2, 8($a0)
/* 1ED2C 8002E52C 4FB90008 */  j          .L8002E53C
/* 1ED30 8002E530 0C0083AC */   sw        $v1, 0xc($a0)
.L8002E534:
/* 1ED34 8002E534 080089AC */  sw         $t1, 8($a0)
/* 1ED38 8002E538 0C0080AC */  sw         $zero, 0xc($a0)
.L8002E53C:
/* 1ED3C 8002E53C FFFF2925 */  addiu      $t1, $t1, -1
/* 1ED40 8002E540 04002005 */  bltz       $t1, .L8002E554
/* 1ED44 8002E544 70FFA524 */   addiu     $a1, $a1, -0x90
/* 1ED48 8002E548 02000229 */  slti       $v0, $t0, 2
/* 1ED4C 8002E54C E5FF4014 */  bnez       $v0, .L8002E4E4
/* 1ED50 8002E550 00000000 */   nop
.L8002E554:
/* 1ED54 8002E554 1580043C */  lui        $a0, %hi(D_8014C8B0)
/* 1ED58 8002E558 B0C88424 */  addiu      $a0, $a0, %lo(D_8014C8B0)
/* 1ED5C 8002E55C 04000524 */  addiu      $a1, $zero, 4
/* 1ED60 8002E560 5609030C */  jal        FUN_800c2558
/* 1ED64 8002E564 E0DEE6AC */   sw        $a2, -0x2120($a3)
/* 1ED68 8002E568 1D6E000C */  jal        FUN_8001b874
/* 1ED6C 8002E56C 00000000 */   nop
/* 1ED70 8002E570 00F2043C */  lui        $a0, 0xf200
/* 1ED74 8002E574 02008434 */  ori        $a0, $a0, 2
/* 1ED78 8002E578 02000524 */  addiu      $a1, $zero, 2
/* 1ED7C 8002E57C 00100624 */  addiu      $a2, $zero, 0x1000
/* 1ED80 8002E580 0380073C */  lui        $a3, %hi(func_8002D924)
/* 1ED84 8002E584 2DBB000C */  jal        OpenEvent
/* 1ED88 8002E588 24D9E724 */   addiu     $a3, $a3, %lo(func_8002D924)
/* 1ED8C 8002E58C 00F2043C */  lui        $a0, 0xf200
/* 1ED90 8002E590 02008434 */  ori        $a0, $a0, 2
/* 1ED94 8002E594 26420524 */  addiu      $a1, $zero, 0x4226
/* 1ED98 8002E598 00100624 */  addiu      $a2, $zero, 0x1000
/* 1ED9C 8002E59C 815F000C */  jal        SetRCnt
/* 1EDA0 8002E5A0 A8CC22AE */   sw        $v0, -0x3358($s1)
/* 1EDA4 8002E5A4 A8CC248E */  lw         $a0, -0x3358($s1)
/* 1EDA8 8002E5A8 31BB000C */  jal        EnableEvent
/* 1EDAC 8002E5AC 00000000 */   nop
/* 1EDB0 8002E5B0 00F2043C */  lui        $a0, 0xf200
/* 1EDB4 8002E5B4 B65F000C */  jal        StartRCnt
/* 1EDB8 8002E5B8 02008434 */   ori       $a0, $a0, 2
/* 1EDBC 8002E5BC 216E000C */  jal        FUN_8001b884
/* 1EDC0 8002E5C0 00000000 */   nop
/* 1EDC4 8002E5C4 1800BF8F */  lw         $ra, 0x18($sp)
/* 1EDC8 8002E5C8 1400B18F */  lw         $s1, 0x14($sp)
/* 1EDCC 8002E5CC 1000B08F */  lw         $s0, 0x10($sp)
/* 1EDD0 8002E5D0 0800E003 */  jr         $ra
/* 1EDD4 8002E5D4 2000BD27 */   addiu     $sp, $sp, 0x20

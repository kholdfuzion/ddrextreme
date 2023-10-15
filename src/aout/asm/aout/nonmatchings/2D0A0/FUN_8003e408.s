.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003e408
/* 2EC08 8003E408 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 2EC0C 8003E40C 5800BFAF */  sw         $ra, 0x58($sp)
/* 2EC10 8003E410 5400B3AF */  sw         $s3, 0x54($sp)
/* 2EC14 8003E414 5000B2AF */  sw         $s2, 0x50($sp)
/* 2EC18 8003E418 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 2EC1C 8003E41C 7DC4000C */  jal        get_astruct_800311f4
/* 2EC20 8003E420 4800B0AF */   sw        $s0, 0x48($sp)
/* 2EC24 8003E424 9019030C */  jal        FUN_800c6640
/* 2EC28 8003E428 21884000 */   addu      $s1, $v0, $zero
/* 2EC2C 8003E42C 21904000 */  addu       $s2, $v0, $zero
/* 2EC30 8003E430 17004012 */  beqz       $s2, .L8003E490
/* 2EC34 8003E434 21200000 */   addu      $a0, $zero, $zero
/* 2EC38 8003E438 9C19030C */  jal        FUN_800c6670
/* 2EC3C 8003E43C 2000A427 */   addiu     $a0, $sp, 0x20
/* 2EC40 8003E440 BC0E238E */  lw         $v1, 0xebc($s1)
/* 2EC44 8003E444 00000000 */  nop
/* 2EC48 8003E448 01006324 */  addiu      $v1, $v1, 1
/* 2EC4C 8003E44C BC0E23AE */  sw         $v1, 0xebc($s1)
/* 2EC50 8003E450 2400A28F */  lw         $v0, 0x24($sp)
/* 2EC54 8003E454 00000000 */  nop
/* 2EC58 8003E458 07004010 */  beqz       $v0, .L8003E478
/* 2EC5C 8003E45C 00000000 */   nop
/* 2EC60 8003E460 C00E228E */  lw         $v0, 0xec0($s1)
/* 2EC64 8003E464 BC0E20AE */  sw         $zero, 0xebc($s1)
/* 2EC68 8003E468 2400A38F */  lw         $v1, 0x24($sp)
/* 2EC6C 8003E46C 00000000 */  nop
/* 2EC70 8003E470 21104300 */  addu       $v0, $v0, $v1
/* 2EC74 8003E474 C00E22AE */  sw         $v0, 0xec0($s1)
.L8003E478:
/* 2EC78 8003E478 C40E228E */  lw         $v0, 0xec4($s1)
/* 2EC7C 8003E47C 2800A38F */  lw         $v1, 0x28($sp)
/* 2EC80 8003E480 00000000 */  nop
/* 2EC84 8003E484 21104300 */  addu       $v0, $v0, $v1
/* 2EC88 8003E488 C40E22AE */  sw         $v0, 0xec4($s1)
/* 2EC8C 8003E48C 21200000 */  addu       $a0, $zero, $zero
.L8003E490:
/* 2EC90 8003E490 9CFF0524 */  addiu      $a1, $zero, -0x64
/* 2EC94 8003E494 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2EC98 8003E498 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EC9C 8003E49C 00101024 */  addiu      $s0, $zero, 0x1000
/* 2ECA0 8003E4A0 0180023C */  lui        $v0, %hi(D_800130A4)
/* 2ECA4 8003E4A4 A4304224 */  addiu      $v0, $v0, %lo(D_800130A4)
/* 2ECA8 8003E4A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ECAC 8003E4AC 290A010C */  jal        PrintText_800428a4
/* 2ECB0 8003E4B0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ECB4 8003E4B4 21200000 */  addu       $a0, $zero, $zero
/* 2ECB8 8003E4B8 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2ECBC 8003E4BC B8FF0624 */  addiu      $a2, $zero, -0x48
/* 2ECC0 8003E4C0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ECC4 8003E4C4 0180023C */  lui        $v0, %hi(D_800130C0)
/* 2ECC8 8003E4C8 C0304224 */  addiu      $v0, $v0, %lo(D_800130C0)
/* 2ECCC 8003E4CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ECD0 8003E4D0 290A010C */  jal        PrintText_800428a4
/* 2ECD4 8003E4D4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ECD8 8003E4D8 0F004012 */  beqz       $s2, .L8003E518
/* 2ECDC 8003E4DC 21200000 */   addu      $a0, $zero, $zero
/* 2ECE0 8003E4E0 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2ECE4 8003E4E4 C7FF0624 */  addiu      $a2, $zero, -0x39
/* 2ECE8 8003E4E8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ECEC 8003E4EC 0180023C */  lui        $v0, %hi(D_800130C8)
/* 2ECF0 8003E4F0 21984000 */  addu       $s3, $v0, $zero
/* 2ECF4 8003E4F4 2C00A38F */  lw         $v1, 0x2c($sp)
/* 2ECF8 8003E4F8 C8304224 */  addiu      $v0, $v0, %lo(D_800130C8)
/* 2ECFC 8003E4FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ED00 8003E500 1400A2AF */  sw         $v0, 0x14($sp)
/* 2ED04 8003E504 1A006324 */  addiu      $v1, $v1, 0x1a
/* 2ED08 8003E508 290A010C */  jal        PrintText_800428a4
/* 2ED0C 8003E50C 1800A3AF */   sw        $v1, 0x18($sp)
/* 2ED10 8003E510 47F90008 */  j          .L8003E51C
/* 2ED14 8003E514 21200000 */   addu      $a0, $zero, $zero
.L8003E518:
/* 2ED18 8003E518 0180133C */  lui        $s3, 0x8001
.L8003E51C:
/* 2ED1C 8003E51C 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2ED20 8003E520 D6FF0624 */  addiu      $a2, $zero, -0x2a
/* 2ED24 8003E524 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ED28 8003E528 00101024 */  addiu      $s0, $zero, 0x1000
/* 2ED2C 8003E52C 0180023C */  lui        $v0, %hi(D_800130CC)
/* 2ED30 8003E530 CC304224 */  addiu      $v0, $v0, %lo(D_800130CC)
/* 2ED34 8003E534 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ED38 8003E538 290A010C */  jal        PrintText_800428a4
/* 2ED3C 8003E53C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ED40 8003E540 12004012 */  beqz       $s2, .L8003E58C
/* 2ED44 8003E544 C8306226 */   addiu     $v0, $s3, 0x30c8
/* 2ED48 8003E548 3000A393 */  lbu        $v1, 0x30($sp)
/* 2ED4C 8003E54C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2ED50 8003E550 04006010 */  beqz       $v1, .L8003E564
/* 2ED54 8003E554 1400A2AF */   sw        $v0, 0x14($sp)
/* 2ED58 8003E558 0180023C */  lui        $v0, %hi(D_800130DC)
/* 2ED5C 8003E55C 5BF90008 */  j          .L8003E56C
/* 2ED60 8003E560 DC304224 */   addiu     $v0, $v0, %lo(D_800130DC)
.L8003E564:
/* 2ED64 8003E564 0180023C */  lui        $v0, %hi(D_800130E4)
/* 2ED68 8003E568 E4304224 */  addiu      $v0, $v0, %lo(D_800130E4)
.L8003E56C:
/* 2ED6C 8003E56C 1800A2AF */  sw         $v0, 0x18($sp)
/* 2ED70 8003E570 21200000 */  addu       $a0, $zero, $zero
/* 2ED74 8003E574 20000524 */  addiu      $a1, $zero, 0x20
/* 2ED78 8003E578 D6FF0624 */  addiu      $a2, $zero, -0x2a
/* 2ED7C 8003E57C 290A010C */  jal        PrintText_800428a4
/* 2ED80 8003E580 00100724 */   addiu     $a3, $zero, 0x1000
/* 2ED84 8003E584 6DF90008 */  j          .L8003E5B4
/* 2ED88 8003E588 21200000 */   addu      $a0, $zero, $zero
.L8003E58C:
/* 2ED8C 8003E58C 21200000 */  addu       $a0, $zero, $zero
/* 2ED90 8003E590 20000524 */  addiu      $a1, $zero, 0x20
/* 2ED94 8003E594 D6FF0624 */  addiu      $a2, $zero, -0x2a
/* 2ED98 8003E598 00100724 */  addiu      $a3, $zero, 0x1000
/* 2ED9C 8003E59C 0180023C */  lui        $v0, %hi(D_800130E4)
/* 2EDA0 8003E5A0 E4304224 */  addiu      $v0, $v0, %lo(D_800130E4)
/* 2EDA4 8003E5A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EDA8 8003E5A8 290A010C */  jal        PrintText_800428a4
/* 2EDAC 8003E5AC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EDB0 8003E5B0 21200000 */  addu       $a0, $zero, $zero
.L8003E5B4:
/* 2EDB4 8003E5B4 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2EDB8 8003E5B8 E0FF0624 */  addiu      $a2, $zero, -0x20
/* 2EDBC 8003E5BC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EDC0 8003E5C0 00100324 */  addiu      $v1, $zero, 0x1000
/* 2EDC4 8003E5C4 0180023C */  lui        $v0, %hi(D_800130EC)
/* 2EDC8 8003E5C8 EC304224 */  addiu      $v0, $v0, %lo(D_800130EC)
/* 2EDCC 8003E5CC 1000A3AF */  sw         $v1, 0x10($sp)
/* 2EDD0 8003E5D0 290A010C */  jal        PrintText_800428a4
/* 2EDD4 8003E5D4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EDD8 8003E5D8 0180023C */  lui        $v0, %hi(D_800130FC)
/* 2EDDC 8003E5DC FC304324 */  addiu      $v1, $v0, %lo(D_800130FC)
/* 2EDE0 8003E5E0 FC30448C */  lw         $a0, 0x30fc($v0)
/* 2EDE4 8003E5E4 04006594 */  lhu        $a1, 4($v1)
/* 2EDE8 8003E5E8 06006290 */  lbu        $v0, 6($v1)
/* 2EDEC 8003E5EC 3800A4AF */  sw         $a0, 0x38($sp)
/* 2EDF0 8003E5F0 3C00A5A7 */  sh         $a1, 0x3c($sp)
/* 2EDF4 8003E5F4 20004012 */  beqz       $s2, .L8003E678
/* 2EDF8 8003E5F8 3E00A2A3 */   sb        $v0, 0x3e($sp)
/* 2EDFC 8003E5FC BC0E228E */  lw         $v0, 0xebc($s1)
/* 2EE00 8003E600 00000000 */  nop
/* 2EE04 8003E604 3C004228 */  slti       $v0, $v0, 0x3c
/* 2EE08 8003E608 1B004010 */  beqz       $v0, .L8003E678
/* 2EE0C 8003E60C 8888033C */   lui       $v1, 0x8888
/* 2EE10 8003E610 C00E268E */  lw         $a2, 0xec0($s1)
/* 2EE14 8003E614 89886334 */  ori        $v1, $v1, 0x8889
/* 2EE18 8003E618 1800C300 */  mult       $a2, $v1
/* 2EE1C 8003E61C 6666053C */  lui        $a1, 0x6666
/* 2EE20 8003E620 6766A534 */  ori        $a1, $a1, 0x6667
/* 2EE24 8003E624 C3270600 */  sra        $a0, $a2, 0x1f
/* 2EE28 8003E628 10180000 */  mfhi       $v1
/* 2EE2C 8003E62C 21186600 */  addu       $v1, $v1, $a2
/* 2EE30 8003E630 43190300 */  sra        $v1, $v1, 5
/* 2EE34 8003E634 23186400 */  subu       $v1, $v1, $a0
/* 2EE38 8003E638 00110300 */  sll        $v0, $v1, 4
/* 2EE3C 8003E63C 23104300 */  subu       $v0, $v0, $v1
/* 2EE40 8003E640 80100200 */  sll        $v0, $v0, 2
/* 2EE44 8003E644 2330C200 */  subu       $a2, $a2, $v0
/* 2EE48 8003E648 1800C500 */  mult       $a2, $a1
/* 2EE4C 8003E64C 3800A327 */  addiu      $v1, $sp, 0x38
/* 2EE50 8003E650 21406000 */  addu       $t0, $v1, $zero
/* 2EE54 8003E654 C3370600 */  sra        $a2, $a2, 0x1f
/* 2EE58 8003E658 3E000224 */  addiu      $v0, $zero, 0x3e
/* 2EE5C 8003E65C 10280000 */  mfhi       $a1
/* 2EE60 8003E660 83280500 */  sra        $a1, $a1, 2
/* 2EE64 8003E664 2328A600 */  subu       $a1, $a1, $a2
/* 2EE68 8003E668 21186500 */  addu       $v1, $v1, $a1
/* 2EE6C 8003E66C 000062A0 */  sb         $v0, ($v1)
/* 2EE70 8003E670 A7F90008 */  j          .L8003E69C
/* 2EE74 8003E674 3E00A0A3 */   sb        $zero, 0x3e($sp)
.L8003E678:
/* 2EE78 8003E678 0180023C */  lui        $v0, %hi(D_80013104)
/* 2EE7C 8003E67C 04314324 */  addiu      $v1, $v0, %lo(D_80013104)
/* 2EE80 8003E680 0431448C */  lw         $a0, 0x3104($v0)
/* 2EE84 8003E684 04006594 */  lhu        $a1, 4($v1)
/* 2EE88 8003E688 06006290 */  lbu        $v0, 6($v1)
/* 2EE8C 8003E68C 3800A827 */  addiu      $t0, $sp, 0x38
/* 2EE90 8003E690 3800A4AF */  sw         $a0, 0x38($sp)
/* 2EE94 8003E694 3C00A5A7 */  sh         $a1, 0x3c($sp)
/* 2EE98 8003E698 3E00A2A3 */  sb         $v0, 0x3e($sp)
.L8003E69C:
/* 2EE9C 8003E69C 21200000 */  addu       $a0, $zero, $zero
/* 2EEA0 8003E6A0 20000524 */  addiu      $a1, $zero, 0x20
/* 2EEA4 8003E6A4 E0FF0624 */  addiu      $a2, $zero, -0x20
/* 2EEA8 8003E6A8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EEAC 8003E6AC 00101024 */  addiu      $s0, $zero, 0x1000
/* 2EEB0 8003E6B0 C8306226 */  addiu      $v0, $s3, 0x30c8
/* 2EEB4 8003E6B4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EEB8 8003E6B8 1400A2AF */  sw         $v0, 0x14($sp)
/* 2EEBC 8003E6BC 290A010C */  jal        PrintText_800428a4
/* 2EEC0 8003E6C0 1800A8AF */   sw        $t0, 0x18($sp)
/* 2EEC4 8003E6C4 21200000 */  addu       $a0, $zero, $zero
/* 2EEC8 8003E6C8 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2EECC 8003E6CC EAFF0624 */  addiu      $a2, $zero, -0x16
/* 2EED0 8003E6D0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EED4 8003E6D4 0180023C */  lui        $v0, %hi(D_8001310C)
/* 2EED8 8003E6D8 0C314224 */  addiu      $v0, $v0, %lo(D_8001310C)
/* 2EEDC 8003E6DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EEE0 8003E6E0 290A010C */  jal        PrintText_800428a4
/* 2EEE4 8003E6E4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EEE8 8003E6E8 21200000 */  addu       $a0, $zero, $zero
/* 2EEEC 8003E6EC 50000524 */  addiu      $a1, $zero, 0x50
/* 2EEF0 8003E6F0 EAFF0624 */  addiu      $a2, $zero, -0x16
/* 2EEF4 8003E6F4 0180023C */  lui        $v0, %hi(D_80013114)
/* 2EEF8 8003E6F8 14314224 */  addiu      $v0, $v0, %lo(D_80013114)
/* 2EEFC 8003E6FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EF00 8003E700 1400A2AF */  sw         $v0, 0x14($sp)
/* 2EF04 8003E704 C40E238E */  lw         $v1, 0xec4($s1)
/* 2EF08 8003E708 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EF0C 8003E70C 290A010C */  jal        PrintText_800428a4
/* 2EF10 8003E710 1800A3AF */   sw        $v1, 0x18($sp)
/* 2EF14 8003E714 21200000 */  addu       $a0, $zero, $zero
/* 2EF18 8003E718 98FF0524 */  addiu      $a1, $zero, -0x68
/* 2EF1C 8003E71C 5E000624 */  addiu      $a2, $zero, 0x5e
/* 2EF20 8003E720 00100724 */  addiu      $a3, $zero, 0x1000
/* 2EF24 8003E724 0180023C */  lui        $v0, %hi(D_80013118)
/* 2EF28 8003E728 18314224 */  addiu      $v0, $v0, %lo(D_80013118)
/* 2EF2C 8003E72C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2EF30 8003E730 290A010C */  jal        PrintText_800428a4
/* 2EF34 8003E734 1400A2AF */   sw        $v0, 0x14($sp)
/* 2EF38 8003E738 7CAA000C */  jal        vsync_8002a9f0
/* 2EF3C 8003E73C 00000000 */   nop
/* 2EF40 8003E740 5800BF8F */  lw         $ra, 0x58($sp)
/* 2EF44 8003E744 5400B38F */  lw         $s3, 0x54($sp)
/* 2EF48 8003E748 5000B28F */  lw         $s2, 0x50($sp)
/* 2EF4C 8003E74C 4C00B18F */  lw         $s1, 0x4c($sp)
/* 2EF50 8003E750 4800B08F */  lw         $s0, 0x48($sp)
/* 2EF54 8003E754 0800E003 */  jr         $ra
/* 2EF58 8003E758 6000BD27 */   addiu     $sp, $sp, 0x60

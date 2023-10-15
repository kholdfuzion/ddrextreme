.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ac6d4
/* 9CED4 800AC6D4 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 9CED8 800AC6D8 21200000 */  addu       $a0, $zero, $zero
/* 9CEDC 800AC6DC 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 9CEE0 800AC6E0 4800B2AF */  sw         $s2, 0x48($sp)
/* 9CEE4 800AC6E4 4400B1AF */  sw         $s1, 0x44($sp)
/* 9CEE8 800AC6E8 AAAF020C */  jal        FUN_800abea8
/* 9CEEC 800AC6EC 4000B0AF */   sw        $s0, 0x40($sp)
/* 9CEF0 800AC6F0 AAAF020C */  jal        FUN_800abea8
/* 9CEF4 800AC6F4 01000424 */   addiu     $a0, $zero, 1
/* 9CEF8 800AC6F8 1C80053C */  lui        $a1, %hi(D_801C4658)
/* 9CEFC 800AC6FC 5846A224 */  addiu      $v0, $a1, %lo(D_801C4658)
/* 9CF00 800AC700 09004390 */  lbu        $v1, 9($v0)
/* 9CF04 800AC704 00000000 */  nop
/* 9CF08 800AC708 21104300 */  addu       $v0, $v0, $v1
/* 9CF0C 800AC70C 0B004490 */  lbu        $a0, 0xb($v0)
/* 9CF10 800AC710 00000000 */  nop
/* 9CF14 800AC714 F7FF8324 */  addiu      $v1, $a0, -9
/* 9CF18 800AC718 0C00622C */  sltiu      $v0, $v1, 0xc
/* 9CF1C 800AC71C E6004010 */  beqz       $v0, .L800ACAB8
/* 9CF20 800AC720 2190A000 */   addu      $s2, $a1, $zero
/* 9CF24 800AC724 0180023C */  lui        $v0, %hi(D_80016E38)
/* 9CF28 800AC728 386E4224 */  addiu      $v0, $v0, %lo(D_80016E38)
/* 9CF2C 800AC72C 80180300 */  sll        $v1, $v1, 2
/* 9CF30 800AC730 21186200 */  addu       $v1, $v1, $v0
/* 9CF34 800AC734 0000648C */  lw         $a0, ($v1)
/* 9CF38 800AC738 00000000 */  nop
/* 9CF3C 800AC73C 08008000 */  jr         $a0
/* 9CF40 800AC740 00000000 */   nop
/* 9CF44 800AC744 58465026 */  addiu      $s0, $s2, 0x4658
/* 9CF48 800AC748 08000292 */  lbu        $v0, 8($s0)
/* 9CF4C 800AC74C 09000492 */  lbu        $a0, 9($s0)
/* 9CF50 800AC750 00000000 */  nop
/* 9CF54 800AC754 07108200 */  srav       $v0, $v0, $a0
/* 9CF58 800AC758 01004230 */  andi       $v0, $v0, 1
/* 9CF5C 800AC75C 0E004010 */  beqz       $v0, .L800AC798
/* 9CF60 800AC760 21180402 */   addu      $v1, $s0, $a0
/* 9CF64 800AC764 C2B9020C */  jal        FUN_800ae708
/* 9CF68 800AC768 02000524 */   addiu     $a1, $zero, 2
/* 9CF6C 800AC76C B1004010 */  beqz       $v0, .L800ACA34
/* 9CF70 800AC770 0B000324 */   addiu     $v1, $zero, 0xb
/* 9CF74 800AC774 09000292 */  lbu        $v0, 9($s0)
/* 9CF78 800AC778 00000000 */  nop
/* 9CF7C 800AC77C 21100202 */  addu       $v0, $s0, $v0
/* 9CF80 800AC780 0B0043A0 */  sb         $v1, 0xb($v0)
/* 9CF84 800AC784 09000492 */  lbu        $a0, 9($s0)
/* 9CF88 800AC788 E3B3020C */  jal        FUN_800acf8c
/* 9CF8C 800AC78C 02000524 */   addiu     $a1, $zero, 2
/* 9CF90 800AC790 B3B20208 */  j          .L800ACACC
/* 9CF94 800AC794 00000000 */   nop
.L800AC798:
/* 9CF98 800AC798 14000224 */  addiu      $v0, $zero, 0x14
/* 9CF9C 800AC79C B3B20208 */  j          .L800ACACC
/* 9CFA0 800AC7A0 0B0062A0 */   sb        $v0, 0xb($v1)
/* 9CFA4 800AC7A4 1000A427 */  addiu      $a0, $sp, 0x10
/* 9CFA8 800AC7A8 05000524 */  addiu      $a1, $zero, 5
/* 9CFAC 800AC7AC 58465026 */  addiu      $s0, $s2, 0x4658
/* 9CFB0 800AC7B0 09000292 */  lbu        $v0, 9($s0)
/* 9CFB4 800AC7B4 0180033C */  lui        $v1, %hi(D_80016DC8)
/* 9CFB8 800AC7B8 C86D6924 */  addiu      $t1, $v1, %lo(D_80016DC8)
/* 9CFBC 800AC7BC 03002689 */  lwl        $a2, 3($t1)
/* 9CFC0 800AC7C0 00002699 */  lwr        $a2, ($t1)
/* 9CFC4 800AC7C4 07002789 */  lwl        $a3, 7($t1)
/* 9CFC8 800AC7C8 04002799 */  lwr        $a3, 4($t1)
/* 9CFCC 800AC7CC 0B002889 */  lwl        $t0, 0xb($t1)
/* 9CFD0 800AC7D0 08002899 */  lwr        $t0, 8($t1)
/* 9CFD4 800AC7D4 1300A6AB */  swl        $a2, 0x13($sp)
/* 9CFD8 800AC7D8 1000A6BB */  swr        $a2, 0x10($sp)
/* 9CFDC 800AC7DC 1700A7AB */  swl        $a3, 0x17($sp)
/* 9CFE0 800AC7E0 1400A7BB */  swr        $a3, 0x14($sp)
/* 9CFE4 800AC7E4 1B00A8AB */  swl        $t0, 0x1b($sp)
/* 9CFE8 800AC7E8 1800A8BB */  swr        $t0, 0x18($sp)
/* 9CFEC 800AC7EC 0F002689 */  lwl        $a2, 0xf($t1)
/* 9CFF0 800AC7F0 0C002699 */  lwr        $a2, 0xc($t1)
/* 9CFF4 800AC7F4 13002789 */  lwl        $a3, 0x13($t1)
/* 9CFF8 800AC7F8 10002799 */  lwr        $a3, 0x10($t1)
/* 9CFFC 800AC7FC 14002881 */  lb         $t0, 0x14($t1)
/* 9D000 800AC800 1F00A6AB */  swl        $a2, 0x1f($sp)
/* 9D004 800AC804 1C00A6BB */  swr        $a2, 0x1c($sp)
/* 9D008 800AC808 2300A7AB */  swl        $a3, 0x23($sp)
/* 9D00C 800AC80C 2000A7BB */  swr        $a3, 0x20($sp)
/* 9D010 800AC810 2400A8A3 */  sb         $t0, 0x24($sp)
/* 9D014 800AC814 15002681 */  lb         $a2, 0x15($t1)
/* 9D018 800AC818 16002781 */  lb         $a3, 0x16($t1)
/* 9D01C 800AC81C 2500A6A3 */  sb         $a2, 0x25($sp)
/* 9D020 800AC820 2600A7A3 */  sb         $a3, 0x26($sp)
/* 9D024 800AC824 31004224 */  addiu      $v0, $v0, 0x31
/* 9D028 800AC828 7F10030C */  jal        FUN_800c41fc
/* 9D02C 800AC82C 1000A2A3 */   sb        $v0, 0x10($sp)
/* 9D030 800AC830 04004104 */  bgez       $v0, .L800AC844
/* 9D034 800AC834 040002AE */   sw        $v0, 4($s0)
/* 9D038 800AC838 09000292 */  lbu        $v0, 9($s0)
/* 9D03C 800AC83C 8FB20208 */  j          .L800ACA3C
/* 9D040 800AC840 11000324 */   addiu     $v1, $zero, 0x11
.L800AC844:
/* 9D044 800AC844 09000292 */  lbu        $v0, 9($s0)
/* 9D048 800AC848 8FB20208 */  j          .L800ACA3C
/* 9D04C 800AC84C 0C000324 */   addiu     $v1, $zero, 0xc
/* 9D050 800AC850 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D054 800AC854 09000492 */  lbu        $a0, 9($s0)
/* 9D058 800AC858 5DB3020C */  jal        FUN_800acd74
/* 9D05C 800AC85C 02000524 */   addiu     $a1, $zero, 2
/* 9D060 800AC860 21184000 */  addu       $v1, $v0, $zero
/* 9D064 800AC864 01000224 */  addiu      $v0, $zero, 1
/* 9D068 800AC868 04006214 */  bne        $v1, $v0, .L800AC87C
/* 9D06C 800AC86C 00000000 */   nop
/* 9D070 800AC870 09000292 */  lbu        $v0, 9($s0)
/* 9D074 800AC874 8FB20208 */  j          .L800ACA3C
/* 9D078 800AC878 0D000324 */   addiu     $v1, $zero, 0xd
.L800AC87C:
/* 9D07C 800AC87C 93006104 */  bgez       $v1, .L800ACACC
/* 9D080 800AC880 11000324 */   addiu     $v1, $zero, 0x11
/* 9D084 800AC884 09000292 */  lbu        $v0, 9($s0)
/* 9D088 800AC888 90B20208 */  j          .L800ACA40
/* 9D08C 800AC88C 21100202 */   addu      $v0, $s0, $v0
/* 9D090 800AC890 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D094 800AC894 0400048E */  lw         $a0, 4($s0)
/* 9D098 800AC898 FFFF1124 */  addiu      $s1, $zero, -1
/* 9D09C 800AC89C 5B009114 */  bne        $a0, $s1, .L800ACA0C
/* 9D0A0 800AC8A0 0A000324 */   addiu     $v1, $zero, 0xa
/* 9D0A4 800AC8A4 09000292 */  lbu        $v0, 9($s0)
/* 9D0A8 800AC8A8 90B20208 */  j          .L800ACA40
/* 9D0AC 800AC8AC 21100202 */   addu      $v0, $s0, $v0
/* 9D0B0 800AC8B0 21200000 */  addu       $a0, $zero, $zero
/* 9D0B4 800AC8B4 19B9020C */  jal        FUN_800ae464
/* 9D0B8 800AC8B8 21280000 */   addu      $a1, $zero, $zero
/* 9D0BC 800AC8BC 04004010 */  beqz       $v0, .L800AC8D0
/* 9D0C0 800AC8C0 01000424 */   addiu     $a0, $zero, 1
/* 9D0C4 800AC8C4 05B5020C */  jal        FUN_800ad414
/* 9D0C8 800AC8C8 21200000 */   addu      $a0, $zero, $zero
/* 9D0CC 800AC8CC 01000424 */  addiu      $a0, $zero, 1
.L800AC8D0:
/* 9D0D0 800AC8D0 19B9020C */  jal        FUN_800ae464
/* 9D0D4 800AC8D4 21280000 */   addu      $a1, $zero, $zero
/* 9D0D8 800AC8D8 04004010 */  beqz       $v0, .L800AC8EC
/* 9D0DC 800AC8DC 58465026 */   addiu     $s0, $s2, 0x4658
/* 9D0E0 800AC8E0 05B5020C */  jal        FUN_800ad414
/* 9D0E4 800AC8E4 01000424 */   addiu     $a0, $zero, 1
/* 9D0E8 800AC8E8 58465026 */  addiu      $s0, $s2, 0x4658
.L800AC8EC:
/* 9D0EC 800AC8EC 09000492 */  lbu        $a0, 9($s0)
/* 9D0F0 800AC8F0 E3B3020C */  jal        FUN_800acf8c
/* 9D0F4 800AC8F4 03000524 */   addiu     $a1, $zero, 3
/* 9D0F8 800AC8F8 09000292 */  lbu        $v0, 9($s0)
/* 9D0FC 800AC8FC 0E000324 */  addiu      $v1, $zero, 0xe
/* 9D100 800AC900 21800202 */  addu       $s0, $s0, $v0
/* 9D104 800AC904 B3B20208 */  j          .L800ACACC
/* 9D108 800AC908 0B0003A2 */   sb        $v1, 0xb($s0)
/* 9D10C 800AC90C 2800A427 */  addiu      $a0, $sp, 0x28
/* 9D110 800AC910 06000524 */  addiu      $a1, $zero, 6
/* 9D114 800AC914 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D118 800AC918 09000292 */  lbu        $v0, 9($s0)
/* 9D11C 800AC91C 0180033C */  lui        $v1, %hi(D_80016DC8)
/* 9D120 800AC920 C86D6924 */  addiu      $t1, $v1, %lo(D_80016DC8)
/* 9D124 800AC924 03002689 */  lwl        $a2, 3($t1)
/* 9D128 800AC928 00002699 */  lwr        $a2, ($t1)
/* 9D12C 800AC92C 07002789 */  lwl        $a3, 7($t1)
/* 9D130 800AC930 04002799 */  lwr        $a3, 4($t1)
/* 9D134 800AC934 0B002889 */  lwl        $t0, 0xb($t1)
/* 9D138 800AC938 08002899 */  lwr        $t0, 8($t1)
/* 9D13C 800AC93C 2B00A6AB */  swl        $a2, 0x2b($sp)
/* 9D140 800AC940 2800A6BB */  swr        $a2, 0x28($sp)
/* 9D144 800AC944 2F00A7AB */  swl        $a3, 0x2f($sp)
/* 9D148 800AC948 2C00A7BB */  swr        $a3, 0x2c($sp)
/* 9D14C 800AC94C 3300A8AB */  swl        $t0, 0x33($sp)
/* 9D150 800AC950 3000A8BB */  swr        $t0, 0x30($sp)
/* 9D154 800AC954 0F002689 */  lwl        $a2, 0xf($t1)
/* 9D158 800AC958 0C002699 */  lwr        $a2, 0xc($t1)
/* 9D15C 800AC95C 13002789 */  lwl        $a3, 0x13($t1)
/* 9D160 800AC960 10002799 */  lwr        $a3, 0x10($t1)
/* 9D164 800AC964 14002881 */  lb         $t0, 0x14($t1)
/* 9D168 800AC968 3700A6AB */  swl        $a2, 0x37($sp)
/* 9D16C 800AC96C 3400A6BB */  swr        $a2, 0x34($sp)
/* 9D170 800AC970 3B00A7AB */  swl        $a3, 0x3b($sp)
/* 9D174 800AC974 3800A7BB */  swr        $a3, 0x38($sp)
/* 9D178 800AC978 3C00A8A3 */  sb         $t0, 0x3c($sp)
/* 9D17C 800AC97C 15002681 */  lb         $a2, 0x15($t1)
/* 9D180 800AC980 16002781 */  lb         $a3, 0x16($t1)
/* 9D184 800AC984 3D00A6A3 */  sb         $a2, 0x3d($sp)
/* 9D188 800AC988 3E00A7A3 */  sb         $a3, 0x3e($sp)
/* 9D18C 800AC98C 31004224 */  addiu      $v0, $v0, 0x31
/* 9D190 800AC990 7F10030C */  jal        FUN_800c41fc
/* 9D194 800AC994 2800A2A3 */   sb        $v0, 0x28($sp)
/* 9D198 800AC998 04004104 */  bgez       $v0, .L800AC9AC
/* 9D19C 800AC99C 040002AE */   sw        $v0, 4($s0)
/* 9D1A0 800AC9A0 09000292 */  lbu        $v0, 9($s0)
/* 9D1A4 800AC9A4 8FB20208 */  j          .L800ACA3C
/* 9D1A8 800AC9A8 11000324 */   addiu     $v1, $zero, 0x11
.L800AC9AC:
/* 9D1AC 800AC9AC 09000292 */  lbu        $v0, 9($s0)
/* 9D1B0 800AC9B0 8FB20208 */  j          .L800ACA3C
/* 9D1B4 800AC9B4 0F000324 */   addiu     $v1, $zero, 0xf
/* 9D1B8 800AC9B8 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D1BC 800AC9BC 09000492 */  lbu        $a0, 9($s0)
/* 9D1C0 800AC9C0 5DB3020C */  jal        FUN_800acd74
/* 9D1C4 800AC9C4 03000524 */   addiu     $a1, $zero, 3
/* 9D1C8 800AC9C8 21184000 */  addu       $v1, $v0, $zero
/* 9D1CC 800AC9CC 01000224 */  addiu      $v0, $zero, 1
/* 9D1D0 800AC9D0 04006214 */  bne        $v1, $v0, .L800AC9E4
/* 9D1D4 800AC9D4 00000000 */   nop
/* 9D1D8 800AC9D8 09000292 */  lbu        $v0, 9($s0)
/* 9D1DC 800AC9DC 8FB20208 */  j          .L800ACA3C
/* 9D1E0 800AC9E0 10000324 */   addiu     $v1, $zero, 0x10
.L800AC9E4:
/* 9D1E4 800AC9E4 39006104 */  bgez       $v1, .L800ACACC
/* 9D1E8 800AC9E8 11000324 */   addiu     $v1, $zero, 0x11
/* 9D1EC 800AC9EC 09000292 */  lbu        $v0, 9($s0)
/* 9D1F0 800AC9F0 90B20208 */  j          .L800ACA40
/* 9D1F4 800AC9F4 21100202 */   addu      $v0, $s0, $v0
/* 9D1F8 800AC9F8 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D1FC 800AC9FC 0400048E */  lw         $a0, 4($s0)
/* 9D200 800ACA00 FFFF1124 */  addiu      $s1, $zero, -1
/* 9D204 800ACA04 0B009110 */  beq        $a0, $s1, .L800ACA34
/* 9D208 800ACA08 00000000 */   nop
.L800ACA0C:
/* 9D20C 800ACA0C 7A19030C */  jal        FUN_800c65e8
/* 9D210 800ACA10 00000000 */   nop
/* 9D214 800ACA14 FEFF0324 */  addiu      $v1, $zero, -2
/* 9D218 800ACA18 2C004310 */  beq        $v0, $v1, .L800ACACC
/* 9D21C 800ACA1C 00000000 */   nop
/* 9D220 800ACA20 0400048E */  lw         $a0, 4($s0)
/* 9D224 800ACA24 6618030C */  jal        FUN_800c6198
/* 9D228 800ACA28 00000000 */   nop
/* 9D22C 800ACA2C B3B20208 */  j          .L800ACACC
/* 9D230 800ACA30 040011AE */   sw        $s1, 4($s0)
.L800ACA34:
/* 9D234 800ACA34 09000292 */  lbu        $v0, 9($s0)
/* 9D238 800ACA38 14000324 */  addiu      $v1, $zero, 0x14
.L800ACA3C:
/* 9D23C 800ACA3C 21100202 */  addu       $v0, $s0, $v0
.L800ACA40:
/* 9D240 800ACA40 B3B20208 */  j          .L800ACACC
/* 9D244 800ACA44 0B0043A0 */   sb        $v1, 0xb($v0)
/* 9D248 800ACA48 58465026 */  addiu      $s0, $s2, 0x4658
/* 9D24C 800ACA4C 0400048E */  lw         $a0, 4($s0)
/* 9D250 800ACA50 FFFF1124 */  addiu      $s1, $zero, -1
/* 9D254 800ACA54 0B009110 */  beq        $a0, $s1, .L800ACA84
/* 9D258 800ACA58 58464226 */   addiu     $v0, $s2, 0x4658
/* 9D25C 800ACA5C 7A19030C */  jal        FUN_800c65e8
/* 9D260 800ACA60 00000000 */   nop
/* 9D264 800ACA64 FEFF0324 */  addiu      $v1, $zero, -2
/* 9D268 800ACA68 06004310 */  beq        $v0, $v1, .L800ACA84
/* 9D26C 800ACA6C 58464226 */   addiu     $v0, $s2, 0x4658
/* 9D270 800ACA70 0400048E */  lw         $a0, 4($s0)
/* 9D274 800ACA74 6618030C */  jal        FUN_800c6198
/* 9D278 800ACA78 00000000 */   nop
/* 9D27C 800ACA7C 040011AE */  sw         $s1, 4($s0)
/* 9D280 800ACA80 58464226 */  addiu      $v0, $s2, 0x4658
.L800ACA84:
/* 9D284 800ACA84 09004390 */  lbu        $v1, 9($v0)
/* 9D288 800ACA88 B1B20208 */  j          .L800ACAC4
/* 9D28C 800ACA8C 14000424 */   addiu     $a0, $zero, 0x14
/* 9D290 800ACA90 58464426 */  addiu      $a0, $s2, 0x4658
/* 9D294 800ACA94 09008290 */  lbu        $v0, 9($a0)
/* 9D298 800ACA98 02000324 */  addiu      $v1, $zero, 2
/* 9D29C 800ACA9C 01004224 */  addiu      $v0, $v0, 1
/* 9D2A0 800ACAA0 090082A0 */  sb         $v0, 9($a0)
/* 9D2A4 800ACAA4 FF004230 */  andi       $v0, $v0, 0xff
/* 9D2A8 800ACAA8 08004314 */  bne        $v0, $v1, .L800ACACC
/* 9D2AC 800ACAAC 01000224 */   addiu     $v0, $zero, 1
/* 9D2B0 800ACAB0 D2B20208 */  j          .L800ACB48
/* 9D2B4 800ACAB4 090080A0 */   sb        $zero, 9($a0)
.L800ACAB8:
/* 9D2B8 800ACAB8 58464226 */  addiu      $v0, $s2, 0x4658
/* 9D2BC 800ACABC 09004390 */  lbu        $v1, 9($v0)
/* 9D2C0 800ACAC0 11000424 */  addiu      $a0, $zero, 0x11
.L800ACAC4:
/* 9D2C4 800ACAC4 21104300 */  addu       $v0, $v0, $v1
/* 9D2C8 800ACAC8 0B0044A0 */  sb         $a0, 0xb($v0)
.L800ACACC:
/* 9D2CC 800ACACC 7CAA000C */  jal        vsync_8002a9f0
/* 9D2D0 800ACAD0 58465026 */   addiu     $s0, $s2, 0x4658
/* 9D2D4 800ACAD4 1000028E */  lw         $v0, 0x10($s0)
/* 9D2D8 800ACAD8 00000000 */  nop
/* 9D2DC 800ACADC 01004224 */  addiu      $v0, $v0, 1
/* 9D2E0 800ACAE0 100002AE */  sw         $v0, 0x10($s0)
/* 9D2E4 800ACAE4 19154228 */  slti       $v0, $v0, 0x1519
/* 9D2E8 800ACAE8 17004014 */  bnez       $v0, .L800ACB48
/* 9D2EC 800ACAEC 21100000 */   addu      $v0, $zero, $zero
/* 9D2F0 800ACAF0 21200000 */  addu       $a0, $zero, $zero
/* 9D2F4 800ACAF4 08000292 */  lbu        $v0, 8($s0)
/* 9D2F8 800ACAF8 03000524 */  addiu      $a1, $zero, 3
/* 9D2FC 800ACAFC FE004230 */  andi       $v0, $v0, 0xfe
/* 9D300 800ACB00 69B9020C */  jal        FUN_800ae5a4
/* 9D304 800ACB04 080002A2 */   sb        $v0, 8($s0)
/* 9D308 800ACB08 01000424 */  addiu      $a0, $zero, 1
/* 9D30C 800ACB0C 08000292 */  lbu        $v0, 8($s0)
/* 9D310 800ACB10 03000524 */  addiu      $a1, $zero, 3
/* 9D314 800ACB14 FD004230 */  andi       $v0, $v0, 0xfd
/* 9D318 800ACB18 69B9020C */  jal        FUN_800ae5a4
/* 9D31C 800ACB1C 080002A2 */   sb        $v0, 8($s0)
/* 9D320 800ACB20 0400048E */  lw         $a0, 4($s0)
/* 9D324 800ACB24 FFFF0224 */  addiu      $v0, $zero, -1
/* 9D328 800ACB28 04008210 */  beq        $a0, $v0, .L800ACB3C
/* 9D32C 800ACB2C 14000224 */   addiu     $v0, $zero, 0x14
/* 9D330 800ACB30 6618030C */  jal        FUN_800c6198
/* 9D334 800ACB34 00000000 */   nop
/* 9D338 800ACB38 14000224 */  addiu      $v0, $zero, 0x14
.L800ACB3C:
/* 9D33C 800ACB3C 0B0002A2 */  sb         $v0, 0xb($s0)
/* 9D340 800ACB40 0C0002A2 */  sb         $v0, 0xc($s0)
/* 9D344 800ACB44 21100000 */  addu       $v0, $zero, $zero
.L800ACB48:
/* 9D348 800ACB48 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 9D34C 800ACB4C 4800B28F */  lw         $s2, 0x48($sp)
/* 9D350 800ACB50 4400B18F */  lw         $s1, 0x44($sp)
/* 9D354 800ACB54 4000B08F */  lw         $s0, 0x40($sp)
/* 9D358 800ACB58 0800E003 */  jr         $ra
/* 9D35C 800ACB5C 5000BD27 */   addiu     $sp, $sp, 0x50

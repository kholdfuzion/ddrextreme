.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003ade4
/* 2B5E4 8003ADE4 78FEBD27 */  addiu      $sp, $sp, -0x188
/* 2B5E8 8003ADE8 7401B1AF */  sw         $s1, 0x174($sp)
/* 2B5EC 8003ADEC 3801B127 */  addiu      $s1, $sp, 0x138
/* 2B5F0 8003ADF0 7001B0AF */  sw         $s0, 0x170($sp)
/* 2B5F4 8003ADF4 3901B027 */  addiu      $s0, $sp, 0x139
/* 2B5F8 8003ADF8 3A01A427 */  addiu      $a0, $sp, 0x13a
/* 2B5FC 8003ADFC 8001B4AF */  sw         $s4, 0x180($sp)
/* 2B600 8003AE00 5001B427 */  addiu      $s4, $sp, 0x150
/* 2B604 8003AE04 08000A24 */  addiu      $t2, $zero, 8
/* 2B608 8003AE08 38000924 */  addiu      $t1, $zero, 0x38
/* 2B60C 8003AE0C 0100073C */  lui        $a3, 1
/* 2B610 8003AE10 1800AD27 */  addiu      $t5, $sp, 0x18
/* 2B614 8003AE14 2130A001 */  addu       $a2, $t5, $zero
/* 2B618 8003AE18 0100083C */  lui        $t0, 1
/* 2B61C 8003AE1C 0180023C */  lui        $v0, %hi(D_8001293C)
/* 2B620 8003AE20 8401BFAF */  sw         $ra, 0x184($sp)
/* 2B624 8003AE24 7C01B3AF */  sw         $s3, 0x17c($sp)
/* 2B628 8003AE28 7801B2AF */  sw         $s2, 0x178($sp)
/* 2B62C 8003AE2C 3C294C24 */  addiu      $t4, $v0, %lo(D_8001293C)
/* 2B630 8003AE30 03008389 */  lwl        $v1, 3($t4)
/* 2B634 8003AE34 00008399 */  lwr        $v1, ($t4)
/* 2B638 8003AE38 07008589 */  lwl        $a1, 7($t4)
/* 2B63C 8003AE3C 04008599 */  lwr        $a1, 4($t4)
/* 2B640 8003AE40 0B008B89 */  lwl        $t3, 0xb($t4)
/* 2B644 8003AE44 08008B99 */  lwr        $t3, 8($t4)
/* 2B648 8003AE48 3B01A3AB */  swl        $v1, 0x13b($sp)
/* 2B64C 8003AE4C 3801A3BB */  swr        $v1, 0x138($sp)
/* 2B650 8003AE50 3F01A5AB */  swl        $a1, 0x13f($sp)
/* 2B654 8003AE54 3C01A5BB */  swr        $a1, 0x13c($sp)
/* 2B658 8003AE58 4301ABAB */  swl        $t3, 0x143($sp)
/* 2B65C 8003AE5C 4001ABBB */  swr        $t3, 0x140($sp)
/* 2B660 8003AE60 0F008389 */  lwl        $v1, 0xf($t4)
/* 2B664 8003AE64 0C008399 */  lwr        $v1, 0xc($t4)
/* 2B668 8003AE68 13008589 */  lwl        $a1, 0x13($t4)
/* 2B66C 8003AE6C 10008599 */  lwr        $a1, 0x10($t4)
/* 2B670 8003AE70 14008B81 */  lb         $t3, 0x14($t4)
/* 2B674 8003AE74 4701A3AB */  swl        $v1, 0x147($sp)
/* 2B678 8003AE78 4401A3BB */  swr        $v1, 0x144($sp)
/* 2B67C 8003AE7C 4B01A5AB */  swl        $a1, 0x14b($sp)
/* 2B680 8003AE80 4801A5BB */  swr        $a1, 0x148($sp)
/* 2B684 8003AE84 4C01ABA3 */  sb         $t3, 0x14c($sp)
/* 2B688 8003AE88 0180033C */  lui        $v1, %hi(D_80012954)
/* 2B68C 8003AE8C 54296C24 */  addiu      $t4, $v1, %lo(D_80012954)
/* 2B690 8003AE90 03008289 */  lwl        $v0, 3($t4)
/* 2B694 8003AE94 00008299 */  lwr        $v0, ($t4)
/* 2B698 8003AE98 07008589 */  lwl        $a1, 7($t4)
/* 2B69C 8003AE9C 04008599 */  lwr        $a1, 4($t4)
/* 2B6A0 8003AEA0 0B008B89 */  lwl        $t3, 0xb($t4)
/* 2B6A4 8003AEA4 08008B99 */  lwr        $t3, 8($t4)
/* 2B6A8 8003AEA8 5301A2AB */  swl        $v0, 0x153($sp)
/* 2B6AC 8003AEAC 5001A2BB */  swr        $v0, 0x150($sp)
/* 2B6B0 8003AEB0 5701A5AB */  swl        $a1, 0x157($sp)
/* 2B6B4 8003AEB4 5401A5BB */  swr        $a1, 0x154($sp)
/* 2B6B8 8003AEB8 5B01ABAB */  swl        $t3, 0x15b($sp)
/* 2B6BC 8003AEBC 5801ABBB */  swr        $t3, 0x158($sp)
/* 2B6C0 8003AEC0 0F008289 */  lwl        $v0, 0xf($t4)
/* 2B6C4 8003AEC4 0C008299 */  lwr        $v0, 0xc($t4)
/* 2B6C8 8003AEC8 13008589 */  lwl        $a1, 0x13($t4)
/* 2B6CC 8003AECC 10008599 */  lwr        $a1, 0x10($t4)
/* 2B6D0 8003AED0 17008B89 */  lwl        $t3, 0x17($t4)
/* 2B6D4 8003AED4 14008B99 */  lwr        $t3, 0x14($t4)
/* 2B6D8 8003AED8 5F01A2AB */  swl        $v0, 0x15f($sp)
/* 2B6DC 8003AEDC 5C01A2BB */  swr        $v0, 0x15c($sp)
/* 2B6E0 8003AEE0 6301A5AB */  swl        $a1, 0x163($sp)
/* 2B6E4 8003AEE4 6001A5BB */  swr        $a1, 0x160($sp)
/* 2B6E8 8003AEE8 6701ABAB */  swl        $t3, 0x167($sp)
/* 2B6EC 8003AEEC 6401ABBB */  swr        $t3, 0x164($sp)
/* 2B6F0 8003AEF0 1B008289 */  lwl        $v0, 0x1b($t4)
/* 2B6F4 8003AEF4 18008299 */  lwr        $v0, 0x18($t4)
/* 2B6F8 8003AEF8 00000000 */  nop
/* 2B6FC 8003AEFC 6B01A2AB */  swl        $v0, 0x16b($sp)
/* 2B700 8003AF00 6801A2BB */  swr        $v0, 0x168($sp)
/* 2B704 8003AF04 80000224 */  addiu      $v0, $zero, 0x80
/* 2B708 8003AF08 5301A2A3 */  sb         $v0, 0x153($sp)
/* 2B70C 8003AF0C 5201A2A3 */  sb         $v0, 0x152($sp)
/* 2B710 8003AF10 5101A2A3 */  sb         $v0, 0x151($sp)
/* 2B714 8003AF14 5001A2A3 */  sb         $v0, 0x150($sp)
/* 2B718 8003AF18 6A01A0A3 */  sb         $zero, 0x16a($sp)
.L8003AF1C:
/* 2B71C 8003AF1C 2118E000 */  addu       $v1, $a3, $zero
/* 2B720 8003AF20 2138E800 */  addu       $a3, $a3, $t0
/* 2B724 8003AF24 0300CAA0 */  sb         $t2, 3($a2)
/* 2B728 8003AF28 0700C9A0 */  sb         $t1, 7($a2)
/* 2B72C 8003AF2C 032C0300 */  sra        $a1, $v1, 0x10
/* 2B730 8003AF30 0800A228 */  slti       $v0, $a1, 8
/* 2B734 8003AF34 F9FF4014 */  bnez       $v0, .L8003AF1C
/* 2B738 8003AF38 2400C624 */   addiu     $a2, $a2, 0x24
/* 2B73C 8003AF3C B0FF0A24 */  addiu      $t2, $zero, -0x50
/* 2B740 8003AF40 94FF0F24 */  addiu      $t7, $zero, -0x6c
/* 2B744 8003AF44 84000E24 */  addiu      $t6, $zero, 0x84
/* 2B748 8003AF48 01000C3C */  lui        $t4, 1
/* 2B74C 8003AF4C 2130A001 */  addu       $a2, $t5, $zero
/* 2B750 8003AF50 C8FF0B3C */  lui        $t3, 0xffc8
/* 2B754 8003AF54 1800123C */  lui        $s2, 0x18
/* 2B758 8003AF58 21488000 */  addu       $t1, $a0, $zero
/* 2B75C 8003AF5C 21400002 */  addu       $t0, $s0, $zero
/* 2B760 8003AF60 21382002 */  addu       $a3, $s1, $zero
.L8003AF64:
/* 2B764 8003AF64 031C0B00 */  sra        $v1, $t3, 0x10
/* 2B768 8003AF68 21587201 */  addu       $t3, $t3, $s2
/* 2B76C 8003AF6C 18004225 */  addiu      $v0, $t2, 0x18
/* 2B770 8003AF70 0A00CAA4 */  sh         $t2, 0xa($a2)
/* 2B774 8003AF74 1200CAA4 */  sh         $t2, 0x12($a2)
/* 2B778 8003AF78 21506000 */  addu       $t2, $v1, $zero
/* 2B77C 8003AF7C 21288001 */  addu       $a1, $t4, $zero
/* 2B780 8003AF80 0800CFA4 */  sh         $t7, 8($a2)
/* 2B784 8003AF84 1000CEA4 */  sh         $t6, 0x10($a2)
/* 2B788 8003AF88 1800CFA4 */  sh         $t7, 0x18($a2)
/* 2B78C 8003AF8C 1A00C2A4 */  sh         $v0, 0x1a($a2)
/* 2B790 8003AF90 2000CEA4 */  sh         $t6, 0x20($a2)
/* 2B794 8003AF94 2200C2A4 */  sh         $v0, 0x22($a2)
/* 2B798 8003AF98 0400C0A0 */  sb         $zero, 4($a2)
/* 2B79C 8003AF9C 0500C0A0 */  sb         $zero, 5($a2)
/* 2B7A0 8003AFA0 0600C0A0 */  sb         $zero, 6($a2)
/* 2B7A4 8003AFA4 0000E290 */  lbu        $v0, ($a3)
/* 2B7A8 8003AFA8 032C0500 */  sra        $a1, $a1, 0x10
/* 2B7AC 8003AFAC 0C00C2A0 */  sb         $v0, 0xc($a2)
/* 2B7B0 8003AFB0 00000391 */  lbu        $v1, ($t0)
/* 2B7B4 8003AFB4 0100023C */  lui        $v0, 1
/* 2B7B8 8003AFB8 0D00C3A0 */  sb         $v1, 0xd($a2)
/* 2B7BC 8003AFBC 00002491 */  lbu        $a0, ($t1)
/* 2B7C0 8003AFC0 21608201 */  addu       $t4, $t4, $v0
/* 2B7C4 8003AFC4 1400C0A0 */  sb         $zero, 0x14($a2)
/* 2B7C8 8003AFC8 1500C0A0 */  sb         $zero, 0x15($a2)
/* 2B7CC 8003AFCC 1600C0A0 */  sb         $zero, 0x16($a2)
/* 2B7D0 8003AFD0 0E00C4A0 */  sb         $a0, 0xe($a2)
/* 2B7D4 8003AFD4 0000E290 */  lbu        $v0, ($a3)
/* 2B7D8 8003AFD8 0300E724 */  addiu      $a3, $a3, 3
/* 2B7DC 8003AFDC 1C00C2A0 */  sb         $v0, 0x1c($a2)
/* 2B7E0 8003AFE0 00000391 */  lbu        $v1, ($t0)
/* 2B7E4 8003AFE4 03000825 */  addiu      $t0, $t0, 3
/* 2B7E8 8003AFE8 1D00C3A0 */  sb         $v1, 0x1d($a2)
/* 2B7EC 8003AFEC 00002291 */  lbu        $v0, ($t1)
/* 2B7F0 8003AFF0 03002925 */  addiu      $t1, $t1, 3
/* 2B7F4 8003AFF4 1E00C2A0 */  sb         $v0, 0x1e($a2)
/* 2B7F8 8003AFF8 0700A228 */  slti       $v0, $a1, 7
/* 2B7FC 8003AFFC D9FF4014 */  bnez       $v0, .L8003AF64
/* 2B800 8003B000 2400C624 */   addiu     $a2, $a2, 0x24
/* 2B804 8003B004 0100113C */  lui        $s1, 1
/* 2B808 8003B008 2180A001 */  addu       $s0, $t5, $zero
/* 2B80C 8003B00C 0100133C */  lui        $s3, 1
/* 2B810 8003B010 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 2B814 8003B014 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 2B818 8003B018 93FF0524 */  addiu      $a1, $zero, -0x6d
/* 2B81C 8003B01C 2C0C528C */  lw         $s2, 0xc2c($v0)
/* 2B820 8003B020 B1FF0224 */  addiu      $v0, $zero, -0x4f
/* 2B824 8003B024 84000424 */  addiu      $a0, $zero, 0x84
/* 2B828 8003B028 58000324 */  addiu      $v1, $zero, 0x58
/* 2B82C 8003B02C 1E01A2A7 */  sh         $v0, 0x11e($sp)
/* 2B830 8003B030 2601A2A7 */  sh         $v0, 0x126($sp)
/* 2B834 8003B034 80000224 */  addiu      $v0, $zero, 0x80
/* 2B838 8003B038 1C01A5A7 */  sh         $a1, 0x11c($sp)
/* 2B83C 8003B03C 2401A4A7 */  sh         $a0, 0x124($sp)
/* 2B840 8003B040 2C01A5A7 */  sh         $a1, 0x12c($sp)
/* 2B844 8003B044 2E01A3A7 */  sh         $v1, 0x12e($sp)
/* 2B848 8003B048 3401A4A7 */  sh         $a0, 0x134($sp)
/* 2B84C 8003B04C 3601A3A7 */  sh         $v1, 0x136($sp)
/* 2B850 8003B050 1801A2A3 */  sb         $v0, 0x118($sp)
/* 2B854 8003B054 1901A2A3 */  sb         $v0, 0x119($sp)
/* 2B858 8003B058 1A01A2A3 */  sb         $v0, 0x11a($sp)
/* 2B85C 8003B05C 2001A2A3 */  sb         $v0, 0x120($sp)
/* 2B860 8003B060 2101A2A3 */  sb         $v0, 0x121($sp)
/* 2B864 8003B064 2201A2A3 */  sb         $v0, 0x122($sp)
/* 2B868 8003B068 2801A2A3 */  sb         $v0, 0x128($sp)
/* 2B86C 8003B06C 2901A2A3 */  sb         $v0, 0x129($sp)
/* 2B870 8003B070 2A01A2A3 */  sb         $v0, 0x12a($sp)
/* 2B874 8003B074 3001A2A3 */  sb         $v0, 0x130($sp)
/* 2B878 8003B078 3101A2A3 */  sb         $v0, 0x131($sp)
/* 2B87C 8003B07C 3201A2A3 */  sb         $v0, 0x132($sp)
.L8003B080:
/* 2B880 8003B080 21200002 */  addu       $a0, $s0, $zero
/* 2B884 8003B084 21284002 */  addu       $a1, $s2, $zero
/* 2B888 8003B088 E683000C */  jal        GsSortPoly
/* 2B88C 8003B08C 01000624 */   addiu     $a2, $zero, 1
/* 2B890 8003B090 21182002 */  addu       $v1, $s1, $zero
/* 2B894 8003B094 21883302 */  addu       $s1, $s1, $s3
/* 2B898 8003B098 032C0300 */  sra        $a1, $v1, 0x10
/* 2B89C 8003B09C 0800A228 */  slti       $v0, $a1, 8
/* 2B8A0 8003B0A0 F7FF4014 */  bnez       $v0, .L8003B080
/* 2B8A4 8003B0A4 24001026 */   addiu     $s0, $s0, 0x24
/* 2B8A8 8003B0A8 7CAA000C */  jal        vsync_8002a9f0
/* 2B8AC 8003B0AC 00101024 */   addiu     $s0, $zero, 0x1000
/* 2B8B0 8003B0B0 21200000 */  addu       $a0, $zero, $zero
/* 2B8B4 8003B0B4 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B8B8 8003B0B8 BCFF0624 */  addiu      $a2, $zero, -0x44
/* 2B8BC 8003B0BC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B8C0 8003B0C0 0180023C */  lui        $v0, %hi(D_80012970)
/* 2B8C4 8003B0C4 70294224 */  addiu      $v0, $v0, %lo(D_80012970)
/* 2B8C8 8003B0C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B8CC 8003B0CC 290A010C */  jal        PrintText_800428a4
/* 2B8D0 8003B0D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B8D4 8003B0D4 21200000 */  addu       $a0, $zero, $zero
/* 2B8D8 8003B0D8 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B8DC 8003B0DC D4FF0624 */  addiu      $a2, $zero, -0x2c
/* 2B8E0 8003B0E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B8E4 8003B0E4 0180023C */  lui        $v0, %hi(D_80012974)
/* 2B8E8 8003B0E8 74294224 */  addiu      $v0, $v0, %lo(D_80012974)
/* 2B8EC 8003B0EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B8F0 8003B0F0 290A010C */  jal        PrintText_800428a4
/* 2B8F4 8003B0F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B8F8 8003B0F8 21200000 */  addu       $a0, $zero, $zero
/* 2B8FC 8003B0FC 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B900 8003B100 ECFF0624 */  addiu      $a2, $zero, -0x14
/* 2B904 8003B104 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B908 8003B108 0180023C */  lui        $v0, %hi(D_80012978)
/* 2B90C 8003B10C 78294224 */  addiu      $v0, $v0, %lo(D_80012978)
/* 2B910 8003B110 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B914 8003B114 290A010C */  jal        PrintText_800428a4
/* 2B918 8003B118 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B91C 8003B11C 21200000 */  addu       $a0, $zero, $zero
/* 2B920 8003B120 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B924 8003B124 04000624 */  addiu      $a2, $zero, 4
/* 2B928 8003B128 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B92C 8003B12C 0180023C */  lui        $v0, %hi(D_8001297C)
/* 2B930 8003B130 7C294224 */  addiu      $v0, $v0, %lo(D_8001297C)
/* 2B934 8003B134 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B938 8003B138 290A010C */  jal        PrintText_800428a4
/* 2B93C 8003B13C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B940 8003B140 7CAA000C */  jal        vsync_8002a9f0
/* 2B944 8003B144 00000000 */   nop
/* 2B948 8003B148 21200000 */  addu       $a0, $zero, $zero
/* 2B94C 8003B14C 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B950 8003B150 1C000624 */  addiu      $a2, $zero, 0x1c
/* 2B954 8003B154 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B958 8003B158 0180023C */  lui        $v0, %hi(D_80012980)
/* 2B95C 8003B15C 80294224 */  addiu      $v0, $v0, %lo(D_80012980)
/* 2B960 8003B160 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B964 8003B164 290A010C */  jal        PrintText_800428a4
/* 2B968 8003B168 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B96C 8003B16C 21200000 */  addu       $a0, $zero, $zero
/* 2B970 8003B170 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B974 8003B174 34000624 */  addiu      $a2, $zero, 0x34
/* 2B978 8003B178 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B97C 8003B17C 0180023C */  lui        $v0, %hi(D_80012984)
/* 2B980 8003B180 84294224 */  addiu      $v0, $v0, %lo(D_80012984)
/* 2B984 8003B184 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B988 8003B188 290A010C */  jal        PrintText_800428a4
/* 2B98C 8003B18C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B990 8003B190 21200000 */  addu       $a0, $zero, $zero
/* 2B994 8003B194 88FF0524 */  addiu      $a1, $zero, -0x78
/* 2B998 8003B198 4C000624 */  addiu      $a2, $zero, 0x4c
/* 2B99C 8003B19C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B9A0 8003B1A0 0180023C */  lui        $v0, %hi(D_80012988)
/* 2B9A4 8003B1A4 88294224 */  addiu      $v0, $v0, %lo(D_80012988)
/* 2B9A8 8003B1A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B9AC 8003B1AC 290A010C */  jal        PrintText_800428a4
/* 2B9B0 8003B1B0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B9B4 8003B1B4 7CAA000C */  jal        vsync_8002a9f0
/* 2B9B8 8003B1B8 00000000 */   nop
/* 2B9BC 8003B1BC 21200000 */  addu       $a0, $zero, $zero
/* 2B9C0 8003B1C0 94FF0524 */  addiu      $a1, $zero, -0x6c
/* 2B9C4 8003B1C4 5C000624 */  addiu      $a2, $zero, 0x5c
/* 2B9C8 8003B1C8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B9CC 8003B1CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B9D0 8003B1D0 290A010C */  jal        PrintText_800428a4
/* 2B9D4 8003B1D4 1400B4AF */   sw        $s4, 0x14($sp)
/* 2B9D8 8003B1D8 21200000 */  addu       $a0, $zero, $zero
/* 2B9DC 8003B1DC D4FF0524 */  addiu      $a1, $zero, -0x2c
/* 2B9E0 8003B1E0 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2B9E4 8003B1E4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2B9E8 8003B1E8 0180023C */  lui        $v0, %hi(D_8001298C)
/* 2B9EC 8003B1EC 8C294224 */  addiu      $v0, $v0, %lo(D_8001298C)
/* 2B9F0 8003B1F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B9F4 8003B1F4 290A010C */  jal        PrintText_800428a4
/* 2B9F8 8003B1F8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2B9FC 8003B1FC 21200000 */  addu       $a0, $zero, $zero
/* 2BA00 8003B200 7CFF0524 */  addiu      $a1, $zero, -0x84
/* 2BA04 8003B204 70000624 */  addiu      $a2, $zero, 0x70
/* 2BA08 8003B208 00100724 */  addiu      $a3, $zero, 0x1000
/* 2BA0C 8003B20C 0180023C */  lui        $v0, %hi(D_80012998)
/* 2BA10 8003B210 98294224 */  addiu      $v0, $v0, %lo(D_80012998)
/* 2BA14 8003B214 1000B0AF */  sw         $s0, 0x10($sp)
/* 2BA18 8003B218 290A010C */  jal        PrintText_800428a4
/* 2BA1C 8003B21C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2BA20 8003B220 8401BF8F */  lw         $ra, 0x184($sp)
/* 2BA24 8003B224 8001B48F */  lw         $s4, 0x180($sp)
/* 2BA28 8003B228 7C01B38F */  lw         $s3, 0x17c($sp)
/* 2BA2C 8003B22C 7801B28F */  lw         $s2, 0x178($sp)
/* 2BA30 8003B230 7401B18F */  lw         $s1, 0x174($sp)
/* 2BA34 8003B234 7001B08F */  lw         $s0, 0x170($sp)
/* 2BA38 8003B238 0800E003 */  jr         $ra
/* 2BA3C 8003B23C 8801BD27 */   addiu     $sp, $sp, 0x188

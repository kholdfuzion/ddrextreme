.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba7f4
/* AAFF4 800BA7F4 80FFBD27 */  addiu      $sp, $sp, -0x80
/* AAFF8 800BA7F8 6800B4AF */  sw         $s4, 0x68($sp)
/* AAFFC 800BA7FC 21A08000 */  addu       $s4, $a0, $zero
/* AB000 800BA800 0100E730 */  andi       $a3, $a3, 1
/* AB004 800BA804 5800B0AF */  sw         $s0, 0x58($sp)
/* AB008 800BA808 0F80103C */  lui        $s0, %hi(D_800ED060)
/* AB00C 800BA80C 60D00226 */  addiu      $v0, $s0, %lo(D_800ED060)
/* AB010 800BA810 6000B2AF */  sw         $s2, 0x60($sp)
/* AB014 800BA814 80900700 */  sll        $s2, $a3, 2
/* AB018 800BA818 21104202 */  addu       $v0, $s2, $v0
/* AB01C 800BA81C 6C00B5AF */  sw         $s5, 0x6c($sp)
/* AB020 800BA820 21A8A000 */  addu       $s5, $a1, $zero
/* AB024 800BA824 7800BFAF */  sw         $ra, 0x78($sp)
/* AB028 800BA828 7400B7AF */  sw         $s7, 0x74($sp)
/* AB02C 800BA82C 7000B6AF */  sw         $s6, 0x70($sp)
/* AB030 800BA830 6400B3AF */  sw         $s3, 0x64($sp)
/* AB034 800BA834 5C00B1AF */  sw         $s1, 0x5c($sp)
/* AB038 800BA838 0000448C */  lw         $a0, ($v0)
/* AB03C 800BA83C 0F80023C */  lui        $v0, %hi(D_800ED068)
/* AB040 800BA840 68D04224 */  addiu      $v0, $v0, %lo(D_800ED068)
/* AB044 800BA844 21104202 */  addu       $v0, $s2, $v0
/* AB048 800BA848 0000458C */  lw         $a1, ($v0)
/* AB04C 800BA84C 94EC020C */  jal        FUN_800bb250
/* AB050 800BA850 21B8C000 */   addu      $s7, $a2, $zero
/* AB054 800BA854 21884000 */  addu       $s1, $v0, $zero
/* AB058 800BA858 C0EB020C */  jal        FUN_800baf00
/* AB05C 800BA85C 21202002 */   addu      $a0, $s1, $zero
/* AB060 800BA860 78004010 */  beqz       $v0, .L800BAA44
/* AB064 800BA864 21B00002 */   addu      $s6, $s0, $zero
/* AB068 800BA868 21208002 */  addu       $a0, $s4, $zero
/* AB06C 800BA86C 5000B027 */  addiu      $s0, $sp, 0x50
/* AB070 800BA870 80EB020C */  jal        FUN_800bae00
/* AB074 800BA874 21280002 */   addu      $a1, $s0, $zero
/* AB078 800BA878 FFFF1324 */  addiu      $s3, $zero, -1
/* AB07C 800BA87C 71005310 */  beq        $v0, $s3, .L800BAA44
/* AB080 800BA880 DD002426 */   addiu     $a0, $s1, 0xdd
/* AB084 800BA884 8AEB020C */  jal        FUN_800bae28
/* AB088 800BA888 21280002 */   addu      $a1, $s0, $zero
/* AB08C 800BA88C C0EB020C */  jal        FUN_800baf00
/* AB090 800BA890 51012426 */   addiu     $a0, $s1, 0x151
/* AB094 800BA894 6B004010 */  beqz       $v0, .L800BAA44
/* AB098 800BA898 2120A002 */   addu      $a0, $s5, $zero
/* AB09C 800BA89C 5400B127 */  addiu      $s1, $sp, 0x54
/* AB0A0 800BA8A0 80EB020C */  jal        FUN_800bae00
/* AB0A4 800BA8A4 21282002 */   addu      $a1, $s1, $zero
/* AB0A8 800BA8A8 67005310 */  beq        $v0, $s3, .L800BAA48
/* AB0AC 800BA8AC 21100000 */   addu      $v0, $zero, $zero
/* AB0B0 800BA8B0 7E81000C */  jal        strlen
/* AB0B4 800BA8B4 21208002 */   addu      $a0, $s4, $zero
/* AB0B8 800BA8B8 21204000 */  addu       $a0, $v0, $zero
/* AB0BC 800BA8BC E0EC020C */  jal        FUN_800bb380
/* AB0C0 800BA8C0 21288002 */   addu      $a1, $s4, $zero
/* AB0C4 800BA8C4 21204000 */  addu       $a0, $v0, $zero
/* AB0C8 800BA8C8 8AEB020C */  jal        FUN_800bae28
/* AB0CC 800BA8CC 21282002 */   addu      $a1, $s1, $zero
/* AB0D0 800BA8D0 1400B127 */  addiu      $s1, $sp, 0x14
/* AB0D4 800BA8D4 3000B427 */  addiu      $s4, $sp, 0x30
/* AB0D8 800BA8D8 1000B327 */  addiu      $s3, $sp, 0x10
/* AB0DC 800BA8DC 21286002 */  addu       $a1, $s3, $zero
/* AB0E0 800BA8E0 18000424 */  addiu      $a0, $zero, 0x18
/* AB0E4 800BA8E4 03000624 */  addiu      $a2, $zero, 3
.L800BA8E8:
/* AB0E8 800BA8E8 5000A28F */  lw         $v0, 0x50($sp)
/* AB0EC 800BA8EC 00000000 */  nop
/* AB0F0 800BA8F0 06108200 */  srlv       $v0, $v0, $a0
/* AB0F4 800BA8F4 0000A2A0 */  sb         $v0, ($a1)
/* AB0F8 800BA8F8 5400A38F */  lw         $v1, 0x54($sp)
/* AB0FC 800BA8FC FFFFC624 */  addiu      $a2, $a2, -1
/* AB100 800BA900 06188300 */  srlv       $v1, $v1, $a0
/* AB104 800BA904 0400A3A0 */  sb         $v1, 4($a1)
/* AB108 800BA908 0100A524 */  addiu      $a1, $a1, 1
/* AB10C 800BA90C F6FFC104 */  bgez       $a2, .L800BA8E8
/* AB110 800BA910 F8FF8424 */   addiu     $a0, $a0, -8
/* AB114 800BA914 04000424 */  addiu      $a0, $zero, 4
/* AB118 800BA918 E0EC020C */  jal        FUN_800bb380
/* AB11C 800BA91C 1000A527 */   addiu     $a1, $sp, 0x10
/* AB120 800BA920 10ED020C */  jal        FUN_800bb440
/* AB124 800BA924 21204000 */   addu      $a0, $v0, $zero
/* AB128 800BA928 FBED020C */  jal        FUN_800bb7ec
/* AB12C 800BA92C 00000000 */   nop
/* AB130 800BA930 21202002 */  addu       $a0, $s1, $zero
/* AB134 800BA934 5EEB020C */  jal        FUN_800bad78
/* AB138 800BA938 21284000 */   addu      $a1, $v0, $zero
/* AB13C 800BA93C 60D0C226 */  addiu      $v0, $s6, -0x2fa0
/* AB140 800BA940 21104202 */  addu       $v0, $s2, $v0
/* AB144 800BA944 0000448C */  lw         $a0, ($v0)
/* AB148 800BA948 94EC020C */  jal        FUN_800bb250
/* AB14C 800BA94C 21288000 */   addu      $a1, $a0, $zero
/* AB150 800BA950 21202002 */  addu       $a0, $s1, $zero
/* AB154 800BA954 5EEB020C */  jal        FUN_800bad78
/* AB158 800BA958 21284000 */   addu      $a1, $v0, $zero
/* AB15C 800BA95C 21300000 */  addu       $a2, $zero, $zero
/* AB160 800BA960 18000524 */  addiu      $a1, $zero, 0x18
/* AB164 800BA964 04006326 */  addiu      $v1, $s3, 4
/* AB168 800BA968 03000424 */  addiu      $a0, $zero, 3
.L800BA96C:
/* AB16C 800BA96C 00006290 */  lbu        $v0, ($v1)
/* AB170 800BA970 01006324 */  addiu      $v1, $v1, 1
/* AB174 800BA974 FFFF8424 */  addiu      $a0, $a0, -1
/* AB178 800BA978 0410A200 */  sllv       $v0, $v0, $a1
/* AB17C 800BA97C 2530C200 */  or         $a2, $a2, $v0
/* AB180 800BA980 FAFF8104 */  bgez       $a0, .L800BA96C
/* AB184 800BA984 F8FFA524 */   addiu     $a1, $a1, -8
/* AB188 800BA988 21208002 */  addu       $a0, $s4, $zero
/* AB18C 800BA98C 0180053C */  lui        $a1, %hi(D_80017554)
/* AB190 800BA990 8E81000C */  jal        sprintf
/* AB194 800BA994 5475A524 */   addiu     $a1, $a1, %lo(D_80017554)
/* AB198 800BA998 0F80033C */  lui        $v1, %hi(D_800ED070)
/* AB19C 800BA99C 70D06324 */  addiu      $v1, $v1, %lo(D_800ED070)
/* AB1A0 800BA9A0 21184302 */  addu       $v1, $s2, $v1
/* AB1A4 800BA9A4 0000648C */  lw         $a0, ($v1)
/* AB1A8 800BA9A8 94EC020C */  jal        FUN_800bb250
/* AB1AC 800BA9AC 21288002 */   addu      $a1, $s4, $zero
/* AB1B0 800BA9B0 1000A427 */  addiu      $a0, $sp, 0x10
/* AB1B4 800BA9B4 5EEB020C */  jal        FUN_800bad78
/* AB1B8 800BA9B8 21284000 */   addu      $a1, $v0, $zero
/* AB1BC 800BA9BC 04000424 */  addiu      $a0, $zero, 4
/* AB1C0 800BA9C0 1000A527 */  addiu      $a1, $sp, 0x10
/* AB1C4 800BA9C4 1400A293 */  lbu        $v0, 0x14($sp)
/* AB1C8 800BA9C8 1500B193 */  lbu        $s1, 0x15($sp)
/* AB1CC 800BA9CC 1600A393 */  lbu        $v1, 0x16($sp)
/* AB1D0 800BA9D0 00120200 */  sll        $v0, $v0, 8
/* AB1D4 800BA9D4 25882202 */  or         $s1, $s1, $v0
/* AB1D8 800BA9D8 1700A293 */  lbu        $v0, 0x17($sp)
/* AB1DC 800BA9DC 001A0300 */  sll        $v1, $v1, 8
/* AB1E0 800BA9E0 E0EC020C */  jal        FUN_800bb380
/* AB1E4 800BA9E4 25904300 */   or        $s2, $v0, $v1
/* AB1E8 800BA9E8 06000424 */  addiu      $a0, $zero, 6
/* AB1EC 800BA9EC 1000A527 */  addiu      $a1, $sp, 0x10
/* AB1F0 800BA9F0 F9EC020C */  jal        FUN_800bb3e4
/* AB1F4 800BA9F4 21804000 */   addu      $s0, $v0, $zero
/* AB1F8 800BA9F8 12003016 */  bne        $s1, $s0, .L800BAA44
/* AB1FC 800BA9FC 00000000 */   nop
/* AB200 800BAA00 11004216 */  bne        $s2, $v0, .L800BAA48
/* AB204 800BAA04 21100000 */   addu      $v0, $zero, $zero
/* AB208 800BAA08 21300000 */  addu       $a2, $zero, $zero
/* AB20C 800BAA0C 21200000 */  addu       $a0, $zero, $zero
/* AB210 800BAA10 21386002 */  addu       $a3, $s3, $zero
/* AB214 800BAA14 18000524 */  addiu      $a1, $zero, 0x18
.L800BAA18:
/* AB218 800BAA18 2110E400 */  addu       $v0, $a3, $a0
/* AB21C 800BAA1C 00004390 */  lbu        $v1, ($v0)
/* AB220 800BAA20 01008424 */  addiu      $a0, $a0, 1
/* AB224 800BAA24 04008228 */  slti       $v0, $a0, 4
/* AB228 800BAA28 0418A300 */  sllv       $v1, $v1, $a1
/* AB22C 800BAA2C 2530C300 */  or         $a2, $a2, $v1
/* AB230 800BAA30 F9FF4014 */  bnez       $v0, .L800BAA18
/* AB234 800BAA34 F8FFA524 */   addiu     $a1, $a1, -8
/* AB238 800BAA38 0000E6AE */  sw         $a2, ($s7)
/* AB23C 800BAA3C 92EA0208 */  j          .L800BAA48
/* AB240 800BAA40 01000224 */   addiu     $v0, $zero, 1
.L800BAA44:
/* AB244 800BAA44 21100000 */  addu       $v0, $zero, $zero
.L800BAA48:
/* AB248 800BAA48 7800BF8F */  lw         $ra, 0x78($sp)
/* AB24C 800BAA4C 7400B78F */  lw         $s7, 0x74($sp)
/* AB250 800BAA50 7000B68F */  lw         $s6, 0x70($sp)
/* AB254 800BAA54 6C00B58F */  lw         $s5, 0x6c($sp)
/* AB258 800BAA58 6800B48F */  lw         $s4, 0x68($sp)
/* AB25C 800BAA5C 6400B38F */  lw         $s3, 0x64($sp)
/* AB260 800BAA60 6000B28F */  lw         $s2, 0x60($sp)
/* AB264 800BAA64 5C00B18F */  lw         $s1, 0x5c($sp)
/* AB268 800BAA68 5800B08F */  lw         $s0, 0x58($sp)
/* AB26C 800BAA6C 0800E003 */  jr         $ra
/* AB270 800BAA70 8000BD27 */   addiu     $sp, $sp, 0x80

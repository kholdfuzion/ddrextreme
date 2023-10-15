.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cdf9c
/* BE79C 800CDF9C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BE7A0 800CDFA0 1400B1AF */  sw         $s1, 0x14($sp)
/* BE7A4 800CDFA4 641F113C */  lui        $s1, 0x1f64
/* BE7A8 800CDFA8 EE002296 */  lhu        $v0, 0xee($s1)
/* BE7AC 800CDFAC 2400BFAF */  sw         $ra, 0x24($sp)
/* BE7B0 800CDFB0 2000B4AF */  sw         $s4, 0x20($sp)
/* BE7B4 800CDFB4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BE7B8 800CDFB8 1800B2AF */  sw         $s2, 0x18($sp)
/* BE7BC 800CDFBC 00104230 */  andi       $v0, $v0, 0x1000
/* BE7C0 800CDFC0 05004014 */  bnez       $v0, .L800CDFD8
/* BE7C4 800CDFC4 1000B0AF */   sw        $s0, 0x10($sp)
.L800CDFC8:
/* BE7C8 800CDFC8 74380308 */  j          .L800CE1D0
/* BE7CC 800CDFCC FFFF0224 */   addiu     $v0, $zero, -1
.L800CDFD0:
/* BE7D0 800CDFD0 40380308 */  j          .L800CE100
/* BE7D4 800CDFD4 21480000 */   addu      $t1, $zero, $zero
.L800CDFD8:
/* BE7D8 800CDFD8 CD6B000C */  jal        VSync
/* BE7DC 800CDFDC 01000424 */   addiu     $a0, $zero, 1
/* BE7E0 800CDFE0 21804000 */  addu       $s0, $v0, $zero
/* BE7E4 800CDFE4 21902002 */  addu       $s2, $s1, $zero
/* BE7E8 800CDFE8 FFFF1134 */  ori        $s1, $zero, 0xffff
.L800CDFEC:
/* BE7EC 800CDFEC CD6B000C */  jal        VSync
/* BE7F0 800CDFF0 01000424 */   addiu     $a0, $zero, 1
/* BE7F4 800CDFF4 23105000 */  subu       $v0, $v0, $s0
/* BE7F8 800CDFF8 21284000 */  addu       $a1, $v0, $zero
/* BE7FC 800CDFFC FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE800 800CE000 06004014 */  bnez       $v0, .L800CE01C
/* BE804 800CE004 00000000 */   nop
/* BE808 800CE008 EE004296 */  lhu        $v0, 0xee($s2)
/* BE80C 800CE00C 00000000 */  nop
/* BE810 800CE010 00104230 */  andi       $v0, $v0, 0x1000
/* BE814 800CE014 F5FF5114 */  bne        $v0, $s1, .L800CDFEC
/* BE818 800CE018 00000000 */   nop
.L800CE01C:
/* BE81C 800CE01C 01000424 */  addiu      $a0, $zero, 1
/* BE820 800CE020 2080033C */  lui        $v1, %hi(D_801FBD04)
/* BE824 800CE024 FFFFA230 */  andi       $v0, $a1, 0xffff
/* BE828 800CE028 CD6B000C */  jal        VSync
/* BE82C 800CE02C 04BD62AC */   sw        $v0, %lo(D_801FBD04)($v1)
/* BE830 800CE030 01000424 */  addiu      $a0, $zero, 1
/* BE834 800CE034 2080063C */  lui        $a2, %hi(D_801FBD00)
/* BE838 800CE038 641F033C */  lui        $v1, 0x1f64
/* BE83C 800CE03C 21886000 */  addu       $s1, $v1, $zero
/* BE840 800CE040 2080033C */  lui        $v1, %hi(D_801FBCF8)
/* BE844 800CE044 00BDC594 */  lhu        $a1, %lo(D_801FBD00)($a2)
/* BE848 800CE048 FFFF1234 */  ori        $s2, $zero, 0xffff
/* BE84C 800CE04C 0010A534 */  ori        $a1, $a1, 0x1000
/* BE850 800CE050 EE0025A6 */  sh         $a1, 0xee($s1)
/* BE854 800CE054 F8BC60AC */  sw         $zero, %lo(D_801FBCF8)($v1)
/* BE858 800CE058 F8BC638C */  lw         $v1, -0x4308($v1)
/* BE85C 800CE05C 21A04000 */  addu       $s4, $v0, $zero
/* BE860 800CE060 CD6B000C */  jal        VSync
/* BE864 800CE064 00BDC5A4 */   sh        $a1, -0x4300($a2)
/* BE868 800CE068 21804000 */  addu       $s0, $v0, $zero
.L800CE06C:
/* BE86C 800CE06C CD6B000C */  jal        VSync
/* BE870 800CE070 01000424 */   addiu     $a0, $zero, 1
/* BE874 800CE074 23105000 */  subu       $v0, $v0, $s0
/* BE878 800CE078 21404000 */  addu       $t0, $v0, $zero
/* BE87C 800CE07C FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE880 800CE080 0A004228 */  slti       $v0, $v0, 0xa
/* BE884 800CE084 06004010 */  beqz       $v0, .L800CE0A0
/* BE888 800CE088 FFFF0924 */   addiu     $t1, $zero, -1
/* BE88C 800CE08C EE002296 */  lhu        $v0, 0xee($s1)
/* BE890 800CE090 00000000 */  nop
/* BE894 800CE094 00104230 */  andi       $v0, $v0, 0x1000
/* BE898 800CE098 F4FF5214 */  bne        $v0, $s2, .L800CE06C
/* BE89C 800CE09C 00000000 */   nop
.L800CE0A0:
/* BE8A0 800CE0A0 21300000 */  addu       $a2, $zero, $zero
/* BE8A4 800CE0A4 641F023C */  lui        $v0, 0x1f64
/* BE8A8 800CE0A8 21384000 */  addu       $a3, $v0, $zero
/* BE8AC 800CE0AC 2080053C */  lui        $a1, %hi(D_801FBD00)
/* BE8B0 800CE0B0 00100A24 */  addiu      $t2, $zero, 0x1000
/* BE8B4 800CE0B4 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BE8B8 800CE0B8 00BDA394 */  lhu        $v1, %lo(D_801FBD00)($a1)
/* BE8BC 800CE0BC 2080043C */  lui        $a0, 0x8020
/* BE8C0 800CE0C0 FFEF6330 */  andi       $v1, $v1, 0xefff
/* BE8C4 800CE0C4 EE00E3A4 */  sh         $v1, 0xee($a3)
/* BE8C8 800CE0C8 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BE8CC 800CE0CC F8BC428C */  lw         $v0, -0x4308($v0)
/* BE8D0 800CE0D0 FFFF0231 */  andi       $v0, $t0, 0xffff
/* BE8D4 800CE0D4 04BD82AC */  sw         $v0, -0x42fc($a0)
/* BE8D8 800CE0D8 00BDA3A4 */  sh         $v1, -0x4300($a1)
.L800CE0DC:
/* BE8DC 800CE0DC EE00E294 */  lhu        $v0, 0xee($a3)
/* BE8E0 800CE0E0 00000000 */  nop
/* BE8E4 800CE0E4 00104230 */  andi       $v0, $v0, 0x1000
/* BE8E8 800CE0E8 B9FF4A10 */  beq        $v0, $t2, .L800CDFD0
/* BE8EC 800CE0EC 00000000 */   nop
/* BE8F0 800CE0F0 0100C624 */  addiu      $a2, $a2, 1
/* BE8F4 800CE0F4 0F00C228 */  slti       $v0, $a2, 0xf
/* BE8F8 800CE0F8 F8FF4014 */  bnez       $v0, .L800CE0DC
/* BE8FC 800CE0FC 00000000 */   nop
.L800CE100:
/* BE900 800CE100 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BE904 800CE104 05002105 */  bgez       $t1, .L800CE11C
/* BE908 800CE108 04BD46AC */   sw        $a2, %lo(D_801FBD04)($v0)
/* BE90C 800CE10C 74380308 */  j          .L800CE1D0
/* BE910 800CE110 FFFF0224 */   addiu     $v0, $zero, -1
.L800CE114:
/* BE914 800CE114 53380308 */  j          .L800CE14C
/* BE918 800CE118 21200000 */   addu      $a0, $zero, $zero
.L800CE11C:
/* BE91C 800CE11C FFFF0424 */  addiu      $a0, $zero, -1
/* BE920 800CE120 21180000 */  addu       $v1, $zero, $zero
/* BE924 800CE124 641F053C */  lui        $a1, 0x1f64
.L800CE128:
/* BE928 800CE128 EE00A294 */  lhu        $v0, 0xee($a1)
/* BE92C 800CE12C 00000000 */  nop
/* BE930 800CE130 00104230 */  andi       $v0, $v0, 0x1000
/* BE934 800CE134 F7FF4010 */  beqz       $v0, .L800CE114
/* BE938 800CE138 00000000 */   nop
/* BE93C 800CE13C 01006324 */  addiu      $v1, $v1, 1
/* BE940 800CE140 DE006228 */  slti       $v0, $v1, 0xde
/* BE944 800CE144 F8FF4014 */  bnez       $v0, .L800CE128
/* BE948 800CE148 00000000 */   nop
.L800CE14C:
/* BE94C 800CE14C 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BE950 800CE150 9DFF8004 */  bltz       $a0, .L800CDFC8
/* BE954 800CE154 04BD43AC */   sw        $v1, %lo(D_801FBD04)($v0)
/* BE958 800CE158 FFFF1024 */  addiu      $s0, $zero, -1
/* BE95C 800CE15C CD6B000C */  jal        VSync
/* BE960 800CE160 01000424 */   addiu     $a0, $zero, 1
/* BE964 800CE164 21884000 */  addu       $s1, $v0, $zero
/* BE968 800CE168 641F133C */  lui        $s3, 0x1f64
/* BE96C 800CE16C 00101224 */  addiu      $s2, $zero, 0x1000
.L800CE170:
/* BE970 800CE170 CD6B000C */  jal        VSync
/* BE974 800CE174 01000424 */   addiu     $a0, $zero, 1
/* BE978 800CE178 23105100 */  subu       $v0, $v0, $s1
/* BE97C 800CE17C 21204000 */  addu       $a0, $v0, $zero
/* BE980 800CE180 FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE984 800CE184 08004228 */  slti       $v0, $v0, 8
/* BE988 800CE188 07004010 */  beqz       $v0, .L800CE1A8
/* BE98C 800CE18C 2080033C */   lui       $v1, 0x8020
/* BE990 800CE190 EE006296 */  lhu        $v0, 0xee($s3)
/* BE994 800CE194 00000000 */  nop
/* BE998 800CE198 00104230 */  andi       $v0, $v0, 0x1000
/* BE99C 800CE19C F4FF5214 */  bne        $v0, $s2, .L800CE170
/* BE9A0 800CE1A0 00000000 */   nop
/* BE9A4 800CE1A4 21800000 */  addu       $s0, $zero, $zero
.L800CE1A8:
/* BE9A8 800CE1A8 FFFF8230 */  andi       $v0, $a0, 0xffff
/* BE9AC 800CE1AC 86FF0006 */  bltz       $s0, .L800CDFC8
/* BE9B0 800CE1B0 04BD62AC */   sw        $v0, -0x42fc($v1)
.L800CE1B4:
/* BE9B4 800CE1B4 CD6B000C */  jal        VSync
/* BE9B8 800CE1B8 01000424 */   addiu     $a0, $zero, 1
/* BE9BC 800CE1BC 23105400 */  subu       $v0, $v0, $s4
/* BE9C0 800CE1C0 FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE9C4 800CE1C4 1400422C */  sltiu      $v0, $v0, 0x14
/* BE9C8 800CE1C8 FAFF4014 */  bnez       $v0, .L800CE1B4
/* BE9CC 800CE1CC 21100000 */   addu      $v0, $zero, $zero
.L800CE1D0:
/* BE9D0 800CE1D0 2400BF8F */  lw         $ra, 0x24($sp)
/* BE9D4 800CE1D4 2000B48F */  lw         $s4, 0x20($sp)
/* BE9D8 800CE1D8 1C00B38F */  lw         $s3, 0x1c($sp)
/* BE9DC 800CE1DC 1800B28F */  lw         $s2, 0x18($sp)
/* BE9E0 800CE1E0 1400B18F */  lw         $s1, 0x14($sp)
/* BE9E4 800CE1E4 1000B08F */  lw         $s0, 0x10($sp)
/* BE9E8 800CE1E8 0800E003 */  jr         $ra
/* BE9EC 800CE1EC 2800BD27 */   addiu     $sp, $sp, 0x28

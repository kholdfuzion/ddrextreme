.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005df58
/* 4E758 8005DF58 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4E75C 8005DF5C 21200000 */  addu       $a0, $zero, $zero
/* 4E760 8005DF60 0E80023C */  lui        $v0, %hi(D_800DAF90)
/* 4E764 8005DF64 6000B6AF */  sw         $s6, 0x60($sp)
/* 4E768 8005DF68 90AF568C */  lw         $s6, %lo(D_800DAF90)($v0)
/* 4E76C 8005DF6C 0F000524 */  addiu      $a1, $zero, 0xf
/* 4E770 8005DF70 6C00BFAF */  sw         $ra, 0x6c($sp)
/* 4E774 8005DF74 6800BEAF */  sw         $fp, 0x68($sp)
/* 4E778 8005DF78 6400B7AF */  sw         $s7, 0x64($sp)
/* 4E77C 8005DF7C 5C00B5AF */  sw         $s5, 0x5c($sp)
/* 4E780 8005DF80 5800B4AF */  sw         $s4, 0x58($sp)
/* 4E784 8005DF84 5400B3AF */  sw         $s3, 0x54($sp)
/* 4E788 8005DF88 5000B2AF */  sw         $s2, 0x50($sp)
/* 4E78C 8005DF8C 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 4E790 8005DF90 4800B0AF */  sw         $s0, 0x48($sp)
/* 4E794 8005DF94 FA56010C */  jal        FUN_80055be8
/* 4E798 8005DF98 0000C0AE */   sw        $zero, ($s6)
/* 4E79C 8005DF9C 21200000 */  addu       $a0, $zero, $zero
/* 4E7A0 8005DFA0 946B010C */  jal        FUN_8005ae50
/* 4E7A4 8005DFA4 FFFF0524 */   addiu     $a1, $zero, -1
/* 4E7A8 8005DFA8 21200000 */  addu       $a0, $zero, $zero
/* 4E7AC 8005DFAC 376C010C */  jal        FUN_8005b0dc
/* 4E7B0 8005DFB0 0A000524 */   addiu     $a1, $zero, 0xa
/* 4E7B4 8005DFB4 21200000 */  addu       $a0, $zero, $zero
/* 4E7B8 8005DFB8 21280000 */  addu       $a1, $zero, $zero
/* 4E7BC 8005DFBC 0C6C010C */  jal        FUN_8005b030
/* 4E7C0 8005DFC0 21300000 */   addu      $a2, $zero, $zero
/* 4E7C4 8005DFC4 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 4E7C8 8005DFC8 1A000424 */  addiu      $a0, $zero, 0x1a
/* 4E7CC 8005DFCC 28004384 */  lh         $v1, %lo(D_800F0028)($v0)
/* 4E7D0 8005DFD0 00000000 */  nop
/* 4E7D4 8005DFD4 0F006414 */  bne        $v1, $a0, .L8005E014
/* 4E7D8 8005DFD8 21904000 */   addu      $s2, $v0, $zero
/* 4E7DC 8005DFDC 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 4E7E0 8005DFE0 21B86000 */  addu       $s7, $v1, $zero
/* 4E7E4 8005DFE4 0E80023C */  lui        $v0, %hi(D_800DAF94)
/* 4E7E8 8005DFE8 21984000 */  addu       $s3, $v0, $zero
/* 4E7EC 8005DFEC A8FF6324 */  addiu      $v1, $v1, %lo(D_800EFFA8)
/* 4E7F0 8005DFF0 94AF458C */  lw         $a1, %lo(D_800DAF94)($v0)
/* 4E7F4 8005DFF4 7800648C */  lw         $a0, 0x78($v1)
/* 4E7F8 8005DFF8 0000A28C */  lw         $v0, ($a1)
/* 4E7FC 8005DFFC 64FB8424 */  addiu      $a0, $a0, -0x49c
/* 4E800 8005E000 2A104400 */  slt        $v0, $v0, $a0
/* 4E804 8005E004 0A004010 */  beqz       $v0, .L8005E030
/* 4E808 8005E008 50FB1524 */   addiu     $s5, $zero, -0x4b0
/* 4E80C 8005E00C 0C780108 */  j          .L8005E030
/* 4E810 8005E010 0000A4AC */   sw        $a0, ($a1)
.L8005E014:
/* 4E814 8005E014 0F80043C */  lui        $a0, %hi(D_800EFFA8)
/* 4E818 8005E018 A8FF8324 */  addiu      $v1, $a0, %lo(D_800EFFA8)
/* 4E81C 8005E01C 3C000224 */  addiu      $v0, $zero, 0x3c
/* 4E820 8005E020 780062AC */  sw         $v0, 0x78($v1)
/* 4E824 8005E024 C4FF1524 */  addiu      $s5, $zero, -0x3c
/* 4E828 8005E028 21B88000 */  addu       $s7, $a0, $zero
/* 4E82C 8005E02C 0E80133C */  lui        $s3, %hi(D_800DAF94)
.L8005E030:
/* 4E830 8005E030 94AF628E */  lw         $v0, %lo(D_800DAF94)($s3)
/* 4E834 8005E034 00000000 */  nop
/* 4E838 8005E038 0000448C */  lw         $a0, ($v0)
/* 4E83C 8005E03C 00000000 */  nop
/* 4E840 8005E040 14008328 */  slti       $v1, $a0, 0x14
/* 4E844 8005E044 11006010 */  beqz       $v1, .L8005E08C
/* 4E848 8005E048 12008228 */   slti      $v0, $a0, 0x12
/* 4E84C 8005E04C 0D004010 */  beqz       $v0, .L8005E084
/* 4E850 8005E050 00000000 */   nop
/* 4E854 8005E054 02008104 */  bgez       $a0, .L8005E060
/* 4E858 8005E058 21188000 */   addu      $v1, $a0, $zero
/* 4E85C 8005E05C 21180000 */  addu       $v1, $zero, $zero
.L8005E060:
/* 4E860 8005E060 7878023C */  lui        $v0, 0x7878
/* 4E864 8005E064 79784234 */  ori        $v0, $v0, 0x7879
/* 4E868 8005E068 001B0300 */  sll        $v1, $v1, 0xc
/* 4E86C 8005E06C 18006200 */  mult       $v1, $v0
/* 4E870 8005E070 C31F0300 */  sra        $v1, $v1, 0x1f
/* 4E874 8005E074 10100000 */  mfhi       $v0
/* 4E878 8005E078 C3100200 */  sra        $v0, $v0, 3
/* 4E87C 8005E07C 32780108 */  j          .L8005E0C8
/* 4E880 8005E080 23204300 */   subu      $a0, $v0, $v1
.L8005E084:
/* 4E884 8005E084 32780108 */  j          .L8005E0C8
/* 4E888 8005E088 00100424 */   addiu     $a0, $zero, 0x1000
.L8005E08C:
/* 4E88C 8005E08C ECFF8324 */  addiu      $v1, $a0, -0x14
/* 4E890 8005E090 12006228 */  slti       $v0, $v1, 0x12
/* 4E894 8005E094 0C004010 */  beqz       $v0, .L8005E0C8
/* 4E898 8005E098 00200424 */   addiu     $a0, $zero, 0x2000
/* 4E89C 8005E09C 02006104 */  bgez       $v1, .L8005E0A8
/* 4E8A0 8005E0A0 7878023C */   lui       $v0, 0x7878
/* 4E8A4 8005E0A4 21180000 */  addu       $v1, $zero, $zero
.L8005E0A8:
/* 4E8A8 8005E0A8 79784234 */  ori        $v0, $v0, 0x7879
/* 4E8AC 8005E0AC 001B0300 */  sll        $v1, $v1, 0xc
/* 4E8B0 8005E0B0 18006200 */  mult       $v1, $v0
/* 4E8B4 8005E0B4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 4E8B8 8005E0B8 10100000 */  mfhi       $v0
/* 4E8BC 8005E0BC C3100200 */  sra        $v0, $v0, 3
/* 4E8C0 8005E0C0 23104300 */  subu       $v0, $v0, $v1
/* 4E8C4 8005E0C4 00104424 */  addiu      $a0, $v0, 0x1000
.L8005E0C8:
/* 4E8C8 8005E0C8 00108228 */  slti       $v0, $a0, 0x1000
/* 4E8CC 8005E0CC 03004014 */  bnez       $v0, .L8005E0DC
/* 4E8D0 8005E0D0 21A08000 */   addu      $s4, $a0, $zero
/* 4E8D4 8005E0D4 00200224 */  addiu      $v0, $zero, 0x2000
/* 4E8D8 8005E0D8 23A04400 */  subu       $s4, $v0, $a0
.L8005E0DC:
/* 4E8DC 8005E0DC 28004386 */  lh         $v1, 0x28($s2)
/* 4E8E0 8005E0E0 19000224 */  addiu      $v0, $zero, 0x19
/* 4E8E4 8005E0E4 03006210 */  beq        $v1, $v0, .L8005E0F4
/* 4E8E8 8005E0E8 00100224 */   addiu     $v0, $zero, 0x1000
/* 4E8EC 8005E0EC 04008216 */  bne        $s4, $v0, .L8005E100
/* 4E8F0 8005E0F0 00000000 */   nop
.L8005E0F4:
/* 4E8F4 8005E0F4 80000224 */  addiu      $v0, $zero, 0x80
/* 4E8F8 8005E0F8 45780108 */  j          .L8005E114
/* 4E8FC 8005E0FC 2800A2AF */   sw        $v0, 0x28($sp)
.L8005E100:
/* 4E900 8005E100 02008106 */  bgez       $s4, .L8005E10C
/* 4E904 8005E104 21308002 */   addu      $a2, $s4, $zero
/* 4E908 8005E108 1F008626 */  addiu      $a2, $s4, 0x1f
.L8005E10C:
/* 4E90C 8005E10C 43310600 */  sra        $a2, $a2, 5
/* 4E910 8005E110 2800A6AF */  sw         $a2, 0x28($sp)
.L8005E114:
/* 4E914 8005E114 6E008018 */  blez       $a0, .L8005E2D0
/* 4E918 8005E118 80100400 */   sll       $v0, $a0, 2
/* 4E91C 8005E11C 21104400 */  addu       $v0, $v0, $a0
/* 4E920 8005E120 C0110200 */  sll        $v0, $v0, 7
/* 4E924 8005E124 02004104 */  bgez       $v0, .L8005E130
/* 4E928 8005E128 00000000 */   nop
/* 4E92C 8005E12C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E130:
/* 4E930 8005E130 03130200 */  sra        $v0, $v0, 0xc
/* 4E934 8005E134 28004326 */  addiu      $v1, $s2, 0x28
/* 4E938 8005E138 0C006480 */  lb         $a0, 0xc($v1)
/* 4E93C 8005E13C 00000000 */  nop
/* 4E940 8005E140 30008014 */  bnez       $a0, .L8005E204
/* 4E944 8005E144 80FD5124 */   addiu     $s1, $v0, -0x280
/* 4E948 8005E148 28004386 */  lh         $v1, 0x28($s2)
/* 4E94C 8005E14C 19000224 */  addiu      $v0, $zero, 0x19
/* 4E950 8005E150 2E006214 */  bne        $v1, $v0, .L8005E20C
/* 4E954 8005E154 16000224 */   addiu     $v0, $zero, 0x16
/* 4E958 8005E158 21282002 */  addu       $a1, $s1, $zero
/* 4E95C 8005E15C 70FF0624 */  addiu      $a2, $zero, -0x90
/* 4E960 8005E160 2800A38F */  lw         $v1, 0x28($sp)
/* 4E964 8005E164 FFFF1024 */  addiu      $s0, $zero, -1
/* 4E968 8005E168 1400B0AF */  sw         $s0, 0x14($sp)
/* 4E96C 8005E16C 1000A3AF */  sw         $v1, 0x10($sp)
/* 4E970 8005E170 0000C48E */  lw         $a0, ($s6)
/* 4E974 8005E174 AE76010C */  jal        FUN_8005dab8
/* 4E978 8005E178 01000724 */   addiu     $a3, $zero, 1
/* 4E97C 8005E17C 23281100 */  negu       $a1, $s1
/* 4E980 8005E180 0000C2AE */  sw         $v0, ($s6)
/* 4E984 8005E184 2800A48F */  lw         $a0, 0x28($sp)
/* 4E988 8005E188 AAFF0624 */  addiu      $a2, $zero, -0x56
/* 4E98C 8005E18C 1400B0AF */  sw         $s0, 0x14($sp)
/* 4E990 8005E190 1000A4AF */  sw         $a0, 0x10($sp)
/* 4E994 8005E194 0000C48E */  lw         $a0, ($s6)
/* 4E998 8005E198 AE76010C */  jal        FUN_8005dab8
/* 4E99C 8005E19C 03000724 */   addiu     $a3, $zero, 3
/* 4E9A0 8005E1A0 21282002 */  addu       $a1, $s1, $zero
/* 4E9A4 8005E1A4 0000C2AE */  sw         $v0, ($s6)
/* 4E9A8 8005E1A8 2800A28F */  lw         $v0, 0x28($sp)
/* 4E9AC 8005E1AC D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 4E9B0 8005E1B0 1400B0AF */  sw         $s0, 0x14($sp)
/* 4E9B4 8005E1B4 1000A2AF */  sw         $v0, 0x10($sp)
/* 4E9B8 8005E1B8 0000C48E */  lw         $a0, ($s6)
/* 4E9BC 8005E1BC AE76010C */  jal        FUN_8005dab8
/* 4E9C0 8005E1C0 04000724 */   addiu     $a3, $zero, 4
/* 4E9C4 8005E1C4 94AF638E */  lw         $v1, -0x506c($s3)
/* 4E9C8 8005E1C8 0000C2AE */  sw         $v0, ($s6)
/* 4E9CC 8005E1CC 0000638C */  lw         $v1, ($v1)
/* 4E9D0 8005E1D0 13000224 */  addiu      $v0, $zero, 0x13
/* 4E9D4 8005E1D4 05006214 */  bne        $v1, $v0, .L8005E1EC
/* 4E9D8 8005E1D8 15000224 */   addiu     $v0, $zero, 0x15
/* 4E9DC 8005E1DC 12CB020C */  jal        FUN_800b2c48
/* 4E9E0 8005E1E0 66000424 */   addiu     $a0, $zero, 0x66
/* 4E9E4 8005E1E4 81780108 */  j          .L8005E204
/* 4E9E8 8005E1E8 00000000 */   nop
.L8005E1EC:
/* 4E9EC 8005E1EC 05006214 */  bne        $v1, $v0, .L8005E204
/* 4E9F0 8005E1F0 00000000 */   nop
/* 4E9F4 8005E1F4 73CB020C */  jal        FUN_800b2dcc
/* 4E9F8 8005E1F8 66000424 */   addiu     $a0, $zero, 0x66
/* 4E9FC 8005E1FC 12CB020C */  jal        FUN_800b2c48
/* 4EA00 8005E200 68000424 */   addiu     $a0, $zero, 0x68
.L8005E204:
/* 4EA04 8005E204 28004386 */  lh         $v1, 0x28($s2)
/* 4EA08 8005E208 16000224 */  addiu      $v0, $zero, 0x16
.L8005E20C:
/* 4EA0C 8005E20C 11006214 */  bne        $v1, $v0, .L8005E254
/* 4EA10 8005E210 21282002 */   addu      $a1, $s1, $zero
/* 4EA14 8005E214 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 4EA18 8005E218 2800A38F */  lw         $v1, 0x28($sp)
/* 4EA1C 8005E21C FFFF1024 */  addiu      $s0, $zero, -1
/* 4EA20 8005E220 1400B0AF */  sw         $s0, 0x14($sp)
/* 4EA24 8005E224 1000A3AF */  sw         $v1, 0x10($sp)
/* 4EA28 8005E228 0000C48E */  lw         $a0, ($s6)
/* 4EA2C 8005E22C AE76010C */  jal        FUN_8005dab8
/* 4EA30 8005E230 04000724 */   addiu     $a3, $zero, 4
/* 4EA34 8005E234 94AF638E */  lw         $v1, -0x506c($s3)
/* 4EA38 8005E238 0000C2AE */  sw         $v0, ($s6)
/* 4EA3C 8005E23C 0000648C */  lw         $a0, ($v1)
/* 4EA40 8005E240 13000224 */  addiu      $v0, $zero, 0x13
/* 4EA44 8005E244 03008214 */  bne        $a0, $v0, .L8005E254
/* 4EA48 8005E248 080070AC */   sw        $s0, 8($v1)
/* 4EA4C 8005E24C 12CB020C */  jal        FUN_800b2c48
/* 4EA50 8005E250 67000424 */   addiu     $a0, $zero, 0x67
.L8005E254:
/* 4EA54 8005E254 28004386 */  lh         $v1, 0x28($s2)
/* 4EA58 8005E258 1A000224 */  addiu      $v0, $zero, 0x1a
/* 4EA5C 8005E25C 1C006214 */  bne        $v1, $v0, .L8005E2D0
/* 4EA60 8005E260 21282002 */   addu      $a1, $s1, $zero
/* 4EA64 8005E264 70FF0624 */  addiu      $a2, $zero, -0x90
/* 4EA68 8005E268 2800A48F */  lw         $a0, 0x28($sp)
/* 4EA6C 8005E26C FFFF1024 */  addiu      $s0, $zero, -1
/* 4EA70 8005E270 1400B0AF */  sw         $s0, 0x14($sp)
/* 4EA74 8005E274 1000A4AF */  sw         $a0, 0x10($sp)
/* 4EA78 8005E278 0000C48E */  lw         $a0, ($s6)
/* 4EA7C 8005E27C AE76010C */  jal        FUN_8005dab8
/* 4EA80 8005E280 02000724 */   addiu     $a3, $zero, 2
/* 4EA84 8005E284 23281100 */  negu       $a1, $s1
/* 4EA88 8005E288 0000C2AE */  sw         $v0, ($s6)
/* 4EA8C 8005E28C 2800A28F */  lw         $v0, 0x28($sp)
/* 4EA90 8005E290 BAFF0624 */  addiu      $a2, $zero, -0x46
/* 4EA94 8005E294 1400B0AF */  sw         $s0, 0x14($sp)
/* 4EA98 8005E298 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EA9C 8005E29C 0000C48E */  lw         $a0, ($s6)
/* 4EAA0 8005E2A0 AE76010C */  jal        FUN_8005dab8
/* 4EAA4 8005E2A4 05000724 */   addiu     $a3, $zero, 5
/* 4EAA8 8005E2A8 0000C2AE */  sw         $v0, ($s6)
/* 4EAAC 8005E2AC A8FFE226 */  addiu      $v0, $s7, -0x58
/* 4EAB0 8005E2B0 7800448C */  lw         $a0, 0x78($v0)
/* 4EAB4 8005E2B4 02000324 */  addiu      $v1, $zero, 2
/* 4EAB8 8005E2B8 05008314 */  bne        $a0, $v1, .L8005E2D0
/* 4EABC 8005E2BC 00000000 */   nop
/* 4EAC0 8005E2C0 73CB020C */  jal        FUN_800b2dcc
/* 4EAC4 8005E2C4 67000424 */   addiu     $a0, $zero, 0x67
/* 4EAC8 8005E2C8 12CB020C */  jal        FUN_800b2c48
/* 4EACC 8005E2CC 69000424 */   addiu     $a0, $zero, 0x69
.L8005E2D0:
/* 4EAD0 8005E2D0 0000C28E */  lw         $v0, ($s6)
/* 4EAD4 8005E2D4 00000000 */  nop
/* 4EAD8 8005E2D8 0500401C */  bgtz       $v0, .L8005E2F0
/* 4EADC 8005E2DC 19000224 */   addiu     $v0, $zero, 0x19
/* 4EAE0 8005E2E0 28004386 */  lh         $v1, 0x28($s2)
/* 4EAE4 8005E2E4 00000000 */  nop
/* 4EAE8 8005E2E8 05016214 */  bne        $v1, $v0, .L8005E700
/* 4EAEC 8005E2EC 21200000 */   addu      $a0, $zero, $zero
.L8005E2F0:
/* 4EAF0 8005E2F0 2120C002 */  addu       $a0, $s6, $zero
/* 4EAF4 8005E2F4 21280000 */  addu       $a1, $zero, $zero
/* 4EAF8 8005E2F8 21300000 */  addu       $a2, $zero, $zero
/* 4EAFC 8005E2FC 01000724 */  addiu      $a3, $zero, 1
/* 4EB00 8005E300 94AF628E */  lw         $v0, -0x506c($s3)
/* 4EB04 8005E304 2800A38F */  lw         $v1, 0x28($sp)
/* 4EB08 8005E308 0400508C */  lw         $s0, 4($v0)
/* 4EB0C 8005E30C 80000224 */  addiu      $v0, $zero, 0x80
/* 4EB10 8005E310 1000B5AF */  sw         $s5, 0x10($sp)
/* 4EB14 8005E314 1400A0AF */  sw         $zero, 0x14($sp)
/* 4EB18 8005E318 1800A3AF */  sw         $v1, 0x18($sp)
/* 4EB1C 8005E31C D2F9010C */  jal        FUN_8007e748
/* 4EB20 8005E320 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 4EB24 8005E324 21A84000 */  addu       $s5, $v0, $zero
/* 4EB28 8005E328 FFFF0224 */  addiu      $v0, $zero, -1
/* 4EB2C 8005E32C 15000212 */  beq        $s0, $v0, .L8005E384
/* 4EB30 8005E330 1A000224 */   addiu     $v0, $zero, 0x1a
/* 4EB34 8005E334 28004386 */  lh         $v1, 0x28($s2)
/* 4EB38 8005E338 00000000 */  nop
/* 4EB3C 8005E33C 11006210 */  beq        $v1, $v0, .L8005E384
/* 4EB40 8005E340 A8FFE226 */   addiu     $v0, $s7, -0x58
/* 4EB44 8005E344 7400448C */  lw         $a0, 0x74($v0)
/* 4EB48 8005E348 8888023C */  lui        $v0, 0x8888
/* 4EB4C 8005E34C 89884234 */  ori        $v0, $v0, 0x8889
/* 4EB50 8005E350 23209000 */  subu       $a0, $a0, $s0
/* 4EB54 8005E354 19008200 */  multu      $a0, $v0
/* 4EB58 8005E358 FEFF8424 */  addiu      $a0, $a0, -2
/* 4EB5C 8005E35C 10100000 */  mfhi       $v0
/* 4EB60 8005E360 42110200 */  srl        $v0, $v0, 5
/* 4EB64 8005E364 00190200 */  sll        $v1, $v0, 4
/* 4EB68 8005E368 23186200 */  subu       $v1, $v1, $v0
/* 4EB6C 8005E36C 80180300 */  sll        $v1, $v1, 2
/* 4EB70 8005E370 04006414 */  bne        $v1, $a0, .L8005E384
/* 4EB74 8005E374 3C000224 */   addiu     $v0, $zero, 0x3c
/* 4EB78 8005E378 94AF638E */  lw         $v1, -0x506c($s3)
/* 4EB7C 8005E37C E8780108 */  j          .L8005E3A0
/* 4EB80 8005E380 0C0062AC */   sw        $v0, 0xc($v1)
.L8005E384:
/* 4EB84 8005E384 94AF628E */  lw         $v0, -0x506c($s3)
/* 4EB88 8005E388 00000000 */  nop
/* 4EB8C 8005E38C 0C00438C */  lw         $v1, 0xc($v0)
/* 4EB90 8005E390 00000000 */  nop
/* 4EB94 8005E394 2A200300 */  slt        $a0, $zero, $v1
/* 4EB98 8005E398 23186400 */  subu       $v1, $v1, $a0
/* 4EB9C 8005E39C 0C0043AC */  sw         $v1, 0xc($v0)
.L8005E3A0:
/* 4EBA0 8005E3A0 94AF648E */  lw         $a0, -0x506c($s3)
/* 4EBA4 8005E3A4 8888023C */  lui        $v0, 0x8888
/* 4EBA8 8005E3A8 0C00838C */  lw         $v1, 0xc($a0)
/* 4EBAC 8005E3AC 89884234 */  ori        $v0, $v0, 0x8889
/* 4EBB0 8005E3B0 001B0300 */  sll        $v1, $v1, 0xc
/* 4EBB4 8005E3B4 18006200 */  mult       $v1, $v0
/* 4EBB8 8005E3B8 10100000 */  mfhi       $v0
/* 4EBBC 8005E3BC 21104300 */  addu       $v0, $v0, $v1
/* 4EBC0 8005E3C0 43110200 */  sra        $v0, $v0, 5
/* 4EBC4 8005E3C4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 4EBC8 8005E3C8 23904300 */  subu       $s2, $v0, $v1
/* 4EBCC 8005E3CC E8F38326 */  addiu      $v1, $s4, -0xc18
/* 4EBD0 8005E3D0 E9036228 */  slti       $v0, $v1, 0x3e9
/* 4EBD4 8005E3D4 0B004010 */  beqz       $v0, .L8005E404
/* 4EBD8 8005E3D8 00101124 */   addiu     $s1, $zero, 0x1000
/* 4EBDC 8005E3DC 02006104 */  bgez       $v1, .L8005E3E8
/* 4EBE0 8005E3E0 6210023C */   lui       $v0, 0x1062
/* 4EBE4 8005E3E4 21180000 */  addu       $v1, $zero, $zero
.L8005E3E8:
/* 4EBE8 8005E3E8 D34D4234 */  ori        $v0, $v0, 0x4dd3
/* 4EBEC 8005E3EC 001B0300 */  sll        $v1, $v1, 0xc
/* 4EBF0 8005E3F0 18006200 */  mult       $v1, $v0
/* 4EBF4 8005E3F4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 4EBF8 8005E3F8 10100000 */  mfhi       $v0
/* 4EBFC 8005E3FC 83110200 */  sra        $v0, $v0, 6
/* 4EC00 8005E400 23884300 */  subu       $s1, $v0, $v1
.L8005E404:
/* 4EC04 8005E404 40101200 */  sll        $v0, $s2, 1
/* 4EC08 8005E408 00025324 */  addiu      $s3, $v0, 0x200
/* 4EC0C 8005E40C F4F1000C */  jal        rsin
/* 4EC10 8005E410 21206002 */   addu      $a0, $s3, $zero
/* 4EC14 8005E414 00020424 */  addiu      $a0, $zero, 0x200
/* 4EC18 8005E418 F4F1000C */  jal        rsin
/* 4EC1C 8005E41C 21804000 */   addu      $s0, $v0, $zero
/* 4EC20 8005E420 23800202 */  subu       $s0, $s0, $v0
/* 4EC24 8005E424 C0101000 */  sll        $v0, $s0, 3
/* 4EC28 8005E428 23105000 */  subu       $v0, $v0, $s0
/* 4EC2C 8005E42C 00110200 */  sll        $v0, $v0, 4
/* 4EC30 8005E430 23105000 */  subu       $v0, $v0, $s0
/* 4EC34 8005E434 C0100200 */  sll        $v0, $v0, 3
/* 4EC38 8005E438 02004104 */  bgez       $v0, .L8005E444
/* 4EC3C 8005E43C 00000000 */   nop
/* 4EC40 8005E440 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E444:
/* 4EC44 8005E444 03130200 */  sra        $v0, $v0, 0xc
/* 4EC48 8005E448 18005200 */  mult       $v0, $s2
/* 4EC4C 8005E44C 12100000 */  mflo       $v0
/* 4EC50 8005E450 02004104 */  bgez       $v0, .L8005E45C
/* 4EC54 8005E454 00000000 */   nop
/* 4EC58 8005E458 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E45C:
/* 4EC5C 8005E45C 03130200 */  sra        $v0, $v0, 0xc
/* 4EC60 8005E460 18005100 */  mult       $v0, $s1
/* 4EC64 8005E464 12100000 */  mflo       $v0
/* 4EC68 8005E468 02004104 */  bgez       $v0, .L8005E474
/* 4EC6C 8005E46C 21206002 */   addu      $a0, $s3, $zero
/* 4EC70 8005E470 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E474:
/* 4EC74 8005E474 03130200 */  sra        $v0, $v0, 0xc
/* 4EC78 8005E478 28F2000C */  jal        rcos
/* 4EC7C 8005E47C 00105324 */   addiu     $s3, $v0, 0x1000
/* 4EC80 8005E480 00020424 */  addiu      $a0, $zero, 0x200
/* 4EC84 8005E484 28F2000C */  jal        rcos
/* 4EC88 8005E488 21804000 */   addu      $s0, $v0, $zero
/* 4EC8C 8005E48C 23800202 */  subu       $s0, $s0, $v0
/* 4EC90 8005E490 C0101000 */  sll        $v0, $s0, 3
/* 4EC94 8005E494 23105000 */  subu       $v0, $v0, $s0
/* 4EC98 8005E498 00110200 */  sll        $v0, $v0, 4
/* 4EC9C 8005E49C 23105000 */  subu       $v0, $v0, $s0
/* 4ECA0 8005E4A0 C0100200 */  sll        $v0, $v0, 3
/* 4ECA4 8005E4A4 02004104 */  bgez       $v0, .L8005E4B0
/* 4ECA8 8005E4A8 00000000 */   nop
/* 4ECAC 8005E4AC FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E4B0:
/* 4ECB0 8005E4B0 03130200 */  sra        $v0, $v0, 0xc
/* 4ECB4 8005E4B4 18005200 */  mult       $v0, $s2
/* 4ECB8 8005E4B8 12100000 */  mflo       $v0
/* 4ECBC 8005E4BC 02004104 */  bgez       $v0, .L8005E4C8
/* 4ECC0 8005E4C0 00000000 */   nop
/* 4ECC4 8005E4C4 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E4C8:
/* 4ECC8 8005E4C8 03130200 */  sra        $v0, $v0, 0xc
/* 4ECCC 8005E4CC 18005100 */  mult       $v0, $s1
/* 4ECD0 8005E4D0 12180000 */  mflo       $v1
/* 4ECD4 8005E4D4 02006104 */  bgez       $v1, .L8005E4E0
/* 4ECD8 8005E4D8 40101400 */   sll       $v0, $s4, 1
/* 4ECDC 8005E4DC FF0F6324 */  addiu      $v1, $v1, 0xfff
.L8005E4E0:
/* 4ECE0 8005E4E0 21105400 */  addu       $v0, $v0, $s4
/* 4ECE4 8005E4E4 40110200 */  sll        $v0, $v0, 5
/* 4ECE8 8005E4E8 031B0300 */  sra        $v1, $v1, 0xc
/* 4ECEC 8005E4EC 02004104 */  bgez       $v0, .L8005E4F8
/* 4ECF0 8005E4F0 00106924 */   addiu     $t1, $v1, 0x1000
/* 4ECF4 8005E4F4 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8005E4F8:
/* 4ECF8 8005E4F8 03130200 */  sra        $v0, $v0, 0xc
/* 4ECFC 8005E4FC 18005400 */  mult       $v0, $s4
/* 4ED00 8005E500 12380000 */  mflo       $a3
/* 4ED04 8005E504 0200E104 */  bgez       $a3, .L8005E510
/* 4ED08 8005E508 1380063C */   lui       $a2, %hi(D_801280E0)
/* 4ED0C 8005E50C FF0FE724 */  addiu      $a3, $a3, 0xfff
.L8005E510:
/* 4ED10 8005E510 E080C324 */  addiu      $v1, $a2, %lo(D_801280E0)
/* 4ED14 8005E514 1380053C */  lui        $a1, %hi(D_801282E0)
/* 4ED18 8005E518 5C006490 */  lbu        $a0, 0x5c($v1)
/* 4ED1C 8005E51C E082A324 */  addiu      $v1, $a1, %lo(D_801282E0)
/* 4ED20 8005E520 C0100400 */  sll        $v0, $a0, 3
/* 4ED24 8005E524 23104400 */  subu       $v0, $v0, $a0
/* 4ED28 8005E528 80100200 */  sll        $v0, $v0, 2
/* 4ED2C 8005E52C 21804300 */  addu       $s0, $v0, $v1
/* 4ED30 8005E530 08000496 */  lhu        $a0, 8($s0)
/* 4ED34 8005E534 00000000 */  nop
/* 4ED38 8005E538 00440400 */  sll        $t0, $a0, 0x10
/* 4ED3C 8005E53C 03140800 */  sra        $v0, $t0, 0x10
/* 4ED40 8005E540 18005300 */  mult       $v0, $s3
/* 4ED44 8005E544 3000A2AF */  sw         $v0, 0x30($sp)
/* 4ED48 8005E548 0A000286 */  lh         $v0, 0xa($s0)
/* 4ED4C 8005E54C 03230700 */  sra        $a0, $a3, 0xc
/* 4ED50 8005E550 FFFF4224 */  addiu      $v0, $v0, -1
/* 4ED54 8005E554 12180000 */  mflo       $v1
/* 4ED58 8005E558 02006104 */  bgez       $v1, .L8005E564
/* 4ED5C 8005E55C 3400A2AF */   sw        $v0, 0x34($sp)
/* 4ED60 8005E560 FF0F6324 */  addiu      $v1, $v1, 0xfff
.L8005E564:
/* 4ED64 8005E564 3400A58F */  lw         $a1, 0x34($sp)
/* 4ED68 8005E568 00000000 */  nop
/* 4ED6C 8005E56C 1800A900 */  mult       $a1, $t1
/* 4ED70 8005E570 12100000 */  mflo       $v0
/* 4ED74 8005E574 03004104 */  bgez       $v0, .L8005E584
/* 4ED78 8005E578 03F30200 */   sra       $fp, $v0, 0xc
/* 4ED7C 8005E57C FF0F4224 */  addiu      $v0, $v0, 0xfff
/* 4ED80 8005E580 03F30200 */  sra        $fp, $v0, 0xc
.L8005E584:
/* 4ED84 8005E584 43130300 */  sra        $v0, $v1, 0xd
/* 4ED88 8005E588 40980200 */  sll        $s3, $v0, 1
/* 4ED8C 8005E58C 80020324 */  addiu      $v1, $zero, 0x280
/* 4ED90 8005E590 23187300 */  subu       $v1, $v1, $s3
/* 4ED94 8005E594 43180300 */  sra        $v1, $v1, 1
/* 4ED98 8005E598 C0FE6324 */  addiu      $v1, $v1, -0x140
/* 4ED9C 8005E59C E0010224 */  addiu      $v0, $zero, 0x1e0
/* 4EDA0 8005E5A0 23105E00 */  subu       $v0, $v0, $fp
/* 4EDA4 8005E5A4 2C00A3AF */  sw         $v1, 0x2c($sp)
/* 4EDA8 8005E5A8 C21F0200 */  srl        $v1, $v0, 0x1f
/* 4EDAC 8005E5AC 21104300 */  addu       $v0, $v0, $v1
/* 4EDB0 8005E5B0 43100200 */  sra        $v0, $v0, 1
/* 4EDB4 8005E5B4 10FF8424 */  addiu      $a0, $a0, -0xf0
/* 4EDB8 8005E5B8 21A04400 */  addu       $s4, $v0, $a0
/* 4EDBC 8005E5BC C21F0800 */  srl        $v1, $t0, 0x1f
/* 4EDC0 8005E5C0 21900000 */  addu       $s2, $zero, $zero
/* 4EDC4 8005E5C4 21880000 */  addu       $s1, $zero, $zero
/* 4EDC8 8005E5C8 3000A28F */  lw         $v0, 0x30($sp)
/* 4EDCC 8005E5CC 01001724 */  addiu      $s7, $zero, 1
/* 4EDD0 8005E5D0 21184300 */  addu       $v1, $v0, $v1
/* 4EDD4 8005E5D4 43180300 */  sra        $v1, $v1, 1
/* 4EDD8 8005E5D8 3C00A3AF */  sw         $v1, 0x3c($sp)
/* 4EDDC 8005E5DC 43181300 */  sra        $v1, $s3, 1
/* 4EDE0 8005E5E0 4000A3AF */  sw         $v1, 0x40($sp)
.L8005E5E4:
/* 4EDE4 8005E5E4 21200000 */  addu       $a0, $zero, $zero
/* 4EDE8 8005E5E8 2128A002 */  addu       $a1, $s5, $zero
/* 4EDEC 8005E5EC C2371100 */  srl        $a2, $s1, 0x1f
/* 4EDF0 8005E5F0 21302602 */  addu       $a2, $s1, $a2
/* 4EDF4 8005E5F4 FFFFF726 */  addiu      $s7, $s7, -1
/* 4EDF8 8005E5F8 43300600 */  sra        $a2, $a2, 1
/* 4EDFC 8005E5FC 3000A28F */  lw         $v0, 0x30($sp)
/* 4EE00 8005E600 04000886 */  lh         $t0, 4($s0)
/* 4EE04 8005E604 06000786 */  lh         $a3, 6($s0)
/* 4EE08 8005E608 3C00A38F */  lw         $v1, 0x3c($sp)
/* 4EE0C 8005E60C 21882202 */  addu       $s1, $s1, $v0
/* 4EE10 8005E610 3400A28F */  lw         $v0, 0x34($sp)
/* 4EE14 8005E614 21300601 */  addu       $a2, $t0, $a2
/* 4EE18 8005E618 1000A3AF */  sw         $v1, 0x10($sp)
/* 4EE1C 8005E61C 1400A2AF */  sw         $v0, 0x14($sp)
/* 4EE20 8005E620 0C000386 */  lh         $v1, 0xc($s0)
/* 4EE24 8005E624 FFFF0224 */  addiu      $v0, $zero, -1
/* 4EE28 8005E628 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4EE2C 8005E62C 1769010C */  jal        FUN_8005a45c
/* 4EE30 8005E630 1800A3AF */   sw        $v1, 0x18($sp)
/* 4EE34 8005E634 21200000 */  addu       $a0, $zero, $zero
/* 4EE38 8005E638 16000686 */  lh         $a2, 0x16($s0)
/* 4EE3C 8005E63C 18000786 */  lh         $a3, 0x18($s0)
/* 4EE40 8005E640 396D010C */  jal        FUN_8005b4e4
/* 4EE44 8005E644 2128A002 */   addu      $a1, $s5, $zero
/* 4EE48 8005E648 21200000 */  addu       $a0, $zero, $zero
/* 4EE4C 8005E64C 2128A002 */  addu       $a1, $s5, $zero
/* 4EE50 8005E650 C2371200 */  srl        $a2, $s2, 0x1f
/* 4EE54 8005E654 21304602 */  addu       $a2, $s2, $a2
/* 4EE58 8005E658 43300600 */  sra        $a2, $a2, 1
/* 4EE5C 8005E65C 2C00A38F */  lw         $v1, 0x2c($sp)
/* 4EE60 8005E660 4000A28F */  lw         $v0, 0x40($sp)
/* 4EE64 8005E664 21388002 */  addu       $a3, $s4, $zero
/* 4EE68 8005E668 1400BEAF */  sw         $fp, 0x14($sp)
/* 4EE6C 8005E66C 21306600 */  addu       $a2, $v1, $a2
/* 4EE70 8005E670 976D010C */  jal        FUN_8005b65c
/* 4EE74 8005E674 1000A2AF */   sw        $v0, 0x10($sp)
/* 4EE78 8005E678 21200000 */  addu       $a0, $zero, $zero
/* 4EE7C 8005E67C 2800A68F */  lw         $a2, 0x28($sp)
/* 4EE80 8005E680 2128A002 */  addu       $a1, $s5, $zero
/* 4EE84 8005E684 2138C000 */  addu       $a3, $a2, $zero
/* 4EE88 8005E688 EB6C010C */  jal        FUN_8005b3ac
/* 4EE8C 8005E68C 1000A7AF */   sw        $a3, 0x10($sp)
/* 4EE90 8005E690 0100B526 */  addiu      $s5, $s5, 1
/* 4EE94 8005E694 D3FFE106 */  bgez       $s7, .L8005E5E4
/* 4EE98 8005E698 21905302 */   addu      $s2, $s2, $s3
/* 4EE9C 8005E69C 80021324 */  addiu      $s3, $zero, 0x280
/* 4EEA0 8005E6A0 E0011E24 */  addiu      $fp, $zero, 0x1e0
/* 4EEA4 8005E6A4 10FF1424 */  addiu      $s4, $zero, -0xf0
/* 4EEA8 8005E6A8 FE000524 */  addiu      $a1, $zero, 0xfe
/* 4EEAC 8005E6AC 1380033C */  lui        $v1, %hi(D_801280E0)
/* 4EEB0 8005E6B0 E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 4EEB4 8005E6B4 59004390 */  lbu        $v1, 0x59($v0)
/* 4EEB8 8005E6B8 2800A68F */  lw         $a2, 0x28($sp)
/* 4EEBC 8005E6BC 1380043C */  lui        $a0, 0x8013
/* 4EEC0 8005E6C0 1000B4AF */  sw         $s4, 0x10($sp)
/* 4EEC4 8005E6C4 1800A0AF */  sw         $zero, 0x18($sp)
/* 4EEC8 8005E6C8 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 4EECC 8005E6CC 2000B3AF */  sw         $s3, 0x20($sp)
/* 4EED0 8005E6D0 2400BEAF */  sw         $fp, 0x24($sp)
/* 4EED4 8005E6D4 C0100300 */  sll        $v0, $v1, 3
/* 4EED8 8005E6D8 23104300 */  subu       $v0, $v0, $v1
/* 4EEDC 8005E6DC 80100200 */  sll        $v0, $v0, 2
/* 4EEE0 8005E6E0 E0828324 */  addiu      $v1, $a0, -0x7d20
/* 4EEE4 8005E6E4 21804300 */  addu       $s0, $v0, $v1
/* 4EEE8 8005E6E8 1400B0AF */  sw         $s0, 0x14($sp)
/* 4EEEC 8005E6EC 0000C48E */  lw         $a0, ($s6)
/* 4EEF0 8005E6F0 3DAD010C */  jal        FUN_8006b4f4
/* 4EEF4 8005E6F4 C0FE0724 */   addiu     $a3, $zero, -0x140
/* 4EEF8 8005E6F8 E2790108 */  j          .L8005E788
/* 4EEFC 8005E6FC 0000C2AE */   sw        $v0, ($s6)
.L8005E700:
/* 4EF00 8005E700 21280000 */  addu       $a1, $zero, $zero
/* 4EF04 8005E704 01000224 */  addiu      $v0, $zero, 1
/* 4EF08 8005E708 1380103C */  lui        $s0, %hi(D_80128BBC)
/* 4EF0C 8005E70C BC8B1026 */  addiu      $s0, $s0, %lo(D_80128BBC)
/* 4EF10 8005E710 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EF14 8005E714 1400A2AF */  sw         $v0, 0x14($sp)
/* 4EF18 8005E718 04000686 */  lh         $a2, 4($s0)
/* 4EF1C 8005E71C FFFF0224 */  addiu      $v0, $zero, -1
/* 4EF20 8005E720 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4EF24 8005E724 06000786 */  lh         $a3, 6($s0)
/* 4EF28 8005E728 0C000286 */  lh         $v0, 0xc($s0)
/* 4EF2C 8005E72C 01001524 */  addiu      $s5, $zero, 1
/* 4EF30 8005E730 1769010C */  jal        FUN_8005a45c
/* 4EF34 8005E734 1800A2AF */   sw        $v0, 0x18($sp)
/* 4EF38 8005E738 21200000 */  addu       $a0, $zero, $zero
/* 4EF3C 8005E73C 16000686 */  lh         $a2, 0x16($s0)
/* 4EF40 8005E740 18000786 */  lh         $a3, 0x18($s0)
/* 4EF44 8005E744 396D010C */  jal        FUN_8005b4e4
/* 4EF48 8005E748 21280000 */   addu      $a1, $zero, $zero
/* 4EF4C 8005E74C 21200000 */  addu       $a0, $zero, $zero
/* 4EF50 8005E750 21280000 */  addu       $a1, $zero, $zero
/* 4EF54 8005E754 C0FE0624 */  addiu      $a2, $zero, -0x140
/* 4EF58 8005E758 10FF0724 */  addiu      $a3, $zero, -0xf0
/* 4EF5C 8005E75C 80020224 */  addiu      $v0, $zero, 0x280
/* 4EF60 8005E760 E0010324 */  addiu      $v1, $zero, 0x1e0
/* 4EF64 8005E764 1000A2AF */  sw         $v0, 0x10($sp)
/* 4EF68 8005E768 976D010C */  jal        FUN_8005b65c
/* 4EF6C 8005E76C 1400A3AF */   sw        $v1, 0x14($sp)
/* 4EF70 8005E770 21200000 */  addu       $a0, $zero, $zero
/* 4EF74 8005E774 21280000 */  addu       $a1, $zero, $zero
/* 4EF78 8005E778 21300000 */  addu       $a2, $zero, $zero
/* 4EF7C 8005E77C 21380000 */  addu       $a3, $zero, $zero
/* 4EF80 8005E780 EB6C010C */  jal        FUN_8005b3ac
/* 4EF84 8005E784 1000A0AF */   sw        $zero, 0x10($sp)
.L8005E788:
/* 4EF88 8005E788 21200000 */  addu       $a0, $zero, $zero
/* 4EF8C 8005E78C 1D6B010C */  jal        FUN_8005ac74
/* 4EF90 8005E790 2128A002 */   addu      $a1, $s5, $zero
/* 4EF94 8005E794 9157010C */  jal        FUN_80055e44
/* 4EF98 8005E798 21200000 */   addu      $a0, $zero, $zero
/* 4EF9C 8005E79C 6C00BF8F */  lw         $ra, 0x6c($sp)
/* 4EFA0 8005E7A0 6800BE8F */  lw         $fp, 0x68($sp)
/* 4EFA4 8005E7A4 6400B78F */  lw         $s7, 0x64($sp)
/* 4EFA8 8005E7A8 6000B68F */  lw         $s6, 0x60($sp)
/* 4EFAC 8005E7AC 5C00B58F */  lw         $s5, 0x5c($sp)
/* 4EFB0 8005E7B0 5800B48F */  lw         $s4, 0x58($sp)
/* 4EFB4 8005E7B4 5400B38F */  lw         $s3, 0x54($sp)
/* 4EFB8 8005E7B8 5000B28F */  lw         $s2, 0x50($sp)
/* 4EFBC 8005E7BC 4C00B18F */  lw         $s1, 0x4c($sp)
/* 4EFC0 8005E7C0 4800B08F */  lw         $s0, 0x48($sp)
/* 4EFC4 8005E7C4 0800E003 */  jr         $ra
/* 4EFC8 8005E7C8 7000BD27 */   addiu     $sp, $sp, 0x70

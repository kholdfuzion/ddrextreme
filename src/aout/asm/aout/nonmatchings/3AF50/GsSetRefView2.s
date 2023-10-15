.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsSetRefView2
/* 3AF50 8004A750 40FFBD27 */  addiu      $sp, $sp, -0xc0
/* 3AF54 8004A754 B000B4AF */  sw         $s4, 0xb0($sp)
/* 3AF58 8004A758 21A08000 */  addu       $s4, $a0, $zero
/* 3AF5C 8004A75C B400B5AF */  sw         $s5, 0xb4($sp)
/* 3AF60 8004A760 1780153C */  lui        $s5, %hi(D_8016EE00)
/* 3AF64 8004A764 00EEB526 */  addiu      $s5, $s5, %lo(D_8016EE00)
/* 3AF68 8004A768 B800BFAF */  sw         $ra, 0xb8($sp)
/* 3AF6C 8004A76C AC00B3AF */  sw         $s3, 0xac($sp)
/* 3AF70 8004A770 A800B2AF */  sw         $s2, 0xa8($sp)
/* 3AF74 8004A774 A400B1AF */  sw         $s1, 0xa4($sp)
/* 3AF78 8004A778 A000B0AF */  sw         $s0, 0xa0($sp)
/* 3AF7C 8004A77C 1380053C */  lui        $a1, %hi(D_80129128)
/* 3AF80 8004A780 2891A524 */  addiu      $a1, $a1, %lo(D_80129128)
/* 3AF84 8004A784 0000A28C */  lw         $v0, ($a1)
/* 3AF88 8004A788 0400A38C */  lw         $v1, 4($a1)
/* 3AF8C 8004A78C 0800A48C */  lw         $a0, 8($a1)
/* 3AF90 8004A790 0000A2AE */  sw         $v0, ($s5)
/* 3AF94 8004A794 0400A3AE */  sw         $v1, 4($s5)
/* 3AF98 8004A798 0800A4AE */  sw         $a0, 8($s5)
/* 3AF9C 8004A79C 0C00A28C */  lw         $v0, 0xc($a1)
/* 3AFA0 8004A7A0 1000A38C */  lw         $v1, 0x10($a1)
/* 3AFA4 8004A7A4 1400A48C */  lw         $a0, 0x14($a1)
/* 3AFA8 8004A7A8 0C00A2AE */  sw         $v0, 0xc($s5)
/* 3AFAC 8004A7AC 1000A3AE */  sw         $v1, 0x10($s5)
/* 3AFB0 8004A7B0 1400A4AE */  sw         $a0, 0x14($s5)
/* 3AFB4 8004A7B4 1800A28C */  lw         $v0, 0x18($a1)
/* 3AFB8 8004A7B8 1C00A38C */  lw         $v1, 0x1c($a1)
/* 3AFBC 8004A7BC 1800A2AE */  sw         $v0, 0x18($s5)
/* 3AFC0 8004A7C0 1C00A3AE */  sw         $v1, 0x1c($s5)
/* 3AFC4 8004A7C4 1800858E */  lw         $a1, 0x18($s4)
/* 3AFC8 8004A7C8 2120A002 */  addu       $a0, $s5, $zero
/* 3AFCC 8004A7CC 5C2B010C */  jal        gte_rotate_z_matrix
/* 3AFD0 8004A7D0 23280500 */   negu      $a1, $a1
/* 3AFD4 8004A7D4 21208002 */  addu       $a0, $s4, $zero
/* 3AFD8 8004A7D8 C82A010C */  jal        GS_131_OBJ_3D0
/* 3AFDC 8004A7DC 1000A527 */   addiu     $a1, $sp, 0x10
/* 3AFE0 8004A7E0 1C00A28F */  lw         $v0, 0x1c($sp)
/* 3AFE4 8004A7E4 1000A38F */  lw         $v1, 0x10($sp)
/* 3AFE8 8004A7E8 00000000 */  nop
/* 3AFEC 8004A7EC 23104300 */  subu       $v0, $v0, $v1
/* 3AFF0 8004A7F0 18004200 */  mult       $v0, $v0
/* 3AFF4 8004A7F4 2000A28F */  lw         $v0, 0x20($sp)
/* 3AFF8 8004A7F8 1400A38F */  lw         $v1, 0x14($sp)
/* 3AFFC 8004A7FC 12280000 */  mflo       $a1
/* 3B000 8004A800 23104300 */  subu       $v0, $v0, $v1
/* 3B004 8004A804 00000000 */  nop
/* 3B008 8004A808 18004200 */  mult       $v0, $v0
/* 3B00C 8004A80C 1800A38F */  lw         $v1, 0x18($sp)
/* 3B010 8004A810 2400A28F */  lw         $v0, 0x24($sp)
/* 3B014 8004A814 12200000 */  mflo       $a0
/* 3B018 8004A818 23104300 */  subu       $v0, $v0, $v1
/* 3B01C 8004A81C 00000000 */  nop
/* 3B020 8004A820 18004200 */  mult       $v0, $v0
/* 3B024 8004A824 2120A400 */  addu       $a0, $a1, $a0
/* 3B028 8004A828 12180000 */  mflo       $v1
/* 3B02C 8004A82C FE87000C */  jal        SquareRoot0
/* 3B030 8004A830 21208300 */   addu      $a0, $a0, $v1
/* 3B034 8004A834 21904000 */  addu       $s2, $v0, $zero
/* 3B038 8004A838 B0004012 */  beqz       $s2, .L8004AAFC
/* 3B03C 8004A83C 01000224 */   addiu     $v0, $zero, 1
/* 3B040 8004A840 1400A38F */  lw         $v1, 0x14($sp)
/* 3B044 8004A844 2000A28F */  lw         $v0, 0x20($sp)
/* 3B048 8004A848 00000000 */  nop
/* 3B04C 8004A84C 23886200 */  subu       $s1, $v1, $v0
/* 3B050 8004A850 00831100 */  sll        $s0, $s1, 0xc
/* 3B054 8004A854 1A001202 */  div        $zero, $s0, $s2
/* 3B058 8004A858 02004016 */  bnez       $s2, .L8004A864
/* 3B05C 8004A85C 00000000 */   nop
/* 3B060 8004A860 0D000700 */  break      7
.L8004A864:
/* 3B064 8004A864 FFFF0124 */   addiu     $at, $zero, -1
/* 3B068 8004A868 04004116 */  bne        $s2, $at, .L8004A87C
/* 3B06C 8004A86C 0080013C */   lui       $at, 0x8000
/* 3B070 8004A870 02000116 */  bne        $s0, $at, .L8004A87C
/* 3B074 8004A874 00000000 */   nop
/* 3B078 8004A878 0D000600 */  break      6
.L8004A87C:
/* 3B07C 8004A87C 12800000 */   mflo      $s0
/* 3B080 8004A880 1C00A28F */  lw         $v0, 0x1c($sp)
/* 3B084 8004A884 1000A38F */  lw         $v1, 0x10($sp)
/* 3B088 8004A888 00000000 */  nop
/* 3B08C 8004A88C 23104300 */  subu       $v0, $v0, $v1
/* 3B090 8004A890 18004200 */  mult       $v0, $v0
/* 3B094 8004A894 2400A28F */  lw         $v0, 0x24($sp)
/* 3B098 8004A898 1800A38F */  lw         $v1, 0x18($sp)
/* 3B09C 8004A89C 12200000 */  mflo       $a0
/* 3B0A0 8004A8A0 23104300 */  subu       $v0, $v0, $v1
/* 3B0A4 8004A8A4 00000000 */  nop
/* 3B0A8 8004A8A8 18004200 */  mult       $v0, $v0
/* 3B0AC 8004A8AC 12180000 */  mflo       $v1
/* 3B0B0 8004A8B0 21208300 */  addu       $a0, $a0, $v1
/* 3B0B4 8004A8B4 FE87000C */  jal        SquareRoot0
/* 3B0B8 8004A8B8 23801000 */   negu      $s0, $s0
/* 3B0BC 8004A8BC 21884000 */  addu       $s1, $v0, $zero
/* 3B0C0 8004A8C0 00331100 */  sll        $a2, $s1, 0xc
/* 3B0C4 8004A8C4 1A00D200 */  div        $zero, $a2, $s2
/* 3B0C8 8004A8C8 02004016 */  bnez       $s2, .L8004A8D4
/* 3B0CC 8004A8CC 00000000 */   nop
/* 3B0D0 8004A8D0 0D000700 */  break      7
.L8004A8D4:
/* 3B0D4 8004A8D4 FFFF0124 */   addiu     $at, $zero, -1
/* 3B0D8 8004A8D8 04004116 */  bne        $s2, $at, .L8004A8EC
/* 3B0DC 8004A8DC 0080013C */   lui       $at, 0x8000
/* 3B0E0 8004A8E0 0200C114 */  bne        $a2, $at, .L8004A8EC
/* 3B0E4 8004A8E4 00000000 */   nop
/* 3B0E8 8004A8E8 0D000600 */  break      6
.L8004A8EC:
/* 3B0EC 8004A8EC 12300000 */   mflo      $a2
/* 3B0F0 8004A8F0 3000B327 */  addiu      $s3, $sp, 0x30
/* 3B0F4 8004A8F4 21206002 */  addu       $a0, $s3, $zero
/* 3B0F8 8004A8F8 00841000 */  sll        $s0, $s0, 0x10
/* 3B0FC 8004A8FC 032C1000 */  sra        $a1, $s0, 0x10
/* 3B100 8004A900 78000724 */  addiu      $a3, $zero, 0x78
/* 3B104 8004A904 00340600 */  sll        $a2, $a2, 0x10
/* 3B108 8004A908 8C2B010C */  jal        Gssub_make_matrix
/* 3B10C 8004A90C 03340600 */   sra       $a2, $a2, 0x10
/* 3B110 8004A910 2120A002 */  addu       $a0, $s5, $zero
/* 3B114 8004A914 E82C010C */  jal        MulMatrix
/* 3B118 8004A918 21286002 */   addu      $a1, $s3, $zero
/* 3B11C 8004A91C 2C002012 */  beqz       $s1, .L8004A9D0
/* 3B120 8004A920 21902002 */   addu      $s2, $s1, $zero
/* 3B124 8004A924 1C00A38F */  lw         $v1, 0x1c($sp)
/* 3B128 8004A928 1000A28F */  lw         $v0, 0x10($sp)
/* 3B12C 8004A92C 00000000 */  nop
/* 3B130 8004A930 23886200 */  subu       $s1, $v1, $v0
/* 3B134 8004A934 002B1100 */  sll        $a1, $s1, 0xc
/* 3B138 8004A938 1A00B200 */  div        $zero, $a1, $s2
/* 3B13C 8004A93C 02004016 */  bnez       $s2, .L8004A948
/* 3B140 8004A940 00000000 */   nop
/* 3B144 8004A944 0D000700 */  break      7
.L8004A948:
/* 3B148 8004A948 FFFF0124 */   addiu     $at, $zero, -1
/* 3B14C 8004A94C 04004116 */  bne        $s2, $at, .L8004A960
/* 3B150 8004A950 0080013C */   lui       $at, 0x8000
/* 3B154 8004A954 0200A114 */  bne        $a1, $at, .L8004A960
/* 3B158 8004A958 00000000 */   nop
/* 3B15C 8004A95C 0D000600 */  break      6
.L8004A960:
/* 3B160 8004A960 12280000 */   mflo      $a1
/* 3B164 8004A964 2400A38F */  lw         $v1, 0x24($sp)
/* 3B168 8004A968 1800A28F */  lw         $v0, 0x18($sp)
/* 3B16C 8004A96C 00000000 */  nop
/* 3B170 8004A970 23886200 */  subu       $s1, $v1, $v0
/* 3B174 8004A974 00331100 */  sll        $a2, $s1, 0xc
/* 3B178 8004A978 1A00D200 */  div        $zero, $a2, $s2
/* 3B17C 8004A97C 02004016 */  bnez       $s2, .L8004A988
/* 3B180 8004A980 00000000 */   nop
/* 3B184 8004A984 0D000700 */  break      7
.L8004A988:
/* 3B188 8004A988 FFFF0124 */   addiu     $at, $zero, -1
/* 3B18C 8004A98C 04004116 */  bne        $s2, $at, .L8004A9A0
/* 3B190 8004A990 0080013C */   lui       $at, 0x8000
/* 3B194 8004A994 0200C114 */  bne        $a2, $at, .L8004A9A0
/* 3B198 8004A998 00000000 */   nop
/* 3B19C 8004A99C 0D000600 */  break      6
.L8004A9A0:
/* 3B1A0 8004A9A0 12300000 */   mflo      $a2
/* 3B1A4 8004A9A4 21206002 */  addu       $a0, $s3, $zero
/* 3B1A8 8004A9A8 79000724 */  addiu      $a3, $zero, 0x79
/* 3B1AC 8004A9AC 23280500 */  negu       $a1, $a1
/* 3B1B0 8004A9B0 002C0500 */  sll        $a1, $a1, 0x10
/* 3B1B4 8004A9B4 032C0500 */  sra        $a1, $a1, 0x10
/* 3B1B8 8004A9B8 00340600 */  sll        $a2, $a2, 0x10
/* 3B1BC 8004A9BC 8C2B010C */  jal        Gssub_make_matrix
/* 3B1C0 8004A9C0 03340600 */   sra       $a2, $a2, 0x10
/* 3B1C4 8004A9C4 2120A002 */  addu       $a0, $s5, $zero
/* 3B1C8 8004A9C8 E82C010C */  jal        MulMatrix
/* 3B1CC 8004A9CC 21286002 */   addu      $a1, $s3, $zero
.L8004A9D0:
/* 3B1D0 8004A9D0 2120A002 */  addu       $a0, $s5, $zero
/* 3B1D4 8004A9D4 0000828E */  lw         $v0, ($s4)
/* 3B1D8 8004A9D8 9000B127 */  addiu      $s1, $sp, 0x90
/* 3B1DC 8004A9DC 23100200 */  negu       $v0, $v0
/* 3B1E0 8004A9E0 9000A2AF */  sw         $v0, 0x90($sp)
/* 3B1E4 8004A9E4 0400828E */  lw         $v0, 4($s4)
/* 3B1E8 8004A9E8 21282002 */  addu       $a1, $s1, $zero
/* 3B1EC 8004A9EC 23100200 */  negu       $v0, $v0
/* 3B1F0 8004A9F0 9400A2AF */  sw         $v0, 0x94($sp)
/* 3B1F4 8004A9F4 0800828E */  lw         $v0, 8($s4)
/* 3B1F8 8004A9F8 1400A626 */  addiu      $a2, $s5, 0x14
/* 3B1FC 8004A9FC 23100200 */  negu       $v0, $v0
/* 3B200 8004AA00 902C010C */  jal        ApplyMatrixLV
/* 3B204 8004AA04 9800A2AF */   sw        $v0, 0x98($sp)
/* 3B208 8004AA08 1C00848E */  lw         $a0, 0x1c($s4)
/* 3B20C 8004AA0C 00000000 */  nop
/* 3B210 8004AA10 27008010 */  beqz       $a0, .L8004AAB0
/* 3B214 8004AA14 00000000 */   nop
/* 3B218 8004AA18 C02B010C */  jal        GsGetLw
/* 3B21C 8004AA1C 21286002 */   addu      $a1, $s3, $zero
/* 3B220 8004AA20 21206002 */  addu       $a0, $s3, $zero
/* 3B224 8004AA24 5000B027 */  addiu      $s0, $sp, 0x50
/* 3B228 8004AA28 7C2D010C */  jal        TransposeMatrix
/* 3B22C 8004AA2C 21280002 */   addu      $a1, $s0, $zero
/* 3B230 8004AA30 21200002 */  addu       $a0, $s0, $zero
/* 3B234 8004AA34 4400A527 */  addiu      $a1, $sp, 0x44
/* 3B238 8004AA38 902C010C */  jal        ApplyMatrixLV
/* 3B23C 8004AA3C 21302002 */   addu      $a2, $s1, $zero
/* 3B240 8004AA40 2120A002 */  addu       $a0, $s5, $zero
/* 3B244 8004AA44 21280002 */  addu       $a1, $s0, $zero
/* 3B248 8004AA48 9000A28F */  lw         $v0, 0x90($sp)
/* 3B24C 8004AA4C 9800A38F */  lw         $v1, 0x98($sp)
/* 3B250 8004AA50 23100200 */  negu       $v0, $v0
/* 3B254 8004AA54 6400A2AF */  sw         $v0, 0x64($sp)
/* 3B258 8004AA58 9400A28F */  lw         $v0, 0x94($sp)
/* 3B25C 8004AA5C 23180300 */  negu       $v1, $v1
/* 3B260 8004AA60 6C00A3AF */  sw         $v1, 0x6c($sp)
/* 3B264 8004AA64 23100200 */  negu       $v0, $v0
/* 3B268 8004AA68 3C2B010C */  jal        GsMulCoord2
/* 3B26C 8004AA6C 6800A2AF */   sw        $v0, 0x68($sp)
/* 3B270 8004AA70 5000A28F */  lw         $v0, 0x50($sp)
/* 3B274 8004AA74 5400A38F */  lw         $v1, 0x54($sp)
/* 3B278 8004AA78 5800A48F */  lw         $a0, 0x58($sp)
/* 3B27C 8004AA7C 5C00A58F */  lw         $a1, 0x5c($sp)
/* 3B280 8004AA80 0000A2AE */  sw         $v0, ($s5)
/* 3B284 8004AA84 0400A3AE */  sw         $v1, 4($s5)
/* 3B288 8004AA88 0800A4AE */  sw         $a0, 8($s5)
/* 3B28C 8004AA8C 0C00A5AE */  sw         $a1, 0xc($s5)
/* 3B290 8004AA90 6000A28F */  lw         $v0, 0x60($sp)
/* 3B294 8004AA94 6400A38F */  lw         $v1, 0x64($sp)
/* 3B298 8004AA98 6800A48F */  lw         $a0, 0x68($sp)
/* 3B29C 8004AA9C 6C00A58F */  lw         $a1, 0x6c($sp)
/* 3B2A0 8004AAA0 1000A2AE */  sw         $v0, 0x10($s5)
/* 3B2A4 8004AAA4 1400A3AE */  sw         $v1, 0x14($s5)
/* 3B2A8 8004AAA8 1800A4AE */  sw         $a0, 0x18($s5)
/* 3B2AC 8004AAAC 1C00A5AE */  sw         $a1, 0x1c($s5)
.L8004AAB0:
/* 3B2B0 8004AAB0 1780053C */  lui        $a1, %hi(D_8016EDE0)
/* 3B2B4 8004AAB4 E0EDA524 */  addiu      $a1, $a1, %lo(D_8016EDE0)
/* 3B2B8 8004AAB8 0000A28E */  lw         $v0, ($s5)
/* 3B2BC 8004AABC 0400A38E */  lw         $v1, 4($s5)
/* 3B2C0 8004AAC0 0800A48E */  lw         $a0, 8($s5)
/* 3B2C4 8004AAC4 0000A2AC */  sw         $v0, ($a1)
/* 3B2C8 8004AAC8 0400A3AC */  sw         $v1, 4($a1)
/* 3B2CC 8004AACC 0800A4AC */  sw         $a0, 8($a1)
/* 3B2D0 8004AAD0 0C00A28E */  lw         $v0, 0xc($s5)
/* 3B2D4 8004AAD4 1000A38E */  lw         $v1, 0x10($s5)
/* 3B2D8 8004AAD8 1400A48E */  lw         $a0, 0x14($s5)
/* 3B2DC 8004AADC 0C00A2AC */  sw         $v0, 0xc($a1)
/* 3B2E0 8004AAE0 1000A3AC */  sw         $v1, 0x10($a1)
/* 3B2E4 8004AAE4 1400A4AC */  sw         $a0, 0x14($a1)
/* 3B2E8 8004AAE8 1800A28E */  lw         $v0, 0x18($s5)
/* 3B2EC 8004AAEC 1C00A38E */  lw         $v1, 0x1c($s5)
/* 3B2F0 8004AAF0 1800A2AC */  sw         $v0, 0x18($a1)
/* 3B2F4 8004AAF4 1C00A3AC */  sw         $v1, 0x1c($a1)
/* 3B2F8 8004AAF8 21100000 */  addu       $v0, $zero, $zero
.L8004AAFC:
/* 3B2FC 8004AAFC B800BF8F */  lw         $ra, 0xb8($sp)
/* 3B300 8004AB00 B400B58F */  lw         $s5, 0xb4($sp)
/* 3B304 8004AB04 B000B48F */  lw         $s4, 0xb0($sp)
/* 3B308 8004AB08 AC00B38F */  lw         $s3, 0xac($sp)
/* 3B30C 8004AB0C A800B28F */  lw         $s2, 0xa8($sp)
/* 3B310 8004AB10 A400B18F */  lw         $s1, 0xa4($sp)
/* 3B314 8004AB14 A000B08F */  lw         $s0, 0xa0($sp)
/* 3B318 8004AB18 0800E003 */  jr         $ra
/* 3B31C 8004AB1C C000BD27 */   addiu     $sp, $sp, 0xc0

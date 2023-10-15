.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80029dfc
/* 1A5FC 80029DFC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 1A600 80029E00 3000B2AF */  sw         $s2, 0x30($sp)
/* 1A604 80029E04 21908000 */  addu       $s2, $a0, $zero
/* 1A608 80029E08 2800B0AF */  sw         $s0, 0x28($sp)
/* 1A60C 80029E0C 1380103C */  lui        $s0, %hi(D_8012AB60)
/* 1A610 80029E10 60AB0426 */  addiu      $a0, $s0, %lo(D_8012AB60)
/* 1A614 80029E14 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 1A618 80029E18 21A8A000 */  addu       $s5, $a1, $zero
/* 1A61C 80029E1C 0180053C */  lui        $a1, %hi(D_80010FC0)
/* 1A620 80029E20 C00FA524 */  addiu      $a1, $a1, %lo(D_80010FC0)
/* 1A624 80029E24 4800BFAF */  sw         $ra, 0x48($sp)
/* 1A628 80029E28 4400B7AF */  sw         $s7, 0x44($sp)
/* 1A62C 80029E2C 4000B6AF */  sw         $s6, 0x40($sp)
/* 1A630 80029E30 3800B4AF */  sw         $s4, 0x38($sp)
/* 1A634 80029E34 3400B3AF */  sw         $s3, 0x34($sp)
/* 1A638 80029E38 8E81000C */  jal        sprintf
/* 1A63C 80029E3C 2C00B1AF */   sw        $s1, 0x2c($sp)
/* 1A640 80029E40 14004016 */  bnez       $s2, .L80029E94
/* 1A644 80029E44 21B80002 */   addu      $s7, $s0, $zero
/* 1A648 80029E48 0F80033C */  lui        $v1, %hi(D_800F0014)
/* 1A64C 80029E4C 0E80053C */  lui        $a1, %hi(D_800D8D20)
/* 1A650 80029E50 1400648C */  lw         $a0, %lo(D_800F0014)($v1)
/* 1A654 80029E54 208DA28C */  lw         $v0, %lo(D_800D8D20)($a1)
/* 1A658 80029E58 00000000 */  nop
/* 1A65C 80029E5C 23108200 */  subu       $v0, $a0, $v0
/* 1A660 80029E60 2100422C */  sltiu      $v0, $v0, 0x21
/* 1A664 80029E64 05004014 */  bnez       $v0, .L80029E7C
/* 1A668 80029E68 0E80033C */   lui       $v1, %hi(D_800D8D24)
/* 1A66C 80029E6C 248D6294 */  lhu        $v0, %lo(D_800D8D24)($v1)
/* 1A670 80029E70 208DA4AC */  sw         $a0, -0x72e0($a1)
/* 1A674 80029E74 01004224 */  addiu      $v0, $v0, 1
/* 1A678 80029E78 248D62A4 */  sh         $v0, -0x72dc($v1)
.L80029E7C:
/* 1A67C 80029E7C 208DA28C */  lw         $v0, -0x72e0($a1)
/* 1A680 80029E80 00000000 */  nop
/* 1A684 80029E84 2B108200 */  sltu       $v0, $a0, $v0
/* 1A688 80029E88 03004010 */  beqz       $v0, .L80029E98
/* 1A68C 80029E8C FFFF0224 */   addiu     $v0, $zero, -1
/* 1A690 80029E90 208DA0AC */  sw         $zero, -0x72e0($a1)
.L80029E94:
/* 1A694 80029E94 FFFF0224 */  addiu      $v0, $zero, -1
.L80029E98:
/* 1A698 80029E98 AF004216 */  bne        $s2, $v0, .L8002A158
/* 1A69C 80029E9C 0F80023C */   lui       $v0, 0x800f
/* 1A6A0 80029EA0 03000224 */  addiu      $v0, $zero, 3
/* 1A6A4 80029EA4 5400A216 */  bne        $s5, $v0, .L80029FF8
/* 1A6A8 80029EA8 1580023C */   lui       $v0, %hi(D_8014BA50)
/* 1A6AC 80029EAC 21B04000 */  addu       $s6, $v0, $zero
/* 1A6B0 80029EB0 0E80043C */  lui        $a0, %hi(D_800D8D24)
/* 1A6B4 80029EB4 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* 1A6B8 80029EB8 10004384 */  lh         $v1, 0x10($v0)
/* 1A6BC 80029EBC 248D9394 */  lhu        $s3, %lo(D_800D8D24)($a0)
/* 1A6C0 80029EC0 0C006014 */  bnez       $v1, .L80029EF4
/* 1A6C4 80029EC4 FFFF1424 */   addiu     $s4, $zero, -1
/* 1A6C8 80029EC8 21800000 */  addu       $s0, $zero, $zero
/* 1A6CC 80029ECC 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A6D0 80029ED0 21200000 */   addu      $a0, $zero, $zero
/* 1A6D4 80029ED4 05004014 */  bnez       $v0, .L80029EEC
/* 1A6D8 80029ED8 00000000 */   nop
/* 1A6DC 80029EDC 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A6E0 80029EE0 01000424 */   addiu     $a0, $zero, 1
/* 1A6E4 80029EE4 03004010 */  beqz       $v0, .L80029EF4
/* 1A6E8 80029EE8 21A00002 */   addu      $s4, $s0, $zero
.L80029EEC:
/* 1A6EC 80029EEC 01001024 */  addiu      $s0, $zero, 1
/* 1A6F0 80029EF0 21A00002 */  addu       $s4, $s0, $zero
.L80029EF4:
/* 1A6F4 80029EF4 01006232 */  andi       $v0, $s3, 1
/* 1A6F8 80029EF8 3B004010 */  beqz       $v0, .L80029FE8
/* 1A6FC 80029EFC 60ABF126 */   addiu     $s1, $s7, -0x54a0
/* 1A700 80029F00 50BAC326 */  addiu      $v1, $s6, -0x45b0
/* 1A704 80029F04 10006284 */  lh         $v0, 0x10($v1)
/* 1A708 80029F08 00000000 */  nop
/* 1A70C 80029F0C 06004010 */  beqz       $v0, .L80029F28
/* 1A710 80029F10 21202002 */   addu      $a0, $s1, $zero
/* 1A714 80029F14 0180053C */  lui        $a1, %hi(D_80010ED8)
/* 1A718 80029F18 8E81000C */  jal        sprintf
/* 1A71C 80029F1C D80EA524 */   addiu     $a1, $a1, %lo(D_80010ED8)
/* 1A720 80029F20 FEA70008 */  j          .L80029FF8
/* 1A724 80029F24 00000000 */   nop
.L80029F28:
/* 1A728 80029F28 02000224 */  addiu      $v0, $zero, 2
/* 1A72C 80029F2C 0400A216 */  bne        $s5, $v0, .L80029F40
/* 1A730 80029F30 50BAC226 */   addiu     $v0, $s6, -0x45b0
/* 1A734 80029F34 2E007084 */  lh         $s0, 0x2e($v1)
/* 1A738 80029F38 D1A70008 */  j          .L80029F44
/* 1A73C 80029F3C 00000000 */   nop
.L80029F40:
/* 1A740 80029F40 2C007084 */  lh         $s0, 0x2c($v1)
.L80029F44:
/* 1A744 80029F44 12004384 */  lh         $v1, 0x12($v0)
/* 1A748 80029F48 00000000 */  nop
/* 1A74C 80029F4C 0E006010 */  beqz       $v1, .L80029F88
/* 1A750 80029F50 21980000 */   addu      $s3, $zero, $zero
/* 1A754 80029F54 29A6000C */  jal        coin_left_partial_800298a4
/* 1A758 80029F58 21200000 */   addu      $a0, $zero, $zero
/* 1A75C 80029F5C 2A105000 */  slt        $v0, $v0, $s0
/* 1A760 80029F60 06004010 */  beqz       $v0, .L80029F7C
/* 1A764 80029F64 00000000 */   nop
/* 1A768 80029F68 29A6000C */  jal        coin_left_partial_800298a4
/* 1A76C 80029F6C 01000424 */   addiu     $a0, $zero, 1
/* 1A770 80029F70 2A105000 */  slt        $v0, $v0, $s0
/* 1A774 80029F74 08004014 */  bnez       $v0, .L80029F98
/* 1A778 80029F78 21106002 */   addu      $v0, $s3, $zero
.L80029F7C:
/* 1A77C 80029F7C 01001324 */  addiu      $s3, $zero, 1
/* 1A780 80029F80 E6A70008 */  j          .L80029F98
/* 1A784 80029F84 21106002 */   addu      $v0, $s3, $zero
.L80029F88:
/* 1A788 80029F88 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1A78C 80029F8C 00000000 */   nop
/* 1A790 80029F90 2A105000 */  slt        $v0, $v0, $s0
/* 1A794 80029F94 01004238 */  xori       $v0, $v0, 1
.L80029F98:
/* 1A798 80029F98 06004010 */  beqz       $v0, .L80029FB4
/* 1A79C 80029F9C 21202002 */   addu      $a0, $s1, $zero
/* 1A7A0 80029FA0 0180053C */  lui        $a1, %hi(D_80010F08)
/* 1A7A4 80029FA4 8E81000C */  jal        sprintf
/* 1A7A8 80029FA8 080FA524 */   addiu     $a1, $a1, %lo(D_80010F08)
/* 1A7AC 80029FAC FEA70008 */  j          .L80029FF8
/* 1A7B0 80029FB0 00000000 */   nop
.L80029FB4:
/* 1A7B4 80029FB4 06008012 */  beqz       $s4, .L80029FD0
/* 1A7B8 80029FB8 00000000 */   nop
/* 1A7BC 80029FBC 0180053C */  lui        $a1, %hi(D_80010F20)
/* 1A7C0 80029FC0 8E81000C */  jal        sprintf
/* 1A7C4 80029FC4 200FA524 */   addiu     $a1, $a1, %lo(D_80010F20)
/* 1A7C8 80029FC8 FEA70008 */  j          .L80029FF8
/* 1A7CC 80029FCC 00000000 */   nop
.L80029FD0:
/* 1A7D0 80029FD0 21202002 */  addu       $a0, $s1, $zero
/* 1A7D4 80029FD4 0180053C */  lui        $a1, %hi(D_80010F38)
/* 1A7D8 80029FD8 8E81000C */  jal        sprintf
/* 1A7DC 80029FDC 380FA524 */   addiu     $a1, $a1, %lo(D_80010F38)
/* 1A7E0 80029FE0 FEA70008 */  j          .L80029FF8
/* 1A7E4 80029FE4 00000000 */   nop
.L80029FE8:
/* 1A7E8 80029FE8 21202002 */  addu       $a0, $s1, $zero
/* 1A7EC 80029FEC 0180053C */  lui        $a1, %hi(D_80010EC0)
/* 1A7F0 80029FF0 8E81000C */  jal        sprintf
/* 1A7F4 80029FF4 C00EA524 */   addiu     $a1, $a1, %lo(D_80010EC0)
.L80029FF8:
/* 1A7F8 80029FF8 B801A016 */  bnez       $s5, .L8002A6DC
/* 1A7FC 80029FFC 60ABE226 */   addiu     $v0, $s7, -0x54a0
/* 1A800 8002A000 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1A804 8002A004 21B04000 */  addu       $s6, $v0, $zero
/* 1A808 8002A008 0E80043C */  lui        $a0, %hi(D_800D8D24)
/* 1A80C 8002A00C 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* 1A810 8002A010 10004384 */  lh         $v1, 0x10($v0)
/* 1A814 8002A014 248D9494 */  lhu        $s4, %lo(D_800D8D24)($a0)
/* 1A818 8002A018 12006014 */  bnez       $v1, .L8002A064
/* 1A81C 8002A01C FFFF1324 */   addiu     $s3, $zero, -1
/* 1A820 8002A020 FFFF0224 */  addiu      $v0, $zero, -1
/* 1A824 8002A024 0C004216 */  bne        $s2, $v0, .L8002A058
/* 1A828 8002A028 21800000 */   addu      $s0, $zero, $zero
/* 1A82C 8002A02C 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A830 8002A030 21200000 */   addu      $a0, $zero, $zero
/* 1A834 8002A034 05004014 */  bnez       $v0, .L8002A04C
/* 1A838 8002A038 00000000 */   nop
/* 1A83C 8002A03C 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A840 8002A040 01000424 */   addiu     $a0, $zero, 1
/* 1A844 8002A044 07004010 */  beqz       $v0, .L8002A064
/* 1A848 8002A048 21980002 */   addu      $s3, $s0, $zero
.L8002A04C:
/* 1A84C 8002A04C 01001024 */  addiu      $s0, $zero, 1
/* 1A850 8002A050 19A80008 */  j          .L8002A064
/* 1A854 8002A054 21980002 */   addu      $s3, $s0, $zero
.L8002A058:
/* 1A858 8002A058 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A85C 8002A05C 21204002 */   addu      $a0, $s2, $zero
/* 1A860 8002A060 2B980200 */  sltu       $s3, $zero, $v0
.L8002A064:
/* 1A864 8002A064 01008232 */  andi       $v0, $s4, 1
/* 1A868 8002A068 35004010 */  beqz       $v0, .L8002A140
/* 1A86C 8002A06C 60ABF126 */   addiu     $s1, $s7, -0x54a0
/* 1A870 8002A070 50BAC326 */  addiu      $v1, $s6, -0x45b0
/* 1A874 8002A074 10006284 */  lh         $v0, 0x10($v1)
/* 1A878 8002A078 00000000 */  nop
/* 1A87C 8002A07C 6F014014 */  bnez       $v0, .L8002A63C
/* 1A880 8002A080 21202002 */   addu      $a0, $s1, $zero
/* 1A884 8002A084 02000224 */  addiu      $v0, $zero, 2
/* 1A888 8002A088 0400A216 */  bne        $s5, $v0, .L8002A09C
/* 1A88C 8002A08C 50BAC226 */   addiu     $v0, $s6, -0x45b0
/* 1A890 8002A090 2E007084 */  lh         $s0, 0x2e($v1)
/* 1A894 8002A094 28A80008 */  j          .L8002A0A0
/* 1A898 8002A098 00000000 */   nop
.L8002A09C:
/* 1A89C 8002A09C 2C007084 */  lh         $s0, 0x2c($v1)
.L8002A0A0:
/* 1A8A0 8002A0A0 12004384 */  lh         $v1, 0x12($v0)
/* 1A8A4 8002A0A4 00000000 */  nop
/* 1A8A8 8002A0A8 0E006010 */  beqz       $v1, .L8002A0E4
/* 1A8AC 8002A0AC 21900000 */   addu      $s2, $zero, $zero
/* 1A8B0 8002A0B0 29A6000C */  jal        coin_left_partial_800298a4
/* 1A8B4 8002A0B4 21200000 */   addu      $a0, $zero, $zero
/* 1A8B8 8002A0B8 2A105000 */  slt        $v0, $v0, $s0
/* 1A8BC 8002A0BC 06004010 */  beqz       $v0, .L8002A0D8
/* 1A8C0 8002A0C0 00000000 */   nop
/* 1A8C4 8002A0C4 29A6000C */  jal        coin_left_partial_800298a4
/* 1A8C8 8002A0C8 01000424 */   addiu     $a0, $zero, 1
/* 1A8CC 8002A0CC 2A105000 */  slt        $v0, $v0, $s0
/* 1A8D0 8002A0D0 08004014 */  bnez       $v0, .L8002A0F4
/* 1A8D4 8002A0D4 21104002 */   addu      $v0, $s2, $zero
.L8002A0D8:
/* 1A8D8 8002A0D8 01001224 */  addiu      $s2, $zero, 1
/* 1A8DC 8002A0DC 3DA80008 */  j          .L8002A0F4
/* 1A8E0 8002A0E0 21104002 */   addu      $v0, $s2, $zero
.L8002A0E4:
/* 1A8E4 8002A0E4 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1A8E8 8002A0E8 00000000 */   nop
/* 1A8EC 8002A0EC 2A105000 */  slt        $v0, $v0, $s0
/* 1A8F0 8002A0F0 01004238 */  xori       $v0, $v0, 1
.L8002A0F4:
/* 1A8F4 8002A0F4 06004010 */  beqz       $v0, .L8002A110
/* 1A8F8 8002A0F8 21202002 */   addu      $a0, $s1, $zero
/* 1A8FC 8002A0FC 0180053C */  lui        $a1, %hi(D_80010F08)
/* 1A900 8002A100 8E81000C */  jal        sprintf
/* 1A904 8002A104 080FA524 */   addiu     $a1, $a1, %lo(D_80010F08)
/* 1A908 8002A108 B7A90008 */  j          .L8002A6DC
/* 1A90C 8002A10C 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A110:
/* 1A910 8002A110 05006012 */  beqz       $s3, .L8002A128
/* 1A914 8002A114 0180053C */   lui       $a1, %hi(D_80010F20)
/* 1A918 8002A118 8E81000C */  jal        sprintf
/* 1A91C 8002A11C 200FA524 */   addiu     $a1, $a1, %lo(D_80010F20)
/* 1A920 8002A120 B7A90008 */  j          .L8002A6DC
/* 1A924 8002A124 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A128:
/* 1A928 8002A128 21202002 */  addu       $a0, $s1, $zero
/* 1A92C 8002A12C 0180053C */  lui        $a1, %hi(D_80010F38)
/* 1A930 8002A130 8E81000C */  jal        sprintf
/* 1A934 8002A134 380FA524 */   addiu     $a1, $a1, %lo(D_80010F38)
/* 1A938 8002A138 B7A90008 */  j          .L8002A6DC
/* 1A93C 8002A13C 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A140:
/* 1A940 8002A140 21202002 */  addu       $a0, $s1, $zero
/* 1A944 8002A144 0180053C */  lui        $a1, %hi(D_80010EC0)
/* 1A948 8002A148 8E81000C */  jal        sprintf
/* 1A94C 8002A14C C00EA524 */   addiu     $a1, $a1, %lo(D_80010EC0)
/* 1A950 8002A150 B7A90008 */  j          .L8002A6DC
/* 1A954 8002A154 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A158:
/* 1A958 8002A158 28004524 */  addiu      $a1, $v0, 0x28
/* 1A95C 8002A15C 3C00A380 */  lb         $v1, 0x3c($a1)
/* 1A960 8002A160 00000000 */  nop
/* 1A964 8002A164 06006014 */  bnez       $v1, .L8002A180
/* 1A968 8002A168 01001424 */   addiu     $s4, $zero, 1
/* 1A96C 8002A16C 0100023C */  lui        $v0, 1
/* 1A970 8002A170 2110A200 */  addu       $v0, $a1, $v0
/* 1A974 8002A174 B8424380 */  lb         $v1, 0x42b8($v0)
/* 1A978 8002A178 00000000 */  nop
/* 1A97C 8002A17C 2BA00300 */  sltu       $s4, $zero, $v1
.L8002A180:
/* 1A980 8002A180 05008012 */  beqz       $s4, .L8002A198
/* 1A984 8002A184 01000224 */   addiu     $v0, $zero, 1
/* 1A988 8002A188 44008212 */  beq        $s4, $v0, .L8002A29C
/* 1A98C 8002A18C 60ABE226 */   addiu     $v0, $s7, -0x54a0
/* 1A990 8002A190 B7A90008 */  j          .L8002A6DC
/* 1A994 8002A194 00000000 */   nop
.L8002A198:
/* 1A998 8002A198 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1A99C 8002A19C 50BA5124 */  addiu      $s1, $v0, %lo(D_8014BA50)
/* 1A9A0 8002A1A0 12002386 */  lh         $v1, 0x12($s1)
/* 1A9A4 8002A1A4 00000000 */  nop
/* 1A9A8 8002A1A8 1E006010 */  beqz       $v1, .L8002A224
/* 1A9AC 8002A1AC 00000000 */   nop
/* 1A9B0 8002A1B0 29A6000C */  jal        coin_left_partial_800298a4
/* 1A9B4 8002A1B4 21204002 */   addu      $a0, $s2, $zero
/* 1A9B8 8002A1B8 21204002 */  addu       $a0, $s2, $zero
/* 1A9BC 8002A1BC 01A7000C */  jal        coin_partialcredits_80029c04
/* 1A9C0 8002A1C0 21804000 */   addu      $s0, $v0, $zero
/* 1A9C4 8002A1C4 21404000 */  addu       $t0, $v0, $zero
/* 1A9C8 8002A1C8 24002386 */  lh         $v1, 0x24($s1)
/* 1A9CC 8002A1CC 10002286 */  lh         $v0, 0x10($s1)
/* 1A9D0 8002A1D0 2C002786 */  lh         $a3, 0x2c($s1)
/* 1A9D4 8002A1D4 19014014 */  bnez       $v0, .L8002A63C
/* 1A9D8 8002A1D8 60ABE426 */   addiu     $a0, $s7, -0x54a0
/* 1A9DC 8002A1DC 01000224 */  addiu      $v0, $zero, 1
/* 1A9E0 8002A1E0 0800E210 */  beq        $a3, $v0, .L8002A204
/* 1A9E4 8002A1E4 00000000 */   nop
/* 1A9E8 8002A1E8 9A006010 */  beqz       $v1, .L8002A454
/* 1A9EC 8002A1EC 0180053C */   lui       $a1, 0x8001
/* 1A9F0 8002A1F0 97000011 */  beqz       $t0, .L8002A450
/* 1A9F4 8002A1F4 0180053C */   lui       $a1, %hi(D_80010F50)
/* 1A9F8 8002A1F8 500FA524 */  addiu      $a1, $a1, %lo(D_80010F50)
/* 1A9FC 8002A1FC 9CA90008 */  j          .L8002A670
/* 1AA00 8002A200 21300002 */   addu      $a2, $s0, $zero
.L8002A204:
/* 1AA04 8002A204 A4006010 */  beqz       $v1, .L8002A498
/* 1AA08 8002A208 0180053C */   lui       $a1, 0x8001
/* 1AA0C 8002A20C A1000011 */  beqz       $t0, .L8002A494
/* 1AA10 8002A210 0180053C */   lui       $a1, %hi(D_80010F8C)
/* 1AA14 8002A214 1000A3AF */  sw         $v1, 0x10($sp)
/* 1AA18 8002A218 8C0FA524 */  addiu      $a1, $a1, %lo(D_80010F8C)
/* 1AA1C 8002A21C AFA90008 */  j          .L8002A6BC
/* 1AA20 8002A220 21300002 */   addu      $a2, $s0, $zero
.L8002A224:
/* 1AA24 8002A224 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1AA28 8002A228 40801200 */   sll       $s0, $s2, 1
/* 1AA2C 8002A22C 21204002 */  addu       $a0, $s2, $zero
/* 1AA30 8002A230 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AA34 8002A234 21984000 */   addu      $s3, $v0, $zero
/* 1AA38 8002A238 21404000 */  addu       $t0, $v0, $zero
/* 1AA3C 8002A23C 21803002 */  addu       $s0, $s1, $s0
/* 1AA40 8002A240 20000386 */  lh         $v1, 0x20($s0)
/* 1AA44 8002A244 10002286 */  lh         $v0, 0x10($s1)
/* 1AA48 8002A248 2C002786 */  lh         $a3, 0x2c($s1)
/* 1AA4C 8002A24C FB004014 */  bnez       $v0, .L8002A63C
/* 1AA50 8002A250 60ABE426 */   addiu     $a0, $s7, -0x54a0
/* 1AA54 8002A254 01000224 */  addiu      $v0, $zero, 1
/* 1AA58 8002A258 0700E210 */  beq        $a3, $v0, .L8002A278
/* 1AA5C 8002A25C 00000000 */   nop
/* 1AA60 8002A260 09016010 */  beqz       $v1, .L8002A688
/* 1AA64 8002A264 0180053C */   lui       $a1, 0x8001
/* 1AA68 8002A268 FF000015 */  bnez       $t0, .L8002A668
/* 1AA6C 8002A26C 0180053C */   lui       $a1, 0x8001
/* 1AA70 8002A270 A2A90008 */  j          .L8002A688
/* 1AA74 8002A274 0180053C */   lui       $a1, 0x8001
.L8002A278:
/* 1AA78 8002A278 03006010 */  beqz       $v1, .L8002A288
/* 1AA7C 8002A27C 0180053C */   lui       $a1, %hi(D_80010FA8)
/* 1AA80 8002A280 0A010015 */  bnez       $t0, .L8002A6AC
/* 1AA84 8002A284 00000000 */   nop
.L8002A288:
/* 1AA88 8002A288 A80FA524 */  addiu      $a1, $a1, %lo(D_80010FA8)
/* 1AA8C 8002A28C 8E81000C */  jal        sprintf
/* 1AA90 8002A290 21306002 */   addu      $a2, $s3, $zero
/* 1AA94 8002A294 B7A90008 */  j          .L8002A6DC
/* 1AA98 8002A298 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A29C:
/* 1AA9C 8002A29C 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1AAA0 8002A2A0 50BA5124 */  addiu      $s1, $v0, %lo(D_8014BA50)
/* 1AAA4 8002A2A4 12002386 */  lh         $v1, 0x12($s1)
/* 1AAA8 8002A2A8 00000000 */  nop
/* 1AAAC 8002A2AC 7F006010 */  beqz       $v1, .L8002A4AC
/* 1AAB0 8002A2B0 02000224 */   addiu     $v0, $zero, 2
/* 1AAB4 8002A2B4 0E00A216 */  bne        $s5, $v0, .L8002A2F0
/* 1AAB8 8002A2B8 80101200 */   sll       $v0, $s2, 2
/* 1AABC 8002A2BC 29A6000C */  jal        coin_left_partial_800298a4
/* 1AAC0 8002A2C0 21204002 */   addu      $a0, $s2, $zero
/* 1AAC4 8002A2C4 21204002 */  addu       $a0, $s2, $zero
/* 1AAC8 8002A2C8 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AACC 8002A2CC 21804000 */   addu      $s0, $v0, $zero
/* 1AAD0 8002A2D0 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1AAD4 8002A2D4 21284002 */  addu       $a1, $s2, $zero
/* 1AAD8 8002A2D8 02000624 */  addiu      $a2, $zero, 2
/* 1AADC 8002A2DC 2A002886 */  lh         $t0, 0x2a($s1)
/* 1AAE0 8002A2E0 24002986 */  lh         $t1, 0x24($s1)
/* 1AAE4 8002A2E4 2E002A86 */  lh         $t2, 0x2e($s1)
/* 1AAE8 8002A2E8 F1A80008 */  j          .L8002A3C4
/* 1AAEC 8002A2EC 0E80033C */   lui       $v1, 0x800e
.L8002A2F0:
/* 1AAF0 8002A2F0 21105200 */  addu       $v0, $v0, $s2
/* 1AAF4 8002A2F4 C0190200 */  sll        $v1, $v0, 7
/* 1AAF8 8002A2F8 21104300 */  addu       $v0, $v0, $v1
/* 1AAFC 8002A2FC 40110200 */  sll        $v0, $v0, 5
/* 1AB00 8002A300 23105200 */  subu       $v0, $v0, $s2
/* 1AB04 8002A304 80100200 */  sll        $v0, $v0, 2
/* 1AB08 8002A308 21104500 */  addu       $v0, $v0, $a1
/* 1AB0C 8002A30C 3C004380 */  lb         $v1, 0x3c($v0)
/* 1AB10 8002A310 00000000 */  nop
/* 1AB14 8002A314 36006014 */  bnez       $v1, .L8002A3F0
/* 1AB18 8002A318 00000000 */   nop
/* 1AB1C 8002A31C 23209202 */  subu       $a0, $s4, $s2
/* 1AB20 8002A320 80100400 */  sll        $v0, $a0, 2
/* 1AB24 8002A324 21104400 */  addu       $v0, $v0, $a0
/* 1AB28 8002A328 C0190200 */  sll        $v1, $v0, 7
/* 1AB2C 8002A32C 21104300 */  addu       $v0, $v0, $v1
/* 1AB30 8002A330 40110200 */  sll        $v0, $v0, 5
/* 1AB34 8002A334 23104400 */  subu       $v0, $v0, $a0
/* 1AB38 8002A338 80100200 */  sll        $v0, $v0, 2
/* 1AB3C 8002A33C 21104500 */  addu       $v0, $v0, $a1
/* 1AB40 8002A340 3C004480 */  lb         $a0, 0x3c($v0)
/* 1AB44 8002A344 04000324 */  addiu      $v1, $zero, 4
/* 1AB48 8002A348 12008314 */  bne        $a0, $v1, .L8002A394
/* 1AB4C 8002A34C 00000000 */   nop
/* 1AB50 8002A350 29A6000C */  jal        coin_left_partial_800298a4
/* 1AB54 8002A354 21204002 */   addu      $a0, $s2, $zero
/* 1AB58 8002A358 21204002 */  addu       $a0, $s2, $zero
/* 1AB5C 8002A35C 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AB60 8002A360 21804000 */   addu      $s0, $v0, $zero
/* 1AB64 8002A364 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1AB68 8002A368 21284002 */  addu       $a1, $s2, $zero
/* 1AB6C 8002A36C 2130A002 */  addu       $a2, $s5, $zero
/* 1AB70 8002A370 0E80033C */  lui        $v1, %hi(D_800D8D24)
/* 1AB74 8002A374 2A002886 */  lh         $t0, 0x2a($s1)
/* 1AB78 8002A378 24002986 */  lh         $t1, 0x24($s1)
/* 1AB7C 8002A37C 2C002A86 */  lh         $t2, 0x2c($s1)
/* 1AB80 8002A380 248D6B94 */  lhu        $t3, %lo(D_800D8D24)($v1)
/* 1AB84 8002A384 21380002 */  addu       $a3, $s0, $zero
/* 1AB88 8002A388 1400A2AF */  sw         $v0, 0x14($sp)
/* 1AB8C 8002A38C F5A80008 */  j          .L8002A3D4
/* 1AB90 8002A390 2400A0AF */   sw        $zero, 0x24($sp)
.L8002A394:
/* 1AB94 8002A394 29A6000C */  jal        coin_left_partial_800298a4
/* 1AB98 8002A398 21204002 */   addu      $a0, $s2, $zero
/* 1AB9C 8002A39C 21204002 */  addu       $a0, $s2, $zero
/* 1ABA0 8002A3A0 01A7000C */  jal        coin_partialcredits_80029c04
/* 1ABA4 8002A3A4 21804000 */   addu      $s0, $v0, $zero
/* 1ABA8 8002A3A8 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1ABAC 8002A3AC 21284002 */  addu       $a1, $s2, $zero
/* 1ABB0 8002A3B0 2130A002 */  addu       $a2, $s5, $zero
/* 1ABB4 8002A3B4 0E80033C */  lui        $v1, %hi(D_800D8D24)
/* 1ABB8 8002A3B8 2A002886 */  lh         $t0, 0x2a($s1)
/* 1ABBC 8002A3BC 24002986 */  lh         $t1, 0x24($s1)
/* 1ABC0 8002A3C0 2C002A86 */  lh         $t2, 0x2c($s1)
.L8002A3C4:
/* 1ABC4 8002A3C4 248D6B94 */  lhu        $t3, %lo(D_800D8D24)($v1)
/* 1ABC8 8002A3C8 21380002 */  addu       $a3, $s0, $zero
/* 1ABCC 8002A3CC 1400A2AF */  sw         $v0, 0x14($sp)
/* 1ABD0 8002A3D0 2400B4AF */  sw         $s4, 0x24($sp)
.L8002A3D4:
/* 1ABD4 8002A3D4 1000A8AF */  sw         $t0, 0x10($sp)
/* 1ABD8 8002A3D8 1800A9AF */  sw         $t1, 0x18($sp)
/* 1ABDC 8002A3DC 1C00AAAF */  sw         $t2, 0x1c($sp)
/* 1ABE0 8002A3E0 4EA7000C */  jal        creditsText_80029d38
/* 1ABE4 8002A3E4 2000ABAF */   sw        $t3, 0x20($sp)
/* 1ABE8 8002A3E8 B7A90008 */  j          .L8002A6DC
/* 1ABEC 8002A3EC 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A3F0:
/* 1ABF0 8002A3F0 29A6000C */  jal        coin_left_partial_800298a4
/* 1ABF4 8002A3F4 21204002 */   addu      $a0, $s2, $zero
/* 1ABF8 8002A3F8 21204002 */  addu       $a0, $s2, $zero
/* 1ABFC 8002A3FC 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AC00 8002A400 21804000 */   addu      $s0, $v0, $zero
/* 1AC04 8002A404 21184000 */  addu       $v1, $v0, $zero
/* 1AC08 8002A408 24002886 */  lh         $t0, 0x24($s1)
/* 1AC0C 8002A40C 10002286 */  lh         $v0, 0x10($s1)
/* 1AC10 8002A410 2C002786 */  lh         $a3, 0x2c($s1)
/* 1AC14 8002A414 89004014 */  bnez       $v0, .L8002A63C
/* 1AC18 8002A418 60ABE426 */   addiu     $a0, $s7, -0x54a0
/* 1AC1C 8002A41C 1200F410 */  beq        $a3, $s4, .L8002A468
/* 1AC20 8002A420 00000000 */   nop
/* 1AC24 8002A424 0B000011 */  beqz       $t0, .L8002A454
/* 1AC28 8002A428 0180053C */   lui       $a1, 0x8001
/* 1AC2C 8002A42C 08006010 */  beqz       $v1, .L8002A450
/* 1AC30 8002A430 0180053C */   lui       $a1, %hi(D_80010F50)
/* 1AC34 8002A434 500FA524 */  addiu      $a1, $a1, %lo(D_80010F50)
/* 1AC38 8002A438 21300002 */  addu       $a2, $s0, $zero
/* 1AC3C 8002A43C 1000A3AF */  sw         $v1, 0x10($sp)
/* 1AC40 8002A440 8E81000C */  jal        sprintf
/* 1AC44 8002A444 1400A8AF */   sw        $t0, 0x14($sp)
/* 1AC48 8002A448 B7A90008 */  j          .L8002A6DC
/* 1AC4C 8002A44C 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A450:
/* 1AC50 8002A450 0180053C */  lui        $a1, %hi(D_80010F70)
.L8002A454:
/* 1AC54 8002A454 700FA524 */  addiu      $a1, $a1, %lo(D_80010F70)
/* 1AC58 8002A458 8E81000C */  jal        sprintf
/* 1AC5C 8002A45C 21300002 */   addu      $a2, $s0, $zero
/* 1AC60 8002A460 B7A90008 */  j          .L8002A6DC
/* 1AC64 8002A464 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A468:
/* 1AC68 8002A468 0B000011 */  beqz       $t0, .L8002A498
/* 1AC6C 8002A46C 0180053C */   lui       $a1, 0x8001
/* 1AC70 8002A470 08006010 */  beqz       $v1, .L8002A494
/* 1AC74 8002A474 0180053C */   lui       $a1, %hi(D_80010F8C)
/* 1AC78 8002A478 1000A8AF */  sw         $t0, 0x10($sp)
/* 1AC7C 8002A47C 8C0FA524 */  addiu      $a1, $a1, %lo(D_80010F8C)
/* 1AC80 8002A480 21300002 */  addu       $a2, $s0, $zero
/* 1AC84 8002A484 8E81000C */  jal        sprintf
/* 1AC88 8002A488 21386000 */   addu      $a3, $v1, $zero
/* 1AC8C 8002A48C B7A90008 */  j          .L8002A6DC
/* 1AC90 8002A490 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A494:
/* 1AC94 8002A494 0180053C */  lui        $a1, %hi(D_80010FA8)
.L8002A498:
/* 1AC98 8002A498 A80FA524 */  addiu      $a1, $a1, %lo(D_80010FA8)
/* 1AC9C 8002A49C 8E81000C */  jal        sprintf
/* 1ACA0 8002A4A0 21300002 */   addu      $a2, $s0, $zero
/* 1ACA4 8002A4A4 B7A90008 */  j          .L8002A6DC
/* 1ACA8 8002A4A8 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A4AC:
/* 1ACAC 8002A4AC 1100A216 */  bne        $s5, $v0, .L8002A4F4
/* 1ACB0 8002A4B0 80101200 */   sll       $v0, $s2, 2
/* 1ACB4 8002A4B4 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1ACB8 8002A4B8 00000000 */   nop
/* 1ACBC 8002A4BC 21204002 */  addu       $a0, $s2, $zero
/* 1ACC0 8002A4C0 01A7000C */  jal        coin_partialcredits_80029c04
/* 1ACC4 8002A4C4 21804000 */   addu      $s0, $v0, $zero
/* 1ACC8 8002A4C8 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1ACCC 8002A4CC 21284002 */  addu       $a1, $s2, $zero
/* 1ACD0 8002A4D0 02000624 */  addiu      $a2, $zero, 2
/* 1ACD4 8002A4D4 40181200 */  sll        $v1, $s2, 1
/* 1ACD8 8002A4D8 21382302 */  addu       $a3, $s1, $v1
/* 1ACDC 8002A4DC 2118E000 */  addu       $v1, $a3, $zero
/* 1ACE0 8002A4E0 2600E984 */  lh         $t1, 0x26($a3)
/* 1ACE4 8002A4E4 20006A84 */  lh         $t2, 0x20($v1)
/* 1ACE8 8002A4E8 2E002B86 */  lh         $t3, 0x2e($s1)
/* 1ACEC 8002A4EC 78A90008 */  j          .L8002A5E0
/* 1ACF0 8002A4F0 0E80083C */   lui       $t0, 0x800e
.L8002A4F4:
/* 1ACF4 8002A4F4 21105200 */  addu       $v0, $v0, $s2
/* 1ACF8 8002A4F8 C0190200 */  sll        $v1, $v0, 7
/* 1ACFC 8002A4FC 21104300 */  addu       $v0, $v0, $v1
/* 1AD00 8002A500 40110200 */  sll        $v0, $v0, 5
/* 1AD04 8002A504 23105200 */  subu       $v0, $v0, $s2
/* 1AD08 8002A508 80100200 */  sll        $v0, $v0, 2
/* 1AD0C 8002A50C 21104500 */  addu       $v0, $v0, $a1
/* 1AD10 8002A510 3C004380 */  lb         $v1, 0x3c($v0)
/* 1AD14 8002A514 00000000 */  nop
/* 1AD18 8002A518 3C006014 */  bnez       $v1, .L8002A60C
/* 1AD1C 8002A51C 00000000 */   nop
/* 1AD20 8002A520 23209202 */  subu       $a0, $s4, $s2
/* 1AD24 8002A524 80100400 */  sll        $v0, $a0, 2
/* 1AD28 8002A528 21104400 */  addu       $v0, $v0, $a0
/* 1AD2C 8002A52C C0190200 */  sll        $v1, $v0, 7
/* 1AD30 8002A530 21104300 */  addu       $v0, $v0, $v1
/* 1AD34 8002A534 40110200 */  sll        $v0, $v0, 5
/* 1AD38 8002A538 23104400 */  subu       $v0, $v0, $a0
/* 1AD3C 8002A53C 80100200 */  sll        $v0, $v0, 2
/* 1AD40 8002A540 21104500 */  addu       $v0, $v0, $a1
/* 1AD44 8002A544 3C004480 */  lb         $a0, 0x3c($v0)
/* 1AD48 8002A548 04000324 */  addiu      $v1, $zero, 4
/* 1AD4C 8002A54C 15008314 */  bne        $a0, $v1, .L8002A5A4
/* 1AD50 8002A550 00000000 */   nop
/* 1AD54 8002A554 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1AD58 8002A558 00000000 */   nop
/* 1AD5C 8002A55C 21204002 */  addu       $a0, $s2, $zero
/* 1AD60 8002A560 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AD64 8002A564 21804000 */   addu      $s0, $v0, $zero
/* 1AD68 8002A568 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1AD6C 8002A56C 21284002 */  addu       $a1, $s2, $zero
/* 1AD70 8002A570 2130A002 */  addu       $a2, $s5, $zero
/* 1AD74 8002A574 40181200 */  sll        $v1, $s2, 1
/* 1AD78 8002A578 21382302 */  addu       $a3, $s1, $v1
/* 1AD7C 8002A57C 2118E000 */  addu       $v1, $a3, $zero
/* 1AD80 8002A580 0E80083C */  lui        $t0, %hi(D_800D8D24)
/* 1AD84 8002A584 2600E984 */  lh         $t1, 0x26($a3)
/* 1AD88 8002A588 20006A84 */  lh         $t2, 0x20($v1)
/* 1AD8C 8002A58C 2C002B86 */  lh         $t3, 0x2c($s1)
/* 1AD90 8002A590 248D0395 */  lhu        $v1, %lo(D_800D8D24)($t0)
/* 1AD94 8002A594 21380002 */  addu       $a3, $s0, $zero
/* 1AD98 8002A598 1400A2AF */  sw         $v0, 0x14($sp)
/* 1AD9C 8002A59C 7CA90008 */  j          .L8002A5F0
/* 1ADA0 8002A5A0 2400A0AF */   sw        $zero, 0x24($sp)
.L8002A5A4:
/* 1ADA4 8002A5A4 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1ADA8 8002A5A8 00000000 */   nop
/* 1ADAC 8002A5AC 21204002 */  addu       $a0, $s2, $zero
/* 1ADB0 8002A5B0 01A7000C */  jal        coin_partialcredits_80029c04
/* 1ADB4 8002A5B4 21804000 */   addu      $s0, $v0, $zero
/* 1ADB8 8002A5B8 60ABE426 */  addiu      $a0, $s7, -0x54a0
/* 1ADBC 8002A5BC 21284002 */  addu       $a1, $s2, $zero
/* 1ADC0 8002A5C0 2130A002 */  addu       $a2, $s5, $zero
/* 1ADC4 8002A5C4 40181200 */  sll        $v1, $s2, 1
/* 1ADC8 8002A5C8 21382302 */  addu       $a3, $s1, $v1
/* 1ADCC 8002A5CC 2118E000 */  addu       $v1, $a3, $zero
/* 1ADD0 8002A5D0 0E80083C */  lui        $t0, %hi(D_800D8D24)
/* 1ADD4 8002A5D4 2600E984 */  lh         $t1, 0x26($a3)
/* 1ADD8 8002A5D8 20006A84 */  lh         $t2, 0x20($v1)
/* 1ADDC 8002A5DC 2C002B86 */  lh         $t3, 0x2c($s1)
.L8002A5E0:
/* 1ADE0 8002A5E0 248D0395 */  lhu        $v1, %lo(D_800D8D24)($t0)
/* 1ADE4 8002A5E4 21380002 */  addu       $a3, $s0, $zero
/* 1ADE8 8002A5E8 1400A2AF */  sw         $v0, 0x14($sp)
/* 1ADEC 8002A5EC 2400B4AF */  sw         $s4, 0x24($sp)
.L8002A5F0:
/* 1ADF0 8002A5F0 1000A9AF */  sw         $t1, 0x10($sp)
/* 1ADF4 8002A5F4 1800AAAF */  sw         $t2, 0x18($sp)
/* 1ADF8 8002A5F8 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 1ADFC 8002A5FC 4EA7000C */  jal        creditsText_80029d38
/* 1AE00 8002A600 2000A3AF */   sw        $v1, 0x20($sp)
/* 1AE04 8002A604 B7A90008 */  j          .L8002A6DC
/* 1AE08 8002A608 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A60C:
/* 1AE0C 8002A60C B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1AE10 8002A610 40801200 */   sll       $s0, $s2, 1
/* 1AE14 8002A614 21204002 */  addu       $a0, $s2, $zero
/* 1AE18 8002A618 01A7000C */  jal        coin_partialcredits_80029c04
/* 1AE1C 8002A61C 21984000 */   addu      $s3, $v0, $zero
/* 1AE20 8002A620 21404000 */  addu       $t0, $v0, $zero
/* 1AE24 8002A624 21803002 */  addu       $s0, $s1, $s0
/* 1AE28 8002A628 20000386 */  lh         $v1, 0x20($s0)
/* 1AE2C 8002A62C 10002286 */  lh         $v0, 0x10($s1)
/* 1AE30 8002A630 2C002786 */  lh         $a3, 0x2c($s1)
/* 1AE34 8002A634 06004010 */  beqz       $v0, .L8002A650
/* 1AE38 8002A638 60ABE426 */   addiu     $a0, $s7, -0x54a0
.L8002A63C:
/* 1AE3C 8002A63C 0180053C */  lui        $a1, %hi(D_80010ED8)
/* 1AE40 8002A640 8E81000C */  jal        sprintf
/* 1AE44 8002A644 D80EA524 */   addiu     $a1, $a1, %lo(D_80010ED8)
/* 1AE48 8002A648 B7A90008 */  j          .L8002A6DC
/* 1AE4C 8002A64C 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A650:
/* 1AE50 8002A650 1200F410 */  beq        $a3, $s4, .L8002A69C
/* 1AE54 8002A654 00000000 */   nop
/* 1AE58 8002A658 0B006010 */  beqz       $v1, .L8002A688
/* 1AE5C 8002A65C 0180053C */   lui       $a1, 0x8001
/* 1AE60 8002A660 08000011 */  beqz       $t0, .L8002A684
/* 1AE64 8002A664 0180053C */   lui       $a1, %hi(D_80010F50)
.L8002A668:
/* 1AE68 8002A668 500FA524 */  addiu      $a1, $a1, %lo(D_80010F50)
/* 1AE6C 8002A66C 21306002 */  addu       $a2, $s3, $zero
.L8002A670:
/* 1AE70 8002A670 1000A8AF */  sw         $t0, 0x10($sp)
/* 1AE74 8002A674 8E81000C */  jal        sprintf
/* 1AE78 8002A678 1400A3AF */   sw        $v1, 0x14($sp)
/* 1AE7C 8002A67C B7A90008 */  j          .L8002A6DC
/* 1AE80 8002A680 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A684:
/* 1AE84 8002A684 0180053C */  lui        $a1, %hi(D_80010F70)
.L8002A688:
/* 1AE88 8002A688 700FA524 */  addiu      $a1, $a1, %lo(D_80010F70)
/* 1AE8C 8002A68C 8E81000C */  jal        sprintf
/* 1AE90 8002A690 21306002 */   addu      $a2, $s3, $zero
/* 1AE94 8002A694 B7A90008 */  j          .L8002A6DC
/* 1AE98 8002A698 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A69C:
/* 1AE9C 8002A69C 0B006010 */  beqz       $v1, .L8002A6CC
/* 1AEA0 8002A6A0 0180053C */   lui       $a1, %hi(D_80010FA8)
/* 1AEA4 8002A6A4 0A000011 */  beqz       $t0, .L8002A6D0
/* 1AEA8 8002A6A8 A80FA524 */   addiu     $a1, $a1, %lo(D_80010FA8)
.L8002A6AC:
/* 1AEAC 8002A6AC 1000A3AF */  sw         $v1, 0x10($sp)
/* 1AEB0 8002A6B0 0180053C */  lui        $a1, %hi(D_80010F8C)
/* 1AEB4 8002A6B4 8C0FA524 */  addiu      $a1, $a1, %lo(D_80010F8C)
/* 1AEB8 8002A6B8 21306002 */  addu       $a2, $s3, $zero
.L8002A6BC:
/* 1AEBC 8002A6BC 8E81000C */  jal        sprintf
/* 1AEC0 8002A6C0 21380001 */   addu      $a3, $t0, $zero
/* 1AEC4 8002A6C4 B7A90008 */  j          .L8002A6DC
/* 1AEC8 8002A6C8 60ABE226 */   addiu     $v0, $s7, -0x54a0
.L8002A6CC:
/* 1AECC 8002A6CC A80FA524 */  addiu      $a1, $a1, 0xfa8
.L8002A6D0:
/* 1AED0 8002A6D0 8E81000C */  jal        sprintf
/* 1AED4 8002A6D4 21306002 */   addu      $a2, $s3, $zero
/* 1AED8 8002A6D8 60ABE226 */  addiu      $v0, $s7, -0x54a0
.L8002A6DC:
/* 1AEDC 8002A6DC 4800BF8F */  lw         $ra, 0x48($sp)
/* 1AEE0 8002A6E0 4400B78F */  lw         $s7, 0x44($sp)
/* 1AEE4 8002A6E4 4000B68F */  lw         $s6, 0x40($sp)
/* 1AEE8 8002A6E8 3C00B58F */  lw         $s5, 0x3c($sp)
/* 1AEEC 8002A6EC 3800B48F */  lw         $s4, 0x38($sp)
/* 1AEF0 8002A6F0 3400B38F */  lw         $s3, 0x34($sp)
/* 1AEF4 8002A6F4 3000B28F */  lw         $s2, 0x30($sp)
/* 1AEF8 8002A6F8 2C00B18F */  lw         $s1, 0x2c($sp)
/* 1AEFC 8002A6FC 2800B08F */  lw         $s0, 0x28($sp)
/* 1AF00 8002A700 0800E003 */  jr         $ra
/* 1AF04 8002A704 5000BD27 */   addiu     $sp, $sp, 0x50

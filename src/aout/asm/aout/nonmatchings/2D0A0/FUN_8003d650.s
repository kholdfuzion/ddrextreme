.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003d650
/* 2DE50 8003D650 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2DE54 8003D654 3000B0AF */  sw         $s0, 0x30($sp)
/* 2DE58 8003D658 21808000 */  addu       $s0, $a0, $zero
/* 2DE5C 8003D65C 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 2DE60 8003D660 3800B2AF */  sw         $s2, 0x38($sp)
/* 2DE64 8003D664 7DC4000C */  jal        get_astruct_800311f4
/* 2DE68 8003D668 3400B1AF */   sw        $s1, 0x34($sp)
/* 2DE6C 8003D66C 21884000 */  addu       $s1, $v0, $zero
/* 2DE70 8003D670 2000A427 */  addiu      $a0, $sp, 0x20
/* 2DE74 8003D674 02000324 */  addiu      $v1, $zero, 2
/* 2DE78 8003D678 2800A227 */  addiu      $v0, $sp, 0x28
.L8003D67C:
/* 2DE7C 8003D67C 000040AC */  sw         $zero, ($v0)
/* 2DE80 8003D680 FFFF6324 */  addiu      $v1, $v1, -1
/* 2DE84 8003D684 FDFF6104 */  bgez       $v1, .L8003D67C
/* 2DE88 8003D688 FCFF4224 */   addiu     $v0, $v0, -4
/* 2DE8C 8003D68C 80101000 */  sll        $v0, $s0, 2
/* 2DE90 8003D690 21108200 */  addu       $v0, $a0, $v0
/* 2DE94 8003D694 02000324 */  addiu      $v1, $zero, 2
/* 2DE98 8003D698 7CF8020C */  jal        FUN_800be1f0
/* 2DE9C 8003D69C 000043AC */   sw        $v1, ($v0)
/* 2DEA0 8003D6A0 02004230 */  andi       $v0, $v0, 2
/* 2DEA4 8003D6A4 0C004010 */  beqz       $v0, .L8003D6D8
/* 2DEA8 8003D6A8 38000524 */   addiu     $a1, $zero, 0x38
/* 2DEAC 8003D6AC B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DEB0 8003D6B0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DEB4 8003D6B4 00100324 */  addiu      $v1, $zero, 0x1000
/* 2DEB8 8003D6B8 0180023C */  lui        $v0, %hi(D_80012DAC)
/* 2DEBC 8003D6BC 2000A48F */  lw         $a0, 0x20($sp)
/* 2DEC0 8003D6C0 AC2D4224 */  addiu      $v0, $v0, %lo(D_80012DAC)
/* 2DEC4 8003D6C4 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DEC8 8003D6C8 290A010C */  jal        PrintText_800428a4
/* 2DECC 8003D6CC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DED0 8003D6D0 C2F50008 */  j          .L8003D708
/* 2DED4 8003D6D4 00000000 */   nop
.L8003D6D8:
/* 2DED8 8003D6D8 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DEDC 8003D6DC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DEE0 8003D6E0 08000224 */  addiu      $v0, $zero, 8
/* 2DEE4 8003D6E4 00100324 */  addiu      $v1, $zero, 0x1000
/* 2DEE8 8003D6E8 2000A2AF */  sw         $v0, 0x20($sp)
/* 2DEEC 8003D6EC 0180023C */  lui        $v0, %hi(D_80012DB8)
/* 2DEF0 8003D6F0 C80E20AE */  sw         $zero, 0xec8($s1)
/* 2DEF4 8003D6F4 2000A48F */  lw         $a0, 0x20($sp)
/* 2DEF8 8003D6F8 B82D4224 */  addiu      $v0, $v0, %lo(D_80012DB8)
/* 2DEFC 8003D6FC 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DF00 8003D700 290A010C */  jal        PrintText_800428a4
/* 2DF04 8003D704 1400A2AF */   sw        $v0, 0x14($sp)
.L8003D708:
/* 2DF08 8003D708 C80E238E */  lw         $v1, 0xec8($s1)
/* 2DF0C 8003D70C 00000000 */  nop
/* 2DF10 8003D710 16006010 */  beqz       $v1, .L8003D76C
/* 2DF14 8003D714 01000224 */   addiu     $v0, $zero, 1
/* 2DF18 8003D718 09006214 */  bne        $v1, $v0, .L8003D740
/* 2DF1C 8003D71C 02000424 */   addiu     $a0, $zero, 2
/* 2DF20 8003D720 03000424 */  addiu      $a0, $zero, 3
/* 2DF24 8003D724 78000524 */  addiu      $a1, $zero, 0x78
/* 2DF28 8003D728 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DF2C 8003D72C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DF30 8003D730 00100324 */  addiu      $v1, $zero, 0x1000
/* 2DF34 8003D734 0180023C */  lui        $v0, %hi(D_80012DC4)
/* 2DF38 8003D738 D6F50008 */  j          .L8003D758
/* 2DF3C 8003D73C C42D4224 */   addiu     $v0, $v0, %lo(D_80012DC4)
.L8003D740:
/* 2DF40 8003D740 78000524 */  addiu      $a1, $zero, 0x78
/* 2DF44 8003D744 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DF48 8003D748 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DF4C 8003D74C 00100324 */  addiu      $v1, $zero, 0x1000
/* 2DF50 8003D750 0180023C */  lui        $v0, %hi(D_80012DC8)
/* 2DF54 8003D754 C82D4224 */  addiu      $v0, $v0, %lo(D_80012DC8)
.L8003D758:
/* 2DF58 8003D758 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DF5C 8003D75C 290A010C */  jal        PrintText_800428a4
/* 2DF60 8003D760 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DF64 8003D764 E6F50008 */  j          .L8003D798
/* 2DF68 8003D768 70FF0524 */   addiu     $a1, $zero, -0x90
.L8003D76C:
/* 2DF6C 8003D76C 78000524 */  addiu      $a1, $zero, 0x78
/* 2DF70 8003D770 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DF74 8003D774 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DF78 8003D778 00100324 */  addiu      $v1, $zero, 0x1000
/* 2DF7C 8003D77C 0180023C */  lui        $v0, %hi(D_80012DCC)
/* 2DF80 8003D780 2000A48F */  lw         $a0, 0x20($sp)
/* 2DF84 8003D784 CC2D4224 */  addiu      $v0, $v0, %lo(D_80012DCC)
/* 2DF88 8003D788 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DF8C 8003D78C 290A010C */  jal        PrintText_800428a4
/* 2DF90 8003D790 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DF94 8003D794 70FF0524 */  addiu      $a1, $zero, -0x90
.L8003D798:
/* 2DF98 8003D798 B4FF0624 */  addiu      $a2, $zero, -0x4c
/* 2DF9C 8003D79C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DFA0 8003D7A0 00101024 */  addiu      $s0, $zero, 0x1000
/* 2DFA4 8003D7A4 0180023C */  lui        $v0, %hi(D_80012DD0)
/* 2DFA8 8003D7A8 2000A48F */  lw         $a0, 0x20($sp)
/* 2DFAC 8003D7AC D02D4224 */  addiu      $v0, $v0, %lo(D_80012DD0)
/* 2DFB0 8003D7B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2DFB4 8003D7B4 290A010C */  jal        PrintText_800428a4
/* 2DFB8 8003D7B8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DFBC 8003D7BC 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2DFC0 8003D7C0 1C000624 */  addiu      $a2, $zero, 0x1c
/* 2DFC4 8003D7C4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DFC8 8003D7C8 0180023C */  lui        $v0, %hi(D_80012DE8)
/* 2DFCC 8003D7CC 2400A48F */  lw         $a0, 0x24($sp)
/* 2DFD0 8003D7D0 E82D4224 */  addiu      $v0, $v0, %lo(D_80012DE8)
/* 2DFD4 8003D7D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2DFD8 8003D7D8 290A010C */  jal        PrintText_800428a4
/* 2DFDC 8003D7DC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DFE0 8003D7E0 7CAA000C */  jal        vsync_8002a9f0
/* 2DFE4 8003D7E4 00000000 */   nop
/* 2DFE8 8003D7E8 08002386 */  lh         $v1, 8($s1)
/* 2DFEC 8003D7EC 01000224 */  addiu      $v0, $zero, 1
/* 2DFF0 8003D7F0 72006214 */  bne        $v1, $v0, .L8003D9BC
/* 2DFF4 8003D7F4 04000424 */   addiu     $a0, $zero, 4
/* 2DFF8 8003D7F8 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2DFFC 8003D7FC 2E000624 */  addiu      $a2, $zero, 0x2e
/* 2E000 8003D800 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E004 8003D804 0180023C */  lui        $v0, %hi(D_80012DF0)
/* 2E008 8003D808 F02D4224 */  addiu      $v0, $v0, %lo(D_80012DF0)
/* 2E00C 8003D80C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E010 8003D810 290A010C */  jal        PrintText_800428a4
/* 2E014 8003D814 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E018 8003D818 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E01C 8003D81C 00000000 */   nop
/* 2E020 8003D820 03004010 */  beqz       $v0, .L8003D830
/* 2E024 8003D824 0180023C */   lui       $v0, %hi(D_80012E0C)
/* 2E028 8003D828 0EF60008 */  j          .L8003D838
/* 2E02C 8003D82C 0C2E4224 */   addiu     $v0, $v0, %lo(D_80012E0C)
.L8003D830:
/* 2E030 8003D830 0180023C */  lui        $v0, %hi(D_80012E24)
/* 2E034 8003D834 242E4224 */  addiu      $v0, $v0, %lo(D_80012E24)
.L8003D838:
/* 2E038 8003D838 04000424 */  addiu      $a0, $zero, 4
/* 2E03C 8003D83C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2E040 8003D840 38000624 */  addiu      $a2, $zero, 0x38
/* 2E044 8003D844 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E048 8003D848 00101024 */  addiu      $s0, $zero, 0x1000
/* 2E04C 8003D84C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E050 8003D850 290A010C */  jal        PrintText_800428a4
/* 2E054 8003D854 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E058 8003D858 06002396 */  lhu        $v1, 6($s1)
/* 2E05C 8003D85C 00000000 */  nop
/* 2E060 8003D860 FEFF6224 */  addiu      $v0, $v1, -2
/* 2E064 8003D864 0200422C */  sltiu      $v0, $v0, 2
/* 2E068 8003D868 14004010 */  beqz       $v0, .L8003D8BC
/* 2E06C 8003D86C 04000424 */   addiu     $a0, $zero, 4
/* 2E070 8003D870 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2E074 8003D874 42000624 */  addiu      $a2, $zero, 0x42
/* 2E078 8003D878 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E07C 8003D87C 0180023C */  lui        $v0, %hi(D_80012E3C)
/* 2E080 8003D880 3C2E4224 */  addiu      $v0, $v0, %lo(D_80012E3C)
/* 2E084 8003D884 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E088 8003D888 290A010C */  jal        PrintText_800428a4
/* 2E08C 8003D88C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E090 8003D890 04000424 */  addiu      $a0, $zero, 4
/* 2E094 8003D894 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2E098 8003D898 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E09C 8003D89C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E0A0 8003D8A0 0180023C */  lui        $v0, %hi(D_80012E5C)
/* 2E0A4 8003D8A4 5C2E4224 */  addiu      $v0, $v0, %lo(D_80012E5C)
/* 2E0A8 8003D8A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E0AC 8003D8AC 290A010C */  jal        PrintText_800428a4
/* 2E0B0 8003D8B0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E0B4 8003D8B4 44F60008 */  j          .L8003D910
/* 2E0B8 8003D8B8 00000000 */   nop
.L8003D8BC:
/* 2E0BC 8003D8BC 00140300 */  sll        $v0, $v1, 0x10
/* 2E0C0 8003D8C0 03140200 */  sra        $v0, $v0, 0x10
/* 2E0C4 8003D8C4 01000324 */  addiu      $v1, $zero, 1
/* 2E0C8 8003D8C8 11004314 */  bne        $v0, $v1, .L8003D910
/* 2E0CC 8003D8CC 84FF0524 */   addiu     $a1, $zero, -0x7c
/* 2E0D0 8003D8D0 42000624 */  addiu      $a2, $zero, 0x42
/* 2E0D4 8003D8D4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E0D8 8003D8D8 0180023C */  lui        $v0, %hi(D_80012E74)
/* 2E0DC 8003D8DC 742E4224 */  addiu      $v0, $v0, %lo(D_80012E74)
/* 2E0E0 8003D8E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E0E4 8003D8E4 290A010C */  jal        PrintText_800428a4
/* 2E0E8 8003D8E8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E0EC 8003D8EC 04000424 */  addiu      $a0, $zero, 4
/* 2E0F0 8003D8F0 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2E0F4 8003D8F4 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E0F8 8003D8F8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E0FC 8003D8FC 0180023C */  lui        $v0, %hi(D_80012E98)
/* 2E100 8003D900 982E4224 */  addiu      $v0, $v0, %lo(D_80012E98)
/* 2E104 8003D904 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E108 8003D908 290A010C */  jal        PrintText_800428a4
/* 2E10C 8003D90C 1400A2AF */   sw        $v0, 0x14($sp)
.L8003D910:
/* 2E110 8003D910 18002286 */  lh         $v0, 0x18($s1)
/* 2E114 8003D914 00000000 */  nop
/* 2E118 8003D918 16004014 */  bnez       $v0, .L8003D974
/* 2E11C 8003D91C 21200000 */   addu      $a0, $zero, $zero
/* 2E120 8003D920 02000424 */  addiu      $a0, $zero, 2
/* 2E124 8003D924 34000524 */  addiu      $a1, $zero, 0x34
/* 2E128 8003D928 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E12C 8003D92C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E130 8003D930 00101024 */  addiu      $s0, $zero, 0x1000
/* 2E134 8003D934 0180023C */  lui        $v0, %hi(D_80012EB0)
/* 2E138 8003D938 B02E4224 */  addiu      $v0, $v0, %lo(D_80012EB0)
/* 2E13C 8003D93C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E140 8003D940 290A010C */  jal        PrintText_800428a4
/* 2E144 8003D944 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E148 8003D948 21200000 */  addu       $a0, $zero, $zero
/* 2E14C 8003D94C 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2E150 8003D950 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E154 8003D954 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E158 8003D958 0180023C */  lui        $v0, %hi(D_80012EB4)
/* 2E15C 8003D95C B42E4224 */  addiu      $v0, $v0, %lo(D_80012EB4)
/* 2E160 8003D960 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E164 8003D964 290A010C */  jal        PrintText_800428a4
/* 2E168 8003D968 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E16C 8003D96C 6FF60008 */  j          .L8003D9BC
/* 2E170 8003D970 00000000 */   nop
.L8003D974:
/* 2E174 8003D974 34000524 */  addiu      $a1, $zero, 0x34
/* 2E178 8003D978 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E17C 8003D97C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E180 8003D980 00101024 */  addiu      $s0, $zero, 0x1000
/* 2E184 8003D984 0180023C */  lui        $v0, %hi(D_80012EB8)
/* 2E188 8003D988 B82E4224 */  addiu      $v0, $v0, %lo(D_80012EB8)
/* 2E18C 8003D98C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E190 8003D990 290A010C */  jal        PrintText_800428a4
/* 2E194 8003D994 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E198 8003D998 02000424 */  addiu      $a0, $zero, 2
/* 2E19C 8003D99C 54000524 */  addiu      $a1, $zero, 0x54
/* 2E1A0 8003D9A0 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2E1A4 8003D9A4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E1A8 8003D9A8 0180023C */  lui        $v0, %hi(D_80012EC0)
/* 2E1AC 8003D9AC C02E4224 */  addiu      $v0, $v0, %lo(D_80012EC0)
/* 2E1B0 8003D9B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E1B4 8003D9B4 290A010C */  jal        PrintText_800428a4
/* 2E1B8 8003D9B8 1400A2AF */   sw        $v0, 0x14($sp)
.L8003D9BC:
/* 2E1BC 8003D9BC 08003086 */  lh         $s0, 8($s1)
/* 2E1C0 8003D9C0 03000224 */  addiu      $v0, $zero, 3
/* 2E1C4 8003D9C4 2A000216 */  bne        $s0, $v0, .L8003DA70
/* 2E1C8 8003D9C8 04000424 */   addiu     $a0, $zero, 4
/* 2E1CC 8003D9CC 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2E1D0 8003D9D0 32000624 */  addiu      $a2, $zero, 0x32
/* 2E1D4 8003D9D4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E1D8 8003D9D8 00101224 */  addiu      $s2, $zero, 0x1000
/* 2E1DC 8003D9DC 0180023C */  lui        $v0, %hi(D_80012EC4)
/* 2E1E0 8003D9E0 C42E4224 */  addiu      $v0, $v0, %lo(D_80012EC4)
/* 2E1E4 8003D9E4 1000B2AF */  sw         $s2, 0x10($sp)
/* 2E1E8 8003D9E8 290A010C */  jal        PrintText_800428a4
/* 2E1EC 8003D9EC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E1F0 8003D9F0 08002286 */  lh         $v0, 8($s1)
/* 2E1F4 8003D9F4 00000000 */  nop
/* 2E1F8 8003D9F8 1D005014 */  bne        $v0, $s0, .L8003DA70
/* 2E1FC 8003D9FC 21200000 */   addu      $a0, $zero, $zero
/* 2E200 8003DA00 74FF0524 */  addiu      $a1, $zero, -0x8c
/* 2E204 8003DA04 42000624 */  addiu      $a2, $zero, 0x42
/* 2E208 8003DA08 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E20C 8003DA0C 0180023C */  lui        $v0, %hi(D_80012EE8)
/* 2E210 8003DA10 E82E4224 */  addiu      $v0, $v0, %lo(D_80012EE8)
/* 2E214 8003DA14 1000B2AF */  sw         $s2, 0x10($sp)
/* 2E218 8003DA18 290A010C */  jal        PrintText_800428a4
/* 2E21C 8003DA1C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E220 8003DA20 C40E228E */  lw         $v0, 0xec4($s1)
/* 2E224 8003DA24 00000000 */  nop
/* 2E228 8003DA28 05004004 */  bltz       $v0, .L8003DA40
/* 2E22C 8003DA2C 64004228 */   slti      $v0, $v0, 0x64
/* 2E230 8003DA30 04004014 */  bnez       $v0, .L8003DA44
/* 2E234 8003DA34 23000524 */   addiu     $a1, $zero, 0x23
/* 2E238 8003DA38 91F60008 */  j          .L8003DA44
/* 2E23C 8003DA3C 1B000524 */   addiu     $a1, $zero, 0x1b
.L8003DA40:
/* 2E240 8003DA40 2B000524 */  addiu      $a1, $zero, 0x2b
.L8003DA44:
/* 2E244 8003DA44 21200000 */  addu       $a0, $zero, $zero
/* 2E248 8003DA48 42000624 */  addiu      $a2, $zero, 0x42
/* 2E24C 8003DA4C 00100224 */  addiu      $v0, $zero, 0x1000
/* 2E250 8003DA50 0180033C */  lui        $v1, %hi(D_80012F10)
/* 2E254 8003DA54 102F6324 */  addiu      $v1, $v1, %lo(D_80012F10)
/* 2E258 8003DA58 1000A2AF */  sw         $v0, 0x10($sp)
/* 2E25C 8003DA5C 1400A3AF */  sw         $v1, 0x14($sp)
/* 2E260 8003DA60 C40E228E */  lw         $v0, 0xec4($s1)
/* 2E264 8003DA64 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E268 8003DA68 290A010C */  jal        PrintText_800428a4
/* 2E26C 8003DA6C 1800A2AF */   sw        $v0, 0x18($sp)
.L8003DA70:
/* 2E270 8003DA70 08002386 */  lh         $v1, 8($s1)
/* 2E274 8003DA74 04000224 */  addiu      $v0, $zero, 4
/* 2E278 8003DA78 1A006214 */  bne        $v1, $v0, .L8003DAE4
/* 2E27C 8003DA7C 21200000 */   addu      $a0, $zero, $zero
/* 2E280 8003DA80 18002286 */  lh         $v0, 0x18($s1)
/* 2E284 8003DA84 00000000 */  nop
/* 2E288 8003DA88 0C004014 */  bnez       $v0, .L8003DABC
/* 2E28C 8003DA8C 02000424 */   addiu     $a0, $zero, 2
/* 2E290 8003DA90 8EFF0524 */  addiu      $a1, $zero, -0x72
/* 2E294 8003DA94 42000624 */  addiu      $a2, $zero, 0x42
/* 2E298 8003DA98 00200724 */  addiu      $a3, $zero, 0x2000
/* 2E29C 8003DA9C 00200324 */  addiu      $v1, $zero, 0x2000
/* 2E2A0 8003DAA0 0180023C */  lui        $v0, %hi(D_80012F14)
/* 2E2A4 8003DAA4 142F4224 */  addiu      $v0, $v0, %lo(D_80012F14)
/* 2E2A8 8003DAA8 1000A3AF */  sw         $v1, 0x10($sp)
/* 2E2AC 8003DAAC 290A010C */  jal        PrintText_800428a4
/* 2E2B0 8003DAB0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E2B4 8003DAB4 B9F60008 */  j          .L8003DAE4
/* 2E2B8 8003DAB8 21200000 */   addu      $a0, $zero, $zero
.L8003DABC:
/* 2E2BC 8003DABC 98FF0524 */  addiu      $a1, $zero, -0x68
/* 2E2C0 8003DAC0 42000624 */  addiu      $a2, $zero, 0x42
/* 2E2C4 8003DAC4 00200724 */  addiu      $a3, $zero, 0x2000
/* 2E2C8 8003DAC8 00200324 */  addiu      $v1, $zero, 0x2000
/* 2E2CC 8003DACC 0180023C */  lui        $v0, %hi(D_80012F24)
/* 2E2D0 8003DAD0 242F4224 */  addiu      $v0, $v0, %lo(D_80012F24)
/* 2E2D4 8003DAD4 1000A3AF */  sw         $v1, 0x10($sp)
/* 2E2D8 8003DAD8 290A010C */  jal        PrintText_800428a4
/* 2E2DC 8003DADC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E2E0 8003DAE0 21200000 */  addu       $a0, $zero, $zero
.L8003DAE4:
/* 2E2E4 8003DAE4 B4FF0524 */  addiu      $a1, $zero, -0x4c
/* 2E2E8 8003DAE8 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2E2EC 8003DAEC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E2F0 8003DAF0 00101024 */  addiu      $s0, $zero, 0x1000
/* 2E2F4 8003DAF4 0180023C */  lui        $v0, %hi(D_80012F34)
/* 2E2F8 8003DAF8 342F4224 */  addiu      $v0, $v0, %lo(D_80012F34)
/* 2E2FC 8003DAFC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E300 8003DB00 290A010C */  jal        PrintText_800428a4
/* 2E304 8003DB04 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E308 8003DB08 21200000 */  addu       $a0, $zero, $zero
/* 2E30C 8003DB0C 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2E310 8003DB10 52000624 */  addiu      $a2, $zero, 0x52
/* 2E314 8003DB14 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E318 8003DB18 0180023C */  lui        $v0, %hi(D_80012F48)
/* 2E31C 8003DB1C 482F4224 */  addiu      $v0, $v0, %lo(D_80012F48)
/* 2E320 8003DB20 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E324 8003DB24 290A010C */  jal        PrintText_800428a4
/* 2E328 8003DB28 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E32C 8003DB2C 21200000 */  addu       $a0, $zero, $zero
/* 2E330 8003DB30 65FF0524 */  addiu      $a1, $zero, -0x9b
/* 2E334 8003DB34 5A000624 */  addiu      $a2, $zero, 0x5a
/* 2E338 8003DB38 00100724 */  addiu      $a3, $zero, 0x1000
/* 2E33C 8003DB3C 0180023C */  lui        $v0, %hi(D_80012F6C)
/* 2E340 8003DB40 6C2F4224 */  addiu      $v0, $v0, %lo(D_80012F6C)
/* 2E344 8003DB44 1000B0AF */  sw         $s0, 0x10($sp)
/* 2E348 8003DB48 290A010C */  jal        PrintText_800428a4
/* 2E34C 8003DB4C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2E350 8003DB50 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 2E354 8003DB54 3800B28F */  lw         $s2, 0x38($sp)
/* 2E358 8003DB58 3400B18F */  lw         $s1, 0x34($sp)
/* 2E35C 8003DB5C 3000B08F */  lw         $s0, 0x30($sp)
/* 2E360 8003DB60 0800E003 */  jr         $ra
/* 2E364 8003DB64 4000BD27 */   addiu     $sp, $sp, 0x40

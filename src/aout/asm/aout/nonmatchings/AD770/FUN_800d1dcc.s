.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d1dcc
/* C25CC 800D1DCC 70FFBD27 */  addiu      $sp, $sp, -0x90
/* C25D0 800D1DD0 8800BEAF */  sw         $fp, 0x88($sp)
/* C25D4 800D1DD4 21F08000 */  addu       $fp, $a0, $zero
/* C25D8 800D1DD8 1000A427 */  addiu      $a0, $sp, 0x10
/* C25DC 800D1DDC 8C00BFAF */  sw         $ra, 0x8c($sp)
/* C25E0 800D1DE0 8400B7AF */  sw         $s7, 0x84($sp)
/* C25E4 800D1DE4 8000B6AF */  sw         $s6, 0x80($sp)
/* C25E8 800D1DE8 7C00B5AF */  sw         $s5, 0x7c($sp)
/* C25EC 800D1DEC 7800B4AF */  sw         $s4, 0x78($sp)
/* C25F0 800D1DF0 7400B3AF */  sw         $s3, 0x74($sp)
/* C25F4 800D1DF4 7000B2AF */  sw         $s2, 0x70($sp)
/* C25F8 800D1DF8 6C00B1AF */  sw         $s1, 0x6c($sp)
/* C25FC 800D1DFC 057C000C */  jal        strcpy
/* C2600 800D1E00 6800B0AF */   sw        $s0, 0x68($sp)
/* C2604 800D1E04 1100B627 */  addiu      $s6, $sp, 0x11
/* C2608 800D1E08 2080123C */  lui        $s2, %hi(D_801FBD10)
/* C260C 800D1E0C 10BD5026 */  addiu      $s0, $s2, %lo(D_801FBD10)
/* C2610 800D1E10 3812138E */  lw         $s3, 0x1238($s0)
/* C2614 800D1E14 1A121126 */  addiu      $s1, $s0, 0x121a
/* C2618 800D1E18 00006292 */  lbu        $v0, ($s3)
/* C261C 800D1E1C 21202002 */  addu       $a0, $s1, $zero
/* C2620 800D1E20 101202A2 */  sb         $v0, 0x1210($s0)
/* C2624 800D1E24 01006692 */  lbu        $a2, 1($s3)
/* C2628 800D1E28 08006526 */  addiu      $a1, $s3, 8
/* C262C 800D1E2C 111206A2 */  sb         $a2, 0x1211($s0)
/* C2630 800D1E30 FF004630 */  andi       $a2, $v0, 0xff
/* C2634 800D1E34 03006392 */  lbu        $v1, 3($s3)
/* C2638 800D1E38 02006292 */  lbu        $v0, 2($s3)
/* C263C 800D1E3C 04006792 */  lbu        $a3, 4($s3)
/* C2640 800D1E40 001A0300 */  sll        $v1, $v1, 8
/* C2644 800D1E44 25104300 */  or         $v0, $v0, $v1
/* C2648 800D1E48 003C0700 */  sll        $a3, $a3, 0x10
/* C264C 800D1E4C 05006392 */  lbu        $v1, 5($s3)
/* C2650 800D1E50 25104700 */  or         $v0, $v0, $a3
/* C2654 800D1E54 001E0300 */  sll        $v1, $v1, 0x18
/* C2658 800D1E58 25104300 */  or         $v0, $v0, $v1
/* C265C 800D1E5C 141202AE */  sw         $v0, 0x1214($s0)
/* C2660 800D1E60 07006392 */  lbu        $v1, 7($s3)
/* C2664 800D1E64 06006292 */  lbu        $v0, 6($s3)
/* C2668 800D1E68 001A0300 */  sll        $v1, $v1, 8
/* C266C 800D1E6C 25104300 */  or         $v0, $v0, $v1
/* C2670 800D1E70 55BB000C */  jal        strncpy
/* C2674 800D1E74 181202A6 */   sh        $v0, 0x1218($s0)
/* C2678 800D1E78 10120392 */  lbu        $v1, 0x1210($s0)
/* C267C 800D1E7C 01000224 */  addiu      $v0, $zero, 1
/* C2680 800D1E80 21187100 */  addu       $v1, $v1, $s1
/* C2684 800D1E84 000060A0 */  sb         $zero, ($v1)
/* C2688 800D1E88 10120592 */  lbu        $a1, 0x1210($s0)
/* C268C 800D1E8C 00000000 */  nop
/* C2690 800D1E90 0100A330 */  andi       $v1, $a1, 1
/* C2694 800D1E94 04006214 */  bne        $v1, $v0, .L800D1EA8
/* C2698 800D1E98 21B84002 */   addu      $s7, $s2, $zero
/* C269C 800D1E9C 21106502 */  addu       $v0, $s3, $a1
/* C26A0 800D1EA0 AC470308 */  j          .L800D1EB0
/* C26A4 800D1EA4 09005324 */   addiu     $s3, $v0, 9
.L800D1EA8:
/* C26A8 800D1EA8 21106502 */  addu       $v0, $s3, $a1
/* C26AC 800D1EAC 08005324 */  addiu      $s3, $v0, 8
.L800D1EB0:
/* C26B0 800D1EB0 02001524 */  addiu      $s5, $zero, 2
/* C26B4 800D1EB4 E9470308 */  j          .L800D1FA4
/* C26B8 800D1EB8 01001424 */   addiu     $s4, $zero, 1
.L800D1EBC:
/* C26BC 800D1EBC 000020A2 */  sb         $zero, ($s1)
/* C26C0 800D1EC0 BC470308 */  j          .L800D1EF0
/* C26C4 800D1EC4 10BD5024 */   addiu     $s0, $v0, -0x42f0
.L800D1EC8:
/* C26C8 800D1EC8 10120592 */  lbu        $a1, 0x1210($s0)
/* C26CC 800D1ECC 01000224 */  addiu      $v0, $zero, 1
/* C26D0 800D1ED0 0100A330 */  andi       $v1, $a1, 1
/* C26D4 800D1ED4 03006214 */  bne        $v1, $v0, .L800D1EE4
/* C26D8 800D1ED8 21106502 */   addu      $v0, $s3, $a1
/* C26DC 800D1EDC BA470308 */  j          .L800D1EE8
/* C26E0 800D1EE0 09005324 */   addiu     $s3, $v0, 9
.L800D1EE4:
/* C26E4 800D1EE4 08005324 */  addiu      $s3, $v0, 8
.L800D1EE8:
/* C26E8 800D1EE8 0100A226 */  addiu      $v0, $s5, 1
/* C26EC 800D1EEC FFFF5530 */  andi       $s5, $v0, 0xffff
.L800D1EF0:
/* C26F0 800D1EF0 00006292 */  lbu        $v0, ($s3)
/* C26F4 800D1EF4 00000000 */  nop
/* C26F8 800D1EF8 05004014 */  bnez       $v0, .L800D1F10
/* C26FC 800D1EFC 101202A2 */   sb        $v0, 0x1210($s0)
/* C2700 800D1F00 3812028E */  lw         $v0, 0x1238($s0)
/* C2704 800D1F04 00000000 */  nop
/* C2708 800D1F08 E1006216 */  bne        $s3, $v0, .L800D2290
/* C270C 800D1F0C F4FF0224 */   addiu     $v0, $zero, -0xc
.L800D1F10:
/* C2710 800D1F10 1A121226 */  addiu      $s2, $s0, 0x121a
/* C2714 800D1F14 21204002 */  addu       $a0, $s2, $zero
/* C2718 800D1F18 01006292 */  lbu        $v0, 1($s3)
/* C271C 800D1F1C 10120692 */  lbu        $a2, 0x1210($s0)
/* C2720 800D1F20 08006526 */  addiu      $a1, $s3, 8
/* C2724 800D1F24 111202A2 */  sb         $v0, 0x1211($s0)
/* C2728 800D1F28 03006392 */  lbu        $v1, 3($s3)
/* C272C 800D1F2C 02006292 */  lbu        $v0, 2($s3)
/* C2730 800D1F30 04006792 */  lbu        $a3, 4($s3)
/* C2734 800D1F34 001A0300 */  sll        $v1, $v1, 8
/* C2738 800D1F38 25104300 */  or         $v0, $v0, $v1
/* C273C 800D1F3C 003C0700 */  sll        $a3, $a3, 0x10
/* C2740 800D1F40 05006392 */  lbu        $v1, 5($s3)
/* C2744 800D1F44 25104700 */  or         $v0, $v0, $a3
/* C2748 800D1F48 001E0300 */  sll        $v1, $v1, 0x18
/* C274C 800D1F4C 25104300 */  or         $v0, $v0, $v1
/* C2750 800D1F50 141202AE */  sw         $v0, 0x1214($s0)
/* C2754 800D1F54 07006392 */  lbu        $v1, 7($s3)
/* C2758 800D1F58 06006292 */  lbu        $v0, 6($s3)
/* C275C 800D1F5C 001A0300 */  sll        $v1, $v1, 8
/* C2760 800D1F60 25104300 */  or         $v0, $v0, $v1
/* C2764 800D1F64 55BB000C */  jal        strncpy
/* C2768 800D1F68 181202A6 */   sh        $v0, 0x1218($s0)
/* C276C 800D1F6C 10120392 */  lbu        $v1, 0x1210($s0)
/* C2770 800D1F70 00000000 */  nop
/* C2774 800D1F74 21187200 */  addu       $v1, $v1, $s2
/* C2778 800D1F78 000060A0 */  sb         $zero, ($v1)
/* C277C 800D1F7C 18120296 */  lhu        $v0, 0x1218($s0)
/* C2780 800D1F80 00000000 */  nop
/* C2784 800D1F84 D0FF5414 */  bne        $v0, $s4, .L800D1EC8
/* C2788 800D1F88 21204002 */   addu      $a0, $s2, $zero
/* C278C 800D1F8C DD5F000C */  jal        strcmp
/* C2790 800D1F90 2128C002 */   addu      $a1, $s6, $zero
/* C2794 800D1F94 CCFF4014 */  bnez       $v0, .L800D1EC8
/* C2798 800D1F98 00000000 */   nop
/* C279C 800D1F9C 21A0A002 */  addu       $s4, $s5, $zero
/* C27A0 800D1FA0 01003626 */  addiu      $s6, $s1, 1
.L800D1FA4:
/* C27A4 800D1FA4 2120C002 */  addu       $a0, $s6, $zero
/* C27A8 800D1FA8 B04A030C */  jal        FUN_800d2ac0
/* C27AC 800D1FAC 2F000524 */   addiu     $a1, $zero, 0x2f
/* C27B0 800D1FB0 21884000 */  addu       $s1, $v0, $zero
/* C27B4 800D1FB4 C1FF2016 */  bnez       $s1, .L800D1EBC
/* C27B8 800D1FB8 2080023C */   lui       $v0, 0x8020
/* C27BC 800D1FBC 2120C002 */  addu       $a0, $s6, $zero
/* C27C0 800D1FC0 B04A030C */  jal        FUN_800d2ac0
/* C27C4 800D1FC4 3B000524 */   addiu     $a1, $zero, 0x3b
/* C27C8 800D1FC8 21884000 */  addu       $s1, $v0, $zero
/* C27CC 800D1FCC 02002012 */  beqz       $s1, .L800D1FD8
/* C27D0 800D1FD0 10BDE726 */   addiu     $a3, $s7, -0x42f0
/* C27D4 800D1FD4 000020A2 */  sb         $zero, ($s1)
.L800D1FD8:
/* C27D8 800D1FD8 1112E290 */  lbu        $v0, 0x1211($a3)
/* C27DC 800D1FDC 00000000 */  nop
/* C27E0 800D1FE0 AB004014 */  bnez       $v0, .L800D2290
/* C27E4 800D1FE4 F5FF0224 */   addiu     $v0, $zero, -0xb
/* C27E8 800D1FE8 4412E28C */  lw         $v0, 0x1244($a3)
/* C27EC 800D1FEC 1412E68C */  lw         $a2, 0x1214($a3)
/* C27F0 800D1FF0 00000000 */  nop
/* C27F4 800D1FF4 41004610 */  beq        $v0, $a2, .L800D20FC
/* C27F8 800D1FF8 10BDE226 */   addiu     $v0, $s7, -0x42f0
/* C27FC 800D1FFC 3412E28C */  lw         $v0, 0x1234($a3)
/* C2800 800D2000 00000000 */  nop
/* C2804 800D2004 03004104 */  bgez       $v0, .L800D2014
/* C2808 800D2008 C3420200 */   sra       $t0, $v0, 0xb
/* C280C 800D200C FF074224 */  addiu      $v0, $v0, 0x7ff
/* C2810 800D2010 C3420200 */  sra        $t0, $v0, 0xb
.L800D2014:
/* C2814 800D2014 5800A527 */  addiu      $a1, $sp, 0x58
/* C2818 800D2018 DF11E290 */  lbu        $v0, 0x11df($a3)
/* C281C 800D201C 3C12E98C */  lw         $t1, 0x123c($a3)
/* C2820 800D2020 1D004014 */  bnez       $v0, .L800D2098
/* C2824 800D2024 FBFF0224 */   addiu     $v0, $zero, -5
/* C2828 800D2028 21200000 */  addu       $a0, $zero, $zero
/* C282C 800D202C A8000224 */  addiu      $v0, $zero, 0xa8
/* C2830 800D2030 5800A2A3 */  sb         $v0, 0x58($sp)
/* C2834 800D2034 02160600 */  srl        $v0, $a2, 0x18
/* C2838 800D2038 021C0600 */  srl        $v1, $a2, 0x10
/* C283C 800D203C 5A00A2A3 */  sb         $v0, 0x5a($sp)
/* C2840 800D2040 02120600 */  srl        $v0, $a2, 8
/* C2844 800D2044 5C00A2A3 */  sb         $v0, 0x5c($sp)
/* C2848 800D2048 02160800 */  srl        $v0, $t0, 0x18
/* C284C 800D204C 5B00A3A3 */  sb         $v1, 0x5b($sp)
/* C2850 800D2050 021C0800 */  srl        $v1, $t0, 0x10
/* C2854 800D2054 5E00A2A3 */  sb         $v0, 0x5e($sp)
/* C2858 800D2058 02120800 */  srl        $v0, $t0, 8
/* C285C 800D205C 6000A2A3 */  sb         $v0, 0x60($sp)
/* C2860 800D2060 02000224 */  addiu      $v0, $zero, 2
/* C2864 800D2064 5900A0A3 */  sb         $zero, 0x59($sp)
/* C2868 800D2068 5D00A6A3 */  sb         $a2, 0x5d($sp)
/* C286C 800D206C 5F00A3A3 */  sb         $v1, 0x5f($sp)
/* C2870 800D2070 6100A8A3 */  sb         $t0, 0x61($sp)
/* C2874 800D2074 6300A0A3 */  sb         $zero, 0x63($sp)
/* C2878 800D2078 6200A0A3 */  sb         $zero, 0x62($sp)
/* C287C 800D207C DF11E2A0 */  sb         $v0, 0x11df($a3)
/* C2880 800D2080 C0120800 */  sll        $v0, $t0, 0xb
/* C2884 800D2084 E011E9AC */  sw         $t1, 0x11e0($a3)
/* C2888 800D2088 E411E2AC */  sw         $v0, 0x11e4($a3)
/* C288C 800D208C E811E0AC */  sw         $zero, 0x11e8($a3)
/* C2890 800D2090 AC41030C */  jal        FUN_800d06b0
/* C2894 800D2094 00000000 */   nop
.L800D2098:
/* C2898 800D2098 7D004014 */  bnez       $v0, .L800D2290
/* C289C 800D209C 00000000 */   nop
/* C28A0 800D20A0 CD6B000C */  jal        VSync
/* C28A4 800D20A4 FFFF0424 */   addiu     $a0, $zero, -1
/* C28A8 800D20A8 21804000 */  addu       $s0, $v0, $zero
/* C28AC 800D20AC 35480308 */  j          .L800D20D4
/* C28B0 800D20B0 F6FF1124 */   addiu     $s1, $zero, -0xa
.L800D20B4:
/* C28B4 800D20B4 CD6B000C */  jal        VSync
/* C28B8 800D20B8 FFFF0424 */   addiu     $a0, $zero, -1
/* C28BC 800D20BC 23105000 */  subu       $v0, $v0, $s0
/* C28C0 800D20C0 E1014228 */  slti       $v0, $v0, 0x1e1
/* C28C4 800D20C4 72004010 */  beqz       $v0, .L800D2290
/* C28C8 800D20C8 F8FF0224 */   addiu     $v0, $zero, -8
/* C28CC 800D20CC 4A70000C */  jal        FUN_8001c128
/* C28D0 800D20D0 00000000 */   nop
.L800D20D4:
/* C28D4 800D20D4 9E44030C */  jal        FUN_800d1278
/* C28D8 800D20D8 00000000 */   nop
/* C28DC 800D20DC F5FF5110 */  beq        $v0, $s1, .L800D20B4
/* C28E0 800D20E0 00000000 */   nop
/* C28E4 800D20E4 6A004014 */  bnez       $v0, .L800D2290
/* C28E8 800D20E8 10BDE326 */   addiu     $v1, $s7, -0x42f0
/* C28EC 800D20EC 1412628C */  lw         $v0, 0x1214($v1)
/* C28F0 800D20F0 00000000 */  nop
/* C28F4 800D20F4 441262AC */  sw         $v0, 0x1244($v1)
/* C28F8 800D20F8 10BDE226 */  addiu      $v0, $s7, -0x42f0
.L800D20FC:
/* C28FC 800D20FC 3C12538C */  lw         $s3, 0x123c($v0)
.L800D2100:
/* C2900 800D2100 00000000 */  nop
/* C2904 800D2104 00006392 */  lbu        $v1, ($s3)
/* C2908 800D2108 10BDF026 */  addiu      $s0, $s7, -0x42f0
/* C290C 800D210C EC1103A2 */  sb         $v1, 0x11ec($s0)
/* C2910 800D2110 01006292 */  lbu        $v0, 1($s3)
/* C2914 800D2114 00000000 */  nop
/* C2918 800D2118 ED1102A2 */  sb         $v0, 0x11ed($s0)
/* C291C 800D211C 03006392 */  lbu        $v1, 3($s3)
/* C2920 800D2120 02006292 */  lbu        $v0, 2($s3)
/* C2924 800D2124 04006492 */  lbu        $a0, 4($s3)
/* C2928 800D2128 001A0300 */  sll        $v1, $v1, 8
/* C292C 800D212C 25104300 */  or         $v0, $v0, $v1
/* C2930 800D2130 00240400 */  sll        $a0, $a0, 0x10
/* C2934 800D2134 05006392 */  lbu        $v1, 5($s3)
/* C2938 800D2138 25104400 */  or         $v0, $v0, $a0
/* C293C 800D213C 001E0300 */  sll        $v1, $v1, 0x18
/* C2940 800D2140 25104300 */  or         $v0, $v0, $v1
/* C2944 800D2144 F01102AE */  sw         $v0, 0x11f0($s0)
/* C2948 800D2148 0B006392 */  lbu        $v1, 0xb($s3)
/* C294C 800D214C 0A006292 */  lbu        $v0, 0xa($s3)
/* C2950 800D2150 0C006492 */  lbu        $a0, 0xc($s3)
/* C2954 800D2154 001A0300 */  sll        $v1, $v1, 8
/* C2958 800D2158 25104300 */  or         $v0, $v0, $v1
/* C295C 800D215C 00240400 */  sll        $a0, $a0, 0x10
/* C2960 800D2160 0D006392 */  lbu        $v1, 0xd($s3)
/* C2964 800D2164 25104400 */  or         $v0, $v0, $a0
/* C2968 800D2168 001E0300 */  sll        $v1, $v1, 0x18
/* C296C 800D216C 25104300 */  or         $v0, $v0, $v1
/* C2970 800D2170 F41102AE */  sw         $v0, 0x11f4($s0)
/* C2974 800D2174 19006392 */  lbu        $v1, 0x19($s3)
/* C2978 800D2178 FD111226 */  addiu      $s2, $s0, 0x11fd
/* C297C 800D217C F81103A2 */  sb         $v1, 0x11f8($s0)
/* C2980 800D2180 1A006292 */  lbu        $v0, 0x1a($s3)
/* C2984 800D2184 21006526 */  addiu      $a1, $s3, 0x21
/* C2988 800D2188 F91102A2 */  sb         $v0, 0x11f9($s0)
/* C298C 800D218C 1D006392 */  lbu        $v1, 0x1d($s3)
/* C2990 800D2190 1C006292 */  lbu        $v0, 0x1c($s3)
/* C2994 800D2194 001A0300 */  sll        $v1, $v1, 8
/* C2998 800D2198 25104300 */  or         $v0, $v0, $v1
/* C299C 800D219C FA1102A6 */  sh         $v0, 0x11fa($s0)
/* C29A0 800D21A0 20006292 */  lbu        $v0, 0x20($s3)
/* C29A4 800D21A4 21204002 */  addu       $a0, $s2, $zero
/* C29A8 800D21A8 FC1102A2 */  sb         $v0, 0x11fc($s0)
/* C29AC 800D21AC 55BB000C */  jal        strncpy
/* C29B0 800D21B0 FF004630 */   andi      $a2, $v0, 0xff
/* C29B4 800D21B4 21204002 */  addu       $a0, $s2, $zero
/* C29B8 800D21B8 FC110292 */  lbu        $v0, 0x11fc($s0)
/* C29BC 800D21BC 3B000524 */  addiu      $a1, $zero, 0x3b
/* C29C0 800D21C0 21105200 */  addu       $v0, $v0, $s2
/* C29C4 800D21C4 B04A030C */  jal        FUN_800d2ac0
/* C29C8 800D21C8 000040A0 */   sb        $zero, ($v0)
/* C29CC 800D21CC 21884000 */  addu       $s1, $v0, $zero
/* C29D0 800D21D0 02002012 */  beqz       $s1, .L800D21DC
/* C29D4 800D21D4 21204002 */   addu      $a0, $s2, $zero
/* C29D8 800D21D8 000020A2 */  sb         $zero, ($s1)
.L800D21DC:
/* C29DC 800D21DC DD5F000C */  jal        strcmp
/* C29E0 800D21E0 2128C002 */   addu      $a1, $s6, $zero
/* C29E4 800D21E4 11004014 */  bnez       $v0, .L800D222C
/* C29E8 800D21E8 00000000 */   nop
/* C29EC 800D21EC ED110292 */  lbu        $v0, 0x11ed($s0)
/* C29F0 800D21F0 00000000 */  nop
/* C29F4 800D21F4 26004014 */  bnez       $v0, .L800D2290
/* C29F8 800D21F8 F5FF0224 */   addiu     $v0, $zero, -0xb
/* C29FC 800D21FC F8110292 */  lbu        $v0, 0x11f8($s0)
/* C2A00 800D2200 00000000 */  nop
/* C2A04 800D2204 02004230 */  andi       $v0, $v0, 2
/* C2A08 800D2208 21004014 */  bnez       $v0, .L800D2290
/* C2A0C 800D220C F5FF0224 */   addiu     $v0, $zero, -0xb
/* C2A10 800D2210 F011028E */  lw         $v0, 0x11f0($s0)
/* C2A14 800D2214 00000000 */  nop
/* C2A18 800D2218 0000C2AF */  sw         $v0, ($fp)
/* C2A1C 800D221C F411038E */  lw         $v1, 0x11f4($s0)
/* C2A20 800D2220 21100000 */  addu       $v0, $zero, $zero
/* C2A24 800D2224 A4480308 */  j          .L800D2290
/* C2A28 800D2228 0400C3AF */   sw        $v1, 4($fp)
.L800D222C:
/* C2A2C 800D222C EC110392 */  lbu        $v1, 0x11ec($s0)
/* C2A30 800D2230 4012048E */  lw         $a0, 0x1240($s0)
/* C2A34 800D2234 21986302 */  addu       $s3, $s3, $v1
/* C2A38 800D2238 2B106402 */  sltu       $v0, $s3, $a0
/* C2A3C 800D223C 14004010 */  beqz       $v0, .L800D2290
/* C2A40 800D2240 F4FF0224 */   addiu     $v0, $zero, -0xc
/* C2A44 800D2244 00006292 */  lbu        $v0, ($s3)
/* C2A48 800D2248 00000000 */  nop
/* C2A4C 800D224C ACFF4014 */  bnez       $v0, .L800D2100
/* C2A50 800D2250 21A00000 */   addu      $s4, $zero, $zero
/* C2A54 800D2254 01007326 */  addiu      $s3, $s3, 1
.L800D2258:
/* C2A58 800D2258 2B106402 */  sltu       $v0, $s3, $a0
/* C2A5C 800D225C 0B004010 */  beqz       $v0, .L800D228C
/* C2A60 800D2260 01008226 */   addiu     $v0, $s4, 1
/* C2A64 800D2264 FFFF5430 */  andi       $s4, $v0, 0xffff
/* C2A68 800D2268 3100832E */  sltiu      $v1, $s4, 0x31
/* C2A6C 800D226C 08006010 */  beqz       $v1, .L800D2290
/* C2A70 800D2270 F4FF0224 */   addiu     $v0, $zero, -0xc
/* C2A74 800D2274 00006292 */  lbu        $v0, ($s3)
/* C2A78 800D2278 00000000 */  nop
/* C2A7C 800D227C F6FF4010 */  beqz       $v0, .L800D2258
/* C2A80 800D2280 01007326 */   addiu     $s3, $s3, 1
/* C2A84 800D2284 40480308 */  j          .L800D2100
/* C2A88 800D2288 FFFF7326 */   addiu     $s3, $s3, -1
.L800D228C:
/* C2A8C 800D228C F4FF0224 */  addiu      $v0, $zero, -0xc
.L800D2290:
/* C2A90 800D2290 8C00BF8F */  lw         $ra, 0x8c($sp)
/* C2A94 800D2294 8800BE8F */  lw         $fp, 0x88($sp)
/* C2A98 800D2298 8400B78F */  lw         $s7, 0x84($sp)
/* C2A9C 800D229C 8000B68F */  lw         $s6, 0x80($sp)
/* C2AA0 800D22A0 7C00B58F */  lw         $s5, 0x7c($sp)
/* C2AA4 800D22A4 7800B48F */  lw         $s4, 0x78($sp)
/* C2AA8 800D22A8 7400B38F */  lw         $s3, 0x74($sp)
/* C2AAC 800D22AC 7000B28F */  lw         $s2, 0x70($sp)
/* C2AB0 800D22B0 6C00B18F */  lw         $s1, 0x6c($sp)
/* C2AB4 800D22B4 6800B08F */  lw         $s0, 0x68($sp)
/* C2AB8 800D22B8 0800E003 */  jr         $ra
/* C2ABC 800D22BC 9000BD27 */   addiu     $sp, $sp, 0x90

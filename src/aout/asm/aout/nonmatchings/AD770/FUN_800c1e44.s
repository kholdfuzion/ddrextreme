.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1e44
/* B2644 800C1E44 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B2648 800C1E48 1F80023C */  lui        $v0, %hi(D_801F71C0)
/* B264C 800C1E4C 2400B5AF */  sw         $s5, 0x24($sp)
/* B2650 800C1E50 C0715524 */  addiu      $s5, $v0, %lo(D_801F71C0)
/* B2654 800C1E54 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B2658 800C1E58 2800B6AF */  sw         $s6, 0x28($sp)
/* B265C 800C1E5C 2000B4AF */  sw         $s4, 0x20($sp)
/* B2660 800C1E60 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B2664 800C1E64 1800B2AF */  sw         $s2, 0x18($sp)
/* B2668 800C1E68 1400B1AF */  sw         $s1, 0x14($sp)
/* B266C 800C1E6C 1000B0AF */  sw         $s0, 0x10($sp)
/* B2670 800C1E70 0F01A292 */  lbu        $v0, 0x10f($s5)
/* B2674 800C1E74 00000000 */  nop
/* B2678 800C1E78 B9004014 */  bnez       $v0, .L800C2160
/* B267C 800C1E7C 00000000 */   nop
/* B2680 800C1E80 0800A28E */  lw         $v0, 8($s5)
/* B2684 800C1E84 00000000 */  nop
/* B2688 800C1E88 B500401C */  bgtz       $v0, .L800C2160
/* B268C 800C1E8C 00000000 */   nop
/* B2690 800C1E90 0D01A492 */  lbu        $a0, 0x10d($s5)
/* B2694 800C1E94 00000000 */  nop
/* B2698 800C1E98 B1008010 */  beqz       $a0, .L800C2160
/* B269C 800C1E9C 01001024 */   addiu     $s0, $zero, 1
/* B26A0 800C1EA0 21B00002 */  addu       $s6, $s0, $zero
/* B26A4 800C1EA4 FFFF1324 */  addiu      $s3, $zero, -1
.L800C1EA8:
/* B26A8 800C1EA8 0E01A292 */  lbu        $v0, 0x10e($s5)
/* B26AC 800C1EAC 00000000 */  nop
/* B26B0 800C1EB0 21105000 */  addu       $v0, $v0, $s0
/* B26B4 800C1EB4 1A004400 */  div        $zero, $v0, $a0
/* B26B8 800C1EB8 02008014 */  bnez       $a0, .L800C1EC4
/* B26BC 800C1EBC 00000000 */   nop
/* B26C0 800C1EC0 0D000700 */  break      7
.L800C1EC4:
/* B26C4 800C1EC4 FFFF0124 */   addiu     $at, $zero, -1
/* B26C8 800C1EC8 04008114 */  bne        $a0, $at, .L800C1EDC
/* B26CC 800C1ECC 0080013C */   lui       $at, 0x8000
/* B26D0 800C1ED0 02004114 */  bne        $v0, $at, .L800C1EDC
/* B26D4 800C1ED4 00000000 */   nop
/* B26D8 800C1ED8 0D000600 */  break      6
.L800C1EDC:
/* B26DC 800C1EDC 10A00000 */   mfhi      $s4
/* B26E0 800C1EE0 00000000 */  nop
/* B26E4 800C1EE4 40101400 */  sll        $v0, $s4, 1
/* B26E8 800C1EE8 21105400 */  addu       $v0, $v0, $s4
/* B26EC 800C1EEC 00190200 */  sll        $v1, $v0, 4
/* B26F0 800C1EF0 23186200 */  subu       $v1, $v1, $v0
/* B26F4 800C1EF4 0000A28E */  lw         $v0, ($s5)
/* B26F8 800C1EF8 80180300 */  sll        $v1, $v1, 2
/* B26FC 800C1EFC 21904300 */  addu       $s2, $v0, $v1
/* B2700 800C1F00 0000458E */  lw         $a1, ($s2)
/* B2704 800C1F04 00000000 */  nop
/* B2708 800C1F08 0500A014 */  bnez       $a1, .L800C1F20
/* B270C 800C1F0C 00000000 */   nop
/* B2710 800C1F10 0800428E */  lw         $v0, 8($s2)
/* B2714 800C1F14 00000000 */  nop
/* B2718 800C1F18 8C004010 */  beqz       $v0, .L800C214C
/* B271C 800C1F1C 00000000 */   nop
.L800C1F20:
/* B2720 800C1F20 7A004292 */  lbu        $v0, 0x7a($s2)
/* B2724 800C1F24 00000000 */  nop
/* B2728 800C1F28 0A004014 */  bnez       $v0, .L800C1F54
/* B272C 800C1F2C FFFF0724 */   addiu     $a3, $zero, -1
/* B2730 800C1F30 21204002 */  addu       $a0, $s2, $zero
/* B2734 800C1F34 1F0A030C */  jal        FUN_800c287c
/* B2738 800C1F38 FFFF0624 */   addiu     $a2, $zero, -1
/* B273C 800C1F3C 08004426 */  addiu      $a0, $s2, 8
/* B2740 800C1F40 0800458E */  lw         $a1, 8($s2)
/* B2744 800C1F44 1F0A030C */  jal        FUN_800c287c
/* B2748 800C1F48 FFFF0624 */   addiu     $a2, $zero, -1
/* B274C 800C1F4C 53080308 */  j          .L800C214C
/* B2750 800C1F50 00000000 */   nop
.L800C1F54:
/* B2754 800C1F54 21300000 */  addu       $a2, $zero, $zero
/* B2758 800C1F58 0800508E */  lw         $s0, 8($s2)
/* B275C 800C1F5C 00000000 */  nop
/* B2760 800C1F60 09000012 */  beqz       $s0, .L800C1F88
/* B2764 800C1F64 2188C000 */   addu      $s1, $a2, $zero
.L800C1F68:
/* B2768 800C1F68 30000792 */  lbu        $a3, 0x30($s0)
/* B276C 800C1F6C 1A000292 */  lbu        $v0, 0x1a($s0)
/* B2770 800C1F70 2A000392 */  lbu        $v1, 0x2a($s0)
/* B2774 800C1F74 0000108E */  lw         $s0, ($s0)
/* B2778 800C1F78 21882202 */  addu       $s1, $s1, $v0
/* B277C 800C1F7C 0100C224 */  addiu      $v0, $a2, 1
/* B2780 800C1F80 F9FF0016 */  bnez       $s0, .L800C1F68
/* B2784 800C1F84 21304300 */   addu      $a2, $v0, $v1
.L800C1F88:
/* B2788 800C1F88 4400F610 */  beq        $a3, $s6, .L800C209C
/* B278C 800C1F8C 00000000 */   nop
/* B2790 800C1F90 0000508E */  lw         $s0, ($s2)
/* B2794 800C1F94 00000000 */  nop
/* B2798 800C1F98 29000012 */  beqz       $s0, .L800C2040
/* B279C 800C1F9C 21400000 */   addu      $t0, $zero, $zero
.L800C1FA0:
/* B27A0 800C1FA0 30000292 */  lbu        $v0, 0x30($s0)
/* B27A4 800C1FA4 00000000 */  nop
/* B27A8 800C1FA8 03005614 */  bne        $v0, $s6, .L800C1FB8
/* B27AC 800C1FAC 00000000 */   nop
/* B27B0 800C1FB0 2300F314 */  bne        $a3, $s3, .L800C2040
/* B27B4 800C1FB4 00000000 */   nop
.L800C1FB8:
/* B27B8 800C1FB8 30000792 */  lbu        $a3, 0x30($s0)
/* B27BC 800C1FBC 00000000 */  nop
/* B27C0 800C1FC0 0200E228 */  slti       $v0, $a3, 2
/* B27C4 800C1FC4 10004014 */  bnez       $v0, .L800C2008
/* B27C8 800C1FC8 21280002 */   addu      $a1, $s0, $zero
.L800C1FCC:
/* B27CC 800C1FCC 1A00A290 */  lbu        $v0, 0x1a($a1)
/* B27D0 800C1FD0 0100C324 */  addiu      $v1, $a2, 1
/* B27D4 800C1FD4 21882202 */  addu       $s1, $s1, $v0
/* B27D8 800C1FD8 2A00A290 */  lbu        $v0, 0x2a($a1)
/* B27DC 800C1FDC 0000A48C */  lw         $a0, ($a1)
/* B27E0 800C1FE0 00000000 */  nop
/* B27E4 800C1FE4 0D008010 */  beqz       $a0, .L800C201C
/* B27E8 800C1FE8 21306200 */   addu      $a2, $v1, $v0
/* B27EC 800C1FEC 21288000 */  addu       $a1, $a0, $zero
/* B27F0 800C1FF0 3000A290 */  lbu        $v0, 0x30($a1)
/* B27F4 800C1FF4 00000000 */  nop
/* B27F8 800C1FF8 F4FFE210 */  beq        $a3, $v0, .L800C1FCC
/* B27FC 800C1FFC FF00222A */   slti      $v0, $s1, 0xff
/* B2800 800C2000 08080308 */  j          .L800C2020
/* B2804 800C2004 00000000 */   nop
.L800C2008:
/* B2808 800C2008 1A000292 */  lbu        $v0, 0x1a($s0)
/* B280C 800C200C 2A000392 */  lbu        $v1, 0x2a($s0)
/* B2810 800C2010 21882202 */  addu       $s1, $s1, $v0
/* B2814 800C2014 0100C224 */  addiu      $v0, $a2, 1
/* B2818 800C2018 21304300 */  addu       $a2, $v0, $v1
.L800C201C:
/* B281C 800C201C FF00222A */  slti       $v0, $s1, 0xff
.L800C2020:
/* B2820 800C2020 07004010 */  beqz       $v0, .L800C2040
/* B2824 800C2024 FF00C228 */   slti      $v0, $a2, 0xff
/* B2828 800C2028 05004010 */  beqz       $v0, .L800C2040
/* B282C 800C202C 00000000 */   nop
/* B2830 800C2030 0000B08C */  lw         $s0, ($a1)
/* B2834 800C2034 00000000 */  nop
/* B2838 800C2038 D9FF0016 */  bnez       $s0, .L800C1FA0
/* B283C 800C203C 2140A000 */   addu      $t0, $a1, $zero
.L800C2040:
/* B2840 800C2040 16000011 */  beqz       $t0, .L800C209C
/* B2844 800C2044 00000000 */   nop
/* B2848 800C2048 0800428E */  lw         $v0, 8($s2)
/* B284C 800C204C 00000000 */  nop
/* B2850 800C2050 05004010 */  beqz       $v0, .L800C2068
/* B2854 800C2054 00000000 */   nop
/* B2858 800C2058 0C00438E */  lw         $v1, 0xc($s2)
/* B285C 800C205C 0000428E */  lw         $v0, ($s2)
/* B2860 800C2060 1D080308 */  j          .L800C2074
/* B2864 800C2064 000062AC */   sw        $v0, ($v1)
.L800C2068:
/* B2868 800C2068 0000428E */  lw         $v0, ($s2)
/* B286C 800C206C 00000000 */  nop
/* B2870 800C2070 080042AE */  sw         $v0, 8($s2)
.L800C2074:
/* B2874 800C2074 0C0048AE */  sw         $t0, 0xc($s2)
/* B2878 800C2078 0000028D */  lw         $v0, ($t0)
/* B287C 800C207C 00000000 */  nop
/* B2880 800C2080 000042AE */  sw         $v0, ($s2)
/* B2884 800C2084 000000AD */  sw         $zero, ($t0)
/* B2888 800C2088 0000428E */  lw         $v0, ($s2)
/* B288C 800C208C 00000000 */  nop
/* B2890 800C2090 02004014 */  bnez       $v0, .L800C209C
/* B2894 800C2094 00000000 */   nop
/* B2898 800C2098 040040AE */  sw         $zero, 4($s2)
.L800C209C:
/* B289C 800C209C 0800438E */  lw         $v1, 8($s2)
/* B28A0 800C20A0 00000000 */  nop
/* B28A4 800C20A4 0000628C */  lw         $v0, ($v1)
/* B28A8 800C20A8 00000000 */  nop
/* B28AC 800C20AC 05004014 */  bnez       $v0, .L800C20C4
/* B28B0 800C20B0 0C00B326 */   addiu     $s3, $s5, 0xc
/* B28B4 800C20B4 0C00738C */  lw         $s3, 0xc($v1)
/* B28B8 800C20B8 1A007190 */  lbu        $s1, 0x1a($v1)
/* B28BC 800C20BC 3E080308 */  j          .L800C20F8
/* B28C0 800C20C0 0F01B6A2 */   sb        $s6, 0x10f($s5)
.L800C20C4:
/* B28C4 800C20C4 21806000 */  addu       $s0, $v1, $zero
/* B28C8 800C20C8 0A000012 */  beqz       $s0, .L800C20F4
/* B28CC 800C20CC 21880000 */   addu      $s1, $zero, $zero
.L800C20D0:
/* B28D0 800C20D0 0C00058E */  lw         $a1, 0xc($s0)
/* B28D4 800C20D4 1A000692 */  lbu        $a2, 0x1a($s0)
/* B28D8 800C20D8 BD6B000C */  jal        memcpy
/* B28DC 800C20DC 21207102 */   addu      $a0, $s3, $s1
/* B28E0 800C20E0 1A000292 */  lbu        $v0, 0x1a($s0)
/* B28E4 800C20E4 0000108E */  lw         $s0, ($s0)
/* B28E8 800C20E8 00000000 */  nop
/* B28EC 800C20EC F8FF0016 */  bnez       $s0, .L800C20D0
/* B28F0 800C20F0 21882202 */   addu      $s1, $s1, $v0
.L800C20F4:
/* B28F4 800C20F4 0F01B6A2 */  sb         $s6, 0x10f($s5)
.L800C20F8:
/* B28F8 800C20F8 7C00428E */  lw         $v0, 0x7c($s2)
/* B28FC 800C20FC FFFF0424 */  addiu      $a0, $zero, -1
/* B2900 800C2100 01004224 */  addiu      $v0, $v0, 1
/* B2904 800C2104 7C0042AE */  sw         $v0, 0x7c($s2)
/* B2908 800C2108 CD6B000C */  jal        VSync
/* B290C 800C210C 0E01B4A2 */   sb        $s4, 0x10e($s5)
/* B2910 800C2110 01008426 */  addiu      $a0, $s4, 1
/* B2914 800C2114 21286002 */  addu       $a1, $s3, $zero
/* B2918 800C2118 21302002 */  addu       $a2, $s1, $zero
/* B291C 800C211C E905030C */  jal        FUN_800c17a4
/* B2920 800C2120 0400A2AE */   sw        $v0, 4($s5)
/* B2924 800C2124 0E004010 */  beqz       $v0, .L800C2160
/* B2928 800C2128 00000000 */   nop
/* B292C 800C212C A400428E */  lw         $v0, 0xa4($s2)
/* B2930 800C2130 21200000 */  addu       $a0, $zero, $zero
/* B2934 800C2134 01004224 */  addiu      $v0, $v0, 1
/* B2938 800C2138 7E05030C */  jal        FUN_800c15f8
/* B293C 800C213C A40042AE */   sw        $v0, 0xa4($s2)
/* B2940 800C2140 02000224 */  addiu      $v0, $zero, 2
/* B2944 800C2144 58080308 */  j          .L800C2160
/* B2948 800C2148 0F01A2A2 */   sb        $v0, 0x10f($s5)
.L800C214C:
/* B294C 800C214C 0D01A492 */  lbu        $a0, 0x10d($s5)
/* B2950 800C2150 01001026 */  addiu      $s0, $s0, 1
/* B2954 800C2154 2A109000 */  slt        $v0, $a0, $s0
/* B2958 800C2158 53FF4010 */  beqz       $v0, .L800C1EA8
/* B295C 800C215C 00000000 */   nop
.L800C2160:
/* B2960 800C2160 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B2964 800C2164 2800B68F */  lw         $s6, 0x28($sp)
/* B2968 800C2168 2400B58F */  lw         $s5, 0x24($sp)
/* B296C 800C216C 2000B48F */  lw         $s4, 0x20($sp)
/* B2970 800C2170 1C00B38F */  lw         $s3, 0x1c($sp)
/* B2974 800C2174 1800B28F */  lw         $s2, 0x18($sp)
/* B2978 800C2178 1400B18F */  lw         $s1, 0x14($sp)
/* B297C 800C217C 1000B08F */  lw         $s0, 0x10($sp)
/* B2980 800C2180 0800E003 */  jr         $ra
/* B2984 800C2184 3000BD27 */   addiu     $sp, $sp, 0x30

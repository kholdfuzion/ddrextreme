.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008a74c
/* 7AF4C 8008A74C 20FFBD27 */  addiu      $sp, $sp, -0xe0
/* 7AF50 8008A750 F000A28F */  lw         $v0, 0xf0($sp)
/* 7AF54 8008A754 003B0700 */  sll        $a3, $a3, 0xc
/* 7AF58 8008A758 1A00E200 */  div        $zero, $a3, $v0
/* 7AF5C 8008A75C 02004014 */  bnez       $v0, .L8008A768
/* 7AF60 8008A760 00000000 */   nop
/* 7AF64 8008A764 0D000700 */  break      7
.L8008A768:
/* 7AF68 8008A768 FFFF0124 */   addiu     $at, $zero, -1
/* 7AF6C 8008A76C 04004114 */  bne        $v0, $at, .L8008A780
/* 7AF70 8008A770 0080013C */   lui       $at, 0x8000
/* 7AF74 8008A774 0200E114 */  bne        $a3, $at, .L8008A780
/* 7AF78 8008A778 00000000 */   nop
/* 7AF7C 8008A77C 0D000600 */  break      6
.L8008A780:
/* 7AF80 8008A780 12400000 */   mflo      $t0
/* 7AF84 8008A784 CC00B5AF */  sw         $s5, 0xcc($sp)
/* 7AF88 8008A788 21A8C000 */  addu       $s5, $a2, $zero
/* 7AF8C 8008A78C 30FD0624 */  addiu      $a2, $zero, -0x2d0
/* 7AF90 8008A790 DC00BFAF */  sw         $ra, 0xdc($sp)
/* 7AF94 8008A794 D800BEAF */  sw         $fp, 0xd8($sp)
/* 7AF98 8008A798 D400B7AF */  sw         $s7, 0xd4($sp)
/* 7AF9C 8008A79C D000B6AF */  sw         $s6, 0xd0($sp)
/* 7AFA0 8008A7A0 C800B4AF */  sw         $s4, 0xc8($sp)
/* 7AFA4 8008A7A4 C400B3AF */  sw         $s3, 0xc4($sp)
/* 7AFA8 8008A7A8 C000B2AF */  sw         $s2, 0xc0($sp)
/* 7AFAC 8008A7AC BC00B1AF */  sw         $s1, 0xbc($sp)
/* 7AFB0 8008A7B0 B800B0AF */  sw         $s0, 0xb8($sp)
/* 7AFB4 8008A7B4 E000A4AF */  sw         $a0, 0xe0($sp)
/* 7AFB8 8008A7B8 E400A5AF */  sw         $a1, 0xe4($sp)
/* 7AFBC 8008A7BC 01100229 */  slti       $v0, $t0, 0x1001
/* 7AFC0 8008A7C0 01004238 */  xori       $v0, $v0, 1
/* 7AFC4 8008A7C4 1B004010 */  beqz       $v0, .L8008A834
/* 7AFC8 8008A7C8 9C00A8AF */   sw        $t0, 0x9c($sp)
/* 7AFCC 8008A7CC 01180229 */  slti       $v0, $t0, 0x1801
/* 7AFD0 8008A7D0 06004010 */  beqz       $v0, .L8008A7EC
/* 7AFD4 8008A7D4 00101024 */   addiu     $s0, $zero, 0x1000
/* 7AFD8 8008A7D8 2A101001 */  slt        $v0, $t0, $s0
/* 7AFDC 8008A7DC 05004014 */  bnez       $v0, .L8008A7F4
/* 7AFE0 8008A7E0 00F01026 */   addiu     $s0, $s0, -0x1000
/* 7AFE4 8008A7E4 FC290208 */  j          .L8008A7F0
/* 7AFE8 8008A7E8 21800001 */   addu      $s0, $t0, $zero
.L8008A7EC:
/* 7AFEC 8008A7EC 00181024 */  addiu      $s0, $zero, 0x1800
.L8008A7F0:
/* 7AFF0 8008A7F0 00F01026 */  addiu      $s0, $s0, -0x1000
.L8008A7F4:
/* 7AFF4 8008A7F4 3001C224 */  addiu      $v0, $a2, 0x130
/* 7AFF8 8008A7F8 18005000 */  mult       $v0, $s0
/* 7AFFC 8008A7FC 12180000 */  mflo       $v1
/* 7B000 8008A800 00000000 */  nop
/* 7B004 8008A804 00000000 */  nop
/* 7B008 8008A808 18007000 */  mult       $v1, $s0
/* 7B00C 8008A80C 12200000 */  mflo       $a0
/* 7B010 8008A810 05008104 */  bgez       $a0, .L8008A828
/* 7B014 8008A814 83150400 */   sra       $v0, $a0, 0x16
/* 7B018 8008A818 3F00023C */  lui        $v0, 0x3f
/* 7B01C 8008A81C FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7B020 8008A820 21208200 */  addu       $a0, $a0, $v0
/* 7B024 8008A824 83150400 */  sra        $v0, $a0, 0x16
.L8008A828:
/* 7B028 8008A828 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7B02C 8008A82C 3E2A0208 */  j          .L8008A8F8
/* 7B030 8008A830 21400201 */   addu      $t0, $t0, $v0
.L8008A834:
/* 7B034 8008A834 9C00A98F */  lw         $t1, 0x9c($sp)
/* 7B038 8008A838 00000000 */  nop
/* 7B03C 8008A83C 01082229 */  slti       $v0, $t1, 0x801
/* 7B040 8008A840 04004010 */  beqz       $v0, .L8008A854
/* 7B044 8008A844 00081024 */   addiu     $s0, $zero, 0x800
/* 7B048 8008A848 02002105 */  bgez       $t1, .L8008A854
/* 7B04C 8008A84C 21802001 */   addu      $s0, $t1, $zero
/* 7B050 8008A850 21800000 */  addu       $s0, $zero, $zero
.L8008A854:
/* 7B054 8008A854 D0FE0A24 */  addiu      $t2, $zero, -0x130
/* 7B058 8008A858 23104601 */  subu       $v0, $t2, $a2
/* 7B05C 8008A85C 18005000 */  mult       $v0, $s0
/* 7B060 8008A860 12100000 */  mflo       $v0
/* 7B064 8008A864 02004104 */  bgez       $v0, .L8008A870
/* 7B068 8008A868 00000000 */   nop
/* 7B06C 8008A86C FF074224 */  addiu      $v0, $v0, 0x7ff
.L8008A870:
/* 7B070 8008A870 C3120200 */  sra        $v0, $v0, 0xb
/* 7B074 8008A874 9C00A88F */  lw         $t0, 0x9c($sp)
/* 7B078 8008A878 2130C200 */  addu       $a2, $a2, $v0
/* 7B07C 8008A87C 01100229 */  slti       $v0, $t0, 0x1001
/* 7B080 8008A880 07004010 */  beqz       $v0, .L8008A8A0
/* 7B084 8008A884 9800A6AF */   sw        $a2, 0x98($sp)
/* 7B088 8008A888 00081024 */  addiu      $s0, $zero, 0x800
/* 7B08C 8008A88C 2A101001 */  slt        $v0, $t0, $s0
/* 7B090 8008A890 04004014 */  bnez       $v0, .L8008A8A4
/* 7B094 8008A894 00000000 */   nop
/* 7B098 8008A898 292A0208 */  j          .L8008A8A4
/* 7B09C 8008A89C 21800001 */   addu      $s0, $t0, $zero
.L8008A8A0:
/* 7B0A0 8008A8A0 00101024 */  addiu      $s0, $zero, 0x1000
.L8008A8A4:
/* 7B0A4 8008A8A4 00F80426 */  addiu      $a0, $s0, -0x800
/* 7B0A8 8008A8A8 40800400 */  sll        $s0, $a0, 1
/* 7B0AC 8008A8AC F4F1000C */  jal        rsin
/* 7B0B0 8008A8B0 80200400 */   sll       $a0, $a0, 2
/* 7B0B4 8008A8B4 00100424 */  addiu      $a0, $zero, 0x1000
/* 7B0B8 8008A8B8 23209000 */  subu       $a0, $a0, $s0
/* 7B0BC 8008A8BC 40180400 */  sll        $v1, $a0, 1
/* 7B0C0 8008A8C0 21186400 */  addu       $v1, $v1, $a0
/* 7B0C4 8008A8C4 40180300 */  sll        $v1, $v1, 1
/* 7B0C8 8008A8C8 18004300 */  mult       $v0, $v1
/* 7B0CC 8008A8CC 12200000 */  mflo       $a0
/* 7B0D0 8008A8D0 05008104 */  bgez       $a0, .L8008A8E8
/* 7B0D4 8008A8D4 03160400 */   sra       $v0, $a0, 0x18
/* 7B0D8 8008A8D8 FF00023C */  lui        $v0, 0xff
/* 7B0DC 8008A8DC FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7B0E0 8008A8E0 21208200 */  addu       $a0, $a0, $v0
/* 7B0E4 8008A8E4 03160400 */  sra        $v0, $a0, 0x18
.L8008A8E8:
/* 7B0E8 8008A8E8 031B0300 */  sra        $v1, $v1, 0xc
/* 7B0EC 8008A8EC 9800A88F */  lw         $t0, 0x98($sp)
/* 7B0F0 8008A8F0 21104300 */  addu       $v0, $v0, $v1
/* 7B0F4 8008A8F4 23400201 */  subu       $t0, $t0, $v0
.L8008A8F8:
/* 7B0F8 8008A8F8 9800A8AF */  sw         $t0, 0x98($sp)
/* 7B0FC 8008A8FC E000A98F */  lw         $t1, 0xe0($sp)
/* 7B100 8008A900 00000000 */  nop
/* 7B104 8008A904 0000228D */  lw         $v0, ($t1)
/* 7B108 8008A908 BC0A238D */  lw         $v1, 0xabc($t1)
/* 7B10C 8008A90C 00000000 */  nop
/* 7B110 8008A910 21104300 */  addu       $v0, $v0, $v1
/* 7B114 8008A914 FFFF4224 */  addiu      $v0, $v0, -1
/* 7B118 8008A918 1A004300 */  div        $zero, $v0, $v1
/* 7B11C 8008A91C 02006014 */  bnez       $v1, .L8008A928
/* 7B120 8008A920 00000000 */   nop
/* 7B124 8008A924 0D000700 */  break      7
.L8008A928:
/* 7B128 8008A928 FFFF0124 */   addiu     $at, $zero, -1
/* 7B12C 8008A92C 04006114 */  bne        $v1, $at, .L8008A940
/* 7B130 8008A930 0080013C */   lui       $at, 0x8000
/* 7B134 8008A934 02004114 */  bne        $v0, $at, .L8008A940
/* 7B138 8008A938 00000000 */   nop
/* 7B13C 8008A93C 0D000600 */  break      6
.L8008A940:
/* 7B140 8008A940 10180000 */   mfhi      $v1
/* 7B144 8008A944 00000000 */  nop
/* 7B148 8008A948 40180300 */  sll        $v1, $v1, 1
/* 7B14C 8008A94C 21182301 */  addu       $v1, $t1, $v1
/* 7B150 8008A950 18006484 */  lh         $a0, 0x18($v1)
/* 7B154 8008A954 00000000 */  nop
/* 7B158 8008A958 2800A4AF */  sw         $a0, 0x28($sp)
/* 7B15C 8008A95C 0000238D */  lw         $v1, ($t1)
/* 7B160 8008A960 BC0A228D */  lw         $v0, 0xabc($t1)
/* 7B164 8008A964 00000000 */  nop
/* 7B168 8008A968 21186200 */  addu       $v1, $v1, $v0
/* 7B16C 8008A96C 1A006200 */  div        $zero, $v1, $v0
/* 7B170 8008A970 02004014 */  bnez       $v0, .L8008A97C
/* 7B174 8008A974 00000000 */   nop
/* 7B178 8008A978 0D000700 */  break      7
.L8008A97C:
/* 7B17C 8008A97C FFFF0124 */   addiu     $at, $zero, -1
/* 7B180 8008A980 04004114 */  bne        $v0, $at, .L8008A994
/* 7B184 8008A984 0080013C */   lui       $at, 0x8000
/* 7B188 8008A988 02006114 */  bne        $v1, $at, .L8008A994
/* 7B18C 8008A98C 00000000 */   nop
/* 7B190 8008A990 0D000600 */  break      6
.L8008A994:
/* 7B194 8008A994 10100000 */   mfhi      $v0
/* 7B198 8008A998 00000000 */  nop
/* 7B19C 8008A99C 40100200 */  sll        $v0, $v0, 1
/* 7B1A0 8008A9A0 21102201 */  addu       $v0, $t1, $v0
/* 7B1A4 8008A9A4 18004584 */  lh         $a1, 0x18($v0)
/* 7B1A8 8008A9A8 00000000 */  nop
/* 7B1AC 8008A9AC 2C00A5AF */  sw         $a1, 0x2c($sp)
/* 7B1B0 8008A9B0 0000228D */  lw         $v0, ($t1)
/* 7B1B4 8008A9B4 BC0A238D */  lw         $v1, 0xabc($t1)
/* 7B1B8 8008A9B8 00000000 */  nop
/* 7B1BC 8008A9BC 21104300 */  addu       $v0, $v0, $v1
/* 7B1C0 8008A9C0 01004224 */  addiu      $v0, $v0, 1
/* 7B1C4 8008A9C4 1A004300 */  div        $zero, $v0, $v1
/* 7B1C8 8008A9C8 02006014 */  bnez       $v1, .L8008A9D4
/* 7B1CC 8008A9CC 00000000 */   nop
/* 7B1D0 8008A9D0 0D000700 */  break      7
.L8008A9D4:
/* 7B1D4 8008A9D4 FFFF0124 */   addiu     $at, $zero, -1
/* 7B1D8 8008A9D8 04006114 */  bne        $v1, $at, .L8008A9EC
/* 7B1DC 8008A9DC 0080013C */   lui       $at, 0x8000
/* 7B1E0 8008A9E0 02004114 */  bne        $v0, $at, .L8008A9EC
/* 7B1E4 8008A9E4 00000000 */   nop
/* 7B1E8 8008A9E8 0D000600 */  break      6
.L8008A9EC:
/* 7B1EC 8008A9EC 10180000 */   mfhi      $v1
/* 7B1F0 8008A9F0 3800B027 */  addiu      $s0, $sp, 0x38
/* 7B1F4 8008A9F4 40180300 */  sll        $v1, $v1, 1
/* 7B1F8 8008A9F8 21182301 */  addu       $v1, $t1, $v1
/* 7B1FC 8008A9FC 18006284 */  lh         $v0, 0x18($v1)
/* 7B200 8008AA00 FF000324 */  addiu      $v1, $zero, 0xff
/* 7B204 8008AA04 02008314 */  bne        $a0, $v1, .L8008AA10
/* 7B208 8008AA08 3000A2AF */   sw        $v0, 0x30($sp)
/* 7B20C 8008AA0C 2800A5AF */  sw         $a1, 0x28($sp)
.L8008AA10:
/* 7B210 8008AA10 02004314 */  bne        $v0, $v1, .L8008AA1C
/* 7B214 8008AA14 00000000 */   nop
/* 7B218 8008AA18 3000A5AF */  sw         $a1, 0x30($sp)
.L8008AA1C:
/* 7B21C 8008AA1C 03000524 */  addiu      $a1, $zero, 3
/* 7B220 8008AA20 2800A627 */  addiu      $a2, $sp, 0x28
/* 7B224 8008AA24 21380002 */  addu       $a3, $s0, $zero
/* 7B228 8008AA28 E000A48F */  lw         $a0, 0xe0($sp)
/* 7B22C 8008AA2C 05000224 */  addiu      $v0, $zero, 5
/* 7B230 8008AA30 1000A0AF */  sw         $zero, 0x10($sp)
/* 7B234 8008AA34 1400A2AF */  sw         $v0, 0x14($sp)
/* 7B238 8008AA38 ED13020C */  jal        FUN_80084fb4
/* 7B23C 8008AA3C 1800A0AF */   sw        $zero, 0x18($sp)
/* 7B240 8008AA40 2128A002 */  addu       $a1, $s5, $zero
/* 7B244 8008AA44 00030624 */  addiu      $a2, $zero, 0x300
/* 7B248 8008AA48 F0001224 */  addiu      $s2, $zero, 0xf0
/* 7B24C 8008AA4C 2A001124 */  addiu      $s1, $zero, 0x2a
/* 7B250 8008AA50 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B254 8008AA54 0400028E */  lw         $v0, 4($s0)
/* 7B258 8008AA58 FFFF1324 */  addiu      $s3, $zero, -1
/* 7B25C 8008AA5C 1000B2AF */  sw         $s2, 0x10($sp)
/* 7B260 8008AA60 1400B1AF */  sw         $s1, 0x14($sp)
/* 7B264 8008AA64 1800A0AF */  sw         $zero, 0x18($sp)
/* 7B268 8008AA68 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 7B26C 8008AA6C 80380200 */  sll        $a3, $v0, 2
/* 7B270 8008AA70 2138E200 */  addu       $a3, $a3, $v0
/* 7B274 8008AA74 80380700 */  sll        $a3, $a3, 2
/* 7B278 8008AA78 2138E200 */  addu       $a3, $a3, $v0
/* 7B27C 8008AA7C 40380700 */  sll        $a3, $a3, 1
/* 7B280 8008AA80 1769010C */  jal        FUN_8005a45c
/* 7B284 8008AA84 0002E724 */   addiu     $a3, $a3, 0x200
/* 7B288 8008AA88 0400078E */  lw         $a3, 4($s0)
/* 7B28C 8008AA8C 00000000 */  nop
/* 7B290 8008AA90 0200E104 */  bgez       $a3, .L8008AA9C
/* 7B294 8008AA94 2130E000 */   addu      $a2, $a3, $zero
/* 7B298 8008AA98 0F00E624 */  addiu      $a2, $a3, 0xf
.L8008AA9C:
/* 7B29C 8008AA9C 2128A002 */  addu       $a1, $s5, $zero
/* 7B2A0 8008AAA0 03310600 */  sra        $a2, $a2, 4
/* 7B2A4 8008AAA4 00310600 */  sll        $a2, $a2, 4
/* 7B2A8 8008AAA8 8002C624 */  addiu      $a2, $a2, 0x280
/* 7B2AC 8008AAAC 0F00E730 */  andi       $a3, $a3, 0xf
/* 7B2B0 8008AAB0 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B2B4 8008AAB4 396D010C */  jal        FUN_8005b4e4
/* 7B2B8 8008AAB8 F001E734 */   ori       $a3, $a3, 0x1f0
/* 7B2BC 8008AABC 2128A002 */  addu       $a1, $s5, $zero
/* 7B2C0 8008AAC0 5EFF0924 */  addiu      $t1, $zero, -0xa2
/* 7B2C4 8008AAC4 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B2C8 8008AAC8 9800A88F */  lw         $t0, 0x98($sp)
/* 7B2CC 8008AACC 0E002725 */  addiu      $a3, $t1, 0xe
/* 7B2D0 8008AAD0 1000B2AF */  sw         $s2, 0x10($sp)
/* 7B2D4 8008AAD4 1400B1AF */  sw         $s1, 0x14($sp)
/* 7B2D8 8008AAD8 976D010C */  jal        FUN_8005b65c
/* 7B2DC 8008AADC 0A000625 */   addiu     $a2, $t0, 0xa
/* 7B2E0 8008AAE0 2128A002 */  addu       $a1, $s5, $zero
/* 7B2E4 8008AAE4 80000624 */  addiu      $a2, $zero, 0x80
/* 7B2E8 8008AAE8 2138C000 */  addu       $a3, $a2, $zero
/* 7B2EC 8008AAEC E400A48F */  lw         $a0, 0xe4($sp)
/* 7B2F0 8008AAF0 21A0C000 */  addu       $s4, $a2, $zero
/* 7B2F4 8008AAF4 EB6C010C */  jal        FUN_8005b3ac
/* 7B2F8 8008AAF8 1000B4AF */   sw        $s4, 0x10($sp)
/* 7B2FC 8008AAFC E000AA8F */  lw         $t2, 0xe0($sp)
/* 7B300 8008AB00 00000000 */  nop
/* 7B304 8008AB04 0000438D */  lw         $v1, ($t2)
/* 7B308 8008AB08 BC0A428D */  lw         $v0, 0xabc($t2)
/* 7B30C 8008AB0C 00000000 */  nop
/* 7B310 8008AB10 21186200 */  addu       $v1, $v1, $v0
/* 7B314 8008AB14 1A006200 */  div        $zero, $v1, $v0
/* 7B318 8008AB18 02004014 */  bnez       $v0, .L8008AB24
/* 7B31C 8008AB1C 00000000 */   nop
/* 7B320 8008AB20 0D000700 */  break      7
.L8008AB24:
/* 7B324 8008AB24 FFFF0124 */   addiu     $at, $zero, -1
/* 7B328 8008AB28 04004114 */  bne        $v0, $at, .L8008AB3C
/* 7B32C 8008AB2C 0080013C */   lui       $at, 0x8000
/* 7B330 8008AB30 02006114 */  bne        $v1, $at, .L8008AB3C
/* 7B334 8008AB34 00000000 */   nop
/* 7B338 8008AB38 0D000600 */  break      6
.L8008AB3C:
/* 7B33C 8008AB3C 10100000 */   mfhi      $v0
/* 7B340 8008AB40 0100B526 */  addiu      $s5, $s5, 1
/* 7B344 8008AB44 04000524 */  addiu      $a1, $zero, 4
/* 7B348 8008AB48 40100200 */  sll        $v0, $v0, 1
/* 7B34C 8008AB4C 21104201 */  addu       $v0, $t2, $v0
/* 7B350 8008AB50 18004484 */  lh         $a0, 0x18($v0)
/* 7B354 8008AB54 C953020C */  jal        FUN_80094f24
/* 7B358 8008AB58 FFFF0624 */   addiu     $a2, $zero, -1
/* 7B35C 8008AB5C 4992033C */  lui        $v1, 0x9249
/* 7B360 8008AB60 93246334 */  ori        $v1, $v1, 0x2493
/* 7B364 8008AB64 21804000 */  addu       $s0, $v0, $zero
/* 7B368 8008AB68 18000302 */  mult       $s0, $v1
/* 7B36C 8008AB6C 2128A002 */  addu       $a1, $s5, $zero
/* 7B370 8008AB70 C0001224 */  addiu      $s2, $zero, 0xc0
/* 7B374 8008AB74 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B378 8008AB78 20001124 */  addiu      $s1, $zero, 0x20
/* 7B37C 8008AB7C 1000B2AF */  sw         $s2, 0x10($sp)
/* 7B380 8008AB80 1400B1AF */  sw         $s1, 0x14($sp)
/* 7B384 8008AB84 1800A0AF */  sw         $zero, 0x18($sp)
/* 7B388 8008AB88 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 7B38C 8008AB8C 10180000 */  mfhi       $v1
/* 7B390 8008AB90 21107000 */  addu       $v0, $v1, $s0
/* 7B394 8008AB94 83100200 */  sra        $v0, $v0, 2
/* 7B398 8008AB98 C31F1000 */  sra        $v1, $s0, 0x1f
/* 7B39C 8008AB9C 23104300 */  subu       $v0, $v0, $v1
/* 7B3A0 8008ABA0 00320200 */  sll        $a2, $v0, 8
/* 7B3A4 8008ABA4 0006C624 */  addiu      $a2, $a2, 0x600
/* 7B3A8 8008ABA8 C0380200 */  sll        $a3, $v0, 3
/* 7B3AC 8008ABAC 2338E200 */  subu       $a3, $a3, $v0
/* 7B3B0 8008ABB0 23380702 */  subu       $a3, $s0, $a3
/* 7B3B4 8008ABB4 40390700 */  sll        $a3, $a3, 5
/* 7B3B8 8008ABB8 1769010C */  jal        FUN_8005a45c
/* 7B3BC 8008ABBC 0003E724 */   addiu     $a3, $a3, 0x300
/* 7B3C0 8008ABC0 02000106 */  bgez       $s0, .L8008ABCC
/* 7B3C4 8008ABC4 21300002 */   addu      $a2, $s0, $zero
/* 7B3C8 8008ABC8 0F000626 */  addiu      $a2, $s0, 0xf
.L8008ABCC:
/* 7B3CC 8008ABCC 2128A002 */  addu       $a1, $s5, $zero
/* 7B3D0 8008ABD0 03310600 */  sra        $a2, $a2, 4
/* 7B3D4 8008ABD4 00310600 */  sll        $a2, $a2, 4
/* 7B3D8 8008ABD8 8002C624 */  addiu      $a2, $a2, 0x280
/* 7B3DC 8008ABDC 0F000732 */  andi       $a3, $s0, 0xf
/* 7B3E0 8008ABE0 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B3E4 8008ABE4 396D010C */  jal        FUN_8005b4e4
/* 7B3E8 8008ABE8 E001E734 */   ori       $a3, $a3, 0x1e0
/* 7B3EC 8008ABEC 2128A002 */  addu       $a1, $s5, $zero
/* 7B3F0 8008ABF0 5EFF0924 */  addiu      $t1, $zero, -0xa2
/* 7B3F4 8008ABF4 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B3F8 8008ABF8 9800A88F */  lw         $t0, 0x98($sp)
/* 7B3FC 8008ABFC 8A002725 */  addiu      $a3, $t1, 0x8a
/* 7B400 8008AC00 1000B2AF */  sw         $s2, 0x10($sp)
/* 7B404 8008AC04 1400B1AF */  sw         $s1, 0x14($sp)
/* 7B408 8008AC08 976D010C */  jal        FUN_8005b65c
/* 7B40C 8008AC0C 38000625 */   addiu     $a2, $t0, 0x38
/* 7B410 8008AC10 2128A002 */  addu       $a1, $s5, $zero
/* 7B414 8008AC14 80000624 */  addiu      $a2, $zero, 0x80
/* 7B418 8008AC18 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B41C 8008AC1C 2138C000 */  addu       $a3, $a2, $zero
/* 7B420 8008AC20 EB6C010C */  jal        FUN_8005b3ac
/* 7B424 8008AC24 1000B4AF */   sw        $s4, 0x10($sp)
/* 7B428 8008AC28 0100A626 */  addiu      $a2, $s5, 1
/* 7B42C 8008AC2C 5800B727 */  addiu      $s7, $sp, 0x58
/* 7B430 8008AC30 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7B434 8008AC34 E000A48F */  lw         $a0, 0xe0($sp)
/* 7B438 8008AC38 E400A58F */  lw         $a1, 0xe4($sp)
/* 7B43C 8008AC3C 9800AA8F */  lw         $t2, 0x98($sp)
/* 7B440 8008AC40 9C00A98F */  lw         $t1, 0x9c($sp)
/* 7B444 8008AC44 3A000225 */  addiu      $v0, $t0, 0x3a
/* 7B448 8008AC48 AC00B7AF */  sw         $s7, 0xac($sp)
/* 7B44C 8008AC4C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7B450 8008AC50 03004725 */  addiu      $a3, $t2, 3
/* 7B454 8008AC54 FFFF4B25 */  addiu      $t3, $t2, -1
/* 7B458 8008AC58 21508000 */  addu       $t2, $a0, $zero
/* 7B45C 8008AC5C A400ABAF */  sw         $t3, 0xa4($sp)
/* 7B460 8008AC60 1400A9AF */  sw         $t1, 0x14($sp)
/* 7B464 8008AC64 AC484291 */  lbu        $v0, 0x48ac($t2)
/* 7B468 8008AC68 4800AB27 */  addiu      $t3, $sp, 0x48
/* 7B46C 8008AC6C B400ABAF */  sw         $t3, 0xb4($sp)
/* 7B470 8008AC70 01004238 */  xori       $v0, $v0, 1
/* 7B474 8008AC74 0100422C */  sltiu      $v0, $v0, 1
/* 7B478 8008AC78 F614020C */  jal        FUN_800853d8
/* 7B47C 8008AC7C 1800A2AF */   sw        $v0, 0x18($sp)
/* 7B480 8008AC80 21A84000 */  addu       $s5, $v0, $zero
/* 7B484 8008AC84 0180023C */  lui        $v0, %hi(D_80015D4C)
/* 7B488 8008AC88 4C5D4B24 */  addiu      $t3, $v0, %lo(D_80015D4C)
/* 7B48C 8008AC8C 0000688D */  lw         $t0, ($t3)
/* 7B490 8008AC90 0400698D */  lw         $t1, 4($t3)
/* 7B494 8008AC94 08006A8D */  lw         $t2, 8($t3)
/* 7B498 8008AC98 4800A8AF */  sw         $t0, 0x48($sp)
/* 7B49C 8008AC9C 4C00A9AF */  sw         $t1, 0x4c($sp)
/* 7B4A0 8008ACA0 5000AAAF */  sw         $t2, 0x50($sp)
/* 7B4A4 8008ACA4 0180023C */  lui        $v0, %hi(D_80015D58)
/* 7B4A8 8008ACA8 585D4B24 */  addiu      $t3, $v0, %lo(D_80015D58)
/* 7B4AC 8008ACAC 0000688D */  lw         $t0, ($t3)
/* 7B4B0 8008ACB0 0400698D */  lw         $t1, 4($t3)
/* 7B4B4 8008ACB4 08006A8D */  lw         $t2, 8($t3)
/* 7B4B8 8008ACB8 5800A8AF */  sw         $t0, 0x58($sp)
/* 7B4BC 8008ACBC 5C00A9AF */  sw         $t1, 0x5c($sp)
/* 7B4C0 8008ACC0 6000AAAF */  sw         $t2, 0x60($sp)
/* 7B4C4 8008ACC4 0180023C */  lui        $v0, %hi(D_80015D64)
/* 7B4C8 8008ACC8 645D4B24 */  addiu      $t3, $v0, %lo(D_80015D64)
/* 7B4CC 8008ACCC 0000688D */  lw         $t0, ($t3)
/* 7B4D0 8008ACD0 0400698D */  lw         $t1, 4($t3)
/* 7B4D4 8008ACD4 08006A8D */  lw         $t2, 8($t3)
/* 7B4D8 8008ACD8 6800A8AF */  sw         $t0, 0x68($sp)
/* 7B4DC 8008ACDC 6C00A9AF */  sw         $t1, 0x6c($sp)
/* 7B4E0 8008ACE0 7000AAAF */  sw         $t2, 0x70($sp)
/* 7B4E4 8008ACE4 0C00688D */  lw         $t0, 0xc($t3)
/* 7B4E8 8008ACE8 1000698D */  lw         $t1, 0x10($t3)
/* 7B4EC 8008ACEC 7400A8AF */  sw         $t0, 0x74($sp)
/* 7B4F0 8008ACF0 7800A9AF */  sw         $t1, 0x78($sp)
/* 7B4F4 8008ACF4 1380023C */  lui        $v0, %hi(D_80128134)
/* 7B4F8 8008ACF8 34814490 */  lbu        $a0, %lo(D_80128134)($v0)
/* 7B4FC 8008ACFC 0180023C */  lui        $v0, %hi(D_80015D78)
/* 7B500 8008AD00 785D4B24 */  addiu      $t3, $v0, %lo(D_80015D78)
/* 7B504 8008AD04 0000688D */  lw         $t0, ($t3)
/* 7B508 8008AD08 0400698D */  lw         $t1, 4($t3)
/* 7B50C 8008AD0C 08006A8D */  lw         $t2, 8($t3)
/* 7B510 8008AD10 8000A8AF */  sw         $t0, 0x80($sp)
/* 7B514 8008AD14 8400A9AF */  sw         $t1, 0x84($sp)
/* 7B518 8008AD18 8800AAAF */  sw         $t2, 0x88($sp)
/* 7B51C 8008AD1C 0C00688D */  lw         $t0, 0xc($t3)
/* 7B520 8008AD20 1000698D */  lw         $t1, 0x10($t3)
/* 7B524 8008AD24 8C00A8AF */  sw         $t0, 0x8c($sp)
/* 7B528 8008AD28 9000A9AF */  sw         $t1, 0x90($sp)
/* 7B52C 8008AD2C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 7B530 8008AD30 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 7B534 8008AD34 C0180400 */  sll        $v1, $a0, 3
/* 7B538 8008AD38 23186400 */  subu       $v1, $v1, $a0
/* 7B53C 8008AD3C 80180300 */  sll        $v1, $v1, 2
/* 7B540 8008AD40 21A06200 */  addu       $s4, $v1, $v0
/* 7B544 8008AD44 04008886 */  lh         $t0, 4($s4)
/* 7B548 8008AD48 00000000 */  nop
/* 7B54C 8008AD4C A000A8AF */  sw         $t0, 0xa0($sp)
.L8008AD50:
/* 7B550 8008AD50 B400A98F */  lw         $t1, 0xb4($sp)
/* 7B554 8008AD54 5EFF1E24 */  addiu      $fp, $zero, -0xa2
/* 7B558 8008AD58 A800A9AF */  sw         $t1, 0xa8($sp)
/* 7B55C 8008AD5C 06008286 */  lh         $v0, 6($s4)
/* 7B560 8008AD60 21980000 */  addu       $s3, $zero, $zero
/* 7B564 8008AD64 B000B7AF */  sw         $s7, 0xb0($sp)
/* 7B568 8008AD68 48005624 */  addiu      $s6, $v0, 0x48
.L8008AD6C:
/* 7B56C 8008AD6C 2128A002 */  addu       $a1, $s5, $zero
/* 7B570 8008AD70 2138C002 */  addu       $a3, $s6, $zero
/* 7B574 8008AD74 80901300 */  sll        $s2, $s3, 2
/* 7B578 8008AD78 6800B127 */  addiu      $s1, $sp, 0x68
/* 7B57C 8008AD7C E400A48F */  lw         $a0, 0xe4($sp)
/* 7B580 8008AD80 A800AA8F */  lw         $t2, 0xa8($sp)
/* 7B584 8008AD84 A000A68F */  lw         $a2, 0xa0($sp)
/* 7B588 8008AD88 0000428D */  lw         $v0, ($t2)
/* 7B58C 8008AD8C 21883202 */  addu       $s1, $s1, $s2
/* 7B590 8008AD90 1000A2AF */  sw         $v0, 0x10($sp)
/* 7B594 8008AD94 0000228E */  lw         $v0, ($s1)
/* 7B598 8008AD98 01007326 */  addiu      $s3, $s3, 1
/* 7B59C 8008AD9C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7B5A0 8008ADA0 0C008286 */  lh         $v0, 0xc($s4)
/* 7B5A4 8008ADA4 FFFF0B24 */  addiu      $t3, $zero, -1
/* 7B5A8 8008ADA8 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 7B5AC 8008ADAC 1769010C */  jal        FUN_8005a45c
/* 7B5B0 8008ADB0 1800A2AF */   sw        $v0, 0x18($sp)
/* 7B5B4 8008ADB4 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B5B8 8008ADB8 16008686 */  lh         $a2, 0x16($s4)
/* 7B5BC 8008ADBC 18008786 */  lh         $a3, 0x18($s4)
/* 7B5C0 8008ADC0 396D010C */  jal        FUN_8005b4e4
/* 7B5C4 8008ADC4 2128A002 */   addu      $a1, $s5, $zero
/* 7B5C8 8008ADC8 2128A002 */  addu       $a1, $s5, $zero
/* 7B5CC 8008ADCC 8000B027 */  addiu      $s0, $sp, 0x80
/* 7B5D0 8008ADD0 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B5D4 8008ADD4 B000A88F */  lw         $t0, 0xb0($sp)
/* 7B5D8 8008ADD8 A400A68F */  lw         $a2, 0xa4($sp)
/* 7B5DC 8008ADDC 0000028D */  lw         $v0, ($t0)
/* 7B5E0 8008ADE0 21801202 */  addu       $s0, $s0, $s2
/* 7B5E4 8008ADE4 1000A2AF */  sw         $v0, 0x10($sp)
/* 7B5E8 8008ADE8 0000028E */  lw         $v0, ($s0)
/* 7B5EC 8008ADEC 2138C003 */  addu       $a3, $fp, $zero
/* 7B5F0 8008ADF0 976D010C */  jal        FUN_8005b65c
/* 7B5F4 8008ADF4 1400A2AF */   sw        $v0, 0x14($sp)
/* 7B5F8 8008ADF8 2128A002 */  addu       $a1, $s5, $zero
/* 7B5FC 8008ADFC 80000624 */  addiu      $a2, $zero, 0x80
/* 7B600 8008AE00 2138C000 */  addu       $a3, $a2, $zero
/* 7B604 8008AE04 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B608 8008AE08 2190C000 */  addu       $s2, $a2, $zero
/* 7B60C 8008AE0C EB6C010C */  jal        FUN_8005b3ac
/* 7B610 8008AE10 1000B2AF */   sw        $s2, 0x10($sp)
/* 7B614 8008AE14 0100B526 */  addiu      $s5, $s5, 1
/* 7B618 8008AE18 0000228E */  lw         $v0, ($s1)
/* 7B61C 8008AE1C 0000038E */  lw         $v1, ($s0)
/* 7B620 8008AE20 21B0C202 */  addu       $s6, $s6, $v0
/* 7B624 8008AE24 0500622A */  slti       $v0, $s3, 5
/* 7B628 8008AE28 D0FF4014 */  bnez       $v0, .L8008AD6C
/* 7B62C 8008AE2C 21F0C303 */   addu      $fp, $fp, $v1
/* 7B630 8008AE30 0000E38E */  lw         $v1, ($s7)
/* 7B634 8008AE34 0400F726 */  addiu      $s7, $s7, 4
/* 7B638 8008AE38 B400A98F */  lw         $t1, 0xb4($sp)
/* 7B63C 8008AE3C A000AA8F */  lw         $t2, 0xa0($sp)
/* 7B640 8008AE40 A400AB8F */  lw         $t3, 0xa4($sp)
/* 7B644 8008AE44 AC00A88F */  lw         $t0, 0xac($sp)
/* 7B648 8008AE48 0000228D */  lw         $v0, ($t1)
/* 7B64C 8008AE4C 04002925 */  addiu      $t1, $t1, 4
/* 7B650 8008AE50 21586301 */  addu       $t3, $t3, $v1
/* 7B654 8008AE54 B400A9AF */  sw         $t1, 0xb4($sp)
/* 7B658 8008AE58 A400ABAF */  sw         $t3, 0xa4($sp)
/* 7B65C 8008AE5C 21504201 */  addu       $t2, $t2, $v0
/* 7B660 8008AE60 0C000225 */  addiu      $v0, $t0, 0xc
/* 7B664 8008AE64 2A10E202 */  slt        $v0, $s7, $v0
/* 7B668 8008AE68 B9FF4014 */  bnez       $v0, .L8008AD50
/* 7B66C 8008AE6C A000AAAF */   sw        $t2, 0xa0($sp)
/* 7B670 8008AE70 5EFF0A24 */  addiu      $t2, $zero, -0xa2
/* 7B674 8008AE74 8C005E25 */  addiu      $fp, $t2, 0x8c
/* 7B678 8008AE78 1380023C */  lui        $v0, %hi(D_801280E0)
/* 7B67C 8008AE7C E0805324 */  addiu      $s3, $v0, %lo(D_801280E0)
/* 7B680 8008AE80 9800A98F */  lw         $t1, 0x98($sp)
/* 7B684 8008AE84 1B001024 */  addiu      $s0, $zero, 0x1b
/* 7B688 8008AE88 FFFF2925 */  addiu      $t1, $t1, -1
/* 7B68C 8008AE8C A400A9AF */  sw         $t1, 0xa4($sp)
/* 7B690 8008AE90 57006392 */  lbu        $v1, 0x57($s3)
/* 7B694 8008AE94 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B698 8008AE98 C0100300 */  sll        $v0, $v1, 3
/* 7B69C 8008AE9C 23104300 */  subu       $v0, $v0, $v1
/* 7B6A0 8008AEA0 80100200 */  sll        $v0, $v0, 2
/* 7B6A4 8008AEA4 1380033C */  lui        $v1, %hi(D_801282E0)
/* 7B6A8 8008AEA8 E0827724 */  addiu      $s7, $v1, %lo(D_801282E0)
/* 7B6AC 8008AEAC 21A05700 */  addu       $s4, $v0, $s7
/* 7B6B0 8008AEB0 04008B86 */  lh         $t3, 4($s4)
/* 7B6B4 8008AEB4 2128A002 */  addu       $a1, $s5, $zero
/* 7B6B8 8008AEB8 A000ABAF */  sw         $t3, 0xa0($sp)
/* 7B6BC 8008AEBC 06008386 */  lh         $v1, 6($s4)
/* 7B6C0 8008AEC0 FF000224 */  addiu      $v0, $zero, 0xff
/* 7B6C4 8008AEC4 1000A2AF */  sw         $v0, 0x10($sp)
/* 7B6C8 8008AEC8 1400B0AF */  sw         $s0, 0x14($sp)
/* 7B6CC 8008AECC 0C008286 */  lh         $v0, 0xc($s4)
/* 7B6D0 8008AED0 FFFF0824 */  addiu      $t0, $zero, -1
/* 7B6D4 8008AED4 21306001 */  addu       $a2, $t3, $zero
/* 7B6D8 8008AED8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7B6DC 8008AEDC 1F007624 */  addiu      $s6, $v1, 0x1f
/* 7B6E0 8008AEE0 2138C002 */  addu       $a3, $s6, $zero
/* 7B6E4 8008AEE4 1769010C */  jal        FUN_8005a45c
/* 7B6E8 8008AEE8 1800A2AF */   sw        $v0, 0x18($sp)
/* 7B6EC 8008AEEC E400A48F */  lw         $a0, 0xe4($sp)
/* 7B6F0 8008AEF0 16008686 */  lh         $a2, 0x16($s4)
/* 7B6F4 8008AEF4 18008786 */  lh         $a3, 0x18($s4)
/* 7B6F8 8008AEF8 396D010C */  jal        FUN_8005b4e4
/* 7B6FC 8008AEFC 2128A002 */   addu      $a1, $s5, $zero
/* 7B700 8008AF00 2128A002 */  addu       $a1, $s5, $zero
/* 7B704 8008AF04 2138C003 */  addu       $a3, $fp, $zero
/* 7B708 8008AF08 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B70C 8008AF0C A400A68F */  lw         $a2, 0xa4($sp)
/* 7B710 8008AF10 00010224 */  addiu      $v0, $zero, 0x100
/* 7B714 8008AF14 1000A2AF */  sw         $v0, 0x10($sp)
/* 7B718 8008AF18 976D010C */  jal        FUN_8005b65c
/* 7B71C 8008AF1C 1400B0AF */   sw        $s0, 0x14($sp)
/* 7B720 8008AF20 2128A002 */  addu       $a1, $s5, $zero
/* 7B724 8008AF24 80000624 */  addiu      $a2, $zero, 0x80
/* 7B728 8008AF28 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B72C 8008AF2C 2138C000 */  addu       $a3, $a2, $zero
/* 7B730 8008AF30 EB6C010C */  jal        FUN_8005b3ac
/* 7B734 8008AF34 1000B2AF */   sw        $s2, 0x10($sp)
/* 7B738 8008AF38 0100B526 */  addiu      $s5, $s5, 1
/* 7B73C 8008AF3C 2128A002 */  addu       $a1, $s5, $zero
/* 7B740 8008AF40 06001124 */  addiu      $s1, $zero, 6
/* 7B744 8008AF44 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B748 8008AF48 A000A98F */  lw         $t1, 0xa0($sp)
/* 7B74C 8008AF4C 2138C002 */  addu       $a3, $s6, $zero
/* 7B750 8008AF50 1000B1AF */  sw         $s1, 0x10($sp)
/* 7B754 8008AF54 1400B0AF */  sw         $s0, 0x14($sp)
/* 7B758 8008AF58 0C008286 */  lh         $v0, 0xc($s4)
/* 7B75C 8008AF5C FFFF0A24 */  addiu      $t2, $zero, -1
/* 7B760 8008AF60 1C00AAAF */  sw         $t2, 0x1c($sp)
/* 7B764 8008AF64 00012625 */  addiu      $a2, $t1, 0x100
/* 7B768 8008AF68 1769010C */  jal        FUN_8005a45c
/* 7B76C 8008AF6C 1800A2AF */   sw        $v0, 0x18($sp)
/* 7B770 8008AF70 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B774 8008AF74 16008686 */  lh         $a2, 0x16($s4)
/* 7B778 8008AF78 18008786 */  lh         $a3, 0x18($s4)
/* 7B77C 8008AF7C 396D010C */  jal        FUN_8005b4e4
/* 7B780 8008AF80 2128A002 */   addu      $a1, $s5, $zero
/* 7B784 8008AF84 2128A002 */  addu       $a1, $s5, $zero
/* 7B788 8008AF88 E400A48F */  lw         $a0, 0xe4($sp)
/* 7B78C 8008AF8C 9800AB8F */  lw         $t3, 0x98($sp)
/* 7B790 8008AF90 2138C003 */  addu       $a3, $fp, $zero
/* 7B794 8008AF94 1000B1AF */  sw         $s1, 0x10($sp)
/* 7B798 8008AF98 1400B0AF */  sw         $s0, 0x14($sp)
/* 7B79C 8008AF9C 976D010C */  jal        FUN_8005b65c
/* 7B7A0 8008AFA0 FF006625 */   addiu     $a2, $t3, 0xff
/* 7B7A4 8008AFA4 2128A002 */  addu       $a1, $s5, $zero
/* 7B7A8 8008AFA8 80000624 */  addiu      $a2, $zero, 0x80
/* 7B7AC 8008AFAC E400A48F */  lw         $a0, 0xe4($sp)
/* 7B7B0 8008AFB0 2138C000 */  addu       $a3, $a2, $zero
/* 7B7B4 8008AFB4 EB6C010C */  jal        FUN_8005b3ac
/* 7B7B8 8008AFB8 1000B2AF */   sw        $s2, 0x10($sp)
/* 7B7BC 8008AFBC 9C00A88F */  lw         $t0, 0x9c($sp)
/* 7B7C0 8008AFC0 00100224 */  addiu      $v0, $zero, 0x1000
/* 7B7C4 8008AFC4 51000211 */  beq        $t0, $v0, .L8008B10C
/* 7B7C8 8008AFC8 0100B526 */   addiu     $s5, $s5, 1
/* 7B7CC 8008AFCC 2A100201 */  slt        $v0, $t0, $v0
/* 7B7D0 8008AFD0 2D004010 */  beqz       $v0, .L8008B088
/* 7B7D4 8008AFD4 FF000524 */   addiu     $a1, $zero, 0xff
/* 7B7D8 8008AFD8 80000624 */  addiu      $a2, $zero, 0x80
/* 7B7DC 8008AFDC 5EFF0924 */  addiu      $t1, $zero, -0xa2
/* 7B7E0 8008AFE0 D0FE0A24 */  addiu      $t2, $zero, -0x130
/* 7B7E4 8008AFE4 20024225 */  addiu      $v0, $t2, 0x220
/* 7B7E8 8008AFE8 F0003225 */  addiu      $s2, $t1, 0xf0
/* 7B7EC 8008AFEC 24001124 */  addiu      $s1, $zero, 0x24
/* 7B7F0 8008AFF0 1000A9AF */  sw         $t1, 0x10($sp)
/* 7B7F4 8008AFF4 1800A2AF */  sw         $v0, 0x18($sp)
/* 7B7F8 8008AFF8 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7B7FC 8008AFFC 2000B1AF */  sw         $s1, 0x20($sp)
/* 7B800 8008B000 59006392 */  lbu        $v1, 0x59($s3)
/* 7B804 8008B004 E000AB8F */  lw         $t3, 0xe0($sp)
/* 7B808 8008B008 A5001024 */  addiu      $s0, $zero, 0xa5
/* 7B80C 8008B00C 2400B0AF */  sw         $s0, 0x24($sp)
/* 7B810 8008B010 C0100300 */  sll        $v0, $v1, 3
/* 7B814 8008B014 23104300 */  subu       $v0, $v0, $v1
/* 7B818 8008B018 80100200 */  sll        $v0, $v0, 2
/* 7B81C 8008B01C 21105700 */  addu       $v0, $v0, $s7
/* 7B820 8008B020 1400A2AF */  sw         $v0, 0x14($sp)
/* 7B824 8008B024 E80A648D */  lw         $a0, 0xae8($t3)
/* 7B828 8008B028 3DAD010C */  jal        FUN_8006b4f4
/* 7B82C 8008B02C E0004725 */   addiu     $a3, $t2, 0xe0
/* 7B830 8008B030 FF000524 */  addiu      $a1, $zero, 0xff
/* 7B834 8008B034 E000A88F */  lw         $t0, 0xe0($sp)
/* 7B838 8008B038 80000624 */  addiu      $a2, $zero, 0x80
/* 7B83C 8008B03C E80A02AD */  sw         $v0, 0xae8($t0)
/* 7B840 8008B040 59006392 */  lbu        $v1, 0x59($s3)
/* 7B844 8008B044 5EFF0924 */  addiu      $t1, $zero, -0xa2
/* 7B848 8008B048 1000A9AF */  sw         $t1, 0x10($sp)
/* 7B84C 8008B04C 1800A0AF */  sw         $zero, 0x18($sp)
/* 7B850 8008B050 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7B854 8008B054 2000B1AF */  sw         $s1, 0x20($sp)
/* 7B858 8008B058 2400B0AF */  sw         $s0, 0x24($sp)
/* 7B85C 8008B05C C0100300 */  sll        $v0, $v1, 3
/* 7B860 8008B060 23104300 */  subu       $v0, $v0, $v1
/* 7B864 8008B064 80100200 */  sll        $v0, $v0, 2
/* 7B868 8008B068 21105700 */  addu       $v0, $v0, $s7
/* 7B86C 8008B06C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7B870 8008B070 E80A048D */  lw         $a0, 0xae8($t0)
/* 7B874 8008B074 3DAD010C */  jal        FUN_8006b4f4
/* 7B878 8008B078 C0FE0724 */   addiu     $a3, $zero, -0x140
/* 7B87C 8008B07C E000AA8F */  lw         $t2, 0xe0($sp)
/* 7B880 8008B080 432C0208 */  j          .L8008B10C
/* 7B884 8008B084 E80A42AD */   sw        $v0, 0xae8($t2)
.L8008B088:
/* 7B888 8008B088 9C00AB8F */  lw         $t3, 0x9c($sp)
/* 7B88C 8008B08C 00000000 */  nop
/* 7B890 8008B090 01106229 */  slti       $v0, $t3, 0x1001
/* 7B894 8008B094 1E004014 */  bnez       $v0, .L8008B110
/* 7B898 8008B098 2110A002 */   addu      $v0, $s5, $zero
/* 7B89C 8008B09C 9800A98F */  lw         $t1, 0x98($sp)
/* 7B8A0 8008B0A0 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7B8A4 8008B0A4 FF000524 */  addiu      $a1, $zero, 0xff
/* 7B8A8 8008B0A8 80000624 */  addiu      $a2, $zero, 0x80
/* 7B8AC 8008B0AC 9800AB8F */  lw         $t3, 0x98($sp)
/* 7B8B0 8008B0B0 E000A88F */  lw         $t0, 0xe0($sp)
/* 7B8B4 8008B0B4 5EFF0A24 */  addiu      $t2, $zero, -0xa2
/* 7B8B8 8008B0B8 1000AAAF */  sw         $t2, 0x10($sp)
/* 7B8BC 8008B0BC 20026225 */  addiu      $v0, $t3, 0x220
/* 7B8C0 8008B0C0 1800A2AF */  sw         $v0, 0x18($sp)
/* 7B8C4 8008B0C4 F0004225 */  addiu      $v0, $t2, 0xf0
/* 7B8C8 8008B0C8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 7B8CC 8008B0CC 60000224 */  addiu      $v0, $zero, 0x60
/* 7B8D0 8008B0D0 2000A2AF */  sw         $v0, 0x20($sp)
/* 7B8D4 8008B0D4 59006392 */  lbu        $v1, 0x59($s3)
/* 7B8D8 8008B0D8 A5000224 */  addiu      $v0, $zero, 0xa5
/* 7B8DC 8008B0DC 2400A2AF */  sw         $v0, 0x24($sp)
/* 7B8E0 8008B0E0 C0100300 */  sll        $v0, $v1, 3
/* 7B8E4 8008B0E4 23104300 */  subu       $v0, $v0, $v1
/* 7B8E8 8008B0E8 80100200 */  sll        $v0, $v0, 2
/* 7B8EC 8008B0EC 21105700 */  addu       $v0, $v0, $s7
/* 7B8F0 8008B0F0 1400A2AF */  sw         $v0, 0x14($sp)
/* 7B8F4 8008B0F4 E80A048D */  lw         $a0, 0xae8($t0)
/* 7B8F8 8008B0F8 3DAD010C */  jal        FUN_8006b4f4
/* 7B8FC 8008B0FC E0006725 */   addiu     $a3, $t3, 0xe0
/* 7B900 8008B100 E000A98F */  lw         $t1, 0xe0($sp)
/* 7B904 8008B104 00000000 */  nop
/* 7B908 8008B108 E80A22AD */  sw         $v0, 0xae8($t1)
.L8008B10C:
/* 7B90C 8008B10C 2110A002 */  addu       $v0, $s5, $zero
.L8008B110:
/* 7B910 8008B110 DC00BF8F */  lw         $ra, 0xdc($sp)
/* 7B914 8008B114 D800BE8F */  lw         $fp, 0xd8($sp)
/* 7B918 8008B118 D400B78F */  lw         $s7, 0xd4($sp)
/* 7B91C 8008B11C D000B68F */  lw         $s6, 0xd0($sp)
/* 7B920 8008B120 CC00B58F */  lw         $s5, 0xcc($sp)
/* 7B924 8008B124 C800B48F */  lw         $s4, 0xc8($sp)
/* 7B928 8008B128 C400B38F */  lw         $s3, 0xc4($sp)
/* 7B92C 8008B12C C000B28F */  lw         $s2, 0xc0($sp)
/* 7B930 8008B130 BC00B18F */  lw         $s1, 0xbc($sp)
/* 7B934 8008B134 B800B08F */  lw         $s0, 0xb8($sp)
/* 7B938 8008B138 0800E003 */  jr         $ra
/* 7B93C 8008B13C E000BD27 */   addiu     $sp, $sp, 0xe0

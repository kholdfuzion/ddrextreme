.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80089e00
/* 7A600 80089E00 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 7A604 80089E04 6800A28F */  lw         $v0, 0x68($sp)
/* 7A608 80089E08 003B0700 */  sll        $a3, $a3, 0xc
/* 7A60C 80089E0C 4400B5AF */  sw         $s5, 0x44($sp)
/* 7A610 80089E10 1A00E200 */  div        $zero, $a3, $v0
/* 7A614 80089E14 02004014 */  bnez       $v0, .L80089E20
/* 7A618 80089E18 00000000 */   nop
/* 7A61C 80089E1C 0D000700 */  break      7
.L80089E20:
/* 7A620 80089E20 FFFF0124 */   addiu     $at, $zero, -1
/* 7A624 80089E24 04004114 */  bne        $v0, $at, .L80089E38
/* 7A628 80089E28 0080013C */   lui       $at, 0x8000
/* 7A62C 80089E2C 0200E114 */  bne        $a3, $at, .L80089E38
/* 7A630 80089E30 00000000 */   nop
/* 7A634 80089E34 0D000600 */  break      6
.L80089E38:
/* 7A638 80089E38 12A80000 */   mflo      $s5
/* 7A63C 80089E3C 4C00B7AF */  sw         $s7, 0x4c($sp)
/* 7A640 80089E40 21B8A000 */  addu       $s7, $a1, $zero
/* 7A644 80089E44 5000BEAF */  sw         $fp, 0x50($sp)
/* 7A648 80089E48 21F0C000 */  addu       $fp, $a2, $zero
/* 7A64C 80089E4C 30FD0624 */  addiu      $a2, $zero, -0x2d0
/* 7A650 80089E50 5400BFAF */  sw         $ra, 0x54($sp)
/* 7A654 80089E54 4800B6AF */  sw         $s6, 0x48($sp)
/* 7A658 80089E58 4000B4AF */  sw         $s4, 0x40($sp)
/* 7A65C 80089E5C 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 7A660 80089E60 3800B2AF */  sw         $s2, 0x38($sp)
/* 7A664 80089E64 3400B1AF */  sw         $s1, 0x34($sp)
/* 7A668 80089E68 3000B0AF */  sw         $s0, 0x30($sp)
/* 7A66C 80089E6C 0110A22A */  slti       $v0, $s5, 0x1001
/* 7A670 80089E70 01004238 */  xori       $v0, $v0, 1
/* 7A674 80089E74 1B004010 */  beqz       $v0, .L80089EE4
/* 7A678 80089E78 5800A4AF */   sw        $a0, 0x58($sp)
/* 7A67C 80089E7C 0118A22A */  slti       $v0, $s5, 0x1801
/* 7A680 80089E80 06004010 */  beqz       $v0, .L80089E9C
/* 7A684 80089E84 00101124 */   addiu     $s1, $zero, 0x1000
/* 7A688 80089E88 2A10B102 */  slt        $v0, $s5, $s1
/* 7A68C 80089E8C 05004014 */  bnez       $v0, .L80089EA4
/* 7A690 80089E90 00F03126 */   addiu     $s1, $s1, -0x1000
/* 7A694 80089E94 A8270208 */  j          .L80089EA0
/* 7A698 80089E98 2188A002 */   addu      $s1, $s5, $zero
.L80089E9C:
/* 7A69C 80089E9C 00181124 */  addiu      $s1, $zero, 0x1800
.L80089EA0:
/* 7A6A0 80089EA0 00F03126 */  addiu      $s1, $s1, -0x1000
.L80089EA4:
/* 7A6A4 80089EA4 3001C224 */  addiu      $v0, $a2, 0x130
/* 7A6A8 80089EA8 18005100 */  mult       $v0, $s1
/* 7A6AC 80089EAC 12180000 */  mflo       $v1
/* 7A6B0 80089EB0 00000000 */  nop
/* 7A6B4 80089EB4 00000000 */  nop
/* 7A6B8 80089EB8 18007100 */  mult       $v1, $s1
/* 7A6BC 80089EBC 12200000 */  mflo       $a0
/* 7A6C0 80089EC0 05008104 */  bgez       $a0, .L80089ED8
/* 7A6C4 80089EC4 83150400 */   sra       $v0, $a0, 0x16
/* 7A6C8 80089EC8 3F00023C */  lui        $v0, 0x3f
/* 7A6CC 80089ECC FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7A6D0 80089ED0 21208200 */  addu       $a0, $a0, $v0
/* 7A6D4 80089ED4 83150400 */  sra        $v0, $a0, 0x16
.L80089ED8:
/* 7A6D8 80089ED8 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7A6DC 80089EDC E5270208 */  j          .L80089F94
/* 7A6E0 80089EE0 21B00201 */   addu      $s6, $t0, $v0
.L80089EE4:
/* 7A6E4 80089EE4 0108A22A */  slti       $v0, $s5, 0x801
/* 7A6E8 80089EE8 04004010 */  beqz       $v0, .L80089EFC
/* 7A6EC 80089EEC 00081124 */   addiu     $s1, $zero, 0x800
/* 7A6F0 80089EF0 0200A106 */  bgez       $s5, .L80089EFC
/* 7A6F4 80089EF4 2188A002 */   addu      $s1, $s5, $zero
/* 7A6F8 80089EF8 21880000 */  addu       $s1, $zero, $zero
.L80089EFC:
/* 7A6FC 80089EFC D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7A700 80089F00 23100601 */  subu       $v0, $t0, $a2
/* 7A704 80089F04 18005100 */  mult       $v0, $s1
/* 7A708 80089F08 12100000 */  mflo       $v0
/* 7A70C 80089F0C 02004104 */  bgez       $v0, .L80089F18
/* 7A710 80089F10 00000000 */   nop
/* 7A714 80089F14 FF074224 */  addiu      $v0, $v0, 0x7ff
.L80089F18:
/* 7A718 80089F18 C3120200 */  sra        $v0, $v0, 0xb
/* 7A71C 80089F1C 21B0C200 */  addu       $s6, $a2, $v0
/* 7A720 80089F20 0110A22A */  slti       $v0, $s5, 0x1001
/* 7A724 80089F24 06004010 */  beqz       $v0, .L80089F40
/* 7A728 80089F28 00081124 */   addiu     $s1, $zero, 0x800
/* 7A72C 80089F2C 2A10B102 */  slt        $v0, $s5, $s1
/* 7A730 80089F30 04004014 */  bnez       $v0, .L80089F44
/* 7A734 80089F34 00000000 */   nop
/* 7A738 80089F38 D1270208 */  j          .L80089F44
/* 7A73C 80089F3C 2188A002 */   addu      $s1, $s5, $zero
.L80089F40:
/* 7A740 80089F40 00101124 */  addiu      $s1, $zero, 0x1000
.L80089F44:
/* 7A744 80089F44 00F82426 */  addiu      $a0, $s1, -0x800
/* 7A748 80089F48 40880400 */  sll        $s1, $a0, 1
/* 7A74C 80089F4C F4F1000C */  jal        rsin
/* 7A750 80089F50 80200400 */   sll       $a0, $a0, 2
/* 7A754 80089F54 00100424 */  addiu      $a0, $zero, 0x1000
/* 7A758 80089F58 23209100 */  subu       $a0, $a0, $s1
/* 7A75C 80089F5C 40180400 */  sll        $v1, $a0, 1
/* 7A760 80089F60 21186400 */  addu       $v1, $v1, $a0
/* 7A764 80089F64 40180300 */  sll        $v1, $v1, 1
/* 7A768 80089F68 18004300 */  mult       $v0, $v1
/* 7A76C 80089F6C 12200000 */  mflo       $a0
/* 7A770 80089F70 05008104 */  bgez       $a0, .L80089F88
/* 7A774 80089F74 03160400 */   sra       $v0, $a0, 0x18
/* 7A778 80089F78 FF00023C */  lui        $v0, 0xff
/* 7A77C 80089F7C FFFF4234 */  ori        $v0, $v0, 0xffff
/* 7A780 80089F80 21208200 */  addu       $a0, $a0, $v0
/* 7A784 80089F84 03160400 */  sra        $v0, $a0, 0x18
.L80089F88:
/* 7A788 80089F88 031B0300 */  sra        $v1, $v1, 0xc
/* 7A78C 80089F8C 21104300 */  addu       $v0, $v0, $v1
/* 7A790 80089F90 23B0C202 */  subu       $s6, $s6, $v0
.L80089F94:
/* 7A794 80089F94 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A798 80089F98 3C000325 */  addiu      $v1, $t0, 0x3c
/* 7A79C 80089F9C 2128E002 */  addu       $a1, $s7, $zero
/* 7A7A0 80089FA0 2130C003 */  addu       $a2, $fp, $zero
/* 7A7A4 80089FA4 BE00C726 */  addiu      $a3, $s6, 0xbe
/* 7A7A8 80089FA8 5800A48F */  lw         $a0, 0x58($sp)
/* 7A7AC 80089FAC 01001124 */  addiu      $s1, $zero, 1
/* 7A7B0 80089FB0 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A7B4 80089FB4 3024020C */  jal        FUN_800890c0
/* 7A7B8 80089FB8 1400B1AF */   sw        $s1, 0x14($sp)
/* 7A7BC 80089FBC 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A7C0 80089FC0 10000325 */  addiu      $v1, $t0, 0x10
/* 7A7C4 80089FC4 2128E002 */  addu       $a1, $s7, $zero
/* 7A7C8 80089FC8 21304000 */  addu       $a2, $v0, $zero
/* 7A7CC 80089FCC 5400D026 */  addiu      $s0, $s6, 0x54
/* 7A7D0 80089FD0 5800A48F */  lw         $a0, 0x58($sp)
/* 7A7D4 80089FD4 21380002 */  addu       $a3, $s0, $zero
/* 7A7D8 80089FD8 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A7DC 80089FDC 4F07020C */  jal        FUN_80081d3c
/* 7A7E0 80089FE0 1400B1AF */   sw        $s1, 0x14($sp)
/* 7A7E4 80089FE4 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A7E8 80089FE8 22000325 */  addiu      $v1, $t0, 0x22
/* 7A7EC 80089FEC 2128E002 */  addu       $a1, $s7, $zero
/* 7A7F0 80089FF0 21304000 */  addu       $a2, $v0, $zero
/* 7A7F4 80089FF4 5800A48F */  lw         $a0, 0x58($sp)
/* 7A7F8 80089FF8 21380002 */  addu       $a3, $s0, $zero
/* 7A7FC 80089FFC 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A800 8008A000 4306020C */  jal        FUN_8008190c
/* 7A804 8008A004 1400B1AF */   sw        $s1, 0x14($sp)
/* 7A808 8008A008 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A80C 8008A00C 10000325 */  addiu      $v1, $t0, 0x10
/* 7A810 8008A010 2128E002 */  addu       $a1, $s7, $zero
/* 7A814 8008A014 21304000 */  addu       $a2, $v0, $zero
/* 7A818 8008A018 5800A48F */  lw         $a0, 0x58($sp)
/* 7A81C 8008A01C C000C726 */  addiu      $a3, $s6, 0xc0
/* 7A820 8008A020 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A824 8008A024 4208020C */  jal        FUN_80082108
/* 7A828 8008A028 1400B1AF */   sw        $s1, 0x14($sp)
/* 7A82C 8008A02C 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A830 8008A030 21181101 */  addu       $v1, $t0, $s1
/* 7A834 8008A034 2128E002 */  addu       $a1, $s7, $zero
/* 7A838 8008A038 21304000 */  addu       $a2, $v0, $zero
/* 7A83C 8008A03C 5800A48F */  lw         $a0, 0x58($sp)
/* 7A840 8008A040 B400C726 */  addiu      $a3, $s6, 0xb4
/* 7A844 8008A044 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A848 8008A048 2302020C */  jal        FUN_8008088c
/* 7A84C 8008A04C 1400B1AF */   sw        $s1, 0x14($sp)
/* 7A850 8008A050 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A854 8008A054 39000325 */  addiu      $v1, $t0, 0x39
/* 7A858 8008A058 2128E002 */  addu       $a1, $s7, $zero
/* 7A85C 8008A05C 5800A48F */  lw         $a0, 0x58($sp)
/* 7A860 8008A060 21304000 */  addu       $a2, $v0, $zero
/* 7A864 8008A064 1000A3AF */  sw         $v1, 0x10($sp)
/* 7A868 8008A068 1400B5AF */  sw         $s5, 0x14($sp)
/* 7A86C 8008A06C 21408000 */  addu       $t0, $a0, $zero
/* 7A870 8008A070 AC480291 */  lbu        $v0, 0x48ac($t0)
/* 7A874 8008A074 0300C726 */  addiu      $a3, $s6, 3
/* 7A878 8008A078 26105100 */  xor        $v0, $v0, $s1
/* 7A87C 8008A07C 2B105100 */  sltu       $v0, $v0, $s1
/* 7A880 8008A080 F614020C */  jal        FUN_800853d8
/* 7A884 8008A084 1800A2AF */   sw        $v0, 0x18($sp)
/* 7A888 8008A088 21F04000 */  addu       $fp, $v0, $zero
/* 7A88C 8008A08C 2120E002 */  addu       $a0, $s7, $zero
/* 7A890 8008A090 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7A894 8008A094 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7A898 8008A098 2128C003 */  addu       $a1, $fp, $zero
/* 7A89C 8008A09C 54000291 */  lbu        $v0, 0x54($t0)
/* 7A8A0 8008A0A0 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7A8A4 8008A0A4 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7A8A8 8008A0A8 C0800200 */  sll        $s0, $v0, 3
/* 7A8AC 8008A0AC 23800202 */  subu       $s0, $s0, $v0
/* 7A8B0 8008A0B0 80801000 */  sll        $s0, $s0, 2
/* 7A8B4 8008A0B4 21800802 */  addu       $s0, $s0, $t0
/* 7A8B8 8008A0B8 04000686 */  lh         $a2, 4($s0)
/* 7A8BC 8008A0BC 06000786 */  lh         $a3, 6($s0)
/* 7A8C0 8008A0C0 50000824 */  addiu      $t0, $zero, 0x50
/* 7A8C4 8008A0C4 1000A8AF */  sw         $t0, 0x10($sp)
/* 7A8C8 8008A0C8 38000824 */  addiu      $t0, $zero, 0x38
/* 7A8CC 8008A0CC 1400A8AF */  sw         $t0, 0x14($sp)
/* 7A8D0 8008A0D0 0C000286 */  lh         $v0, 0xc($s0)
/* 7A8D4 8008A0D4 FFFF0824 */  addiu      $t0, $zero, -1
/* 7A8D8 8008A0D8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7A8DC 8008A0DC 1769010C */  jal        FUN_8005a45c
/* 7A8E0 8008A0E0 1800A2AF */   sw        $v0, 0x18($sp)
/* 7A8E4 8008A0E4 2120E002 */  addu       $a0, $s7, $zero
/* 7A8E8 8008A0E8 16000686 */  lh         $a2, 0x16($s0)
/* 7A8EC 8008A0EC 18000786 */  lh         $a3, 0x18($s0)
/* 7A8F0 8008A0F0 396D010C */  jal        FUN_8005b4e4
/* 7A8F4 8008A0F4 2128C003 */   addu      $a1, $fp, $zero
/* 7A8F8 8008A0F8 2120E002 */  addu       $a0, $s7, $zero
/* 7A8FC 8008A0FC 2128C003 */  addu       $a1, $fp, $zero
/* 7A900 8008A100 2130C002 */  addu       $a2, $s6, $zero
/* 7A904 8008A104 5EFF0724 */  addiu      $a3, $zero, -0xa2
/* 7A908 8008A108 50000824 */  addiu      $t0, $zero, 0x50
/* 7A90C 8008A10C 1000A8AF */  sw         $t0, 0x10($sp)
/* 7A910 8008A110 38000824 */  addiu      $t0, $zero, 0x38
/* 7A914 8008A114 976D010C */  jal        FUN_8005b65c
/* 7A918 8008A118 1400A8AF */   sw        $t0, 0x14($sp)
/* 7A91C 8008A11C 2120E002 */  addu       $a0, $s7, $zero
/* 7A920 8008A120 2128C003 */  addu       $a1, $fp, $zero
/* 7A924 8008A124 80000624 */  addiu      $a2, $zero, 0x80
/* 7A928 8008A128 2138C000 */  addu       $a3, $a2, $zero
/* 7A92C 8008A12C 2140C000 */  addu       $t0, $a2, $zero
/* 7A930 8008A130 EB6C010C */  jal        FUN_8005b3ac
/* 7A934 8008A134 1000A8AF */   sw        $t0, 0x10($sp)
/* 7A938 8008A138 21F0D103 */  addu       $fp, $fp, $s1
/* 7A93C 8008A13C 2120E002 */  addu       $a0, $s7, $zero
/* 7A940 8008A140 04000686 */  lh         $a2, 4($s0)
/* 7A944 8008A144 06000786 */  lh         $a3, 6($s0)
/* 7A948 8008A148 50000824 */  addiu      $t0, $zero, 0x50
/* 7A94C 8008A14C 08001124 */  addiu      $s1, $zero, 8
/* 7A950 8008A150 2128C003 */  addu       $a1, $fp, $zero
/* 7A954 8008A154 1000A8AF */  sw         $t0, 0x10($sp)
/* 7A958 8008A158 1400B1AF */  sw         $s1, 0x14($sp)
/* 7A95C 8008A15C 0C000286 */  lh         $v0, 0xc($s0)
/* 7A960 8008A160 FFFF0824 */  addiu      $t0, $zero, -1
/* 7A964 8008A164 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7A968 8008A168 3800E724 */  addiu      $a3, $a3, 0x38
/* 7A96C 8008A16C 1769010C */  jal        FUN_8005a45c
/* 7A970 8008A170 1800A2AF */   sw        $v0, 0x18($sp)
/* 7A974 8008A174 2120E002 */  addu       $a0, $s7, $zero
/* 7A978 8008A178 16000686 */  lh         $a2, 0x16($s0)
/* 7A97C 8008A17C 18000786 */  lh         $a3, 0x18($s0)
/* 7A980 8008A180 396D010C */  jal        FUN_8005b4e4
/* 7A984 8008A184 2128C003 */   addu      $a1, $fp, $zero
/* 7A988 8008A188 2120E002 */  addu       $a0, $s7, $zero
/* 7A98C 8008A18C 2128C003 */  addu       $a1, $fp, $zero
/* 7A990 8008A190 2130C002 */  addu       $a2, $s6, $zero
/* 7A994 8008A194 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7A998 8008A198 38000825 */  addiu      $t0, $t0, 0x38
/* 7A99C 8008A19C 21380001 */  addu       $a3, $t0, $zero
/* 7A9A0 8008A1A0 2800A8AF */  sw         $t0, 0x28($sp)
/* 7A9A4 8008A1A4 50000824 */  addiu      $t0, $zero, 0x50
/* 7A9A8 8008A1A8 1000A8AF */  sw         $t0, 0x10($sp)
/* 7A9AC 8008A1AC 976D010C */  jal        FUN_8005b65c
/* 7A9B0 8008A1B0 1400A8AF */   sw        $t0, 0x14($sp)
/* 7A9B4 8008A1B4 2120E002 */  addu       $a0, $s7, $zero
/* 7A9B8 8008A1B8 2128C003 */  addu       $a1, $fp, $zero
/* 7A9BC 8008A1BC 80000624 */  addiu      $a2, $zero, 0x80
/* 7A9C0 8008A1C0 2138C000 */  addu       $a3, $a2, $zero
/* 7A9C4 8008A1C4 2140C000 */  addu       $t0, $a2, $zero
/* 7A9C8 8008A1C8 EB6C010C */  jal        FUN_8005b3ac
/* 7A9CC 8008A1CC 1000A8AF */   sw        $t0, 0x10($sp)
/* 7A9D0 8008A1D0 0100DE27 */  addiu      $fp, $fp, 1
/* 7A9D4 8008A1D4 2120E002 */  addu       $a0, $s7, $zero
/* 7A9D8 8008A1D8 04000686 */  lh         $a2, 4($s0)
/* 7A9DC 8008A1DC 06000786 */  lh         $a3, 6($s0)
/* 7A9E0 8008A1E0 50000824 */  addiu      $t0, $zero, 0x50
/* 7A9E4 8008A1E4 2128C003 */  addu       $a1, $fp, $zero
/* 7A9E8 8008A1E8 1000A8AF */  sw         $t0, 0x10($sp)
/* 7A9EC 8008A1EC 1400B1AF */  sw         $s1, 0x14($sp)
/* 7A9F0 8008A1F0 0C000286 */  lh         $v0, 0xc($s0)
/* 7A9F4 8008A1F4 FFFF0824 */  addiu      $t0, $zero, -1
/* 7A9F8 8008A1F8 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7A9FC 8008A1FC 4000E724 */  addiu      $a3, $a3, 0x40
/* 7AA00 8008A200 1769010C */  jal        FUN_8005a45c
/* 7AA04 8008A204 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AA08 8008A208 2120E002 */  addu       $a0, $s7, $zero
/* 7AA0C 8008A20C 16000686 */  lh         $a2, 0x16($s0)
/* 7AA10 8008A210 18000786 */  lh         $a3, 0x18($s0)
/* 7AA14 8008A214 396D010C */  jal        FUN_8005b4e4
/* 7AA18 8008A218 2128C003 */   addu      $a1, $fp, $zero
/* 7AA1C 8008A21C 2120E002 */  addu       $a0, $s7, $zero
/* 7AA20 8008A220 2128C003 */  addu       $a1, $fp, $zero
/* 7AA24 8008A224 2130C002 */  addu       $a2, $s6, $zero
/* 7AA28 8008A228 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7AA2C 8008A22C 88001425 */  addiu      $s4, $t0, 0x88
/* 7AA30 8008A230 21388002 */  addu       $a3, $s4, $zero
/* 7AA34 8008A234 50000824 */  addiu      $t0, $zero, 0x50
/* 7AA38 8008A238 1000A8AF */  sw         $t0, 0x10($sp)
/* 7AA3C 8008A23C 976D010C */  jal        FUN_8005b65c
/* 7AA40 8008A240 1400B1AF */   sw        $s1, 0x14($sp)
/* 7AA44 8008A244 2120E002 */  addu       $a0, $s7, $zero
/* 7AA48 8008A248 2128C003 */  addu       $a1, $fp, $zero
/* 7AA4C 8008A24C 80000624 */  addiu      $a2, $zero, 0x80
/* 7AA50 8008A250 2138C000 */  addu       $a3, $a2, $zero
/* 7AA54 8008A254 2140C000 */  addu       $t0, $a2, $zero
/* 7AA58 8008A258 EB6C010C */  jal        FUN_8005b3ac
/* 7AA5C 8008A25C 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AA60 8008A260 0100DE27 */  addiu      $fp, $fp, 1
/* 7AA64 8008A264 2120E002 */  addu       $a0, $s7, $zero
/* 7AA68 8008A268 04000686 */  lh         $a2, 4($s0)
/* 7AA6C 8008A26C 06000786 */  lh         $a3, 6($s0)
/* 7AA70 8008A270 38000824 */  addiu      $t0, $zero, 0x38
/* 7AA74 8008A274 2128C003 */  addu       $a1, $fp, $zero
/* 7AA78 8008A278 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AA7C 8008A27C 1400A8AF */  sw         $t0, 0x14($sp)
/* 7AA80 8008A280 0C000286 */  lh         $v0, 0xc($s0)
/* 7AA84 8008A284 FFFF0824 */  addiu      $t0, $zero, -1
/* 7AA88 8008A288 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7AA8C 8008A28C 5000C624 */  addiu      $a2, $a2, 0x50
/* 7AA90 8008A290 1769010C */  jal        FUN_8005a45c
/* 7AA94 8008A294 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AA98 8008A298 2120E002 */  addu       $a0, $s7, $zero
/* 7AA9C 8008A29C 16000686 */  lh         $a2, 0x16($s0)
/* 7AAA0 8008A2A0 18000786 */  lh         $a3, 0x18($s0)
/* 7AAA4 8008A2A4 396D010C */  jal        FUN_8005b4e4
/* 7AAA8 8008A2A8 2128C003 */   addu      $a1, $fp, $zero
/* 7AAAC 8008A2AC 2120E002 */  addu       $a0, $s7, $zero
/* 7AAB0 8008A2B0 2128C003 */  addu       $a1, $fp, $zero
/* 7AAB4 8008A2B4 5000D326 */  addiu      $s3, $s6, 0x50
/* 7AAB8 8008A2B8 21306002 */  addu       $a2, $s3, $zero
/* 7AABC 8008A2BC 5EFF0724 */  addiu      $a3, $zero, -0xa2
/* 7AAC0 8008A2C0 AC001224 */  addiu      $s2, $zero, 0xac
/* 7AAC4 8008A2C4 38000824 */  addiu      $t0, $zero, 0x38
/* 7AAC8 8008A2C8 1000B2AF */  sw         $s2, 0x10($sp)
/* 7AACC 8008A2CC 976D010C */  jal        FUN_8005b65c
/* 7AAD0 8008A2D0 1400A8AF */   sw        $t0, 0x14($sp)
/* 7AAD4 8008A2D4 2120E002 */  addu       $a0, $s7, $zero
/* 7AAD8 8008A2D8 2128C003 */  addu       $a1, $fp, $zero
/* 7AADC 8008A2DC 80000624 */  addiu      $a2, $zero, 0x80
/* 7AAE0 8008A2E0 2138C000 */  addu       $a3, $a2, $zero
/* 7AAE4 8008A2E4 2140C000 */  addu       $t0, $a2, $zero
/* 7AAE8 8008A2E8 EB6C010C */  jal        FUN_8005b3ac
/* 7AAEC 8008A2EC 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AAF0 8008A2F0 0100DE27 */  addiu      $fp, $fp, 1
/* 7AAF4 8008A2F4 2120E002 */  addu       $a0, $s7, $zero
/* 7AAF8 8008A2F8 04000686 */  lh         $a2, 4($s0)
/* 7AAFC 8008A2FC 06000786 */  lh         $a3, 6($s0)
/* 7AB00 8008A300 2128C003 */  addu       $a1, $fp, $zero
/* 7AB04 8008A304 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AB08 8008A308 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AB0C 8008A30C 0C000286 */  lh         $v0, 0xc($s0)
/* 7AB10 8008A310 FFFF0824 */  addiu      $t0, $zero, -1
/* 7AB14 8008A314 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7AB18 8008A318 5000C624 */  addiu      $a2, $a2, 0x50
/* 7AB1C 8008A31C 3800E724 */  addiu      $a3, $a3, 0x38
/* 7AB20 8008A320 1769010C */  jal        FUN_8005a45c
/* 7AB24 8008A324 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AB28 8008A328 2120E002 */  addu       $a0, $s7, $zero
/* 7AB2C 8008A32C 16000686 */  lh         $a2, 0x16($s0)
/* 7AB30 8008A330 18000786 */  lh         $a3, 0x18($s0)
/* 7AB34 8008A334 396D010C */  jal        FUN_8005b4e4
/* 7AB38 8008A338 2128C003 */   addu      $a1, $fp, $zero
/* 7AB3C 8008A33C 2120E002 */  addu       $a0, $s7, $zero
/* 7AB40 8008A340 2128C003 */  addu       $a1, $fp, $zero
/* 7AB44 8008A344 21306002 */  addu       $a2, $s3, $zero
/* 7AB48 8008A348 2800A78F */  lw         $a3, 0x28($sp)
/* 7AB4C 8008A34C 50000824 */  addiu      $t0, $zero, 0x50
/* 7AB50 8008A350 1000B2AF */  sw         $s2, 0x10($sp)
/* 7AB54 8008A354 976D010C */  jal        FUN_8005b65c
/* 7AB58 8008A358 1400A8AF */   sw        $t0, 0x14($sp)
/* 7AB5C 8008A35C 2120E002 */  addu       $a0, $s7, $zero
/* 7AB60 8008A360 2128C003 */  addu       $a1, $fp, $zero
/* 7AB64 8008A364 80000624 */  addiu      $a2, $zero, 0x80
/* 7AB68 8008A368 2138C000 */  addu       $a3, $a2, $zero
/* 7AB6C 8008A36C 2140C000 */  addu       $t0, $a2, $zero
/* 7AB70 8008A370 EB6C010C */  jal        FUN_8005b3ac
/* 7AB74 8008A374 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AB78 8008A378 0100DE27 */  addiu      $fp, $fp, 1
/* 7AB7C 8008A37C 2120E002 */  addu       $a0, $s7, $zero
/* 7AB80 8008A380 04000686 */  lh         $a2, 4($s0)
/* 7AB84 8008A384 06000786 */  lh         $a3, 6($s0)
/* 7AB88 8008A388 2128C003 */  addu       $a1, $fp, $zero
/* 7AB8C 8008A38C 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AB90 8008A390 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AB94 8008A394 0C000286 */  lh         $v0, 0xc($s0)
/* 7AB98 8008A398 FFFF0824 */  addiu      $t0, $zero, -1
/* 7AB9C 8008A39C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7ABA0 8008A3A0 5000C624 */  addiu      $a2, $a2, 0x50
/* 7ABA4 8008A3A4 4000E724 */  addiu      $a3, $a3, 0x40
/* 7ABA8 8008A3A8 1769010C */  jal        FUN_8005a45c
/* 7ABAC 8008A3AC 1800A2AF */   sw        $v0, 0x18($sp)
/* 7ABB0 8008A3B0 2120E002 */  addu       $a0, $s7, $zero
/* 7ABB4 8008A3B4 16000686 */  lh         $a2, 0x16($s0)
/* 7ABB8 8008A3B8 18000786 */  lh         $a3, 0x18($s0)
/* 7ABBC 8008A3BC 396D010C */  jal        FUN_8005b4e4
/* 7ABC0 8008A3C0 2128C003 */   addu      $a1, $fp, $zero
/* 7ABC4 8008A3C4 2120E002 */  addu       $a0, $s7, $zero
/* 7ABC8 8008A3C8 2128C003 */  addu       $a1, $fp, $zero
/* 7ABCC 8008A3CC 21306002 */  addu       $a2, $s3, $zero
/* 7ABD0 8008A3D0 21388002 */  addu       $a3, $s4, $zero
/* 7ABD4 8008A3D4 1000B2AF */  sw         $s2, 0x10($sp)
/* 7ABD8 8008A3D8 976D010C */  jal        FUN_8005b65c
/* 7ABDC 8008A3DC 1400B1AF */   sw        $s1, 0x14($sp)
/* 7ABE0 8008A3E0 2120E002 */  addu       $a0, $s7, $zero
/* 7ABE4 8008A3E4 2128C003 */  addu       $a1, $fp, $zero
/* 7ABE8 8008A3E8 80000624 */  addiu      $a2, $zero, 0x80
/* 7ABEC 8008A3EC 2138C000 */  addu       $a3, $a2, $zero
/* 7ABF0 8008A3F0 2140C000 */  addu       $t0, $a2, $zero
/* 7ABF4 8008A3F4 EB6C010C */  jal        FUN_8005b3ac
/* 7ABF8 8008A3F8 1000A8AF */   sw        $t0, 0x10($sp)
/* 7ABFC 8008A3FC 0100DE27 */  addiu      $fp, $fp, 1
/* 7AC00 8008A400 2120E002 */  addu       $a0, $s7, $zero
/* 7AC04 8008A404 04000686 */  lh         $a2, 4($s0)
/* 7AC08 8008A408 06000786 */  lh         $a3, 6($s0)
/* 7AC0C 8008A40C 38000824 */  addiu      $t0, $zero, 0x38
/* 7AC10 8008A410 2128C003 */  addu       $a1, $fp, $zero
/* 7AC14 8008A414 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AC18 8008A418 1400A8AF */  sw         $t0, 0x14($sp)
/* 7AC1C 8008A41C 0C000286 */  lh         $v0, 0xc($s0)
/* 7AC20 8008A420 FFFF0824 */  addiu      $t0, $zero, -1
/* 7AC24 8008A424 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7AC28 8008A428 5800C624 */  addiu      $a2, $a2, 0x58
/* 7AC2C 8008A42C 1769010C */  jal        FUN_8005a45c
/* 7AC30 8008A430 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AC34 8008A434 2120E002 */  addu       $a0, $s7, $zero
/* 7AC38 8008A438 16000686 */  lh         $a2, 0x16($s0)
/* 7AC3C 8008A43C 18000786 */  lh         $a3, 0x18($s0)
/* 7AC40 8008A440 396D010C */  jal        FUN_8005b4e4
/* 7AC44 8008A444 2128C003 */   addu      $a1, $fp, $zero
/* 7AC48 8008A448 2120E002 */  addu       $a0, $s7, $zero
/* 7AC4C 8008A44C 2128C003 */  addu       $a1, $fp, $zero
/* 7AC50 8008A450 FC00D226 */  addiu      $s2, $s6, 0xfc
/* 7AC54 8008A454 21304002 */  addu       $a2, $s2, $zero
/* 7AC58 8008A458 5EFF0724 */  addiu      $a3, $zero, -0xa2
/* 7AC5C 8008A45C 38000824 */  addiu      $t0, $zero, 0x38
/* 7AC60 8008A460 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AC64 8008A464 976D010C */  jal        FUN_8005b65c
/* 7AC68 8008A468 1400A8AF */   sw        $t0, 0x14($sp)
/* 7AC6C 8008A46C 2120E002 */  addu       $a0, $s7, $zero
/* 7AC70 8008A470 2128C003 */  addu       $a1, $fp, $zero
/* 7AC74 8008A474 80000624 */  addiu      $a2, $zero, 0x80
/* 7AC78 8008A478 2138C000 */  addu       $a3, $a2, $zero
/* 7AC7C 8008A47C 2140C000 */  addu       $t0, $a2, $zero
/* 7AC80 8008A480 EB6C010C */  jal        FUN_8005b3ac
/* 7AC84 8008A484 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AC88 8008A488 0100DE27 */  addiu      $fp, $fp, 1
/* 7AC8C 8008A48C 2120E002 */  addu       $a0, $s7, $zero
/* 7AC90 8008A490 04000686 */  lh         $a2, 4($s0)
/* 7AC94 8008A494 06000786 */  lh         $a3, 6($s0)
/* 7AC98 8008A498 2128C003 */  addu       $a1, $fp, $zero
/* 7AC9C 8008A49C 1000B1AF */  sw         $s1, 0x10($sp)
/* 7ACA0 8008A4A0 1400B1AF */  sw         $s1, 0x14($sp)
/* 7ACA4 8008A4A4 0C000286 */  lh         $v0, 0xc($s0)
/* 7ACA8 8008A4A8 FFFF0824 */  addiu      $t0, $zero, -1
/* 7ACAC 8008A4AC 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7ACB0 8008A4B0 5800C624 */  addiu      $a2, $a2, 0x58
/* 7ACB4 8008A4B4 3800E724 */  addiu      $a3, $a3, 0x38
/* 7ACB8 8008A4B8 1769010C */  jal        FUN_8005a45c
/* 7ACBC 8008A4BC 1800A2AF */   sw        $v0, 0x18($sp)
/* 7ACC0 8008A4C0 2120E002 */  addu       $a0, $s7, $zero
/* 7ACC4 8008A4C4 16000686 */  lh         $a2, 0x16($s0)
/* 7ACC8 8008A4C8 18000786 */  lh         $a3, 0x18($s0)
/* 7ACCC 8008A4CC 396D010C */  jal        FUN_8005b4e4
/* 7ACD0 8008A4D0 2128C003 */   addu      $a1, $fp, $zero
/* 7ACD4 8008A4D4 2120E002 */  addu       $a0, $s7, $zero
/* 7ACD8 8008A4D8 2128C003 */  addu       $a1, $fp, $zero
/* 7ACDC 8008A4DC 21304002 */  addu       $a2, $s2, $zero
/* 7ACE0 8008A4E0 2800A78F */  lw         $a3, 0x28($sp)
/* 7ACE4 8008A4E4 50000824 */  addiu      $t0, $zero, 0x50
/* 7ACE8 8008A4E8 1000B1AF */  sw         $s1, 0x10($sp)
/* 7ACEC 8008A4EC 976D010C */  jal        FUN_8005b65c
/* 7ACF0 8008A4F0 1400A8AF */   sw        $t0, 0x14($sp)
/* 7ACF4 8008A4F4 2120E002 */  addu       $a0, $s7, $zero
/* 7ACF8 8008A4F8 2128C003 */  addu       $a1, $fp, $zero
/* 7ACFC 8008A4FC 80000624 */  addiu      $a2, $zero, 0x80
/* 7AD00 8008A500 2138C000 */  addu       $a3, $a2, $zero
/* 7AD04 8008A504 2140C000 */  addu       $t0, $a2, $zero
/* 7AD08 8008A508 EB6C010C */  jal        FUN_8005b3ac
/* 7AD0C 8008A50C 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AD10 8008A510 0100DE27 */  addiu      $fp, $fp, 1
/* 7AD14 8008A514 2120E002 */  addu       $a0, $s7, $zero
/* 7AD18 8008A518 04000686 */  lh         $a2, 4($s0)
/* 7AD1C 8008A51C 06000786 */  lh         $a3, 6($s0)
/* 7AD20 8008A520 2128C003 */  addu       $a1, $fp, $zero
/* 7AD24 8008A524 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AD28 8008A528 1400B1AF */  sw         $s1, 0x14($sp)
/* 7AD2C 8008A52C 0C000286 */  lh         $v0, 0xc($s0)
/* 7AD30 8008A530 FFFF0824 */  addiu      $t0, $zero, -1
/* 7AD34 8008A534 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7AD38 8008A538 5800C624 */  addiu      $a2, $a2, 0x58
/* 7AD3C 8008A53C 4000E724 */  addiu      $a3, $a3, 0x40
/* 7AD40 8008A540 1769010C */  jal        FUN_8005a45c
/* 7AD44 8008A544 1800A2AF */   sw        $v0, 0x18($sp)
/* 7AD48 8008A548 2120E002 */  addu       $a0, $s7, $zero
/* 7AD4C 8008A54C 16000686 */  lh         $a2, 0x16($s0)
/* 7AD50 8008A550 18000786 */  lh         $a3, 0x18($s0)
/* 7AD54 8008A554 396D010C */  jal        FUN_8005b4e4
/* 7AD58 8008A558 2128C003 */   addu      $a1, $fp, $zero
/* 7AD5C 8008A55C 2120E002 */  addu       $a0, $s7, $zero
/* 7AD60 8008A560 2128C003 */  addu       $a1, $fp, $zero
/* 7AD64 8008A564 21304002 */  addu       $a2, $s2, $zero
/* 7AD68 8008A568 21388002 */  addu       $a3, $s4, $zero
/* 7AD6C 8008A56C 1000B1AF */  sw         $s1, 0x10($sp)
/* 7AD70 8008A570 976D010C */  jal        FUN_8005b65c
/* 7AD74 8008A574 1400B1AF */   sw        $s1, 0x14($sp)
/* 7AD78 8008A578 2120E002 */  addu       $a0, $s7, $zero
/* 7AD7C 8008A57C 2128C003 */  addu       $a1, $fp, $zero
/* 7AD80 8008A580 80000624 */  addiu      $a2, $zero, 0x80
/* 7AD84 8008A584 2138C000 */  addu       $a3, $a2, $zero
/* 7AD88 8008A588 2140C000 */  addu       $t0, $a2, $zero
/* 7AD8C 8008A58C EB6C010C */  jal        FUN_8005b3ac
/* 7AD90 8008A590 1000A8AF */   sw        $t0, 0x10($sp)
/* 7AD94 8008A594 00100224 */  addiu      $v0, $zero, 0x1000
/* 7AD98 8008A598 5F00A212 */  beq        $s5, $v0, .L8008A718
/* 7AD9C 8008A59C 0100DE27 */   addiu     $fp, $fp, 1
/* 7ADA0 8008A5A0 2A10A202 */  slt        $v0, $s5, $v0
/* 7ADA4 8008A5A4 35004010 */  beqz       $v0, .L8008A67C
/* 7ADA8 8008A5A8 FF000524 */   addiu     $a1, $zero, 0xff
/* 7ADAC 8008A5AC 80000624 */  addiu      $a2, $zero, 0x80
/* 7ADB0 8008A5B0 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7ADB4 8008A5B4 1000A8AF */  sw         $t0, 0x10($sp)
/* 7ADB8 8008A5B8 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7ADBC 8008A5BC 20020225 */  addiu      $v0, $t0, 0x220
/* 7ADC0 8008A5C0 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7ADC4 8008A5C4 F0001225 */  addiu      $s2, $t0, 0xf0
/* 7ADC8 8008A5C8 24001124 */  addiu      $s1, $zero, 0x24
/* 7ADCC 8008A5CC 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7ADD0 8008A5D0 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7ADD4 8008A5D4 1800A2AF */  sw         $v0, 0x18($sp)
/* 7ADD8 8008A5D8 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7ADDC 8008A5DC 2000B1AF */  sw         $s1, 0x20($sp)
/* 7ADE0 8008A5E0 59000391 */  lbu        $v1, 0x59($t0)
/* 7ADE4 8008A5E4 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7ADE8 8008A5E8 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7ADEC 8008A5EC C0100300 */  sll        $v0, $v1, 3
/* 7ADF0 8008A5F0 23104300 */  subu       $v0, $v0, $v1
/* 7ADF4 8008A5F4 80100200 */  sll        $v0, $v0, 2
/* 7ADF8 8008A5F8 21104800 */  addu       $v0, $v0, $t0
/* 7ADFC 8008A5FC 5800A88F */  lw         $t0, 0x58($sp)
/* 7AE00 8008A600 94001024 */  addiu      $s0, $zero, 0x94
/* 7AE04 8008A604 2400B0AF */  sw         $s0, 0x24($sp)
/* 7AE08 8008A608 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AE0C 8008A60C E80A048D */  lw         $a0, 0xae8($t0)
/* 7AE10 8008A610 D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7AE14 8008A614 3DAD010C */  jal        FUN_8006b4f4
/* 7AE18 8008A618 E0000725 */   addiu     $a3, $t0, 0xe0
/* 7AE1C 8008A61C 5800A88F */  lw         $t0, 0x58($sp)
/* 7AE20 8008A620 FF000524 */  addiu      $a1, $zero, 0xff
/* 7AE24 8008A624 E80A02AD */  sw         $v0, 0xae8($t0)
/* 7AE28 8008A628 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7AE2C 8008A62C E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7AE30 8008A630 59000391 */  lbu        $v1, 0x59($t0)
/* 7AE34 8008A634 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7AE38 8008A638 1000A8AF */  sw         $t0, 0x10($sp)
/* 7AE3C 8008A63C 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7AE40 8008A640 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7AE44 8008A644 C0100300 */  sll        $v0, $v1, 3
/* 7AE48 8008A648 23104300 */  subu       $v0, $v0, $v1
/* 7AE4C 8008A64C 80100200 */  sll        $v0, $v0, 2
/* 7AE50 8008A650 21104800 */  addu       $v0, $v0, $t0
/* 7AE54 8008A654 5800A88F */  lw         $t0, 0x58($sp)
/* 7AE58 8008A658 80000624 */  addiu      $a2, $zero, 0x80
/* 7AE5C 8008A65C 1800A0AF */  sw         $zero, 0x18($sp)
/* 7AE60 8008A660 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 7AE64 8008A664 2000B1AF */  sw         $s1, 0x20($sp)
/* 7AE68 8008A668 2400B0AF */  sw         $s0, 0x24($sp)
/* 7AE6C 8008A66C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AE70 8008A670 E80A048D */  lw         $a0, 0xae8($t0)
/* 7AE74 8008A674 C1290208 */  j          .L8008A704
/* 7AE78 8008A678 C0FE0724 */   addiu     $a3, $zero, -0x140
.L8008A67C:
/* 7AE7C 8008A67C 0110A22A */  slti       $v0, $s5, 0x1001
/* 7AE80 8008A680 26004014 */  bnez       $v0, .L8008A71C
/* 7AE84 8008A684 2110C003 */   addu      $v0, $fp, $zero
/* 7AE88 8008A688 FE000324 */  addiu      $v1, $zero, 0xfe
/* 7AE8C 8008A68C D0FE0824 */  addiu      $t0, $zero, -0x130
/* 7AE90 8008A690 23381601 */  subu       $a3, $t0, $s6
/* 7AE94 8008A694 21106000 */  addu       $v0, $v1, $zero
/* 7AE98 8008A698 2A104700 */  slt        $v0, $v0, $a3
/* 7AE9C 8008A69C 02004014 */  bnez       $v0, .L8008A6A8
/* 7AEA0 8008A6A0 FF000524 */   addiu     $a1, $zero, 0xff
/* 7AEA4 8008A6A4 2118E000 */  addu       $v1, $a3, $zero
.L8008A6A8:
/* 7AEA8 8008A6A8 5EFF0824 */  addiu      $t0, $zero, -0xa2
/* 7AEAC 8008A6AC 4402C226 */  addiu      $v0, $s6, 0x244
/* 7AEB0 8008A6B0 1800A2AF */  sw         $v0, 0x18($sp)
/* 7AEB4 8008A6B4 F0000225 */  addiu      $v0, $t0, 0xf0
/* 7AEB8 8008A6B8 1000A8AF */  sw         $t0, 0x10($sp)
/* 7AEBC 8008A6BC 1380083C */  lui        $t0, %hi(D_801280E0)
/* 7AEC0 8008A6C0 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 7AEC4 8008A6C4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 7AEC8 8008A6C8 94000224 */  addiu      $v0, $zero, 0x94
/* 7AECC 8008A6CC 2000A3AF */  sw         $v1, 0x20($sp)
/* 7AED0 8008A6D0 59000391 */  lbu        $v1, 0x59($t0)
/* 7AED4 8008A6D4 1380083C */  lui        $t0, %hi(D_801282E0)
/* 7AED8 8008A6D8 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 7AEDC 8008A6DC 2400A2AF */  sw         $v0, 0x24($sp)
/* 7AEE0 8008A6E0 C0100300 */  sll        $v0, $v1, 3
/* 7AEE4 8008A6E4 23104300 */  subu       $v0, $v0, $v1
/* 7AEE8 8008A6E8 80100200 */  sll        $v0, $v0, 2
/* 7AEEC 8008A6EC 21104800 */  addu       $v0, $v0, $t0
/* 7AEF0 8008A6F0 5800A88F */  lw         $t0, 0x58($sp)
/* 7AEF4 8008A6F4 80000624 */  addiu      $a2, $zero, 0x80
/* 7AEF8 8008A6F8 1400A2AF */  sw         $v0, 0x14($sp)
/* 7AEFC 8008A6FC E80A048D */  lw         $a0, 0xae8($t0)
/* 7AF00 8008A700 0401C726 */  addiu      $a3, $s6, 0x104
.L8008A704:
/* 7AF04 8008A704 3DAD010C */  jal        FUN_8006b4f4
/* 7AF08 8008A708 00000000 */   nop
/* 7AF0C 8008A70C 5800A88F */  lw         $t0, 0x58($sp)
/* 7AF10 8008A710 00000000 */  nop
/* 7AF14 8008A714 E80A02AD */  sw         $v0, 0xae8($t0)
.L8008A718:
/* 7AF18 8008A718 2110C003 */  addu       $v0, $fp, $zero
.L8008A71C:
/* 7AF1C 8008A71C 5400BF8F */  lw         $ra, 0x54($sp)
/* 7AF20 8008A720 5000BE8F */  lw         $fp, 0x50($sp)
/* 7AF24 8008A724 4C00B78F */  lw         $s7, 0x4c($sp)
/* 7AF28 8008A728 4800B68F */  lw         $s6, 0x48($sp)
/* 7AF2C 8008A72C 4400B58F */  lw         $s5, 0x44($sp)
/* 7AF30 8008A730 4000B48F */  lw         $s4, 0x40($sp)
/* 7AF34 8008A734 3C00B38F */  lw         $s3, 0x3c($sp)
/* 7AF38 8008A738 3800B28F */  lw         $s2, 0x38($sp)
/* 7AF3C 8008A73C 3400B18F */  lw         $s1, 0x34($sp)
/* 7AF40 8008A740 3000B08F */  lw         $s0, 0x30($sp)
/* 7AF44 8008A744 0800E003 */  jr         $ra
/* 7AF48 8008A748 5800BD27 */   addiu     $sp, $sp, 0x58

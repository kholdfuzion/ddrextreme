.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004f660
/* 3FE60 8004F660 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 3FE64 8004F664 2000A427 */  addiu      $a0, $sp, 0x20
/* 3FE68 8004F668 21280000 */  addu       $a1, $zero, $zero
/* 3FE6C 8004F66C 0180023C */  lui        $v0, %hi(D_80013D84)
/* 3FE70 8004F670 843D4324 */  addiu      $v1, $v0, %lo(D_80013D84)
/* 3FE74 8004F674 843D478C */  lw         $a3, 0x3d84($v0)
/* 3FE78 8004F678 0F80023C */  lui        $v0, 0x800f
/* 3FE7C 8004F67C 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 3FE80 8004F680 4800BEAF */  sw         $fp, 0x48($sp)
/* 3FE84 8004F684 4400B7AF */  sw         $s7, 0x44($sp)
/* 3FE88 8004F688 4000B6AF */  sw         $s6, 0x40($sp)
/* 3FE8C 8004F68C 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 3FE90 8004F690 3800B4AF */  sw         $s4, 0x38($sp)
/* 3FE94 8004F694 3400B3AF */  sw         $s3, 0x34($sp)
/* 3FE98 8004F698 3000B2AF */  sw         $s2, 0x30($sp)
/* 3FE9C 8004F69C 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 3FEA0 8004F6A0 2800B0AF */  sw         $s0, 0x28($sp)
/* 3FEA4 8004F6A4 0400688C */  lw         $t0, 4($v1)
/* 3FEA8 8004F6A8 DC01548C */  lw         $s4, 0x1dc($v0)
/* 3FEAC 8004F6AC 08000624 */  addiu      $a2, $zero, 8
/* 3FEB0 8004F6B0 1800A7AF */  sw         $a3, 0x18($sp)
/* 3FEB4 8004F6B4 F6A2000C */  jal        memset
/* 3FEB8 8004F6B8 1C00A8AF */   sw        $t0, 0x1c($sp)
/* 3FEBC 8004F6BC 01000524 */  addiu      $a1, $zero, 1
/* 3FEC0 8004F6C0 0180113C */  lui        $s1, %hi(D_80013D64)
/* 3FEC4 8004F6C4 1780023C */  lui        $v0, %hi(D_8016F9D8)
/* 3FEC8 8004F6C8 643D338E */  lw         $s3, %lo(D_80013D64)($s1)
/* 3FECC 8004F6CC 1780103C */  lui        $s0, %hi(D_8016F9D0)
/* 3FED0 8004F6D0 D8F940AC */  sw         $zero, %lo(D_8016F9D8)($v0)
/* 3FED4 8004F6D4 D0F90226 */  addiu      $v0, $s0, %lo(D_8016F9D0)
/* 3FED8 8004F6D8 D0F900AE */  sw         $zero, -0x630($s0)
/* 3FEDC 8004F6DC 040040AC */  sw         $zero, 4($v0)
/* 3FEE0 8004F6E0 C3B0010C */  jal        FUN_8006c30c
/* 3FEE4 8004F6E4 21206002 */   addu      $a0, $s3, $zero
/* 3FEE8 8004F6E8 21206002 */  addu       $a0, $s3, $zero
/* 3FEEC 8004F6EC 0BB2010C */  jal        FUN_8006c82c
/* 3FEF0 8004F6F0 FC000524 */   addiu     $a1, $zero, 0xfc
/* 3FEF4 8004F6F4 21206002 */  addu       $a0, $s3, $zero
/* 3FEF8 8004F6F8 08000524 */  addiu      $a1, $zero, 8
/* 3FEFC 8004F6FC 19000624 */  addiu      $a2, $zero, 0x19
/* 3FF00 8004F700 30010724 */  addiu      $a3, $zero, 0x130
/* 3FF04 8004F704 B0001224 */  addiu      $s2, $zero, 0xb0
/* 3FF08 8004F708 9CAE010C */  jal        FUN_8006ba70
/* 3FF0C 8004F70C 1000B2AF */   sw        $s2, 0x10($sp)
/* 3FF10 8004F710 21206002 */  addu       $a0, $s3, $zero
/* 3FF14 8004F714 33B1010C */  jal        FUN_8006c4cc
/* 3FF18 8004F718 21280000 */   addu      $a1, $zero, $zero
/* 3FF1C 8004F71C 21206002 */  addu       $a0, $s3, $zero
/* 3FF20 8004F720 81B1010C */  jal        FUN_8006c604
/* 3FF24 8004F724 FFFF0524 */   addiu     $a1, $zero, -1
/* 3FF28 8004F728 643D2226 */  addiu      $v0, $s1, 0x3d64
/* 3FF2C 8004F72C 0400538C */  lw         $s3, 4($v0)
/* 3FF30 8004F730 01000524 */  addiu      $a1, $zero, 1
/* 3FF34 8004F734 C3B0010C */  jal        FUN_8006c30c
/* 3FF38 8004F738 21206002 */   addu      $a0, $s3, $zero
/* 3FF3C 8004F73C 21206002 */  addu       $a0, $s3, $zero
/* 3FF40 8004F740 0BB2010C */  jal        FUN_8006c82c
/* 3FF44 8004F744 FC000524 */   addiu     $a1, $zero, 0xfc
/* 3FF48 8004F748 21206002 */  addu       $a0, $s3, $zero
/* 3FF4C 8004F74C 08000524 */  addiu      $a1, $zero, 8
/* 3FF50 8004F750 19000624 */  addiu      $a2, $zero, 0x19
/* 3FF54 8004F754 30010724 */  addiu      $a3, $zero, 0x130
/* 3FF58 8004F758 9CAE010C */  jal        FUN_8006ba70
/* 3FF5C 8004F75C 1000B2AF */   sw        $s2, 0x10($sp)
/* 3FF60 8004F760 21206002 */  addu       $a0, $s3, $zero
/* 3FF64 8004F764 33B1010C */  jal        FUN_8006c4cc
/* 3FF68 8004F768 21280000 */   addu      $a1, $zero, $zero
/* 3FF6C 8004F76C 21206002 */  addu       $a0, $s3, $zero
/* 3FF70 8004F770 81B1010C */  jal        FUN_8006c604
/* 3FF74 8004F774 FFFF0524 */   addiu     $a1, $zero, -1
/* 3FF78 8004F778 7470000C */  jal        getcoinslot1_8001c1d0
/* 3FF7C 8004F77C 21F02002 */   addu      $fp, $s1, $zero
/* 3FF80 8004F780 05004010 */  beqz       $v0, .L8004F798
/* 3FF84 8004F784 00000000 */   nop
/* 3FF88 8004F788 194A010C */  jal        FUN_80052864
/* 3FF8C 8004F78C 21208002 */   addu      $a0, $s4, $zero
/* 3FF90 8004F790 E93D0108 */  j          .L8004F7A4
/* 3FF94 8004F794 0F80173C */   lui       $s7, 0x800f
.L8004F798:
/* 3FF98 8004F798 B147010C */  jal        FUN_80051ec4
/* 3FF9C 8004F79C 21208002 */   addu      $a0, $s4, $zero
/* 3FFA0 8004F7A0 0F80173C */  lui        $s7, 0x800f
.L8004F7A4:
/* 3FFA4 8004F7A4 1800B227 */  addiu      $s2, $sp, 0x18
/* 3FFA8 8004F7A8 01001024 */  addiu      $s0, $zero, 1
.L8004F7AC:
/* 3FFAC 8004F7AC 0000448E */  lw         $a0, ($s2)
/* 3FFB0 8004F7B0 0F000524 */  addiu      $a1, $zero, 0xf
/* 3FFB4 8004F7B4 04005226 */  addiu      $s2, $s2, 4
/* 3FFB8 8004F7B8 FA56010C */  jal        FUN_80055be8
/* 3FFBC 8004F7BC FFFF1026 */   addiu     $s0, $s0, -1
/* 3FFC0 8004F7C0 FAFF0106 */  bgez       $s0, .L8004F7AC
/* 3FFC4 8004F7C4 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 3FFC8 8004F7C8 21800000 */  addu       $s0, $zero, $zero
/* 3FFCC 8004F7CC 28005124 */  addiu      $s1, $v0, %lo(D_800F0028)
/* 3FFD0 8004F7D0 21B04000 */  addu       $s6, $v0, $zero
/* 3FFD4 8004F7D4 03001524 */  addiu      $s5, $zero, 3
/* 3FFD8 8004F7D8 26001424 */  addiu      $s4, $zero, 0x26
.L8004F7DC:
/* 3FFDC 8004F7DC 88002392 */  lbu        $v1, 0x88($s1)
/* 3FFE0 8004F7E0 05000224 */  addiu      $v0, $zero, 5
/* 3FFE4 8004F7E4 23006214 */  bne        $v1, $v0, .L8004F874
/* 3FFE8 8004F7E8 02000624 */   addiu     $a2, $zero, 2
/* 3FFEC 8004F7EC 3C002282 */  lb         $v0, 0x3c($s1)
/* 3FFF0 8004F7F0 0C002382 */  lb         $v1, 0xc($s1)
/* 3FFF4 8004F7F4 1C004610 */  beq        $v0, $a2, .L8004F868
/* 3FFF8 8004F7F8 04000424 */   addiu     $a0, $zero, 4
/* 3FFFC 8004F7FC 1A004410 */  beq        $v0, $a0, .L8004F868
/* 40000 8004F800 0100023C */   lui       $v0, 1
/* 40004 8004F804 21282202 */  addu       $a1, $s1, $v0
/* 40008 8004F808 B842A280 */  lb         $v0, 0x42b8($a1)
/* 4000C 8004F80C 00000000 */  nop
/* 40010 8004F810 11004610 */  beq        $v0, $a2, .L8004F858
/* 40014 8004F814 00000000 */   nop
/* 40018 8004F818 0F004410 */  beq        $v0, $a0, .L8004F858
/* 4001C 8004F81C 07000424 */   addiu     $a0, $zero, 7
/* 40020 8004F820 8A002292 */  lbu        $v0, 0x8a($s1)
/* 40024 8004F824 00000000 */  nop
/* 40028 8004F828 03004410 */  beq        $v0, $a0, .L8004F838
/* 4002C 8004F82C 00000000 */   nop
/* 40030 8004F830 0E004014 */  bnez       $v0, .L8004F86C
/* 40034 8004F834 21100302 */   addu      $v0, $s0, $v1
.L8004F838:
/* 40038 8004F838 0643A290 */  lbu        $v0, 0x4306($a1)
/* 4003C 8004F83C 00000000 */  nop
/* 40040 8004F840 03004410 */  beq        $v0, $a0, .L8004F850
/* 40044 8004F844 00000000 */   nop
/* 40048 8004F848 08004014 */  bnez       $v0, .L8004F86C
/* 4004C 8004F84C 21100302 */   addu      $v0, $s0, $v1
.L8004F850:
/* 40050 8004F850 173E0108 */  j          .L8004F85C
/* 40054 8004F854 FFFF6224 */   addiu     $v0, $v1, -1
.L8004F858:
/* 40058 8004F858 01006224 */  addiu      $v0, $v1, 1
.L8004F85C:
/* 4005C 8004F85C 21100202 */  addu       $v0, $s0, $v0
/* 40060 8004F860 1E3E0108 */  j          .L8004F878
/* 40064 8004F864 01005230 */   andi      $s2, $v0, 1
.L8004F868:
/* 40068 8004F868 21100302 */  addu       $v0, $s0, $v1
.L8004F86C:
/* 4006C 8004F86C 1E3E0108 */  j          .L8004F878
/* 40070 8004F870 01005230 */   andi      $s2, $v0, 1
.L8004F874:
/* 40074 8004F874 21900002 */  addu       $s2, $s0, $zero
.L8004F878:
/* 40078 8004F878 2800C626 */  addiu      $a2, $s6, 0x28
/* 4007C 8004F87C 80101200 */  sll        $v0, $s2, 2
/* 40080 8004F880 21105200 */  addu       $v0, $v0, $s2
/* 40084 8004F884 C0190200 */  sll        $v1, $v0, 7
/* 40088 8004F888 21104300 */  addu       $v0, $v0, $v1
/* 4008C 8004F88C 40110200 */  sll        $v0, $v0, 5
/* 40090 8004F890 23105200 */  subu       $v0, $v0, $s2
/* 40094 8004F894 80100200 */  sll        $v0, $v0, 2
/* 40098 8004F898 21284600 */  addu       $a1, $v0, $a2
/* 4009C 8004F89C 9000A38C */  lw         $v1, 0x90($a1)
/* 400A0 8004F8A0 2800C286 */  lh         $v0, 0x28($s6)
/* 400A4 8004F8A4 C29C0300 */  srl        $s3, $v1, 0x13
/* 400A8 8004F8A8 03005510 */  beq        $v0, $s5, .L8004F8B8
/* 400AC 8004F8AC 01007332 */   andi      $s3, $s3, 1
/* 400B0 8004F8B0 17005414 */  bne        $v0, $s4, .L8004F910
/* 400B4 8004F8B4 00000000 */   nop
.L8004F8B8:
/* 400B8 8004F8B8 01000424 */  addiu      $a0, $zero, 1
/* 400BC 8004F8BC 23209200 */  subu       $a0, $a0, $s2
/* 400C0 8004F8C0 80100400 */  sll        $v0, $a0, 2
/* 400C4 8004F8C4 21104400 */  addu       $v0, $v0, $a0
/* 400C8 8004F8C8 C0190200 */  sll        $v1, $v0, 7
/* 400CC 8004F8CC 21104300 */  addu       $v0, $v0, $v1
/* 400D0 8004F8D0 40110200 */  sll        $v0, $v0, 5
/* 400D4 8004F8D4 23104400 */  subu       $v0, $v0, $a0
/* 400D8 8004F8D8 80100200 */  sll        $v0, $v0, 2
/* 400DC 8004F8DC 21104600 */  addu       $v0, $v0, $a2
/* 400E0 8004F8E0 45004390 */  lbu        $v1, 0x45($v0)
/* 400E4 8004F8E4 00000000 */  nop
/* 400E8 8004F8E8 3E006010 */  beqz       $v1, .L8004F9E4
/* 400EC 8004F8EC 00000000 */   nop
/* 400F0 8004F8F0 4500A290 */  lbu        $v0, 0x45($a1)
/* 400F4 8004F8F4 00000000 */  nop
/* 400F8 8004F8F8 0F004010 */  beqz       $v0, .L8004F938
/* 400FC 8004F8FC 00000000 */   nop
/* 40100 8004F900 38004012 */  beqz       $s2, .L8004F9E4
/* 40104 8004F904 00000000 */   nop
/* 40108 8004F908 4E3E0108 */  j          .L8004F938
/* 4010C 8004F90C 00000000 */   nop
.L8004F910:
/* 40110 8004F910 4500A290 */  lbu        $v0, 0x45($a1)
/* 40114 8004F914 00000000 */  nop
/* 40118 8004F918 32004010 */  beqz       $v0, .L8004F9E4
/* 4011C 8004F91C 07000224 */   addiu     $v0, $zero, 7
/* 40120 8004F920 8A00A390 */  lbu        $v1, 0x8a($a1)
/* 40124 8004F924 00000000 */  nop
/* 40128 8004F928 2E006210 */  beq        $v1, $v0, .L8004F9E4
/* 4012C 8004F92C 00000000 */   nop
/* 40130 8004F930 2C006010 */  beqz       $v1, .L8004F9E4
/* 40134 8004F934 00000000 */   nop
.L8004F938:
/* 40138 8004F938 1800A48F */  lw         $a0, 0x18($sp)
/* 4013C 8004F93C 2000A58F */  lw         $a1, 0x20($sp)
/* 40140 8004F940 6641010C */  jal        FUN_80050598
/* 40144 8004F944 21304002 */   addu      $a2, $s2, $zero
/* 40148 8004F948 21284000 */  addu       $a1, $v0, $zero
/* 4014C 8004F94C 1800A48F */  lw         $a0, 0x18($sp)
/* 40150 8004F950 21304002 */  addu       $a2, $s2, $zero
/* 40154 8004F954 3443010C */  jal        FUN_80050cd0
/* 40158 8004F958 2000A2AF */   sw        $v0, 0x20($sp)
/* 4015C 8004F95C 21284000 */  addu       $a1, $v0, $zero
/* 40160 8004F960 1800A48F */  lw         $a0, 0x18($sp)
/* 40164 8004F964 21304002 */  addu       $a2, $s2, $zero
/* 40168 8004F968 0B2E010C */  jal        FUN_8004b82c
/* 4016C 8004F96C 2000A2AF */   sw        $v0, 0x20($sp)
/* 40170 8004F970 21284000 */  addu       $a1, $v0, $zero
/* 40174 8004F974 1800A48F */  lw         $a0, 0x18($sp)
/* 40178 8004F978 21304002 */  addu       $a2, $s2, $zero
/* 4017C 8004F97C 0135010C */  jal        FUN_8004d404
/* 40180 8004F980 2000A2AF */   sw        $v0, 0x20($sp)
/* 40184 8004F984 07006012 */  beqz       $s3, .L8004F9A4
/* 40188 8004F988 2000A2AF */   sw        $v0, 0x20($sp)
/* 4018C 8004F98C 2800E286 */  lh         $v0, 0x28($s7)
/* 40190 8004F990 00000000 */  nop
/* 40194 8004F994 03005510 */  beq        $v0, $s5, .L8004F9A4
/* 40198 8004F998 00000000 */   nop
/* 4019C 8004F99C 07005414 */  bne        $v0, $s4, .L8004F9BC
/* 401A0 8004F9A0 00000000 */   nop
.L8004F9A4:
/* 401A4 8004F9A4 1C00A48F */  lw         $a0, 0x1c($sp)
/* 401A8 8004F9A8 2400A58F */  lw         $a1, 0x24($sp)
/* 401AC 8004F9AC AD3E010C */  jal        FUN_8004fab4
/* 401B0 8004F9B0 21304002 */   addu      $a2, $s2, $zero
/* 401B4 8004F9B4 2400A2AF */  sw         $v0, 0x24($sp)
/* 401B8 8004F9B8 2800E286 */  lh         $v0, 0x28($s7)
.L8004F9BC:
/* 401BC 8004F9BC 00000000 */  nop
/* 401C0 8004F9C0 08005510 */  beq        $v0, $s5, .L8004F9E4
/* 401C4 8004F9C4 00000000 */   nop
/* 401C8 8004F9C8 06005410 */  beq        $v0, $s4, .L8004F9E4
/* 401CC 8004F9CC 00000000 */   nop
/* 401D0 8004F9D0 1C00A48F */  lw         $a0, 0x1c($sp)
/* 401D4 8004F9D4 2400A58F */  lw         $a1, 0x24($sp)
/* 401D8 8004F9D8 4D45010C */  jal        FUN_80051534
/* 401DC 8004F9DC 21304002 */   addu      $a2, $s2, $zero
/* 401E0 8004F9E0 2400A2AF */  sw         $v0, 0x24($sp)
.L8004F9E4:
/* 401E4 8004F9E4 01001026 */  addiu      $s0, $s0, 1
/* 401E8 8004F9E8 0200022A */  slti       $v0, $s0, 2
/* 401EC 8004F9EC 7BFF4014 */  bnez       $v0, .L8004F7DC
/* 401F0 8004F9F0 1780023C */   lui       $v0, %hi(D_8016F9D0)
/* 401F4 8004F9F4 643DC48F */  lw         $a0, 0x3d64($fp)
/* 401F8 8004F9F8 D0F9458C */  lw         $a1, %lo(D_8016F9D0)($v0)
/* 401FC 8004F9FC 15B1010C */  jal        FUN_8006c454
/* 40200 8004FA00 643DD027 */   addiu     $s0, $fp, 0x3d64
/* 40204 8004FA04 643DC48F */  lw         $a0, 0x3d64($fp)
/* 40208 8004FA08 EAAE010C */  jal        FUN_8006bba8
/* 4020C 8004FA0C 00000000 */   nop
/* 40210 8004FA10 1780033C */  lui        $v1, %hi(D_8016F9D0)
/* 40214 8004FA14 D0F96224 */  addiu      $v0, $v1, %lo(D_8016F9D0)
/* 40218 8004FA18 0400048E */  lw         $a0, 4($s0)
/* 4021C 8004FA1C 0400458C */  lw         $a1, 4($v0)
/* 40220 8004FA20 15B1010C */  jal        FUN_8006c454
/* 40224 8004FA24 00000000 */   nop
/* 40228 8004FA28 0400048E */  lw         $a0, 4($s0)
/* 4022C 8004FA2C EAAE010C */  jal        FUN_8006bba8
/* 40230 8004FA30 00000000 */   nop
/* 40234 8004FA34 1800A48F */  lw         $a0, 0x18($sp)
/* 40238 8004FA38 376C010C */  jal        FUN_8005b0dc
/* 4023C 8004FA3C FA000524 */   addiu     $a1, $zero, 0xfa
/* 40240 8004FA40 1800A48F */  lw         $a0, 0x18($sp)
/* 40244 8004FA44 2000A58F */  lw         $a1, 0x20($sp)
/* 40248 8004FA48 1D6B010C */  jal        FUN_8005ac74
/* 4024C 8004FA4C 00000000 */   nop
/* 40250 8004FA50 1800A48F */  lw         $a0, 0x18($sp)
/* 40254 8004FA54 9157010C */  jal        FUN_80055e44
/* 40258 8004FA58 00000000 */   nop
/* 4025C 8004FA5C 1C00A48F */  lw         $a0, 0x1c($sp)
/* 40260 8004FA60 376C010C */  jal        FUN_8005b0dc
/* 40264 8004FA64 FC000524 */   addiu     $a1, $zero, 0xfc
/* 40268 8004FA68 1C00A48F */  lw         $a0, 0x1c($sp)
/* 4026C 8004FA6C 2400A58F */  lw         $a1, 0x24($sp)
/* 40270 8004FA70 1D6B010C */  jal        FUN_8005ac74
/* 40274 8004FA74 00000000 */   nop
/* 40278 8004FA78 1C00A48F */  lw         $a0, 0x1c($sp)
/* 4027C 8004FA7C 9157010C */  jal        FUN_80055e44
/* 40280 8004FA80 00000000 */   nop
/* 40284 8004FA84 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 40288 8004FA88 4800BE8F */  lw         $fp, 0x48($sp)
/* 4028C 8004FA8C 4400B78F */  lw         $s7, 0x44($sp)
/* 40290 8004FA90 4000B68F */  lw         $s6, 0x40($sp)
/* 40294 8004FA94 3C00B58F */  lw         $s5, 0x3c($sp)
/* 40298 8004FA98 3800B48F */  lw         $s4, 0x38($sp)
/* 4029C 8004FA9C 3400B38F */  lw         $s3, 0x34($sp)
/* 402A0 8004FAA0 3000B28F */  lw         $s2, 0x30($sp)
/* 402A4 8004FAA4 2C00B18F */  lw         $s1, 0x2c($sp)
/* 402A8 8004FAA8 2800B08F */  lw         $s0, 0x28($sp)
/* 402AC 8004FAAC 0800E003 */  jr         $ra
/* 402B0 8004FAB0 5000BD27 */   addiu     $sp, $sp, 0x50

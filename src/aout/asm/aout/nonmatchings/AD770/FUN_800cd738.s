.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd738
/* BDF38 800CD738 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BDF3C 800CD73C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BDF40 800CD740 401F113C */  lui        $s1, 0x1f40
/* BDF44 800CD744 04002296 */  lhu        $v0, 4($s1)
/* BDF48 800CD748 2C00BFAF */  sw         $ra, 0x2c($sp)
/* BDF4C 800CD74C 2800B4AF */  sw         $s4, 0x28($sp)
/* BDF50 800CD750 2400B3AF */  sw         $s3, 0x24($sp)
/* BDF54 800CD754 2000B2AF */  sw         $s2, 0x20($sp)
/* BDF58 800CD758 82130200 */  srl        $v0, $v0, 0xe
/* BDF5C 800CD75C 01004230 */  andi       $v0, $v0, 1
/* BDF60 800CD760 05004014 */  bnez       $v0, .L800CD778
/* BDF64 800CD764 1800B0AF */   sw        $s0, 0x18($sp)
.L800CD768:
/* BDF68 800CD768 5F360308 */  j          .L800CD97C
/* BDF6C 800CD76C FFFF0224 */   addiu     $v0, $zero, -1
.L800CD770:
/* BDF70 800CD770 29360308 */  j          .L800CD8A4
/* BDF74 800CD774 21400000 */   addu      $t0, $zero, $zero
.L800CD778:
/* BDF78 800CD778 CD6B000C */  jal        VSync
/* BDF7C 800CD77C 01000424 */   addiu     $a0, $zero, 1
/* BDF80 800CD780 21804000 */  addu       $s0, $v0, $zero
/* BDF84 800CD784 21902002 */  addu       $s2, $s1, $zero
/* BDF88 800CD788 FFFF1134 */  ori        $s1, $zero, 0xffff
.L800CD78C:
/* BDF8C 800CD78C CD6B000C */  jal        VSync
/* BDF90 800CD790 01000424 */   addiu     $a0, $zero, 1
/* BDF94 800CD794 23105000 */  subu       $v0, $v0, $s0
/* BDF98 800CD798 21284000 */  addu       $a1, $v0, $zero
/* BDF9C 800CD79C FFFF4230 */  andi       $v0, $v0, 0xffff
/* BDFA0 800CD7A0 07004014 */  bnez       $v0, .L800CD7C0
/* BDFA4 800CD7A4 00000000 */   nop
/* BDFA8 800CD7A8 04004296 */  lhu        $v0, 4($s2)
/* BDFAC 800CD7AC 00000000 */  nop
/* BDFB0 800CD7B0 82130200 */  srl        $v0, $v0, 0xe
/* BDFB4 800CD7B4 01004230 */  andi       $v0, $v0, 1
/* BDFB8 800CD7B8 F4FF5114 */  bne        $v0, $s1, .L800CD78C
/* BDFBC 800CD7BC 00000000 */   nop
.L800CD7C0:
/* BDFC0 800CD7C0 01000424 */  addiu      $a0, $zero, 1
/* BDFC4 800CD7C4 2080033C */  lui        $v1, %hi(D_801FBCF0)
/* BDFC8 800CD7C8 FFFFA230 */  andi       $v0, $a1, 0xffff
/* BDFCC 800CD7CC CD6B000C */  jal        VSync
/* BDFD0 800CD7D0 F0BC62AC */   sw        $v0, %lo(D_801FBCF0)($v1)
/* BDFD4 800CD7D4 01000424 */  addiu      $a0, $zero, 1
/* BDFD8 800CD7D8 2080063C */  lui        $a2, %hi(D_801FBD08)
/* BDFDC 800CD7DC 401F123C */  lui        $s2, 0x1f40
/* BDFE0 800CD7E0 6A1F033C */  lui        $v1, 0x1f6a
/* BDFE4 800CD7E4 08BDC594 */  lhu        $a1, %lo(D_801FBD08)($a2)
/* BDFE8 800CD7E8 FFFF1134 */  ori        $s1, $zero, 0xffff
/* BDFEC 800CD7EC 1000A534 */  ori        $a1, $a1, 0x10
/* BDFF0 800CD7F0 000065A4 */  sh         $a1, ($v1)
/* BDFF4 800CD7F4 1000A0AF */  sw         $zero, 0x10($sp)
/* BDFF8 800CD7F8 1000A38F */  lw         $v1, 0x10($sp)
/* BDFFC 800CD7FC 21A04000 */  addu       $s4, $v0, $zero
/* BE000 800CD800 CD6B000C */  jal        VSync
/* BE004 800CD804 08BDC5A4 */   sh        $a1, -0x42f8($a2)
/* BE008 800CD808 21804000 */  addu       $s0, $v0, $zero
.L800CD80C:
/* BE00C 800CD80C CD6B000C */  jal        VSync
/* BE010 800CD810 01000424 */   addiu     $a0, $zero, 1
/* BE014 800CD814 23105000 */  subu       $v0, $v0, $s0
/* BE018 800CD818 21384000 */  addu       $a3, $v0, $zero
/* BE01C 800CD81C FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE020 800CD820 0A004228 */  slti       $v0, $v0, 0xa
/* BE024 800CD824 07004010 */  beqz       $v0, .L800CD844
/* BE028 800CD828 FFFF0824 */   addiu     $t0, $zero, -1
/* BE02C 800CD82C 04004296 */  lhu        $v0, 4($s2)
/* BE030 800CD830 00000000 */  nop
/* BE034 800CD834 82130200 */  srl        $v0, $v0, 0xe
/* BE038 800CD838 01004230 */  andi       $v0, $v0, 1
/* BE03C 800CD83C F3FF5114 */  bne        $v0, $s1, .L800CD80C
/* BE040 800CD840 00000000 */   nop
.L800CD844:
/* BE044 800CD844 21300000 */  addu       $a2, $zero, $zero
/* BE048 800CD848 401F0A3C */  lui        $t2, 0x1f40
/* BE04C 800CD84C 2080053C */  lui        $a1, %hi(D_801FBD08)
/* BE050 800CD850 01000924 */  addiu      $t1, $zero, 1
/* BE054 800CD854 6A1F023C */  lui        $v0, 0x1f6a
/* BE058 800CD858 08BDA394 */  lhu        $v1, %lo(D_801FBD08)($a1)
/* BE05C 800CD85C 2080043C */  lui        $a0, 0x8020
/* BE060 800CD860 EFFF6330 */  andi       $v1, $v1, 0xffef
/* BE064 800CD864 000043A4 */  sh         $v1, ($v0)
/* BE068 800CD868 1000A0AF */  sw         $zero, 0x10($sp)
/* BE06C 800CD86C 1000A28F */  lw         $v0, 0x10($sp)
/* BE070 800CD870 FFFFE230 */  andi       $v0, $a3, 0xffff
/* BE074 800CD874 F0BC82AC */  sw         $v0, -0x4310($a0)
/* BE078 800CD878 08BDA3A4 */  sh         $v1, -0x42f8($a1)
.L800CD87C:
/* BE07C 800CD87C 04004295 */  lhu        $v0, 4($t2)
/* BE080 800CD880 00000000 */  nop
/* BE084 800CD884 82130200 */  srl        $v0, $v0, 0xe
/* BE088 800CD888 01004230 */  andi       $v0, $v0, 1
/* BE08C 800CD88C B8FF4910 */  beq        $v0, $t1, .L800CD770
/* BE090 800CD890 00000000 */   nop
/* BE094 800CD894 0100C624 */  addiu      $a2, $a2, 1
/* BE098 800CD898 0F00C228 */  slti       $v0, $a2, 0xf
/* BE09C 800CD89C F7FF4014 */  bnez       $v0, .L800CD87C
/* BE0A0 800CD8A0 00000000 */   nop
.L800CD8A4:
/* BE0A4 800CD8A4 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE0A8 800CD8A8 05000105 */  bgez       $t0, .L800CD8C0
/* BE0AC 800CD8AC F0BC46AC */   sw        $a2, %lo(D_801FBCF0)($v0)
/* BE0B0 800CD8B0 5F360308 */  j          .L800CD97C
/* BE0B4 800CD8B4 FFFF0224 */   addiu     $v0, $zero, -1
.L800CD8B8:
/* BE0B8 800CD8B8 3D360308 */  j          .L800CD8F4
/* BE0BC 800CD8BC 21200000 */   addu      $a0, $zero, $zero
.L800CD8C0:
/* BE0C0 800CD8C0 FFFF0424 */  addiu      $a0, $zero, -1
/* BE0C4 800CD8C4 21180000 */  addu       $v1, $zero, $zero
/* BE0C8 800CD8C8 401F053C */  lui        $a1, 0x1f40
.L800CD8CC:
/* BE0CC 800CD8CC 0400A294 */  lhu        $v0, 4($a1)
/* BE0D0 800CD8D0 00000000 */  nop
/* BE0D4 800CD8D4 82130200 */  srl        $v0, $v0, 0xe
/* BE0D8 800CD8D8 01004230 */  andi       $v0, $v0, 1
/* BE0DC 800CD8DC F6FF4010 */  beqz       $v0, .L800CD8B8
/* BE0E0 800CD8E0 00000000 */   nop
/* BE0E4 800CD8E4 01006324 */  addiu      $v1, $v1, 1
/* BE0E8 800CD8E8 DE006228 */  slti       $v0, $v1, 0xde
/* BE0EC 800CD8EC F7FF4014 */  bnez       $v0, .L800CD8CC
/* BE0F0 800CD8F0 00000000 */   nop
.L800CD8F4:
/* BE0F4 800CD8F4 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE0F8 800CD8F8 9BFF8004 */  bltz       $a0, .L800CD768
/* BE0FC 800CD8FC F0BC43AC */   sw        $v1, %lo(D_801FBCF0)($v0)
/* BE100 800CD900 FFFF1024 */  addiu      $s0, $zero, -1
/* BE104 800CD904 CD6B000C */  jal        VSync
/* BE108 800CD908 01000424 */   addiu     $a0, $zero, 1
/* BE10C 800CD90C 21884000 */  addu       $s1, $v0, $zero
/* BE110 800CD910 401F133C */  lui        $s3, 0x1f40
/* BE114 800CD914 01001224 */  addiu      $s2, $zero, 1
.L800CD918:
/* BE118 800CD918 CD6B000C */  jal        VSync
/* BE11C 800CD91C 01000424 */   addiu     $a0, $zero, 1
/* BE120 800CD920 23105100 */  subu       $v0, $v0, $s1
/* BE124 800CD924 21204000 */  addu       $a0, $v0, $zero
/* BE128 800CD928 FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE12C 800CD92C 08004228 */  slti       $v0, $v0, 8
/* BE130 800CD930 08004010 */  beqz       $v0, .L800CD954
/* BE134 800CD934 2080033C */   lui       $v1, 0x8020
/* BE138 800CD938 04006296 */  lhu        $v0, 4($s3)
/* BE13C 800CD93C 00000000 */  nop
/* BE140 800CD940 82130200 */  srl        $v0, $v0, 0xe
/* BE144 800CD944 01004230 */  andi       $v0, $v0, 1
/* BE148 800CD948 F3FF5214 */  bne        $v0, $s2, .L800CD918
/* BE14C 800CD94C 00000000 */   nop
/* BE150 800CD950 21800000 */  addu       $s0, $zero, $zero
.L800CD954:
/* BE154 800CD954 FFFF8230 */  andi       $v0, $a0, 0xffff
/* BE158 800CD958 83FF0006 */  bltz       $s0, .L800CD768
/* BE15C 800CD95C F0BC62AC */   sw        $v0, -0x4310($v1)
.L800CD960:
/* BE160 800CD960 CD6B000C */  jal        VSync
/* BE164 800CD964 01000424 */   addiu     $a0, $zero, 1
/* BE168 800CD968 23105400 */  subu       $v0, $v0, $s4
/* BE16C 800CD96C FFFF4230 */  andi       $v0, $v0, 0xffff
/* BE170 800CD970 1400422C */  sltiu      $v0, $v0, 0x14
/* BE174 800CD974 FAFF4014 */  bnez       $v0, .L800CD960
/* BE178 800CD978 21100000 */   addu      $v0, $zero, $zero
.L800CD97C:
/* BE17C 800CD97C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BE180 800CD980 2800B48F */  lw         $s4, 0x28($sp)
/* BE184 800CD984 2400B38F */  lw         $s3, 0x24($sp)
/* BE188 800CD988 2000B28F */  lw         $s2, 0x20($sp)
/* BE18C 800CD98C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BE190 800CD990 1800B08F */  lw         $s0, 0x18($sp)
/* BE194 800CD994 0800E003 */  jr         $ra
/* BE198 800CD998 3000BD27 */   addiu     $sp, $sp, 0x30

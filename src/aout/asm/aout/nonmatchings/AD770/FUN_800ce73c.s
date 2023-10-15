.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce73c
/* BEF3C 800CE73C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BEF40 800CE740 2800B4AF */  sw         $s4, 0x28($sp)
/* BEF44 800CE744 21A08000 */  addu       $s4, $a0, $zero
/* BEF48 800CE748 2000B2AF */  sw         $s2, 0x20($sp)
/* BEF4C 800CE74C 2190A000 */  addu       $s2, $a1, $zero
/* BEF50 800CE750 1000A427 */  addiu      $a0, $sp, 0x10
/* BEF54 800CE754 10004526 */  addiu      $a1, $s2, 0x10
/* BEF58 800CE758 08000624 */  addiu      $a2, $zero, 8
/* BEF5C 800CE75C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* BEF60 800CE760 2400B3AF */  sw         $s3, 0x24($sp)
/* BEF64 800CE764 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BEF68 800CE768 703E030C */  jal        FUN_800cf9c0
/* BEF6C 800CE76C 1800B0AF */   sw        $s0, 0x18($sp)
/* BEF70 800CE770 1000428E */  lw         $v0, 0x10($s2)
/* BEF74 800CE774 00000000 */  nop
/* BEF78 800CE778 C2100200 */  srl        $v0, $v0, 3
/* BEF7C 800CE77C 3F004330 */  andi       $v1, $v0, 0x3f
/* BEF80 800CE780 3800622C */  sltiu      $v0, $v1, 0x38
/* BEF84 800CE784 02004014 */  bnez       $v0, .L800CE790
/* BEF88 800CE788 38000224 */   addiu     $v0, $zero, 0x38
/* BEF8C 800CE78C 78000224 */  addiu      $v0, $zero, 0x78
.L800CE790:
/* BEF90 800CE790 23884300 */  subu       $s1, $v0, $v1
/* BEF94 800CE794 1000428E */  lw         $v0, 0x10($s2)
/* BEF98 800CE798 C0201100 */  sll        $a0, $s1, 3
/* BEF9C 800CE79C C2180200 */  srl        $v1, $v0, 3
/* BEFA0 800CE7A0 3F006530 */  andi       $a1, $v1, 0x3f
/* BEFA4 800CE7A4 21104400 */  addu       $v0, $v0, $a0
/* BEFA8 800CE7A8 0F80033C */  lui        $v1, %hi(D_800EE700)
/* BEFAC 800CE7AC 100042AE */  sw         $v0, 0x10($s2)
/* BEFB0 800CE7B0 2B104400 */  sltu       $v0, $v0, $a0
/* BEFB4 800CE7B4 05004010 */  beqz       $v0, .L800CE7CC
/* BEFB8 800CE7B8 00E77324 */   addiu     $s3, $v1, %lo(D_800EE700)
/* BEFBC 800CE7BC 1400428E */  lw         $v0, 0x14($s2)
/* BEFC0 800CE7C0 00000000 */  nop
/* BEFC4 800CE7C4 01004224 */  addiu      $v0, $v0, 1
/* BEFC8 800CE7C8 140042AE */  sw         $v0, 0x14($s2)
.L800CE7CC:
/* BEFCC 800CE7CC 1400428E */  lw         $v0, 0x14($s2)
/* BEFD0 800CE7D0 421F1100 */  srl        $v1, $s1, 0x1d
/* BEFD4 800CE7D4 21104300 */  addu       $v0, $v0, $v1
/* BEFD8 800CE7D8 140042AE */  sw         $v0, 0x14($s2)
/* BEFDC 800CE7DC 40000224 */  addiu      $v0, $zero, 0x40
/* BEFE0 800CE7E0 23804500 */  subu       $s0, $v0, $a1
/* BEFE4 800CE7E4 2B103002 */  sltu       $v0, $s1, $s0
/* BEFE8 800CE7E8 13004014 */  bnez       $v0, .L800CE838
/* BEFEC 800CE7EC 1800A424 */   addiu     $a0, $a1, 0x18
/* BEFF0 800CE7F0 21204402 */  addu       $a0, $s2, $a0
/* BEFF4 800CE7F4 21286002 */  addu       $a1, $s3, $zero
/* BEFF8 800CE7F8 9A3E030C */  jal        FUN_800cfa68
/* BEFFC 800CE7FC 21300002 */   addu      $a2, $s0, $zero
/* BF000 800CE800 21204002 */  addu       $a0, $s2, $zero
/* BF004 800CE804 4F3A030C */  jal        FUN_800ce93c
/* BF008 800CE808 18004526 */   addiu     $a1, $s2, 0x18
/* BF00C 800CE80C 093A0308 */  j          .L800CE824
/* BF010 800CE810 3F000226 */   addiu     $v0, $s0, 0x3f
.L800CE814:
/* BF014 800CE814 4F3A030C */  jal        FUN_800ce93c
/* BF018 800CE818 21287002 */   addu      $a1, $s3, $s0
/* BF01C 800CE81C 40001026 */  addiu      $s0, $s0, 0x40
/* BF020 800CE820 3F000226 */  addiu      $v0, $s0, 0x3f
.L800CE824:
/* BF024 800CE824 2B105100 */  sltu       $v0, $v0, $s1
/* BF028 800CE828 FAFF4014 */  bnez       $v0, .L800CE814
/* BF02C 800CE82C 21204002 */   addu      $a0, $s2, $zero
/* BF030 800CE830 0F3A0308 */  j          .L800CE83C
/* BF034 800CE834 21280000 */   addu      $a1, $zero, $zero
.L800CE838:
/* BF038 800CE838 21800000 */  addu       $s0, $zero, $zero
.L800CE83C:
/* BF03C 800CE83C 1800A424 */  addiu      $a0, $a1, 0x18
/* BF040 800CE840 21204402 */  addu       $a0, $s2, $a0
/* BF044 800CE844 21287002 */  addu       $a1, $s3, $s0
/* BF048 800CE848 9A3E030C */  jal        FUN_800cfa68
/* BF04C 800CE84C 23303002 */   subu      $a2, $s1, $s0
/* BF050 800CE850 1000B127 */  addiu      $s1, $sp, 0x10
/* BF054 800CE854 1000428E */  lw         $v0, 0x10($s2)
/* BF058 800CE858 08001324 */  addiu      $s3, $zero, 8
/* BF05C 800CE85C C2180200 */  srl        $v1, $v0, 3
/* BF060 800CE860 40004224 */  addiu      $v0, $v0, 0x40
/* BF064 800CE864 100042AE */  sw         $v0, 0x10($s2)
/* BF068 800CE868 4000422C */  sltiu      $v0, $v0, 0x40
/* BF06C 800CE86C 05004010 */  beqz       $v0, .L800CE884
/* BF070 800CE870 3F006330 */   andi      $v1, $v1, 0x3f
/* BF074 800CE874 1400428E */  lw         $v0, 0x14($s2)
/* BF078 800CE878 00000000 */  nop
/* BF07C 800CE87C 01004224 */  addiu      $v0, $v0, 1
/* BF080 800CE880 140042AE */  sw         $v0, 0x14($s2)
.L800CE884:
/* BF084 800CE884 1400428E */  lw         $v0, 0x14($s2)
/* BF088 800CE888 40000224 */  addiu      $v0, $zero, 0x40
/* BF08C 800CE88C 23804300 */  subu       $s0, $v0, $v1
/* BF090 800CE890 2B107002 */  sltu       $v0, $s3, $s0
/* BF094 800CE894 13004014 */  bnez       $v0, .L800CE8E4
/* BF098 800CE898 18006424 */   addiu     $a0, $v1, 0x18
/* BF09C 800CE89C 21204402 */  addu       $a0, $s2, $a0
/* BF0A0 800CE8A0 21282002 */  addu       $a1, $s1, $zero
/* BF0A4 800CE8A4 9A3E030C */  jal        FUN_800cfa68
/* BF0A8 800CE8A8 21300002 */   addu      $a2, $s0, $zero
/* BF0AC 800CE8AC 21204002 */  addu       $a0, $s2, $zero
/* BF0B0 800CE8B0 4F3A030C */  jal        FUN_800ce93c
/* BF0B4 800CE8B4 18004526 */   addiu     $a1, $s2, 0x18
/* BF0B8 800CE8B8 343A0308 */  j          .L800CE8D0
/* BF0BC 800CE8BC 3F000226 */   addiu     $v0, $s0, 0x3f
.L800CE8C0:
/* BF0C0 800CE8C0 4F3A030C */  jal        FUN_800ce93c
/* BF0C4 800CE8C4 21283002 */   addu      $a1, $s1, $s0
/* BF0C8 800CE8C8 40001026 */  addiu      $s0, $s0, 0x40
/* BF0CC 800CE8CC 3F000226 */  addiu      $v0, $s0, 0x3f
.L800CE8D0:
/* BF0D0 800CE8D0 0800422C */  sltiu      $v0, $v0, 8
/* BF0D4 800CE8D4 FAFF4014 */  bnez       $v0, .L800CE8C0
/* BF0D8 800CE8D8 21204002 */   addu      $a0, $s2, $zero
/* BF0DC 800CE8DC 3A3A0308 */  j          .L800CE8E8
/* BF0E0 800CE8E0 21180000 */   addu      $v1, $zero, $zero
.L800CE8E4:
/* BF0E4 800CE8E4 21800000 */  addu       $s0, $zero, $zero
.L800CE8E8:
/* BF0E8 800CE8E8 18006424 */  addiu      $a0, $v1, 0x18
/* BF0EC 800CE8EC 21204402 */  addu       $a0, $s2, $a0
/* BF0F0 800CE8F0 21283002 */  addu       $a1, $s1, $s0
/* BF0F4 800CE8F4 9A3E030C */  jal        FUN_800cfa68
/* BF0F8 800CE8F8 23307002 */   subu      $a2, $s3, $s0
/* BF0FC 800CE8FC 21208002 */  addu       $a0, $s4, $zero
/* BF100 800CE900 21284002 */  addu       $a1, $s2, $zero
/* BF104 800CE904 703E030C */  jal        FUN_800cf9c0
/* BF108 800CE908 10000624 */   addiu     $a2, $zero, 0x10
/* BF10C 800CE90C 21204002 */  addu       $a0, $s2, $zero
/* BF110 800CE910 21280000 */  addu       $a1, $zero, $zero
/* BF114 800CE914 A63E030C */  jal        FUN_800cfa98
/* BF118 800CE918 58000624 */   addiu     $a2, $zero, 0x58
/* BF11C 800CE91C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BF120 800CE920 2800B48F */  lw         $s4, 0x28($sp)
/* BF124 800CE924 2400B38F */  lw         $s3, 0x24($sp)
/* BF128 800CE928 2000B28F */  lw         $s2, 0x20($sp)
/* BF12C 800CE92C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BF130 800CE930 1800B08F */  lw         $s0, 0x18($sp)
/* BF134 800CE934 0800E003 */  jr         $ra
/* BF138 800CE938 3000BD27 */   addiu     $sp, $sp, 0x30

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae028
/* 9E828 800AE028 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 9E82C 800AE02C 1800B2AF */  sw         $s2, 0x18($sp)
/* 9E830 800AE030 2190C000 */  addu       $s2, $a2, $zero
/* 9E834 800AE034 2400B5AF */  sw         $s5, 0x24($sp)
/* 9E838 800AE038 21A88000 */  addu       $s5, $a0, $zero
/* 9E83C 800AE03C 2800B6AF */  sw         $s6, 0x28($sp)
/* 9E840 800AE040 21B0A000 */  addu       $s6, $a1, $zero
/* 9E844 800AE044 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9E848 800AE048 2198E000 */  addu       $s3, $a3, $zero
/* 9E84C 800AE04C 2C00BFAF */  sw         $ra, 0x2c($sp)
/* 9E850 800AE050 2000B4AF */  sw         $s4, 0x20($sp)
/* 9E854 800AE054 1400B1AF */  sw         $s1, 0x14($sp)
/* 9E858 800AE058 1000A016 */  bnez       $s5, .L800AE09C
/* 9E85C 800AE05C 1000B0AF */   sw        $s0, 0x10($sp)
/* 9E860 800AE060 68B80208 */  j          .L800AE1A0
/* 9E864 800AE064 FFFF0224 */   addiu     $v0, $zero, -1
.L800AE068:
/* 9E868 800AE068 2118A300 */  addu       $v1, $a1, $v1
/* 9E86C 800AE06C 0400628C */  lw         $v0, 4($v1)
/* 9E870 800AE070 68B80208 */  j          .L800AE1A0
/* 9E874 800AE074 00000000 */   nop
.L800AE078:
/* 9E878 800AE078 80181200 */  sll        $v1, $s2, 2
/* 9E87C 800AE07C 21104800 */  addu       $v0, $v0, $t0
/* 9E880 800AE080 C0100200 */  sll        $v0, $v0, 3
/* 9E884 800AE084 21186200 */  addu       $v1, $v1, $v0
/* 9E888 800AE088 21186400 */  addu       $v1, $v1, $a0
/* 9E88C 800AE08C 2118A300 */  addu       $v1, $a1, $v1
/* 9E890 800AE090 4400628C */  lw         $v0, 0x44($v1)
/* 9E894 800AE094 68B80208 */  j          .L800AE1A0
/* 9E898 800AE098 00000000 */   nop
.L800AE09C:
/* 9E89C 800AE09C 1BA2020C */  jal        FUN_800a886c
/* 9E8A0 800AE0A0 2120A002 */   addu      $a0, $s5, $zero
/* 9E8A4 800AE0A4 C0291300 */  sll        $a1, $s3, 7
/* 9E8A8 800AE0A8 2128B300 */  addu       $a1, $a1, $s3
/* 9E8AC 800AE0AC C0290500 */  sll        $a1, $a1, 7
/* 9E8B0 800AE0B0 1C80043C */  lui        $a0, %hi(D_801C47F8)
/* 9E8B4 800AE0B4 F8478424 */  addiu      $a0, $a0, %lo(D_801C47F8)
/* 9E8B8 800AE0B8 80FE8324 */  addiu      $v1, $a0, -0x180
/* 9E8BC 800AE0BC 2118A300 */  addu       $v1, $a1, $v1
/* 9E8C0 800AE0C0 00197124 */  addiu      $s1, $v1, 0x1900
/* 9E8C4 800AE0C4 21804000 */  addu       $s0, $v0, $zero
/* 9E8C8 800AE0C8 02000224 */  addiu      $v0, $zero, 2
/* 9E8CC 800AE0CC 0200C216 */  bne        $s6, $v0, .L800AE0D8
/* 9E8D0 800AE0D0 21A0A400 */   addu      $s4, $a1, $a0
/* 9E8D4 800AE0D4 80297124 */  addiu      $s1, $v1, 0x2980
.L800AE0D8:
/* 9E8D8 800AE0D8 44BA020C */  jal        FUN_800ae910
/* 9E8DC 800AE0DC 21204002 */   addu      $a0, $s2, $zero
/* 9E8E0 800AE0E0 2E000012 */  beqz       $s0, .L800AE19C
/* 9E8E4 800AE0E4 21904000 */   addu      $s2, $v0, $zero
/* 9E8E8 800AE0E8 14000496 */  lhu        $a0, 0x14($s0)
/* 9E8EC 800AE0EC FFFF0224 */  addiu      $v0, $zero, -1
/* 9E8F0 800AE0F0 2B008210 */  beq        $a0, $v0, .L800AE1A0
/* 9E8F4 800AE0F4 00000000 */   nop
/* 9E8F8 800AE0F8 21400000 */  addu       $t0, $zero, $zero
/* 9E8FC 800AE0FC FF000624 */  addiu      $a2, $zero, 0xff
/* 9E900 800AE100 21282002 */  addu       $a1, $s1, $zero
.L800AE104:
/* 9E904 800AE104 0000A290 */  lbu        $v0, ($a1)
/* 9E908 800AE108 00000000 */  nop
/* 9E90C 800AE10C 06004610 */  beq        $v0, $a2, .L800AE128
/* 9E910 800AE110 40100200 */   sll       $v0, $v0, 1
/* 9E914 800AE114 21105400 */  addu       $v0, $v0, $s4
/* 9E918 800AE118 00004394 */  lhu        $v1, ($v0)
/* 9E91C 800AE11C 00000000 */  nop
/* 9E920 800AE120 D1FF6410 */  beq        $v1, $a0, .L800AE068
/* 9E924 800AE124 80181200 */   sll       $v1, $s2, 2
.L800AE128:
/* 9E928 800AE128 01000825 */  addiu      $t0, $t0, 1
/* 9E92C 800AE12C B0000229 */  slti       $v0, $t0, 0xb0
/* 9E930 800AE130 F4FF4014 */  bnez       $v0, .L800AE104
/* 9E934 800AE134 1800A524 */   addiu     $a1, $a1, 0x18
/* 9E938 800AE138 1D80023C */  lui        $v0, %hi(D_801CC778)
/* 9E93C 800AE13C 78C74424 */  addiu      $a0, $v0, %lo(D_801CC778)
/* 9E940 800AE140 C0181300 */  sll        $v1, $s3, 3
/* 9E944 800AE144 23187300 */  subu       $v1, $v1, $s3
/* 9E948 800AE148 80180300 */  sll        $v1, $v1, 2
/* 9E94C 800AE14C 21187300 */  addu       $v1, $v1, $s3
/* 9E950 800AE150 C0180300 */  sll        $v1, $v1, 3
/* 9E954 800AE154 21106400 */  addu       $v0, $v1, $a0
/* 9E958 800AE158 0000428C */  lw         $v0, ($v0)
/* 9E95C 800AE15C 00000000 */  nop
/* 9E960 800AE160 0E004018 */  blez       $v0, .L800AE19C
/* 9E964 800AE164 21400000 */   addu      $t0, $zero, $zero
/* 9E968 800AE168 21484000 */  addu       $t1, $v0, $zero
/* 9E96C 800AE16C 21288000 */  addu       $a1, $a0, $zero
/* 9E970 800AE170 0800A224 */  addiu      $v0, $a1, 8
/* 9E974 800AE174 21206000 */  addu       $a0, $v1, $zero
/* 9E978 800AE178 21188200 */  addu       $v1, $a0, $v0
.L800AE17C:
/* 9E97C 800AE17C 0000628C */  lw         $v0, ($v1)
/* 9E980 800AE180 00000000 */  nop
/* 9E984 800AE184 BCFF5510 */  beq        $v0, $s5, .L800AE078
/* 9E988 800AE188 40100800 */   sll       $v0, $t0, 1
/* 9E98C 800AE18C 01000825 */  addiu      $t0, $t0, 1
/* 9E990 800AE190 2A100901 */  slt        $v0, $t0, $t1
/* 9E994 800AE194 F9FF4014 */  bnez       $v0, .L800AE17C
/* 9E998 800AE198 04006324 */   addiu     $v1, $v1, 4
.L800AE19C:
/* 9E99C 800AE19C FFFF0224 */  addiu      $v0, $zero, -1
.L800AE1A0:
/* 9E9A0 800AE1A0 2C00BF8F */  lw         $ra, 0x2c($sp)
/* 9E9A4 800AE1A4 2800B68F */  lw         $s6, 0x28($sp)
/* 9E9A8 800AE1A8 2400B58F */  lw         $s5, 0x24($sp)
/* 9E9AC 800AE1AC 2000B48F */  lw         $s4, 0x20($sp)
/* 9E9B0 800AE1B0 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9E9B4 800AE1B4 1800B28F */  lw         $s2, 0x18($sp)
/* 9E9B8 800AE1B8 1400B18F */  lw         $s1, 0x14($sp)
/* 9E9BC 800AE1BC 1000B08F */  lw         $s0, 0x10($sp)
/* 9E9C0 800AE1C0 0800E003 */  jr         $ra
/* 9E9C4 800AE1C4 3000BD27 */   addiu     $sp, $sp, 0x30

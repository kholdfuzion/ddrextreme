.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7714
/* 97F14 800A7714 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 97F18 800A7718 21300000 */  addu       $a2, $zero, $zero
/* 97F1C 800A771C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 97F20 800A7720 21880000 */  addu       $s1, $zero, $zero
/* 97F24 800A7724 2400B3AF */  sw         $s3, 0x24($sp)
/* 97F28 800A7728 2198A000 */  addu       $s3, $a1, $zero
/* 97F2C 800A772C 2800BFAF */  sw         $ra, 0x28($sp)
/* 97F30 800A7730 2000B2AF */  sw         $s2, 0x20($sp)
/* 97F34 800A7734 1800B0AF */  sw         $s0, 0x18($sp)
/* 97F38 800A7738 00008290 */  lbu        $v0, ($a0)
/* 97F3C 800A773C 00000000 */  nop
/* 97F40 800A7740 13004010 */  beqz       $v0, .L800A7790
/* 97F44 800A7744 1000B227 */   addiu     $s2, $sp, 0x10
/* 97F48 800A7748 21284002 */  addu       $a1, $s2, $zero
.L800A774C:
/* 97F4C 800A774C 00008390 */  lbu        $v1, ($a0)
/* 97F50 800A7750 00000000 */  nop
/* 97F54 800A7754 9FFF6224 */  addiu      $v0, $v1, -0x61
/* 97F58 800A7758 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 97F5C 800A775C 03004010 */  beqz       $v0, .L800A776C
/* 97F60 800A7760 E0FF6224 */   addiu     $v0, $v1, -0x20
/* 97F64 800A7764 DC9D0208 */  j          .L800A7770
/* 97F68 800A7768 0000A2A0 */   sb        $v0, ($a1)
.L800A776C:
/* 97F6C 800A776C 0000A3A0 */  sb         $v1, ($a1)
.L800A7770:
/* 97F70 800A7770 01008424 */  addiu      $a0, $a0, 1
/* 97F74 800A7774 0000A390 */  lbu        $v1, ($a1)
/* 97F78 800A7778 0100A524 */  addiu      $a1, $a1, 1
/* 97F7C 800A777C 01003126 */  addiu      $s1, $s1, 1
/* 97F80 800A7780 00008290 */  lbu        $v0, ($a0)
/* 97F84 800A7784 00000000 */  nop
/* 97F88 800A7788 F0FF4014 */  bnez       $v0, .L800A774C
/* 97F8C 800A778C 2130C300 */   addu      $a2, $a2, $v1
.L800A7790:
/* 97F90 800A7790 21282002 */  addu       $a1, $s1, $zero
/* 97F94 800A7794 0500A228 */  slti       $v0, $a1, 5
/* 97F98 800A7798 15004010 */  beqz       $v0, .L800A77F0
/* 97F9C 800A779C C44E023C */   lui       $v0, 0x4ec4
/* 97FA0 800A77A0 4FEC4234 */  ori        $v0, $v0, 0xec4f
/* 97FA4 800A77A4 1800C200 */  mult       $a2, $v0
/* 97FA8 800A77A8 21384002 */  addu       $a3, $s2, $zero
/* 97FAC 800A77AC C3270600 */  sra        $a0, $a2, 0x1f
/* 97FB0 800A77B0 10100000 */  mfhi       $v0
/* 97FB4 800A77B4 C3100200 */  sra        $v0, $v0, 3
/* 97FB8 800A77B8 23104400 */  subu       $v0, $v0, $a0
/* 97FBC 800A77BC 40180200 */  sll        $v1, $v0, 1
/* 97FC0 800A77C0 21186200 */  addu       $v1, $v1, $v0
/* 97FC4 800A77C4 80180300 */  sll        $v1, $v1, 2
/* 97FC8 800A77C8 21186200 */  addu       $v1, $v1, $v0
/* 97FCC 800A77CC 40180300 */  sll        $v1, $v1, 1
/* 97FD0 800A77D0 2318C300 */  subu       $v1, $a2, $v1
/* 97FD4 800A77D4 41006324 */  addiu      $v1, $v1, 0x41
/* 97FD8 800A77D8 2110E500 */  addu       $v0, $a3, $a1
.L800A77DC:
/* 97FDC 800A77DC 000043A0 */  sb         $v1, ($v0)
/* 97FE0 800A77E0 0100A524 */  addiu      $a1, $a1, 1
/* 97FE4 800A77E4 0500A228 */  slti       $v0, $a1, 5
/* 97FE8 800A77E8 FCFF4014 */  bnez       $v0, .L800A77DC
/* 97FEC 800A77EC 2110E500 */   addu      $v0, $a3, $a1
.L800A77F0:
/* 97FF0 800A77F0 FFFFA324 */  addiu      $v1, $a1, -1
/* 97FF4 800A77F4 21886000 */  addu       $s1, $v1, $zero
/* 97FF8 800A77F8 21104502 */  addu       $v0, $s2, $a1
/* 97FFC 800A77FC 000040A0 */  sb         $zero, ($v0)
/* 98000 800A7800 21104302 */  addu       $v0, $s2, $v1
/* 98004 800A7804 00004490 */  lbu        $a0, ($v0)
/* 98008 800A7808 0700201A */  blez       $s1, .L800A7828
/* 9800C 800A780C FEFFA624 */   addiu     $a2, $a1, -2
/* 98010 800A7810 21184000 */  addu       $v1, $v0, $zero
.L800A7814:
/* 98014 800A7814 FFFF6290 */  lbu        $v0, -1($v1)
/* 98018 800A7818 FFFF3126 */  addiu      $s1, $s1, -1
/* 9801C 800A781C 000062A0 */  sb         $v0, ($v1)
/* 98020 800A7820 FCFF201E */  bgtz       $s1, .L800A7814
/* 98024 800A7824 FFFF6324 */   addiu     $v1, $v1, -1
.L800A7828:
/* 98028 800A7828 1100A293 */  lbu        $v0, 0x11($sp)
/* 9802C 800A782C 21184602 */  addu       $v1, $s2, $a2
/* 98030 800A7830 1000A4A3 */  sb         $a0, 0x10($sp)
/* 98034 800A7834 00006490 */  lbu        $a0, ($v1)
/* 98038 800A7838 000062A0 */  sb         $v0, ($v1)
/* 9803C 800A783C 0900A018 */  blez       $a1, .L800A7864
/* 98040 800A7840 1100A4A3 */   sb        $a0, 0x11($sp)
/* 98044 800A7844 21804002 */  addu       $s0, $s2, $zero
/* 98048 800A7848 2188A000 */  addu       $s1, $a1, $zero
.L800A784C:
/* 9804C 800A784C 00000492 */  lbu        $a0, ($s0)
/* 98050 800A7850 79A4020C */  jal        FUN_800a91e4
/* 98054 800A7854 FFFF3126 */   addiu     $s1, $s1, -1
/* 98058 800A7858 000002A2 */  sb         $v0, ($s0)
/* 9805C 800A785C FBFF2016 */  bnez       $s1, .L800A784C
/* 98060 800A7860 01001026 */   addiu     $s0, $s0, 1
.L800A7864:
/* 98064 800A7864 21880000 */  addu       $s1, $zero, $zero
/* 98068 800A7868 1000A293 */  lbu        $v0, 0x10($sp)
/* 9806C 800A786C 00000000 */  nop
/* 98070 800A7870 0C004010 */  beqz       $v0, .L800A78A4
/* 98074 800A7874 21284002 */   addu      $a1, $s2, $zero
/* 98078 800A7878 21207102 */  addu       $a0, $s3, $s1
.L800A787C:
/* 9807C 800A787C 2110B100 */  addu       $v0, $a1, $s1
/* 98080 800A7880 01003126 */  addiu      $s1, $s1, 1
/* 98084 800A7884 00004390 */  lbu        $v1, ($v0)
/* 98088 800A7888 2110A000 */  addu       $v0, $a1, $zero
/* 9808C 800A788C 21105100 */  addu       $v0, $v0, $s1
/* 98090 800A7890 000083A0 */  sb         $v1, ($a0)
/* 98094 800A7894 00004390 */  lbu        $v1, ($v0)
/* 98098 800A7898 00000000 */  nop
/* 9809C 800A789C F7FF6014 */  bnez       $v1, .L800A787C
/* 980A0 800A78A0 21207102 */   addu      $a0, $s3, $s1
.L800A78A4:
/* 980A4 800A78A4 21107102 */  addu       $v0, $s3, $s1
/* 980A8 800A78A8 2800BF8F */  lw         $ra, 0x28($sp)
/* 980AC 800A78AC 2400B38F */  lw         $s3, 0x24($sp)
/* 980B0 800A78B0 2000B28F */  lw         $s2, 0x20($sp)
/* 980B4 800A78B4 1C00B18F */  lw         $s1, 0x1c($sp)
/* 980B8 800A78B8 1800B08F */  lw         $s0, 0x18($sp)
/* 980BC 800A78BC 000040A0 */  sb         $zero, ($v0)
/* 980C0 800A78C0 21100000 */  addu       $v0, $zero, $zero
/* 980C4 800A78C4 0800E003 */  jr         $ra
/* 980C8 800A78C8 3000BD27 */   addiu     $sp, $sp, 0x30

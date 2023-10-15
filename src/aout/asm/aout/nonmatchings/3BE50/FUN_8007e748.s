.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e748
/* 6EF48 8007E748 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6EF4C 8007E74C 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 6EF50 8007E750 21A88000 */  addu       $s5, $a0, $zero
/* 6EF54 8007E754 6000A28F */  lw         $v0, 0x60($sp)
/* 6EF58 8007E758 6400A38F */  lw         $v1, 0x64($sp)
/* 6EF5C 8007E75C 5C00A48F */  lw         $a0, 0x5c($sp)
/* 6EF60 8007E760 3800B4AF */  sw         $s4, 0x38($sp)
/* 6EF64 8007E764 21A0A000 */  addu       $s4, $a1, $zero
/* 6EF68 8007E768 3000B2AF */  sw         $s2, 0x30($sp)
/* 6EF6C 8007E76C 2190E000 */  addu       $s2, $a3, $zero
/* 6EF70 8007E770 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 6EF74 8007E774 21880000 */  addu       $s1, $zero, $zero
/* 6EF78 8007E778 4000BFAF */  sw         $ra, 0x40($sp)
/* 6EF7C 8007E77C 3400B3AF */  sw         $s3, 0x34($sp)
/* 6EF80 8007E780 0300601C */  bgtz       $v1, .L8007E790
/* 6EF84 8007E784 2800B0AF */   sw        $s0, 0x28($sp)
/* 6EF88 8007E788 01000324 */  addiu      $v1, $zero, 1
/* 6EF8C 8007E78C 21106000 */  addu       $v0, $v1, $zero
.L8007E790:
/* 6EF90 8007E790 00130200 */  sll        $v0, $v0, 0xc
/* 6EF94 8007E794 1A004300 */  div        $zero, $v0, $v1
/* 6EF98 8007E798 02006014 */  bnez       $v1, .L8007E7A4
/* 6EF9C 8007E79C 00000000 */   nop
/* 6EFA0 8007E7A0 0D000700 */  break      7
.L8007E7A4:
/* 6EFA4 8007E7A4 FFFF0124 */   addiu     $at, $zero, -1
/* 6EFA8 8007E7A8 04006114 */  bne        $v1, $at, .L8007E7BC
/* 6EFAC 8007E7AC 0080013C */   lui       $at, 0x8000
/* 6EFB0 8007E7B0 02004114 */  bne        $v0, $at, .L8007E7BC
/* 6EFB4 8007E7B4 00000000 */   nop
/* 6EFB8 8007E7B8 0D000600 */  break      6
.L8007E7BC:
/* 6EFBC 8007E7BC 12800000 */   mflo      $s0
/* 6EFC0 8007E7C0 00000000 */  nop
/* 6EFC4 8007E7C4 0120022A */  slti       $v0, $s0, 0x2001
/* 6EFC8 8007E7C8 04004010 */  beqz       $v0, .L8007E7DC
/* 6EFCC 8007E7CC 00200224 */   addiu     $v0, $zero, 0x2000
/* 6EFD0 8007E7D0 02000106 */  bgez       $s0, .L8007E7DC
/* 6EFD4 8007E7D4 21100002 */   addu      $v0, $s0, $zero
/* 6EFD8 8007E7D8 21100000 */  addu       $v0, $zero, $zero
.L8007E7DC:
/* 6EFDC 8007E7DC 21804000 */  addu       $s0, $v0, $zero
/* 6EFE0 8007E7E0 0110022A */  slti       $v0, $s0, 0x1001
/* 6EFE4 8007E7E4 03004014 */  bnez       $v0, .L8007E7F4
/* 6EFE8 8007E7E8 21100002 */   addu      $v0, $s0, $zero
/* 6EFEC 8007E7EC 00200224 */  addiu      $v0, $zero, 0x2000
/* 6EFF0 8007E7F0 23105000 */  subu       $v0, $v0, $s0
.L8007E7F4:
/* 6EFF4 8007E7F4 07008014 */  bnez       $a0, .L8007E814
/* 6EFF8 8007E7F8 00000000 */   nop
/* 6EFFC 8007E7FC 03004104 */  bgez       $v0, .L8007E80C
/* 6F000 8007E800 43890200 */   sra       $s1, $v0, 5
/* 6F004 8007E804 1F004224 */  addiu      $v0, $v0, 0x1f
/* 6F008 8007E808 43890200 */  sra        $s1, $v0, 5
.L8007E80C:
/* 6F00C 8007E80C 0CFA0108 */  j          .L8007E830
/* 6F010 8007E810 21800000 */   addu      $s0, $zero, $zero
.L8007E814:
/* 6F014 8007E814 03008018 */  blez       $a0, .L8007E824
/* 6F018 8007E818 00000000 */   nop
/* 6F01C 8007E81C 0CFA0108 */  j          .L8007E830
/* 6F020 8007E820 80001124 */   addiu     $s1, $zero, 0x80
.L8007E824:
/* 6F024 8007E824 03008104 */  bgez       $a0, .L8007E834
/* 6F028 8007E828 02008238 */   xori      $v0, $a0, 2
/* 6F02C 8007E82C 21880000 */  addu       $s1, $zero, $zero
.L8007E830:
/* 6F030 8007E830 02008238 */  xori       $v0, $a0, 2
.L8007E834:
/* 6F034 8007E834 06004012 */  beqz       $s2, .L8007E850
/* 6F038 8007E838 0100532C */   sltiu     $s3, $v0, 1
/* 6F03C 8007E83C 04000224 */  addiu      $v0, $zero, 4
/* 6F040 8007E840 03004212 */  beq        $s2, $v0, .L8007E850
/* 6F044 8007E844 06000224 */   addiu     $v0, $zero, 6
/* 6F048 8007E848 05004216 */  bne        $s2, $v0, .L8007E860
/* 6F04C 8007E84C 21208002 */   addu      $a0, $s4, $zero
.L8007E850:
/* 6F050 8007E850 0006022A */  slti       $v0, $s0, 0x600
/* 6F054 8007E854 12004014 */  bnez       $v0, .L8007E8A0
/* 6F058 8007E858 2120A002 */   addu      $a0, $s5, $zero
/* 6F05C 8007E85C 21208002 */  addu       $a0, $s4, $zero
.L8007E860:
/* 6F060 8007E860 2128C000 */  addu       $a1, $a2, $zero
/* 6F064 8007E864 63000224 */  addiu      $v0, $zero, 0x63
/* 6F068 8007E868 1000A2AF */  sw         $v0, 0x10($sp)
/* 6F06C 8007E86C 3C000224 */  addiu      $v0, $zero, 0x3c
/* 6F070 8007E870 1400A2AF */  sw         $v0, 0x14($sp)
/* 6F074 8007E874 EA000224 */  addiu      $v0, $zero, 0xea
/* 6F078 8007E878 1800A2AF */  sw         $v0, 0x18($sp)
/* 6F07C 8007E87C 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 6F080 8007E880 5800A78F */  lw         $a3, 0x58($sp)
/* 6F084 8007E884 2000468C */  lw         $a2, %lo(D_800F0020)($v0)
/* 6F088 8007E888 19FF0224 */  addiu      $v0, $zero, -0xe7
/* 6F08C 8007E88C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6F090 8007E890 62F1010C */  jal        FUN_8007c588
/* 6F094 8007E894 2000B1AF */   sw        $s1, 0x20($sp)
/* 6F098 8007E898 21304000 */  addu       $a2, $v0, $zero
/* 6F09C 8007E89C 2120A002 */  addu       $a0, $s5, $zero
.L8007E8A0:
/* 6F0A0 8007E8A0 21288002 */  addu       $a1, $s4, $zero
/* 6F0A4 8007E8A4 FE000724 */  addiu      $a3, $zero, 0xfe
/* 6F0A8 8007E8A8 1000B1AF */  sw         $s1, 0x10($sp)
/* 6F0AC 8007E8AC 1400B0AF */  sw         $s0, 0x14($sp)
/* 6F0B0 8007E8B0 1800B2AF */  sw         $s2, 0x18($sp)
/* 6F0B4 8007E8B4 1EF6010C */  jal        FUN_8007d878
/* 6F0B8 8007E8B8 1C00B3AF */   sw        $s3, 0x1c($sp)
/* 6F0BC 8007E8BC 4000BF8F */  lw         $ra, 0x40($sp)
/* 6F0C0 8007E8C0 3C00B58F */  lw         $s5, 0x3c($sp)
/* 6F0C4 8007E8C4 3800B48F */  lw         $s4, 0x38($sp)
/* 6F0C8 8007E8C8 3400B38F */  lw         $s3, 0x34($sp)
/* 6F0CC 8007E8CC 3000B28F */  lw         $s2, 0x30($sp)
/* 6F0D0 8007E8D0 2C00B18F */  lw         $s1, 0x2c($sp)
/* 6F0D4 8007E8D4 2800B08F */  lw         $s0, 0x28($sp)
/* 6F0D8 8007E8D8 0800E003 */  jr         $ra
/* 6F0DC 8007E8DC 4800BD27 */   addiu     $sp, $sp, 0x48

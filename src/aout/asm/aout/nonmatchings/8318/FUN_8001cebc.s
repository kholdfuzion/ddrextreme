.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cebc
/* D6BC 8001CEBC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* D6C0 8001CEC0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* D6C4 8001CEC4 21988000 */  addu       $s3, $a0, $zero
/* D6C8 8001CEC8 2800B6AF */  sw         $s6, 0x28($sp)
/* D6CC 8001CECC 21B0A000 */  addu       $s6, $a1, $zero
/* D6D0 8001CED0 2C00BFAF */  sw         $ra, 0x2c($sp)
/* D6D4 8001CED4 2400B5AF */  sw         $s5, 0x24($sp)
/* D6D8 8001CED8 2000B4AF */  sw         $s4, 0x20($sp)
/* D6DC 8001CEDC 1800B2AF */  sw         $s2, 0x18($sp)
/* D6E0 8001CEE0 1400B1AF */  sw         $s1, 0x14($sp)
/* D6E4 8001CEE4 1000B0AF */  sw         $s0, 0x10($sp)
/* D6E8 8001CEE8 00006286 */  lh         $v0, ($s3)
/* D6EC 8001CEEC 00000000 */  nop
/* D6F0 8001CEF0 60004004 */  bltz       $v0, .L8001D074
/* D6F4 8001CEF4 21A8C000 */   addu      $s5, $a2, $zero
/* D6F8 8001CEF8 04006386 */  lh         $v1, 4($s3)
/* D6FC 8001CEFC 00000000 */  nop
/* D700 8001CF00 21104300 */  addu       $v0, $v0, $v1
/* D704 8001CF04 01044228 */  slti       $v0, $v0, 0x401
/* D708 8001CF08 5A004010 */  beqz       $v0, .L8001D074
/* D70C 8001CF0C 00000000 */   nop
/* D710 8001CF10 02006286 */  lh         $v0, 2($s3)
/* D714 8001CF14 00000000 */  nop
/* D718 8001CF18 56004004 */  bltz       $v0, .L8001D074
/* D71C 8001CF1C 00000000 */   nop
/* D720 8001CF20 06006486 */  lh         $a0, 6($s3)
/* D724 8001CF24 00000000 */  nop
/* D728 8001CF28 21104400 */  addu       $v0, $v0, $a0
/* D72C 8001CF2C 01044228 */  slti       $v0, $v0, 0x401
/* D730 8001CF30 50004010 */  beqz       $v0, .L8001D074
/* D734 8001CF34 00000000 */   nop
/* D738 8001CF38 0C00C296 */  lhu        $v0, 0xc($s6)
/* D73C 8001CF3C 00000000 */  nop
/* D740 8001CF40 FDFF4224 */  addiu      $v0, $v0, -3
/* D744 8001CF44 0200422C */  sltiu      $v0, $v0, 2
/* D748 8001CF48 42004010 */  beqz       $v0, .L8001D054
/* D74C 8001CF4C 40140300 */   sll       $v0, $v1, 0x11
/* D750 8001CF50 03140200 */  sra        $v0, $v0, 0x10
/* D754 8001CF54 18004400 */  mult       $v0, $a0
/* D758 8001CF58 2580043C */  lui        $a0, 0x8025
/* D75C 8001CF5C 00808434 */  ori        $a0, $a0, 0x8000
/* D760 8001CF60 40180300 */  sll        $v1, $v1, 1
/* D764 8001CF64 040063A6 */  sh         $v1, 4($s3)
/* D768 8001CF68 12100000 */  mflo       $v0
/* D76C 8001CF6C 40100200 */  sll        $v0, $v0, 1
/* D770 8001CF70 7CAA000C */  jal        vsync_8002a9f0
/* D774 8001CF74 23A08200 */   subu      $s4, $a0, $v0
/* D778 8001CF78 21206002 */  addu       $a0, $s3, $zero
/* D77C 8001CF7C 9B61000C */  jal        StoreImage
/* D780 8001CF80 21288002 */   addu      $a1, $s4, $zero
/* D784 8001CF84 D860000C */  jal        DrawSync
/* D788 8001CF88 21200000 */   addu      $a0, $zero, $zero
/* D78C 8001CF8C 04006386 */  lh         $v1, 4($s3)
/* D790 8001CF90 06006286 */  lh         $v0, 6($s3)
/* D794 8001CF94 00000000 */  nop
/* D798 8001CF98 18006200 */  mult       $v1, $v0
/* D79C 8001CF9C 12180000 */  mflo       $v1
/* D7A0 8001CFA0 40180300 */  sll        $v1, $v1, 1
/* D7A4 8001CFA4 2C006018 */  blez       $v1, .L8001D058
/* D7A8 8001CFA8 21880000 */   addu      $s1, $zero, $zero
/* D7AC 8001CFAC 21908002 */  addu       $s2, $s4, $zero
.L8001CFB0:
/* D7B0 8001CFB0 43101100 */  sra        $v0, $s1, 1
/* D7B4 8001CFB4 2110A202 */  addu       $v0, $s5, $v0
/* D7B8 8001CFB8 00005090 */  lbu        $s0, ($v0)
/* D7BC 8001CFBC FF002332 */  andi       $v1, $s1, 0xff
/* D7C0 8001CFC0 03006014 */  bnez       $v1, .L8001CFD0
/* D7C4 8001CFC4 00000000 */   nop
/* D7C8 8001CFC8 7CAA000C */  jal        vsync_8002a9f0
/* D7CC 8001CFCC 00000000 */   nop
.L8001CFD0:
/* D7D0 8001CFD0 0C00C386 */  lh         $v1, 0xc($s6)
/* D7D4 8001CFD4 03000224 */  addiu      $v0, $zero, 3
/* D7D8 8001CFD8 08006214 */  bne        $v1, $v0, .L8001CFFC
/* D7DC 8001CFDC 04000224 */   addiu     $v0, $zero, 4
/* D7E0 8001CFE0 01002232 */  andi       $v0, $s1, 1
/* D7E4 8001CFE4 80100200 */  sll        $v0, $v0, 2
/* D7E8 8001CFE8 07105000 */  srav       $v0, $s0, $v0
/* D7EC 8001CFEC 00004392 */  lbu        $v1, ($s2)
/* D7F0 8001CFF0 0F005030 */  andi       $s0, $v0, 0xf
/* D7F4 8001CFF4 07740008 */  j          .L8001D01C
/* D7F8 8001CFF8 F0006330 */   andi      $v1, $v1, 0xf0
.L8001CFFC:
/* D7FC 8001CFFC 09006214 */  bne        $v1, $v0, .L8001D024
/* D800 8001D000 01002232 */   andi      $v0, $s1, 1
/* D804 8001D004 80100200 */  sll        $v0, $v0, 2
/* D808 8001D008 23106200 */  subu       $v0, $v1, $v0
/* D80C 8001D00C 04105000 */  sllv       $v0, $s0, $v0
/* D810 8001D010 00004392 */  lbu        $v1, ($s2)
/* D814 8001D014 F0005030 */  andi       $s0, $v0, 0xf0
/* D818 8001D018 0F006330 */  andi       $v1, $v1, 0xf
.L8001D01C:
/* D81C 8001D01C 25180302 */  or         $v1, $s0, $v1
/* D820 8001D020 000043A2 */  sb         $v1, ($s2)
.L8001D024:
/* D824 8001D024 04006286 */  lh         $v0, 4($s3)
/* D828 8001D028 06006386 */  lh         $v1, 6($s3)
/* D82C 8001D02C 00000000 */  nop
/* D830 8001D030 18004300 */  mult       $v0, $v1
/* D834 8001D034 01003126 */  addiu      $s1, $s1, 1
/* D838 8001D038 12100000 */  mflo       $v0
/* D83C 8001D03C 40100200 */  sll        $v0, $v0, 1
/* D840 8001D040 2A102202 */  slt        $v0, $s1, $v0
/* D844 8001D044 DAFF4014 */  bnez       $v0, .L8001CFB0
/* D848 8001D048 01005226 */   addiu     $s2, $s2, 1
/* D84C 8001D04C 16740008 */  j          .L8001D058
/* D850 8001D050 00000000 */   nop
.L8001D054:
/* D854 8001D054 21A0A002 */  addu       $s4, $s5, $zero
.L8001D058:
/* D858 8001D058 7CAA000C */  jal        vsync_8002a9f0
/* D85C 8001D05C 00000000 */   nop
/* D860 8001D060 21206002 */  addu       $a0, $s3, $zero
/* D864 8001D064 8361000C */  jal        LoadImage
/* D868 8001D068 21288002 */   addu      $a1, $s4, $zero
/* D86C 8001D06C D860000C */  jal        DrawSync
/* D870 8001D070 21200000 */   addu      $a0, $zero, $zero
.L8001D074:
/* D874 8001D074 2C00BF8F */  lw         $ra, 0x2c($sp)
/* D878 8001D078 2800B68F */  lw         $s6, 0x28($sp)
/* D87C 8001D07C 2400B58F */  lw         $s5, 0x24($sp)
/* D880 8001D080 2000B48F */  lw         $s4, 0x20($sp)
/* D884 8001D084 1C00B38F */  lw         $s3, 0x1c($sp)
/* D888 8001D088 1800B28F */  lw         $s2, 0x18($sp)
/* D88C 8001D08C 1400B18F */  lw         $s1, 0x14($sp)
/* D890 8001D090 1000B08F */  lw         $s0, 0x10($sp)
/* D894 8001D094 0800E003 */  jr         $ra
/* D898 8001D098 3000BD27 */   addiu     $sp, $sp, 0x30

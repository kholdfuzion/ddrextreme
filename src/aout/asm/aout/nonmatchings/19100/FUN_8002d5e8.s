.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d5e8
/* 1DDE8 8002D5E8 C8FEBD27 */  addiu      $sp, $sp, -0x138
/* 1DDEC 8002D5EC 3401BFAF */  sw         $ra, 0x134($sp)
/* 1DDF0 8002D5F0 3001BEAF */  sw         $fp, 0x130($sp)
/* 1DDF4 8002D5F4 2C01B7AF */  sw         $s7, 0x12c($sp)
/* 1DDF8 8002D5F8 2801B6AF */  sw         $s6, 0x128($sp)
/* 1DDFC 8002D5FC 2401B5AF */  sw         $s5, 0x124($sp)
/* 1DE00 8002D600 2001B4AF */  sw         $s4, 0x120($sp)
/* 1DE04 8002D604 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 1DE08 8002D608 1801B2AF */  sw         $s2, 0x118($sp)
/* 1DE0C 8002D60C 1401B1AF */  sw         $s1, 0x114($sp)
/* 1DE10 8002D610 3FB5000C */  jal        FUN_8002d4fc
/* 1DE14 8002D614 1001B0AF */   sw        $s0, 0x110($sp)
/* 1DE18 8002D618 1580043C */  lui        $a0, %hi(D_8014CCAC)
/* 1DE1C 8002D61C 1580033C */  lui        $v1, %hi(D_8014DEF0)
/* 1DE20 8002D620 21B04000 */  addu       $s6, $v0, $zero
/* 1DE24 8002D624 ACCC80AC */  sw         $zero, %lo(D_8014CCAC)($a0)
/* 1DE28 8002D628 0700C106 */  bgez       $s6, .L8002D648
/* 1DE2C 8002D62C F0DE60AC */   sw        $zero, %lo(D_8014DEF0)($v1)
/* 1DE30 8002D630 8FB50008 */  j          .L8002D63C
/* 1DE34 8002D634 FFFF0224 */   addiu     $v0, $zero, -1
.L8002D638:
/* 1DE38 8002D638 1580033C */  lui        $v1, %hi(D_8014DEF0)
.L8002D63C:
/* 1DE3C 8002D63C F0DE62AC */  sw         $v0, %lo(D_8014DEF0)($v1)
/* 1DE40 8002D640 3DB60008 */  j          .L8002D8F4
/* 1DE44 8002D644 21100000 */   addu      $v0, $zero, $zero
.L8002D648:
/* 1DE48 8002D648 A900C01A */  blez       $s6, .L8002D8F0
/* 1DE4C 8002D64C 01001324 */   addiu     $s3, $zero, 1
/* 1DE50 8002D650 01001224 */  addiu      $s2, $zero, 1
/* 1DE54 8002D654 90001724 */  addiu      $s7, $zero, 0x90
/* 1DE58 8002D658 0E80023C */  lui        $v0, %hi(D_800D8D70)
/* 1DE5C 8002D65C 708D5E24 */  addiu      $fp, $v0, %lo(D_800D8D70)
.L8002D660:
/* 1DE60 8002D660 1580023C */  lui        $v0, %hi(D_8014CC30)
/* 1DE64 8002D664 30CC4224 */  addiu      $v0, $v0, %lo(D_8014CC30)
/* 1DE68 8002D668 2188E202 */  addu       $s1, $s7, $v0
/* 1DE6C 8002D66C 21206002 */  addu       $a0, $s3, $zero
.L8002D670:
/* 1DE70 8002D670 0E80023C */  lui        $v0, %hi(D_800D8D50)
.L8002D674:
/* 1DE74 8002D674 508D4524 */  addiu      $a1, $v0, %lo(D_800D8D50)
/* 1DE78 8002D678 01000624 */  addiu      $a2, $zero, 1
/* 1DE7C 8002D67C BAB4000C */  jal        FUN_8002d2e8
/* 1DE80 8002D680 1000A727 */   addiu     $a3, $sp, 0x10
/* 1DE84 8002D684 21804000 */  addu       $s0, $v0, $zero
/* 1DE88 8002D688 03000106 */  bgez       $s0, .L8002D698
/* 1DE8C 8002D68C 00000000 */   nop
/* 1DE90 8002D690 DFB9000C */  jal        FUN_8002e77c
/* 1DE94 8002D694 0B000424 */   addiu     $a0, $zero, 0xb
.L8002D698:
/* 1DE98 8002D698 1000A293 */  lbu        $v0, 0x10($sp)
/* 1DE9C 8002D69C 00000000 */  nop
/* 1DEA0 8002D6A0 F3FF5214 */  bne        $v0, $s2, .L8002D670
/* 1DEA4 8002D6A4 21206002 */   addu      $a0, $s3, $zero
/* 1DEA8 8002D6A8 1100A293 */  lbu        $v0, 0x11($sp)
/* 1DEAC 8002D6AC 00000000 */  nop
/* 1DEB0 8002D6B0 F0FF5214 */  bne        $v0, $s2, .L8002D674
/* 1DEB4 8002D6B4 0E80023C */   lui       $v0, 0x800e
/* 1DEB8 8002D6B8 21202002 */  addu       $a0, $s1, $zero
/* 1DEBC 8002D6BC 1200A527 */  addiu      $a1, $sp, 0x12
/* 1DEC0 8002D6C0 BD6B000C */  jal        memcpy
/* 1DEC4 8002D6C4 FEFF0626 */   addiu     $a2, $s0, -2
/* 1DEC8 8002D6C8 07001424 */  addiu      $s4, $zero, 7
.L8002D6CC:
/* 1DECC 8002D6CC 21206002 */  addu       $a0, $s3, $zero
.L8002D6D0:
/* 1DED0 8002D6D0 0E80033C */  lui        $v1, %hi(D_800D8D54)
.L8002D6D4:
/* 1DED4 8002D6D4 548D6524 */  addiu      $a1, $v1, %lo(D_800D8D54)
/* 1DED8 8002D6D8 03000624 */  addiu      $a2, $zero, 3
/* 1DEDC 8002D6DC BAB4000C */  jal        FUN_8002d2e8
/* 1DEE0 8002D6E0 1000A727 */   addiu     $a3, $sp, 0x10
/* 1DEE4 8002D6E4 21804000 */  addu       $s0, $v0, $zero
/* 1DEE8 8002D6E8 03000106 */  bgez       $s0, .L8002D6F8
/* 1DEEC 8002D6EC 00000000 */   nop
/* 1DEF0 8002D6F0 DFB9000C */  jal        FUN_8002e77c
/* 1DEF4 8002D6F4 0C000424 */   addiu     $a0, $zero, 0xc
.L8002D6F8:
/* 1DEF8 8002D6F8 F4FF1416 */  bne        $s0, $s4, .L8002D6CC
/* 1DEFC 8002D6FC 00000000 */   nop
/* 1DF00 8002D700 1000A293 */  lbu        $v0, 0x10($sp)
/* 1DF04 8002D704 00000000 */  nop
/* 1DF08 8002D708 F0FF5214 */  bne        $v0, $s2, .L8002D6CC
/* 1DF0C 8002D70C 00000000 */   nop
/* 1DF10 8002D710 1100A293 */  lbu        $v0, 0x11($sp)
/* 1DF14 8002D714 00000000 */  nop
/* 1DF18 8002D718 EDFF5214 */  bne        $v0, $s2, .L8002D6D0
/* 1DF1C 8002D71C 21206002 */   addu      $a0, $s3, $zero
/* 1DF20 8002D720 1300A293 */  lbu        $v0, 0x13($sp)
/* 1DF24 8002D724 00000000 */  nop
/* 1DF28 8002D728 E9FF5214 */  bne        $v0, $s2, .L8002D6D0
/* 1DF2C 8002D72C 00000000 */   nop
/* 1DF30 8002D730 1500A293 */  lbu        $v0, 0x15($sp)
/* 1DF34 8002D734 00000000 */  nop
/* 1DF38 8002D738 E6FF5214 */  bne        $v0, $s2, .L8002D6D4
/* 1DF3C 8002D73C 0E80033C */   lui       $v1, 0x800e
/* 1DF40 8002D740 1580023C */  lui        $v0, %hi(D_8014CBA0)
/* 1DF44 8002D744 A0CB5524 */  addiu      $s5, $v0, %lo(D_8014CBA0)
/* 1DF48 8002D748 01001424 */  addiu      $s4, $zero, 1
/* 1DF4C 8002D74C 1200A293 */  lbu        $v0, 0x12($sp)
/* 1DF50 8002D750 1400A393 */  lbu        $v1, 0x14($sp)
/* 1DF54 8002D754 1600A493 */  lbu        $a0, 0x16($sp)
/* 1DF58 8002D758 00140200 */  sll        $v0, $v0, 0x10
/* 1DF5C 8002D75C 001A0300 */  sll        $v1, $v1, 8
/* 1DF60 8002D760 25104300 */  or         $v0, $v0, $v1
/* 1DF64 8002D764 25104400 */  or         $v0, $v0, $a0
/* 1DF68 8002D768 800022AE */  sw         $v0, 0x80($s1)
/* 1DF6C 8002D76C 21206002 */  addu       $a0, $s3, $zero
.L8002D770:
/* 1DF70 8002D770 0E80033C */  lui        $v1, %hi(D_800D8D58)
.L8002D774:
/* 1DF74 8002D774 588D6524 */  addiu      $a1, $v1, %lo(D_800D8D58)
/* 1DF78 8002D778 01000624 */  addiu      $a2, $zero, 1
/* 1DF7C 8002D77C BAB4000C */  jal        FUN_8002d2e8
/* 1DF80 8002D780 1000A727 */   addiu     $a3, $sp, 0x10
/* 1DF84 8002D784 21804000 */  addu       $s0, $v0, $zero
/* 1DF88 8002D788 03000106 */  bgez       $s0, .L8002D798
/* 1DF8C 8002D78C 00000000 */   nop
/* 1DF90 8002D790 DFB9000C */  jal        FUN_8002e77c
/* 1DF94 8002D794 0D000424 */   addiu     $a0, $zero, 0xd
.L8002D798:
/* 1DF98 8002D798 1000A393 */  lbu        $v1, 0x10($sp)
/* 1DF9C 8002D79C 00000000 */  nop
/* 1DFA0 8002D7A0 F3FF7414 */  bne        $v1, $s4, .L8002D770
/* 1DFA4 8002D7A4 21206002 */   addu      $a0, $s3, $zero
/* 1DFA8 8002D7A8 1100A293 */  lbu        $v0, 0x11($sp)
/* 1DFAC 8002D7AC 00000000 */  nop
/* 1DFB0 8002D7B0 F0FF4314 */  bne        $v0, $v1, .L8002D774
/* 1DFB4 8002D7B4 0E80033C */   lui       $v1, 0x800e
/* 1DFB8 8002D7B8 2120A002 */  addu       $a0, $s5, $zero
/* 1DFBC 8002D7BC 1200A527 */  addiu      $a1, $sp, 0x12
/* 1DFC0 8002D7C0 BD6B000C */  jal        memcpy
/* 1DFC4 8002D7C4 FFFF0626 */   addiu     $a2, $s0, -1
/* 1DFC8 8002D7C8 1580033C */  lui        $v1, %hi(D_8014CBA0)
/* 1DFCC 8002D7CC A0CB6290 */  lbu        $v0, %lo(D_8014CBA0)($v1)
/* 1DFD0 8002D7D0 00000000 */  nop
/* 1DFD4 8002D7D4 18004010 */  beqz       $v0, .L8002D838
/* 1DFD8 8002D7D8 01000624 */   addiu     $a2, $zero, 1
/* 1DFDC 8002D7DC 02000524 */  addiu      $a1, $zero, 2
/* 1DFE0 8002D7E0 21106000 */  addu       $v0, $v1, $zero
/* 1DFE4 8002D7E4 A0CB4424 */  addiu      $a0, $v0, -0x3460
/* 1DFE8 8002D7E8 00008290 */  lbu        $v0, ($a0)
.L8002D7EC:
/* 1DFEC 8002D7EC 00000000 */  nop
/* 1DFF0 8002D7F0 06004614 */  bne        $v0, $a2, .L8002D80C
/* 1DFF4 8002D7F4 00000000 */   nop
/* 1DFF8 8002D7F8 01008290 */  lbu        $v0, 1($a0)
/* 1DFFC 8002D7FC 02008390 */  lbu        $v1, 2($a0)
/* 1E000 8002D800 860022A6 */  sh         $v0, 0x86($s1)
/* 1E004 8002D804 880023A6 */  sh         $v1, 0x88($s1)
/* 1E008 8002D808 00008290 */  lbu        $v0, ($a0)
.L8002D80C:
/* 1E00C 8002D80C 00000000 */  nop
/* 1E010 8002D810 04004514 */  bne        $v0, $a1, .L8002D824
/* 1E014 8002D814 00000000 */   nop
/* 1E018 8002D818 01008290 */  lbu        $v0, 1($a0)
/* 1E01C 8002D81C 00000000 */  nop
/* 1E020 8002D820 8A0022A6 */  sh         $v0, 0x8a($s1)
.L8002D824:
/* 1E024 8002D824 04008424 */  addiu      $a0, $a0, 4
/* 1E028 8002D828 00008290 */  lbu        $v0, ($a0)
/* 1E02C 8002D82C 00000000 */  nop
/* 1E030 8002D830 EEFF4014 */  bnez       $v0, .L8002D7EC
/* 1E034 8002D834 00000000 */   nop
.L8002D838:
/* 1E038 8002D838 8A002286 */  lh         $v0, 0x8a($s1)
/* 1E03C 8002D83C 00000000 */  nop
/* 1E040 8002D840 13004018 */  blez       $v0, .L8002D890
/* 1E044 8002D844 21206002 */   addu      $a0, $s3, $zero
/* 1E048 8002D848 0E80053C */  lui        $a1, %hi(D_800D8D6C)
/* 1E04C 8002D84C 6C8DA524 */  addiu      $a1, $a1, %lo(D_800D8D6C)
/* 1E050 8002D850 04000624 */  addiu      $a2, $zero, 4
/* 1E054 8002D854 BAB4000C */  jal        FUN_8002d2e8
/* 1E058 8002D858 1000A727 */   addiu     $a3, $sp, 0x10
/* 1E05C 8002D85C 03004104 */  bgez       $v0, .L8002D86C
/* 1E060 8002D860 00000000 */   nop
/* 1E064 8002D864 DFB9000C */  jal        FUN_8002e77c
/* 1E068 8002D868 0E000424 */   addiu     $a0, $zero, 0xe
.L8002D86C:
/* 1E06C 8002D86C 1000A293 */  lbu        $v0, 0x10($sp)
/* 1E070 8002D870 01000324 */  addiu      $v1, $zero, 1
/* 1E074 8002D874 05004314 */  bne        $v0, $v1, .L8002D88C
/* 1E078 8002D878 00000000 */   nop
/* 1E07C 8002D87C 1100A293 */  lbu        $v0, 0x11($sp)
/* 1E080 8002D880 00000000 */  nop
/* 1E084 8002D884 01004238 */  xori       $v0, $v0, 1
/* 1E088 8002D888 2B180200 */  sltu       $v1, $zero, $v0
.L8002D88C:
/* 1E08C 8002D88C 8C0023A6 */  sh         $v1, 0x8c($s1)
.L8002D890:
/* 1E090 8002D890 840032A6 */  sh         $s2, 0x84($s1)
/* 1E094 8002D894 0E80023C */  lui        $v0, %hi(D_800D8D94)
/* 1E098 8002D898 948D5024 */  addiu      $s0, $v0, %lo(D_800D8D94)
/* 1E09C 8002D89C 7E81000C */  jal        strlen
/* 1E0A0 8002D8A0 21200002 */   addu      $a0, $s0, $zero
/* 1E0A4 8002D8A4 21202002 */  addu       $a0, $s1, $zero
/* 1E0A8 8002D8A8 21280002 */  addu       $a1, $s0, $zero
/* 1E0AC 8002D8AC 35BB000C */  jal        strncmp
/* 1E0B0 8002D8B0 21304000 */   addu      $a2, $v0, $zero
/* 1E0B4 8002D8B4 60FF4010 */  beqz       $v0, .L8002D638
/* 1E0B8 8002D8B8 FFFF0224 */   addiu     $v0, $zero, -1
/* 1E0BC 8002D8BC 7E81000C */  jal        strlen
/* 1E0C0 8002D8C0 2120C003 */   addu      $a0, $fp, $zero
/* 1E0C4 8002D8C4 21202002 */  addu       $a0, $s1, $zero
/* 1E0C8 8002D8C8 2128C003 */  addu       $a1, $fp, $zero
/* 1E0CC 8002D8CC 35BB000C */  jal        strncmp
/* 1E0D0 8002D8D0 21304000 */   addu      $a2, $v0, $zero
/* 1E0D4 8002D8D4 02004014 */  bnez       $v0, .L8002D8E0
/* 1E0D8 8002D8D8 1580033C */   lui       $v1, %hi(D_8014CCAC)
/* 1E0DC 8002D8DC ACCC72AC */  sw         $s2, %lo(D_8014CCAC)($v1)
.L8002D8E0:
/* 1E0E0 8002D8E0 01007326 */  addiu      $s3, $s3, 1
/* 1E0E4 8002D8E4 2A10D302 */  slt        $v0, $s6, $s3
/* 1E0E8 8002D8E8 5DFF4010 */  beqz       $v0, .L8002D660
/* 1E0EC 8002D8EC 9000F726 */   addiu     $s7, $s7, 0x90
.L8002D8F0:
/* 1E0F0 8002D8F0 2110C002 */  addu       $v0, $s6, $zero
.L8002D8F4:
/* 1E0F4 8002D8F4 3401BF8F */  lw         $ra, 0x134($sp)
/* 1E0F8 8002D8F8 3001BE8F */  lw         $fp, 0x130($sp)
/* 1E0FC 8002D8FC 2C01B78F */  lw         $s7, 0x12c($sp)
/* 1E100 8002D900 2801B68F */  lw         $s6, 0x128($sp)
/* 1E104 8002D904 2401B58F */  lw         $s5, 0x124($sp)
/* 1E108 8002D908 2001B48F */  lw         $s4, 0x120($sp)
/* 1E10C 8002D90C 1C01B38F */  lw         $s3, 0x11c($sp)
/* 1E110 8002D910 1801B28F */  lw         $s2, 0x118($sp)
/* 1E114 8002D914 1401B18F */  lw         $s1, 0x114($sp)
/* 1E118 8002D918 1001B08F */  lw         $s0, 0x110($sp)
/* 1E11C 8002D91C 0800E003 */  jr         $ra
/* 1E120 8002D920 3801BD27 */   addiu     $sp, $sp, 0x138

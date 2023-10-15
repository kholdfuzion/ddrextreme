.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007cdd8
/* 6D5D8 8007CDD8 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 6D5DC 8007CDDC 3400B3AF */  sw         $s3, 0x34($sp)
/* 6D5E0 8007CDE0 21988000 */  addu       $s3, $a0, $zero
/* 6D5E4 8007CDE4 3000B2AF */  sw         $s2, 0x30($sp)
/* 6D5E8 8007CDE8 2190E000 */  addu       $s2, $a3, $zero
/* 6D5EC 8007CDEC 1380023C */  lui        $v0, %hi(D_8012813B)
/* 6D5F0 8007CDF0 5400A5AF */  sw         $a1, 0x54($sp)
/* 6D5F4 8007CDF4 1380053C */  lui        $a1, %hi(D_801282E0)
/* 6D5F8 8007CDF8 3B814290 */  lbu        $v0, %lo(D_8012813B)($v0)
/* 6D5FC 8007CDFC E082A524 */  addiu      $a1, $a1, %lo(D_801282E0)
/* 6D600 8007CE00 4800BEAF */  sw         $fp, 0x48($sp)
/* 6D604 8007CE04 6800BE8F */  lw         $fp, 0x68($sp)
/* 6D608 8007CE08 0180033C */  lui        $v1, %hi(D_800158C4)
/* 6D60C 8007CE0C 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 6D610 8007CE10 6000B58F */  lw         $s5, 0x60($sp)
/* 6D614 8007CE14 C4586324 */  addiu      $v1, $v1, %lo(D_800158C4)
/* 6D618 8007CE18 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 6D61C 8007CE1C 4400B7AF */  sw         $s7, 0x44($sp)
/* 6D620 8007CE20 4000B6AF */  sw         $s6, 0x40($sp)
/* 6D624 8007CE24 3800B4AF */  sw         $s4, 0x38($sp)
/* 6D628 8007CE28 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 6D62C 8007CE2C 2800B0AF */  sw         $s0, 0x28($sp)
/* 6D630 8007CE30 5800A6AF */  sw         $a2, 0x58($sp)
/* 6D634 8007CE34 C0200200 */  sll        $a0, $v0, 3
/* 6D638 8007CE38 23208200 */  subu       $a0, $a0, $v0
/* 6D63C 8007CE3C 80200400 */  sll        $a0, $a0, 2
/* 6D640 8007CE40 80101E00 */  sll        $v0, $fp, 2
/* 6D644 8007CE44 21104300 */  addu       $v0, $v0, $v1
/* 6D648 8007CE48 0000508C */  lw         $s0, ($v0)
/* 6D64C 8007CE4C 00000000 */  nop
/* 6D650 8007CE50 01000232 */  andi       $v0, $s0, 1
/* 6D654 8007CE54 30004010 */  beqz       $v0, .L8007CF18
/* 6D658 8007CE58 21608500 */   addu      $t4, $a0, $a1
/* 6D65C 8007CE5C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6D660 8007CE60 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 6D664 8007CE64 0100033C */  lui        $v1, 1
/* 6D668 8007CE68 21184300 */  addu       $v1, $v0, $v1
/* 6D66C 8007CE6C 02000624 */  addiu      $a2, $zero, 2
/* 6D670 8007CE70 06436490 */  lbu        $a0, 0x4306($v1)
/* 6D674 8007CE74 8A004590 */  lbu        $a1, 0x8a($v0)
/* 6D678 8007CE78 01008338 */  xori       $v1, $a0, 1
/* 6D67C 8007CE7C 0200A614 */  bne        $a1, $a2, .L8007CE88
/* 6D680 8007CE80 0100632C */   sltiu     $v1, $v1, 1
/* 6D684 8007CE84 21186600 */  addu       $v1, $v1, $a2
.L8007CE88:
/* 6D688 8007CE88 02008614 */  bne        $a0, $a2, .L8007CE94
/* 6D68C 8007CE8C 21106000 */   addu      $v0, $v1, $zero
/* 6D690 8007CE90 03004224 */  addiu      $v0, $v0, 3
.L8007CE94:
/* 6D694 8007CE94 21184000 */  addu       $v1, $v0, $zero
/* 6D698 8007CE98 05000224 */  addiu      $v0, $zero, 5
/* 6D69C 8007CE9C 0300A214 */  bne        $a1, $v0, .L8007CEAC
/* 6D6A0 8007CEA0 40100300 */   sll       $v0, $v1, 1
/* 6D6A4 8007CEA4 04006324 */  addiu      $v1, $v1, 4
/* 6D6A8 8007CEA8 40100300 */  sll        $v0, $v1, 1
.L8007CEAC:
/* 6D6AC 8007CEAC 21104300 */  addu       $v0, $v0, $v1
/* 6D6B0 8007CEB0 00490200 */  sll        $t1, $v0, 4
/* 6D6B4 8007CEB4 C0000B24 */  addiu      $t3, $zero, 0xc0
/* 6D6B8 8007CEB8 32004726 */  addiu      $a3, $s2, 0x32
/* 6D6BC 8007CEBC CC000224 */  addiu      $v0, $zero, 0xcc
/* 6D6C0 8007CEC0 23404700 */  subu       $t0, $v0, $a3
/* 6D6C4 8007CEC4 31000229 */  slti       $v0, $t0, 0x31
/* 6D6C8 8007CEC8 05004010 */  beqz       $v0, .L8007CEE0
/* 6D6CC 8007CECC 18000A24 */   addiu     $t2, $zero, 0x18
/* 6D6D0 8007CED0 04000105 */  bgez       $t0, .L8007CEE4
/* 6D6D4 8007CED4 21100001 */   addu      $v0, $t0, $zero
/* 6D6D8 8007CED8 B9F30108 */  j          .L8007CEE4
/* 6D6DC 8007CEDC 21100000 */   addu      $v0, $zero, $zero
.L8007CEE0:
/* 6D6E0 8007CEE0 30000224 */  addiu      $v0, $zero, 0x30
.L8007CEE4:
/* 6D6E4 8007CEE4 21404000 */  addu       $t0, $v0, $zero
/* 6D6E8 8007CEE8 0B000019 */  blez       $t0, .L8007CF18
/* 6D6EC 8007CEEC 21206002 */   addu      $a0, $s3, $zero
/* 6D6F0 8007CEF0 5400A58F */  lw         $a1, 0x54($sp)
/* 6D6F4 8007CEF4 5800A68F */  lw         $a2, 0x58($sp)
/* 6D6F8 8007CEF8 1000B5AF */  sw         $s5, 0x10($sp)
/* 6D6FC 8007CEFC 1400ACAF */  sw         $t4, 0x14($sp)
/* 6D700 8007CF00 1800A9AF */  sw         $t1, 0x18($sp)
/* 6D704 8007CF04 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 6D708 8007CF08 2000A8AF */  sw         $t0, 0x20($sp)
/* 6D70C 8007CF0C 3DAD010C */  jal        FUN_8006b4f4
/* 6D710 8007CF10 2400AAAF */   sw        $t2, 0x24($sp)
/* 6D714 8007CF14 21984000 */  addu       $s3, $v0, $zero
.L8007CF18:
/* 6D718 8007CF18 04000232 */  andi       $v0, $s0, 4
/* 6D71C 8007CF1C 80004010 */  beqz       $v0, .L8007D120
/* 6D720 8007CF20 21880000 */   addu      $s1, $zero, $zero
/* 6D724 8007CF24 1380023C */  lui        $v0, %hi(D_801280E0)
/* 6D728 8007CF28 E0805724 */  addiu      $s7, $v0, %lo(D_801280E0)
/* 6D72C 8007CF2C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6D730 8007CF30 E0825624 */  addiu      $s6, $v0, %lo(D_801282E0)
/* 6D734 8007CF34 21A04002 */  addu       $s4, $s2, $zero
.L8007CF38:
/* 6D738 8007CF38 E2F2010C */  jal        FUN_8007cb88
/* 6D73C 8007CF3C 21202002 */   addu      $a0, $s1, $zero
/* 6D740 8007CF40 1600C017 */  bnez       $fp, .L8007CF9C
/* 6D744 8007CF44 21904000 */   addu      $s2, $v0, $zero
/* 6D748 8007CF48 F8AE020C */  jal        FUN_800abbe0
/* 6D74C 8007CF4C 00000000 */   nop
/* 6D750 8007CF50 0E004010 */  beqz       $v0, .L8007CF8C
/* 6D754 8007CF54 21100000 */   addu      $v0, $zero, $zero
/* 6D758 8007CF58 6E19030C */  jal        FUN_800c65b8
/* 6D75C 8007CF5C 00000000 */   nop
/* 6D760 8007CF60 06002012 */  beqz       $s1, .L8007CF7C
/* 6D764 8007CF64 00000000 */   nop
/* 6D768 8007CF68 10004230 */  andi       $v0, $v0, 0x10
/* 6D76C 8007CF6C 07004014 */  bnez       $v0, .L8007CF8C
/* 6D770 8007CF70 01000224 */   addiu     $v0, $zero, 1
/* 6D774 8007CF74 E3F30108 */  j          .L8007CF8C
/* 6D778 8007CF78 21100000 */   addu      $v0, $zero, $zero
.L8007CF7C:
/* 6D77C 8007CF7C 01004230 */  andi       $v0, $v0, 1
/* 6D780 8007CF80 02004014 */  bnez       $v0, .L8007CF8C
/* 6D784 8007CF84 01000224 */   addiu     $v0, $zero, 1
/* 6D788 8007CF88 21100000 */  addu       $v0, $zero, $zero
.L8007CF8C:
/* 6D78C 8007CF8C 22004010 */  beqz       $v0, .L8007D018
/* 6D790 8007CF90 FEFF1024 */   addiu     $s0, $zero, -2
/* 6D794 8007CF94 06F40108 */  j          .L8007D018
/* 6D798 8007CF98 21800000 */   addu      $s0, $zero, $zero
.L8007CF9C:
/* 6D79C 8007CF9C F8AE020C */  jal        FUN_800abbe0
/* 6D7A0 8007CFA0 00000000 */   nop
/* 6D7A4 8007CFA4 0E004010 */  beqz       $v0, .L8007CFE0
/* 6D7A8 8007CFA8 21100000 */   addu      $v0, $zero, $zero
/* 6D7AC 8007CFAC 6E19030C */  jal        FUN_800c65b8
/* 6D7B0 8007CFB0 00000000 */   nop
/* 6D7B4 8007CFB4 06002012 */  beqz       $s1, .L8007CFD0
/* 6D7B8 8007CFB8 00000000 */   nop
/* 6D7BC 8007CFBC 20004230 */  andi       $v0, $v0, 0x20
/* 6D7C0 8007CFC0 07004014 */  bnez       $v0, .L8007CFE0
/* 6D7C4 8007CFC4 01000224 */   addiu     $v0, $zero, 1
/* 6D7C8 8007CFC8 F8F30108 */  j          .L8007CFE0
/* 6D7CC 8007CFCC 21100000 */   addu      $v0, $zero, $zero
.L8007CFD0:
/* 6D7D0 8007CFD0 02004230 */  andi       $v0, $v0, 2
/* 6D7D4 8007CFD4 02004014 */  bnez       $v0, .L8007CFE0
/* 6D7D8 8007CFD8 01000224 */   addiu     $v0, $zero, 1
/* 6D7DC 8007CFDC 21100000 */  addu       $v0, $zero, $zero
.L8007CFE0:
/* 6D7E0 8007CFE0 0D004014 */  bnez       $v0, .L8007D018
/* 6D7E4 8007CFE4 04001024 */   addiu     $s0, $zero, 4
/* 6D7E8 8007CFE8 21202002 */  addu       $a0, $s1, $zero
/* 6D7EC 8007CFEC 19B9020C */  jal        FUN_800ae464
/* 6D7F0 8007CFF0 01000524 */   addiu     $a1, $zero, 1
/* 6D7F4 8007CFF4 2B800200 */  sltu       $s0, $zero, $v0
/* 6D7F8 8007CFF8 0BF3010C */  jal        FUN_8007cc2c
/* 6D7FC 8007CFFC 21204002 */   addu      $a0, $s2, $zero
/* 6D800 8007D000 02002216 */  bne        $s1, $v0, .L8007D00C
/* 6D804 8007D004 00000000 */   nop
/* 6D808 8007D008 02001036 */  ori        $s0, $s0, 2
.L8007D00C:
/* 6D80C 8007D00C 03000016 */  bnez       $s0, .L8007D01C
/* 6D810 8007D010 FFFF0224 */   addiu     $v0, $zero, -1
/* 6D814 8007D014 FFFF1024 */  addiu      $s0, $zero, -1
.L8007D018:
/* 6D818 8007D018 FFFF0224 */  addiu      $v0, $zero, -1
.L8007D01C:
/* 6D81C 8007D01C 3C000212 */  beq        $s0, $v0, .L8007D110
/* 6D820 8007D020 FEFF0224 */   addiu     $v0, $zero, -2
/* 6D824 8007D024 03000216 */  bne        $s0, $v0, .L8007D034
/* 6D828 8007D028 80181200 */   sll       $v1, $s2, 2
/* 6D82C 8007D02C 12F40108 */  j          .L8007D048
/* 6D830 8007D030 48000924 */   addiu     $t1, $zero, 0x48
.L8007D034:
/* 6D834 8007D034 21187200 */  addu       $v1, $v1, $s2
/* 6D838 8007D038 21187000 */  addu       $v1, $v1, $s0
/* 6D83C 8007D03C 40100300 */  sll        $v0, $v1, 1
/* 6D840 8007D040 21104300 */  addu       $v0, $v0, $v1
/* 6D844 8007D044 C0480200 */  sll        $t1, $v0, 3
.L8007D048:
/* 6D848 8007D048 D8000B24 */  addiu      $t3, $zero, 0xd8
/* 6D84C 8007D04C 18000A24 */  addiu      $t2, $zero, 0x18
/* 6D850 8007D050 CC000224 */  addiu      $v0, $zero, 0xcc
/* 6D854 8007D054 23405400 */  subu       $t0, $v0, $s4
/* 6D858 8007D058 19000229 */  slti       $v0, $t0, 0x19
/* 6D85C 8007D05C 05004010 */  beqz       $v0, .L8007D074
/* 6D860 8007D060 21388002 */   addu      $a3, $s4, $zero
/* 6D864 8007D064 04000105 */  bgez       $t0, .L8007D078
/* 6D868 8007D068 21100001 */   addu      $v0, $t0, $zero
/* 6D86C 8007D06C 1EF40108 */  j          .L8007D078
/* 6D870 8007D070 21100000 */   addu      $v0, $zero, $zero
.L8007D074:
/* 6D874 8007D074 18000224 */  addiu      $v0, $zero, 0x18
.L8007D078:
/* 6D878 8007D078 21404000 */  addu       $t0, $v0, $zero
/* 6D87C 8007D07C FEFF0224 */  addiu      $v0, $zero, -2
/* 6D880 8007D080 11000216 */  bne        $s0, $v0, .L8007D0C8
/* 6D884 8007D084 21206002 */   addu      $a0, $s3, $zero
/* 6D888 8007D088 FF000524 */  addiu      $a1, $zero, 0xff
/* 6D88C 8007D08C 80000624 */  addiu      $a2, $zero, 0x80
/* 6D890 8007D090 4001E224 */  addiu      $v0, $a3, 0x140
/* 6D894 8007D094 1000B5AF */  sw         $s5, 0x10($sp)
/* 6D898 8007D098 1800A2AF */  sw         $v0, 0x18($sp)
/* 6D89C 8007D09C 5900E392 */  lbu        $v1, 0x59($s7)
/* 6D8A0 8007D0A0 F000A226 */  addiu      $v0, $s5, 0xf0
/* 6D8A4 8007D0A4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6D8A8 8007D0A8 2000A8AF */  sw         $t0, 0x20($sp)
/* 6D8AC 8007D0AC 2400AAAF */  sw         $t2, 0x24($sp)
/* 6D8B0 8007D0B0 C0100300 */  sll        $v0, $v1, 3
/* 6D8B4 8007D0B4 23104300 */  subu       $v0, $v0, $v1
/* 6D8B8 8007D0B8 80100200 */  sll        $v0, $v0, 2
/* 6D8BC 8007D0BC 21105600 */  addu       $v0, $v0, $s6
/* 6D8C0 8007D0C0 41F40108 */  j          .L8007D104
/* 6D8C4 8007D0C4 1400A2AF */   sw        $v0, 0x14($sp)
.L8007D0C8:
/* 6D8C8 8007D0C8 11000019 */  blez       $t0, .L8007D110
/* 6D8CC 8007D0CC 00000000 */   nop
/* 6D8D0 8007D0D0 5400A58F */  lw         $a1, 0x54($sp)
/* 6D8D4 8007D0D4 5800A68F */  lw         $a2, 0x58($sp)
/* 6D8D8 8007D0D8 5B00E392 */  lbu        $v1, 0x5b($s7)
/* 6D8DC 8007D0DC 1000B5AF */  sw         $s5, 0x10($sp)
/* 6D8E0 8007D0E0 1800A9AF */  sw         $t1, 0x18($sp)
/* 6D8E4 8007D0E4 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 6D8E8 8007D0E8 2000A8AF */  sw         $t0, 0x20($sp)
/* 6D8EC 8007D0EC 2400AAAF */  sw         $t2, 0x24($sp)
/* 6D8F0 8007D0F0 C0100300 */  sll        $v0, $v1, 3
/* 6D8F4 8007D0F4 23104300 */  subu       $v0, $v0, $v1
/* 6D8F8 8007D0F8 80100200 */  sll        $v0, $v0, 2
/* 6D8FC 8007D0FC 21605600 */  addu       $t4, $v0, $s6
/* 6D900 8007D100 1400ACAF */  sw         $t4, 0x14($sp)
.L8007D104:
/* 6D904 8007D104 3DAD010C */  jal        FUN_8006b4f4
/* 6D908 8007D108 00000000 */   nop
/* 6D90C 8007D10C 21984000 */  addu       $s3, $v0, $zero
.L8007D110:
/* 6D910 8007D110 01003126 */  addiu      $s1, $s1, 1
/* 6D914 8007D114 0200222A */  slti       $v0, $s1, 2
/* 6D918 8007D118 87FF4014 */  bnez       $v0, .L8007CF38
/* 6D91C 8007D11C 19009426 */   addiu     $s4, $s4, 0x19
.L8007D120:
/* 6D920 8007D120 21106002 */  addu       $v0, $s3, $zero
/* 6D924 8007D124 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 6D928 8007D128 4800BE8F */  lw         $fp, 0x48($sp)
/* 6D92C 8007D12C 4400B78F */  lw         $s7, 0x44($sp)
/* 6D930 8007D130 4000B68F */  lw         $s6, 0x40($sp)
/* 6D934 8007D134 3C00B58F */  lw         $s5, 0x3c($sp)
/* 6D938 8007D138 3800B48F */  lw         $s4, 0x38($sp)
/* 6D93C 8007D13C 3400B38F */  lw         $s3, 0x34($sp)
/* 6D940 8007D140 3000B28F */  lw         $s2, 0x30($sp)
/* 6D944 8007D144 2C00B18F */  lw         $s1, 0x2c($sp)
/* 6D948 8007D148 2800B08F */  lw         $s0, 0x28($sp)
/* 6D94C 8007D14C 0800E003 */  jr         $ra
/* 6D950 8007D150 5000BD27 */   addiu     $sp, $sp, 0x50

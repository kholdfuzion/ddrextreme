.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007d540
/* 6DD40 8007D540 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 6DD44 8007D544 5400B5AF */  sw         $s5, 0x54($sp)
/* 6DD48 8007D548 21A8A000 */  addu       $s5, $a1, $zero
/* 6DD4C 8007D54C 7800A58F */  lw         $a1, 0x78($sp)
/* 6DD50 8007D550 6400BFAF */  sw         $ra, 0x64($sp)
/* 6DD54 8007D554 6000BEAF */  sw         $fp, 0x60($sp)
/* 6DD58 8007D558 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 6DD5C 8007D55C 5800B6AF */  sw         $s6, 0x58($sp)
/* 6DD60 8007D560 5000B4AF */  sw         $s4, 0x50($sp)
/* 6DD64 8007D564 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 6DD68 8007D568 4800B2AF */  sw         $s2, 0x48($sp)
/* 6DD6C 8007D56C 4400B1AF */  sw         $s1, 0x44($sp)
/* 6DD70 8007D570 4000B0AF */  sw         $s0, 0x40($sp)
/* 6DD74 8007D574 6800A4AF */  sw         $a0, 0x68($sp)
/* 6DD78 8007D578 5C00A014 */  bnez       $a1, .L8007D6EC
/* 6DD7C 8007D57C 7000A6AF */   sw        $a2, 0x70($sp)
/* 6DD80 8007D580 0F80023C */  lui        $v0, %hi(D_800F0014)
/* 6DD84 8007D584 1400568C */  lw         $s6, %lo(D_800F0014)($v0)
/* 6DD88 8007D588 21900000 */  addu       $s2, $zero, $zero
/* 6DD8C 8007D58C 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 6DD90 8007D590 50BA5724 */  addiu      $s7, $v0, %lo(D_8014BA50)
/* 6DD94 8007D594 C300FE24 */  addiu      $fp, $a3, 0xc3
/* 6DD98 8007D598 21A04002 */  addu       $s4, $s2, $zero
/* 6DD9C 8007D59C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6DDA0 8007D5A0 28005324 */  addiu      $s3, $v0, %lo(D_800F0028)
.L8007D5A4:
/* 6DDA4 8007D5A4 FFFF1024 */  addiu      $s0, $zero, -1
/* 6DDA8 8007D5A8 7470000C */  jal        getcoinslot1_8001c1d0
/* 6DDAC 8007D5AC 40001124 */   addiu     $s1, $zero, 0x40
/* 6DDB0 8007D5B0 03004010 */  beqz       $v0, .L8007D5C0
/* 6DDB4 8007D5B4 00000000 */   nop
/* 6DDB8 8007D5B8 04004016 */  bnez       $s2, .L8007D5CC
/* 6DDBC 8007D5BC 21100000 */   addu      $v0, $zero, $zero
.L8007D5C0:
/* 6DDC0 8007D5C0 3C006282 */  lb         $v0, 0x3c($s3)
/* 6DDC4 8007D5C4 00000000 */  nop
/* 6DDC8 8007D5C8 2B100200 */  sltu       $v0, $zero, $v0
.L8007D5CC:
/* 6DDCC 8007D5CC 04004010 */  beqz       $v0, .L8007D5E0
/* 6DDD0 8007D5D0 43111600 */   sra       $v0, $s6, 5
/* 6DDD4 8007D5D4 01001024 */  addiu      $s0, $zero, 1
/* 6DDD8 8007D5D8 88F50108 */  j          .L8007D620
/* 6DDDC 8007D5DC 24105000 */   and       $v0, $v0, $s0
.L8007D5E0:
/* 6DDE0 8007D5E0 21204002 */  addu       $a0, $s2, $zero
/* 6DDE4 8007D5E4 EDA9000C */  jal        FUN_8002a7b4
/* 6DDE8 8007D5E8 21280000 */   addu      $a1, $zero, $zero
/* 6DDEC 8007D5EC 09004014 */  bnez       $v0, .L8007D614
/* 6DDF0 8007D5F0 00000000 */   nop
/* 6DDF4 8007D5F4 1E00E286 */  lh         $v0, 0x1e($s7)
/* 6DDF8 8007D5F8 00000000 */  nop
/* 6DDFC 8007D5FC 0B004010 */  beqz       $v0, .L8007D62C
/* 6DE00 8007D600 00000000 */   nop
/* 6DE04 8007D604 1000E286 */  lh         $v0, 0x10($s7)
/* 6DE08 8007D608 00000000 */  nop
/* 6DE0C 8007D60C 07004014 */  bnez       $v0, .L8007D62C
/* 6DE10 8007D610 00000000 */   nop
.L8007D614:
/* 6DE14 8007D614 21800000 */  addu       $s0, $zero, $zero
/* 6DE18 8007D618 C3101600 */  sra        $v0, $s6, 3
/* 6DE1C 8007D61C 01004230 */  andi       $v0, $v0, 1
.L8007D620:
/* 6DE20 8007D620 02004010 */  beqz       $v0, .L8007D62C
/* 6DE24 8007D624 00000000 */   nop
/* 6DE28 8007D628 80001124 */  addiu      $s1, $zero, 0x80
.L8007D62C:
/* 6DE2C 8007D62C 26000006 */  bltz       $s0, .L8007D6C8
/* 6DE30 8007D630 1380023C */   lui       $v0, %hi(D_80128153)
/* 6DE34 8007D634 80381000 */  sll        $a3, $s0, 2
/* 6DE38 8007D638 2138F000 */  addu       $a3, $a3, $s0
/* 6DE3C 8007D63C 80380700 */  sll        $a3, $a3, 2
/* 6DE40 8007D640 7000AA8F */  lw         $t2, 0x70($sp)
/* 6DE44 8007D644 53814290 */  lbu        $v0, %lo(D_80128153)($v0)
/* 6DE48 8007D648 6800A48F */  lw         $a0, 0x68($sp)
/* 6DE4C 8007D64C 21288A02 */  addu       $a1, $s4, $t2
/* 6DE50 8007D650 C0FEA524 */  addiu      $a1, $a1, -0x140
/* 6DE54 8007D654 C0180200 */  sll        $v1, $v0, 3
/* 6DE58 8007D658 23186200 */  subu       $v1, $v1, $v0
/* 6DE5C 8007D65C 80180300 */  sll        $v1, $v1, 2
/* 6DE60 8007D660 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6DE64 8007D664 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6DE68 8007D668 21186200 */  addu       $v1, $v1, $v0
/* 6DE6C 8007D66C 04006684 */  lh         $a2, 4($v1)
/* 6DE70 8007D670 06006884 */  lh         $t0, 6($v1)
/* 6DE74 8007D674 40010224 */  addiu      $v0, $zero, 0x140
/* 6DE78 8007D678 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DE7C 8007D67C 14000224 */  addiu      $v0, $zero, 0x14
/* 6DE80 8007D680 1000A5AF */  sw         $a1, 0x10($sp)
/* 6DE84 8007D684 1400BEAF */  sw         $fp, 0x14($sp)
/* 6DE88 8007D688 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6DE8C 8007D68C 0C006284 */  lh         $v0, 0xc($v1)
/* 6DE90 8007D690 2128A002 */  addu       $a1, $s5, $zero
/* 6DE94 8007D694 2000A2AF */  sw         $v0, 0x20($sp)
/* 6DE98 8007D698 16006284 */  lh         $v0, 0x16($v1)
/* 6DE9C 8007D69C 21380701 */  addu       $a3, $t0, $a3
/* 6DEA0 8007D6A0 2400A2AF */  sw         $v0, 0x24($sp)
/* 6DEA4 8007D6A4 18006284 */  lh         $v0, 0x18($v1)
/* 6DEA8 8007D6A8 FFFF0A24 */  addiu      $t2, $zero, -1
/* 6DEAC 8007D6AC 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 6DEB0 8007D6B0 3000B1AF */  sw         $s1, 0x30($sp)
/* 6DEB4 8007D6B4 3400B1AF */  sw         $s1, 0x34($sp)
/* 6DEB8 8007D6B8 3800AAAF */  sw         $t2, 0x38($sp)
/* 6DEBC 8007D6BC 14F9010C */  jal        FUN_8007e450
/* 6DEC0 8007D6C0 2800A2AF */   sw        $v0, 0x28($sp)
/* 6DEC4 8007D6C4 21A84000 */  addu       $s5, $v0, $zero
.L8007D6C8:
/* 6DEC8 8007D6C8 0100023C */  lui        $v0, 1
/* 6DECC 8007D6CC 7C424234 */  ori        $v0, $v0, 0x427c
/* 6DED0 8007D6D0 21986202 */  addu       $s3, $s3, $v0
/* 6DED4 8007D6D4 01005226 */  addiu      $s2, $s2, 1
/* 6DED8 8007D6D8 0200422A */  slti       $v0, $s2, 2
/* 6DEDC 8007D6DC B1FF4014 */  bnez       $v0, .L8007D5A4
/* 6DEE0 8007D6E0 40019426 */   addiu     $s4, $s4, 0x140
/* 6DEE4 8007D6E4 12F60108 */  j          .L8007D848
/* 6DEE8 8007D6E8 2110A002 */   addu      $v0, $s5, $zero
.L8007D6EC:
/* 6DEEC 8007D6EC FFFFA224 */  addiu      $v0, $a1, -1
/* 6DEF0 8007D6F0 0200422C */  sltiu      $v0, $v0, 2
/* 6DEF4 8007D6F4 53004010 */  beqz       $v0, .L8007D844
/* 6DEF8 8007D6F8 01000924 */   addiu     $t1, $zero, 1
/* 6DEFC 8007D6FC 0F80023C */  lui        $v0, %hi(D_800F0014)
/* 6DF00 8007D700 1400448C */  lw         $a0, %lo(D_800F0014)($v0)
/* 6DF04 8007D704 00000000 */  nop
/* 6DF08 8007D708 42110400 */  srl        $v0, $a0, 5
/* 6DF0C 8007D70C 24104900 */  and        $v0, $v0, $t1
/* 6DF10 8007D710 02004010 */  beqz       $v0, .L8007D71C
/* 6DF14 8007D714 40001124 */   addiu     $s1, $zero, 0x40
/* 6DF18 8007D718 80001124 */  addiu      $s1, $zero, 0x80
.L8007D71C:
/* 6DF1C 8007D71C 02000224 */  addiu      $v0, $zero, 2
/* 6DF20 8007D720 2300A214 */  bne        $a1, $v0, .L8007D7B0
/* 6DF24 8007D724 1380023C */   lui       $v0, 0x8013
/* 6DF28 8007D728 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 6DF2C 8007D72C 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 6DF30 8007D730 17006280 */  lb         $v0, 0x17($v1)
/* 6DF34 8007D734 00000000 */  nop
/* 6DF38 8007D738 1D004014 */  bnez       $v0, .L8007D7B0
/* 6DF3C 8007D73C 1380023C */   lui       $v0, 0x8013
/* 6DF40 8007D740 20006280 */  lb         $v0, 0x20($v1)
/* 6DF44 8007D744 00000000 */  nop
/* 6DF48 8007D748 18004910 */  beq        $v0, $t1, .L8007D7AC
/* 6DF4C 8007D74C 00000000 */   nop
/* 6DF50 8007D750 08004514 */  bne        $v0, $a1, .L8007D774
/* 6DF54 8007D754 1B80023C */   lui       $v0, %hi(D_801B0E58)
/* 6DF58 8007D758 580E428C */  lw         $v0, %lo(D_801B0E58)($v0)
/* 6DF5C 8007D75C 00000000 */  nop
/* 6DF60 8007D760 23108200 */  subu       $v0, $a0, $v0
/* 6DF64 8007D764 02120200 */  srl        $v0, $v0, 8
/* 6DF68 8007D768 01004230 */  andi       $v0, $v0, 1
/* 6DF6C 8007D76C EBF50108 */  j          .L8007D7AC
/* 6DF70 8007D770 01004924 */   addiu     $t1, $v0, 1
.L8007D774:
/* 6DF74 8007D774 580E438C */  lw         $v1, 0xe58($v0)
/* 6DF78 8007D778 AAAA023C */  lui        $v0, 0xaaaa
/* 6DF7C 8007D77C ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 6DF80 8007D780 23188300 */  subu       $v1, $a0, $v1
/* 6DF84 8007D784 42190300 */  srl        $v1, $v1, 5
/* 6DF88 8007D788 19006200 */  multu      $v1, $v0
/* 6DF8C 8007D78C 10500000 */  mfhi       $t2
/* 6DF90 8007D790 02210A00 */  srl        $a0, $t2, 4
/* 6DF94 8007D794 40100400 */  sll        $v0, $a0, 1
/* 6DF98 8007D798 21104400 */  addu       $v0, $v0, $a0
/* 6DF9C 8007D79C C0100200 */  sll        $v0, $v0, 3
/* 6DFA0 8007D7A0 23186200 */  subu       $v1, $v1, $v0
/* 6DFA4 8007D7A4 C2180300 */  srl        $v1, $v1, 3
/* 6DFA8 8007D7A8 01006924 */  addiu      $t1, $v1, 1
.L8007D7AC:
/* 6DFAC 8007D7AC 1380023C */  lui        $v0, %hi(D_80128153)
.L8007D7B0:
/* 6DFB0 8007D7B0 2128A002 */  addu       $a1, $s5, $zero
/* 6DFB4 8007D7B4 53814290 */  lbu        $v0, %lo(D_80128153)($v0)
/* 6DFB8 8007D7B8 6800A48F */  lw         $a0, 0x68($sp)
/* 6DFBC 8007D7BC 7000AA8F */  lw         $t2, 0x70($sp)
/* 6DFC0 8007D7C0 C0180200 */  sll        $v1, $v0, 3
/* 6DFC4 8007D7C4 23186200 */  subu       $v1, $v1, $v0
/* 6DFC8 8007D7C8 80180300 */  sll        $v1, $v1, 2
/* 6DFCC 8007D7CC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6DFD0 8007D7D0 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6DFD4 8007D7D4 21186200 */  addu       $v1, $v1, $v0
/* 6DFD8 8007D7D8 04006684 */  lh         $a2, 4($v1)
/* 6DFDC 8007D7DC 06006884 */  lh         $t0, 6($v1)
/* 6DFE0 8007D7E0 60FF4225 */  addiu      $v0, $t2, -0xa0
/* 6DFE4 8007D7E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 6DFE8 8007D7E8 C300E224 */  addiu      $v0, $a3, 0xc3
/* 6DFEC 8007D7EC 1400A2AF */  sw         $v0, 0x14($sp)
/* 6DFF0 8007D7F0 40010224 */  addiu      $v0, $zero, 0x140
/* 6DFF4 8007D7F4 1800A2AF */  sw         $v0, 0x18($sp)
/* 6DFF8 8007D7F8 14000224 */  addiu      $v0, $zero, 0x14
/* 6DFFC 8007D7FC 80380900 */  sll        $a3, $t1, 2
/* 6E000 8007D800 2138E900 */  addu       $a3, $a3, $t1
/* 6E004 8007D804 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6E008 8007D808 0C006284 */  lh         $v0, 0xc($v1)
/* 6E00C 8007D80C 80380700 */  sll        $a3, $a3, 2
/* 6E010 8007D810 2000A2AF */  sw         $v0, 0x20($sp)
/* 6E014 8007D814 16006284 */  lh         $v0, 0x16($v1)
/* 6E018 8007D818 21380701 */  addu       $a3, $t0, $a3
/* 6E01C 8007D81C 2400A2AF */  sw         $v0, 0x24($sp)
/* 6E020 8007D820 18006384 */  lh         $v1, 0x18($v1)
/* 6E024 8007D824 FFFF0224 */  addiu      $v0, $zero, -1
/* 6E028 8007D828 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 6E02C 8007D82C 3000B1AF */  sw         $s1, 0x30($sp)
/* 6E030 8007D830 3400B1AF */  sw         $s1, 0x34($sp)
/* 6E034 8007D834 3800A2AF */  sw         $v0, 0x38($sp)
/* 6E038 8007D838 14F9010C */  jal        FUN_8007e450
/* 6E03C 8007D83C 2800A3AF */   sw        $v1, 0x28($sp)
/* 6E040 8007D840 21A84000 */  addu       $s5, $v0, $zero
.L8007D844:
/* 6E044 8007D844 2110A002 */  addu       $v0, $s5, $zero
.L8007D848:
/* 6E048 8007D848 6400BF8F */  lw         $ra, 0x64($sp)
/* 6E04C 8007D84C 6000BE8F */  lw         $fp, 0x60($sp)
/* 6E050 8007D850 5C00B78F */  lw         $s7, 0x5c($sp)
/* 6E054 8007D854 5800B68F */  lw         $s6, 0x58($sp)
/* 6E058 8007D858 5400B58F */  lw         $s5, 0x54($sp)
/* 6E05C 8007D85C 5000B48F */  lw         $s4, 0x50($sp)
/* 6E060 8007D860 4C00B38F */  lw         $s3, 0x4c($sp)
/* 6E064 8007D864 4800B28F */  lw         $s2, 0x48($sp)
/* 6E068 8007D868 4400B18F */  lw         $s1, 0x44($sp)
/* 6E06C 8007D86C 4000B08F */  lw         $s0, 0x40($sp)
/* 6E070 8007D870 0800E003 */  jr         $ra
/* 6E074 8007D874 6800BD27 */   addiu     $sp, $sp, 0x68

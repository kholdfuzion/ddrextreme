.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007c588
/* 6CD88 8007C588 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 6CD8C 8007C58C 5800BEAF */  sw         $fp, 0x58($sp)
/* 6CD90 8007C590 21F08000 */  addu       $fp, $a0, $zero
/* 6CD94 8007C594 4400B3AF */  sw         $s3, 0x44($sp)
/* 6CD98 8007C598 2198A000 */  addu       $s3, $a1, $zero
/* 6CD9C 8007C59C 7000A58F */  lw         $a1, 0x70($sp)
/* 6CDA0 8007C5A0 7400A48F */  lw         $a0, 0x74($sp)
/* 6CDA4 8007C5A4 4800B4AF */  sw         $s4, 0x48($sp)
/* 6CDA8 8007C5A8 C2A70700 */  srl        $s4, $a3, 0x1f
/* 6CDAC 8007C5AC 5C00BFAF */  sw         $ra, 0x5c($sp)
/* 6CDB0 8007C5B0 5400B7AF */  sw         $s7, 0x54($sp)
/* 6CDB4 8007C5B4 5000B6AF */  sw         $s6, 0x50($sp)
/* 6CDB8 8007C5B8 4C00B5AF */  sw         $s5, 0x4c($sp)
/* 6CDBC 8007C5BC 4000B2AF */  sw         $s2, 0x40($sp)
/* 6CDC0 8007C5C0 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 6CDC4 8007C5C4 02008012 */  beqz       $s4, .L8007C5D0
/* 6CDC8 8007C5C8 3800B0AF */   sw        $s0, 0x38($sp)
/* 6CDCC 8007C5CC 23380700 */  negu       $a3, $a3
.L8007C5D0:
/* 6CDD0 8007C5D0 C24F0600 */  srl        $t1, $a2, 0x1f
/* 6CDD4 8007C5D4 02002011 */  beqz       $t1, .L8007C5E0
/* 6CDD8 8007C5D8 2000A9AF */   sw        $t1, 0x20($sp)
/* 6CDDC 8007C5DC 23300600 */  negu       $a2, $a2
.L8007C5E0:
/* 6CDE0 8007C5E0 001B0600 */  sll        $v1, $a2, 0xc
/* 6CDE4 8007C5E4 1A006400 */  div        $zero, $v1, $a0
/* 6CDE8 8007C5E8 02008014 */  bnez       $a0, .L8007C5F4
/* 6CDEC 8007C5EC 00000000 */   nop
/* 6CDF0 8007C5F0 0D000700 */  break      7
.L8007C5F4:
/* 6CDF4 8007C5F4 FFFF0124 */   addiu     $at, $zero, -1
/* 6CDF8 8007C5F8 04008114 */  bne        $a0, $at, .L8007C60C
/* 6CDFC 8007C5FC 0080013C */   lui       $at, 0x8000
/* 6CE00 8007C600 02006114 */  bne        $v1, $at, .L8007C60C
/* 6CE04 8007C604 00000000 */   nop
/* 6CE08 8007C608 0D000600 */  break      6
.L8007C60C:
/* 6CE0C 8007C60C 12180000 */   mflo      $v1
/* 6CE10 8007C610 2310E600 */  subu       $v0, $a3, $a2
/* 6CE14 8007C614 21104400 */  addu       $v0, $v0, $a0
/* 6CE18 8007C618 FFFF4224 */  addiu      $v0, $v0, -1
/* 6CE1C 8007C61C 1A004400 */  div        $zero, $v0, $a0
/* 6CE20 8007C620 02008014 */  bnez       $a0, .L8007C62C
/* 6CE24 8007C624 00000000 */   nop
/* 6CE28 8007C628 0D000700 */  break      7
.L8007C62C:
/* 6CE2C 8007C62C FFFF0124 */   addiu     $at, $zero, -1
/* 6CE30 8007C630 04008114 */  bne        $a0, $at, .L8007C644
/* 6CE34 8007C634 0080013C */   lui       $at, 0x8000
/* 6CE38 8007C638 02004114 */  bne        $v0, $at, .L8007C644
/* 6CE3C 8007C63C 00000000 */   nop
/* 6CE40 8007C640 0D000600 */  break      6
.L8007C644:
/* 6CE44 8007C644 12800000 */   mflo      $s0
/* 6CE48 8007C648 00000000 */  nop
/* 6CE4C 8007C64C 2A10B000 */  slt        $v0, $a1, $s0
/* 6CE50 8007C650 02004010 */  beqz       $v0, .L8007C65C
/* 6CE54 8007C654 FF0F7130 */   andi      $s1, $v1, 0xfff
/* 6CE58 8007C658 2180A000 */  addu       $s0, $a1, $zero
.L8007C65C:
/* 6CE5C 8007C65C 03000106 */  bgez       $s0, .L8007C66C
/* 6CE60 8007C660 0700022A */   slti      $v0, $s0, 7
/* 6CE64 8007C664 21800000 */  addu       $s0, $zero, $zero
/* 6CE68 8007C668 0700022A */  slti       $v0, $s0, 7
.L8007C66C:
/* 6CE6C 8007C66C 11004010 */  beqz       $v0, .L8007C6B4
/* 6CE70 8007C670 EB51023C */   lui       $v0, 0x51eb
/* 6CE74 8007C674 10008016 */  bnez       $s4, .L8007C6B8
/* 6CE78 8007C678 1F854234 */   ori       $v0, $v0, 0x851f
/* 6CE7C 8007C67C 0F80023C */  lui        $v0, %hi(D_800EBF3C)
/* 6CE80 8007C680 3CBF428C */  lw         $v0, %lo(D_800EBF3C)($v0)
/* 6CE84 8007C684 00000000 */  nop
/* 6CE88 8007C688 09005010 */  beq        $v0, $s0, .L8007C6B0
/* 6CE8C 8007C68C 06000224 */   addiu     $v0, $zero, 6
/* 6CE90 8007C690 03000212 */  beq        $s0, $v0, .L8007C6A0
/* 6CE94 8007C694 93000424 */   addiu     $a0, $zero, 0x93
/* 6CE98 8007C698 0300001A */  blez       $s0, .L8007C6A8
/* 6CE9C 8007C69C 11000424 */   addiu     $a0, $zero, 0x11
.L8007C6A0:
/* 6CEA0 8007C6A0 12CB020C */  jal        FUN_800b2c48
/* 6CEA4 8007C6A4 00000000 */   nop
.L8007C6A8:
/* 6CEA8 8007C6A8 0F80023C */  lui        $v0, %hi(D_800EBF3C)
/* 6CEAC 8007C6AC 3CBF50AC */  sw         $s0, %lo(D_800EBF3C)($v0)
.L8007C6B0:
/* 6CEB0 8007C6B0 EB51023C */  lui        $v0, 0x51eb
.L8007C6B4:
/* 6CEB4 8007C6B4 1F854234 */  ori        $v0, $v0, 0x851f
.L8007C6B8:
/* 6CEB8 8007C6B8 18000202 */  mult       $s0, $v0
/* 6CEBC 8007C6BC C3171000 */  sra        $v0, $s0, 0x1f
/* 6CEC0 8007C6C0 10480000 */  mfhi       $t1
/* 6CEC4 8007C6C4 43190900 */  sra        $v1, $t1, 5
/* 6CEC8 8007C6C8 23186200 */  subu       $v1, $v1, $v0
/* 6CECC 8007C6CC 40100300 */  sll        $v0, $v1, 1
/* 6CED0 8007C6D0 21104300 */  addu       $v0, $v0, $v1
/* 6CED4 8007C6D4 C0100200 */  sll        $v0, $v0, 3
/* 6CED8 8007C6D8 21104300 */  addu       $v0, $v0, $v1
/* 6CEDC 8007C6DC 80100200 */  sll        $v0, $v0, 2
/* 6CEE0 8007C6E0 0F80033C */  lui        $v1, %hi(D_800F003B)
/* 6CEE4 8007C6E4 3B006380 */  lb         $v1, %lo(D_800F003B)($v1)
/* 6CEE8 8007C6E8 00000000 */  nop
/* 6CEEC 8007C6EC 04006010 */  beqz       $v1, .L8007C700
/* 6CEF0 8007C6F0 23800202 */   subu      $s0, $s0, $v0
/* 6CEF4 8007C6F4 0200001A */  blez       $s0, .L8007C700
/* 6CEF8 8007C6F8 00000000 */   nop
/* 6CEFC 8007C6FC 63001024 */  addiu      $s0, $zero, 0x63
.L8007C700:
/* 6CF00 8007C700 1400C107 */  bgez       $fp, .L8007C754
/* 6CF04 8007C704 1380023C */   lui       $v0, 0x8013
/* 6CF08 8007C708 FEFF0224 */  addiu      $v0, $zero, -2
/* 6CF0C 8007C70C 0D00C213 */  beq        $fp, $v0, .L8007C744
/* 6CF10 8007C710 C009222A */   slti      $v0, $s1, 0x9c0
/* 6CF14 8007C714 FFFFC22B */  slti       $v0, $fp, -1
/* 6CF18 8007C718 05004010 */  beqz       $v0, .L8007C730
/* 6CF1C 8007C71C FDFF0224 */   addiu     $v0, $zero, -3
/* 6CF20 8007C720 0A00C213 */  beq        $fp, $v0, .L8007C74C
/* 6CF24 8007C724 1380023C */   lui       $v0, 0x8013
/* 6CF28 8007C728 D5F10108 */  j          .L8007C754
/* 6CF2C 8007C72C 00000000 */   nop
.L8007C730:
/* 6CF30 8007C730 FFFF0224 */  addiu      $v0, $zero, -1
/* 6CF34 8007C734 0700C217 */  bne        $fp, $v0, .L8007C754
/* 6CF38 8007C738 1380023C */   lui       $v0, 0x8013
/* 6CF3C 8007C73C D6F20108 */  j          .L8007CB58
/* 6CF40 8007C740 0600022A */   slti      $v0, $s0, 6
.L8007C744:
/* 6CF44 8007C744 D6F20108 */  j          .L8007CB58
/* 6CF48 8007C748 01004238 */   xori      $v0, $v0, 1
.L8007C74C:
/* 6CF4C 8007C74C D6F20108 */  j          .L8007CB58
/* 6CF50 8007C750 21100002 */   addu      $v0, $s0, $zero
.L8007C754:
/* 6CF54 8007C754 76814290 */  lbu        $v0, -0x7e8a($v0)
/* 6CF58 8007C758 21280000 */  addu       $a1, $zero, $zero
/* 6CF5C 8007C75C C0180200 */  sll        $v1, $v0, 3
/* 6CF60 8007C760 23186200 */  subu       $v1, $v1, $v0
/* 6CF64 8007C764 80180300 */  sll        $v1, $v1, 2
/* 6CF68 8007C768 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6CF6C 8007C76C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6CF70 8007C770 0200001A */  blez       $s0, .L8007C77C
/* 6CF74 8007C774 21B06200 */   addu      $s6, $v1, $v0
/* 6CF78 8007C778 FFFF0526 */  addiu      $a1, $s0, -1
.L8007C77C:
/* 6CF7C 8007C77C 02000516 */  bne        $s0, $a1, .L8007C788
/* 6CF80 8007C780 21900002 */   addu      $s2, $s0, $zero
/* 6CF84 8007C784 21880000 */  addu       $s1, $zero, $zero
.L8007C788:
/* 6CF88 8007C788 2C00A0AF */  sw         $zero, 0x2c($sp)
/* 6CF8C 8007C78C 0700422A */  slti       $v0, $s2, 7
/* 6CF90 8007C790 28004010 */  beqz       $v0, .L8007C834
/* 6CF94 8007C794 21B80000 */   addu      $s7, $zero, $zero
/* 6CF98 8007C798 27008016 */  bnez       $s4, .L8007C838
/* 6CF9C 8007C79C 20000924 */   addiu     $t1, $zero, 0x20
/* 6CFA0 8007C7A0 C009222A */  slti       $v0, $s1, 0x9c0
/* 6CFA4 8007C7A4 25004014 */  bnez       $v0, .L8007C83C
/* 6CFA8 8007C7A8 21502001 */   addu      $t2, $t1, $zero
/* 6CFAC 8007C7AC E00C222A */  slti       $v0, $s1, 0xce0
/* 6CFB0 8007C7B0 0B004010 */  beqz       $v0, .L8007C7E0
/* 6CFB4 8007C7B4 EB51033C */   lui       $v1, 0x51eb
/* 6CFB8 8007C7B8 1F856334 */  ori        $v1, $v1, 0x851f
/* 6CFBC 8007C7BC 40F62226 */  addiu      $v0, $s1, -0x9c0
/* 6CFC0 8007C7C0 40110200 */  sll        $v0, $v0, 5
/* 6CFC4 8007C7C4 18004300 */  mult       $v0, $v1
/* 6CFC8 8007C7C8 C3170200 */  sra        $v0, $v0, 0x1f
/* 6CFCC 8007C7CC 10480000 */  mfhi       $t1
/* 6CFD0 8007C7D0 031A0900 */  sra        $v1, $t1, 8
/* 6CFD4 8007C7D4 23186200 */  subu       $v1, $v1, $v0
/* 6CFD8 8007C7D8 0DF20108 */  j          .L8007C834
/* 6CFDC 8007C7DC 2C00A3AF */   sw        $v1, 0x2c($sp)
.L8007C7E0:
/* 6CFE0 8007C7E0 EB51043C */  lui        $a0, 0x51eb
/* 6CFE4 8007C7E4 1F858434 */  ori        $a0, $a0, 0x851f
/* 6CFE8 8007C7E8 20F32326 */  addiu      $v1, $s1, -0xce0
/* 6CFEC 8007C7EC C0100300 */  sll        $v0, $v1, 3
/* 6CFF0 8007C7F0 23104300 */  subu       $v0, $v0, $v1
/* 6CFF4 8007C7F4 C0100200 */  sll        $v0, $v0, 3
/* 6CFF8 8007C7F8 18004400 */  mult       $v0, $a0
/* 6CFFC 8007C7FC C3170200 */  sra        $v0, $v0, 0x1f
/* 6D000 8007C800 20000A24 */  addiu      $t2, $zero, 0x20
/* 6D004 8007C804 10480000 */  mfhi       $t1
/* 6D008 8007C808 031A0900 */  sra        $v1, $t1, 8
/* 6D00C 8007C80C 23186200 */  subu       $v1, $v1, $v0
/* 6D010 8007C810 23B84301 */  subu       $s7, $t2, $v1
/* 6D014 8007C814 F4FFE22A */  slti       $v0, $s7, -0xc
/* 6D018 8007C818 03004014 */  bnez       $v0, .L8007C828
/* 6D01C 8007C81C E8FF0224 */   addiu     $v0, $zero, -0x18
/* 6D020 8007C820 0BF20108 */  j          .L8007C82C
/* 6D024 8007C824 2110E002 */   addu      $v0, $s7, $zero
.L8007C828:
/* 6D028 8007C828 23105700 */  subu       $v0, $v0, $s7
.L8007C82C:
/* 6D02C 8007C82C 21B84000 */  addu       $s7, $v0, $zero
/* 6D030 8007C830 2190A000 */  addu       $s2, $a1, $zero
.L8007C834:
/* 6D034 8007C834 20000924 */  addiu      $t1, $zero, 0x20
.L8007C838:
/* 6D038 8007C838 21502001 */  addu       $t2, $t1, $zero
.L8007C83C:
/* 6D03C 8007C83C 2800A9AF */  sw         $t1, 0x28($sp)
/* 6D040 8007C840 2C00A98F */  lw         $t1, 0x2c($sp)
/* 6D044 8007C844 21A00000 */  addu       $s4, $zero, $zero
/* 6D048 8007C848 3000A0AF */  sw         $zero, 0x30($sp)
/* 6D04C 8007C84C 23504901 */  subu       $t2, $t2, $t1
/* 6D050 8007C850 2400AAAF */  sw         $t2, 0x24($sp)
.L8007C854:
/* 6D054 8007C854 6666023C */  lui        $v0, 0x6666
/* 6D058 8007C858 67664234 */  ori        $v0, $v0, 0x6667
/* 6D05C 8007C85C 18004202 */  mult       $s2, $v0
/* 6D060 8007C860 20000824 */  addiu      $t0, $zero, 0x20
/* 6D064 8007C864 C3171200 */  sra        $v0, $s2, 0x1f
/* 6D068 8007C868 10180000 */  mfhi       $v1
/* 6D06C 8007C86C 83180300 */  sra        $v1, $v1, 2
/* 6D070 8007C870 23186200 */  subu       $v1, $v1, $v0
/* 6D074 8007C874 21206000 */  addu       $a0, $v1, $zero
/* 6D078 8007C878 80100400 */  sll        $v0, $a0, 2
/* 6D07C 8007C87C 21104400 */  addu       $v0, $v0, $a0
/* 6D080 8007C880 40100200 */  sll        $v0, $v0, 1
/* 6D084 8007C884 23184202 */  subu       $v1, $s2, $v0
/* 6D088 8007C888 01006324 */  addiu      $v1, $v1, 1
/* 6D08C 8007C88C C2170300 */  srl        $v0, $v1, 0x1f
/* 6D090 8007C890 21106200 */  addu       $v0, $v1, $v0
/* 6D094 8007C894 43100200 */  sra        $v0, $v0, 1
/* 6D098 8007C898 18004800 */  mult       $v0, $t0
/* 6D09C 8007C89C 21800001 */  addu       $s0, $t0, $zero
/* 6D0A0 8007C8A0 7C00AA8F */  lw         $t2, 0x7c($sp)
/* 6D0A4 8007C8A4 2800A98F */  lw         $t1, 0x28($sp)
/* 6D0A8 8007C8A8 21885701 */  addu       $s1, $t2, $s7
/* 6D0AC 8007C8AC 01006330 */  andi       $v1, $v1, 1
/* 6D0B0 8007C8B0 12300000 */  mflo       $a2
/* 6D0B4 8007C8B4 04002226 */  addiu      $v0, $s1, 4
/* 6D0B8 8007C8B8 23284201 */  subu       $a1, $t2, $v0
/* 6D0BC 8007C8BC 18006900 */  mult       $v1, $t1
/* 6D0C0 8007C8C0 21908000 */  addu       $s2, $a0, $zero
/* 6D0C4 8007C8C4 0600C286 */  lh         $v0, 6($s6)
/* 6D0C8 8007C8C8 3000AA8F */  lw         $t2, 0x30($sp)
/* 6D0CC 8007C8CC 21384600 */  addu       $a3, $v0, $a2
/* 6D0D0 8007C8D0 01000224 */  addiu      $v0, $zero, 1
/* 6D0D4 8007C8D4 23105400 */  subu       $v0, $v0, $s4
/* 6D0D8 8007C8D8 40110200 */  sll        $v0, $v0, 5
/* 6D0DC 8007C8DC 7800A98F */  lw         $t1, 0x78($sp)
/* 6D0E0 8007C8E0 0400C386 */  lh         $v1, 4($s6)
/* 6D0E4 8007C8E4 21102201 */  addu       $v0, $t1, $v0
/* 6D0E8 8007C8E8 21A84A00 */  addu       $s5, $v0, $t2
/* 6D0EC 8007C8EC 12580000 */  mflo       $t3
/* 6D0F0 8007C8F0 0500A018 */  blez       $a1, .L8007C908
/* 6D0F4 8007C8F4 21306B00 */   addu      $a2, $v1, $t3
/* 6D0F8 8007C8F8 21882502 */  addu       $s1, $s1, $a1
/* 6D0FC 8007C8FC 2138E500 */  addu       $a3, $a3, $a1
/* 6D100 8007C900 23800502 */  subu       $s0, $s0, $a1
/* 6D104 8007C904 23400501 */  subu       $t0, $t0, $a1
.L8007C908:
/* 6D108 8007C908 21103002 */  addu       $v0, $s1, $s0
/* 6D10C 8007C90C 7C00A98F */  lw         $t1, 0x7c($sp)
/* 6D110 8007C910 DEFF4224 */  addiu      $v0, $v0, -0x22
/* 6D114 8007C914 23284900 */  subu       $a1, $v0, $t1
/* 6D118 8007C918 0300A018 */  blez       $a1, .L8007C928
/* 6D11C 8007C91C 00000000 */   nop
/* 6D120 8007C920 23800502 */  subu       $s0, $s0, $a1
/* 6D124 8007C924 23400501 */  subu       $t0, $t0, $a1
.L8007C928:
/* 6D128 8007C928 2900001A */  blez       $s0, .L8007C9D0
/* 6D12C 8007C92C 2120C003 */   addu      $a0, $fp, $zero
/* 6D130 8007C930 21286002 */  addu       $a1, $s3, $zero
/* 6D134 8007C934 20000A24 */  addiu      $t2, $zero, 0x20
/* 6D138 8007C938 1000AAAF */  sw         $t2, 0x10($sp)
/* 6D13C 8007C93C 1400A8AF */  sw         $t0, 0x14($sp)
/* 6D140 8007C940 0C00C386 */  lh         $v1, 0xc($s6)
/* 6D144 8007C944 FFFF0224 */  addiu      $v0, $zero, -1
/* 6D148 8007C948 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6D14C 8007C94C 1769010C */  jal        FUN_8005a45c
/* 6D150 8007C950 1800A3AF */   sw        $v1, 0x18($sp)
/* 6D154 8007C954 2120C003 */  addu       $a0, $fp, $zero
/* 6D158 8007C958 1600C686 */  lh         $a2, 0x16($s6)
/* 6D15C 8007C95C 1800C786 */  lh         $a3, 0x18($s6)
/* 6D160 8007C960 396D010C */  jal        FUN_8005b4e4
/* 6D164 8007C964 21286002 */   addu      $a1, $s3, $zero
/* 6D168 8007C968 2120C003 */  addu       $a0, $fp, $zero
/* 6D16C 8007C96C 21286002 */  addu       $a1, $s3, $zero
/* 6D170 8007C970 2130A002 */  addu       $a2, $s5, $zero
/* 6D174 8007C974 2400A98F */  lw         $t1, 0x24($sp)
/* 6D178 8007C978 21382002 */  addu       $a3, $s1, $zero
/* 6D17C 8007C97C 1400B0AF */  sw         $s0, 0x14($sp)
/* 6D180 8007C980 976D010C */  jal        FUN_8005b65c
/* 6D184 8007C984 1000A9AF */   sw        $t1, 0x10($sp)
/* 6D188 8007C988 2000AA8F */  lw         $t2, 0x20($sp)
/* 6D18C 8007C98C 00000000 */  nop
/* 6D190 8007C990 07004011 */  beqz       $t2, .L8007C9B0
/* 6D194 8007C994 80000224 */   addiu     $v0, $zero, 0x80
/* 6D198 8007C998 1000A2AF */  sw         $v0, 0x10($sp)
/* 6D19C 8007C99C 2120C003 */  addu       $a0, $fp, $zero
/* 6D1A0 8007C9A0 21286002 */  addu       $a1, $s3, $zero
/* 6D1A4 8007C9A4 21304000 */  addu       $a2, $v0, $zero
/* 6D1A8 8007C9A8 72F20108 */  j          .L8007C9C8
/* 6D1AC 8007C9AC 21384000 */   addu      $a3, $v0, $zero
.L8007C9B0:
/* 6D1B0 8007C9B0 2120C003 */  addu       $a0, $fp, $zero
/* 6D1B4 8007C9B4 8000A98F */  lw         $t1, 0x80($sp)
/* 6D1B8 8007C9B8 21286002 */  addu       $a1, $s3, $zero
/* 6D1BC 8007C9BC 21302001 */  addu       $a2, $t1, $zero
/* 6D1C0 8007C9C0 2138C000 */  addu       $a3, $a2, $zero
/* 6D1C4 8007C9C4 1000A9AF */  sw         $t1, 0x10($sp)
.L8007C9C8:
/* 6D1C8 8007C9C8 EB6C010C */  jal        FUN_8005b3ac
/* 6D1CC 8007C9CC 01007326 */   addiu     $s3, $s3, 1
.L8007C9D0:
/* 6D1D0 8007C9D0 01009426 */  addiu      $s4, $s4, 1
/* 6D1D4 8007C9D4 3000AA8F */  lw         $t2, 0x30($sp)
/* 6D1D8 8007C9D8 2C00A98F */  lw         $t1, 0x2c($sp)
/* 6D1DC 8007C9DC 0200822A */  slti       $v0, $s4, 2
/* 6D1E0 8007C9E0 21504901 */  addu       $t2, $t2, $t1
/* 6D1E4 8007C9E4 9BFF4014 */  bnez       $v0, .L8007C854
/* 6D1E8 8007C9E8 3000AAAF */   sw        $t2, 0x30($sp)
/* 6D1EC 8007C9EC 7800AA8F */  lw         $t2, 0x78($sp)
/* 6D1F0 8007C9F0 E0FF0224 */  addiu      $v0, $zero, -0x20
/* 6D1F4 8007C9F4 28004215 */  bne        $t2, $v0, .L8007CA98
/* 6D1F8 8007C9F8 2120C003 */   addu      $a0, $fp, $zero
/* 6D1FC 8007C9FC 7C00A98F */  lw         $t1, 0x7c($sp)
/* 6D200 8007CA00 70FF0224 */  addiu      $v0, $zero, -0x90
/* 6D204 8007CA04 25002215 */  bne        $t1, $v0, .L8007CA9C
/* 6D208 8007CA08 1380023C */   lui       $v0, 0x8013
/* 6D20C 8007CA0C 2120C003 */  addu       $a0, $fp, $zero
/* 6D210 8007CA10 1380023C */  lui        $v0, %hi(D_801280E9)
/* 6D214 8007CA14 21286002 */  addu       $a1, $s3, $zero
/* 6D218 8007CA18 E9804290 */  lbu        $v0, %lo(D_801280E9)($v0)
/* 6D21C 8007CA1C 40001224 */  addiu      $s2, $zero, 0x40
/* 6D220 8007CA20 C0800200 */  sll        $s0, $v0, 3
/* 6D224 8007CA24 23800202 */  subu       $s0, $s0, $v0
/* 6D228 8007CA28 80801000 */  sll        $s0, $s0, 2
/* 6D22C 8007CA2C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6D230 8007CA30 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6D234 8007CA34 21800202 */  addu       $s0, $s0, $v0
/* 6D238 8007CA38 04000686 */  lh         $a2, 4($s0)
/* 6D23C 8007CA3C 06000786 */  lh         $a3, 6($s0)
/* 6D240 8007CA40 2C001124 */  addiu      $s1, $zero, 0x2c
/* 6D244 8007CA44 1000B2AF */  sw         $s2, 0x10($sp)
/* 6D248 8007CA48 1400B1AF */  sw         $s1, 0x14($sp)
/* 6D24C 8007CA4C 0C000386 */  lh         $v1, 0xc($s0)
/* 6D250 8007CA50 FFFF0224 */  addiu      $v0, $zero, -1
/* 6D254 8007CA54 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6D258 8007CA58 2001C624 */  addiu      $a2, $a2, 0x120
/* 6D25C 8007CA5C 5800E724 */  addiu      $a3, $a3, 0x58
/* 6D260 8007CA60 1769010C */  jal        FUN_8005a45c
/* 6D264 8007CA64 1800A3AF */   sw        $v1, 0x18($sp)
/* 6D268 8007CA68 2120C003 */  addu       $a0, $fp, $zero
/* 6D26C 8007CA6C 16000686 */  lh         $a2, 0x16($s0)
/* 6D270 8007CA70 18000786 */  lh         $a3, 0x18($s0)
/* 6D274 8007CA74 396D010C */  jal        FUN_8005b4e4
/* 6D278 8007CA78 21286002 */   addu      $a1, $s3, $zero
/* 6D27C 8007CA7C 2120C003 */  addu       $a0, $fp, $zero
/* 6D280 8007CA80 21286002 */  addu       $a1, $s3, $zero
/* 6D284 8007CA84 E0FF0624 */  addiu      $a2, $zero, -0x20
/* 6D288 8007CA88 68FF0724 */  addiu      $a3, $zero, -0x98
/* 6D28C 8007CA8C 1000B2AF */  sw         $s2, 0x10($sp)
/* 6D290 8007CA90 CCF20108 */  j          .L8007CB30
/* 6D294 8007CA94 1400B1AF */   sw        $s1, 0x14($sp)
.L8007CA98:
/* 6D298 8007CA98 1380023C */  lui        $v0, %hi(D_80128139)
.L8007CA9C:
/* 6D29C 8007CA9C 21286002 */  addu       $a1, $s3, $zero
/* 6D2A0 8007CAA0 40001224 */  addiu      $s2, $zero, 0x40
/* 6D2A4 8007CAA4 39814290 */  lbu        $v0, %lo(D_80128139)($v0)
/* 6D2A8 8007CAA8 7800AA8F */  lw         $t2, 0x78($sp)
/* 6D2AC 8007CAAC 7C00A98F */  lw         $t1, 0x7c($sp)
/* 6D2B0 8007CAB0 C0800200 */  sll        $s0, $v0, 3
/* 6D2B4 8007CAB4 23800202 */  subu       $s0, $s0, $v0
/* 6D2B8 8007CAB8 80801000 */  sll        $s0, $s0, 2
/* 6D2BC 8007CABC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6D2C0 8007CAC0 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6D2C4 8007CAC4 21800202 */  addu       $s0, $s0, $v0
/* 6D2C8 8007CAC8 04000686 */  lh         $a2, 4($s0)
/* 6D2CC 8007CACC 06000786 */  lh         $a3, 6($s0)
/* 6D2D0 8007CAD0 2C001124 */  addiu      $s1, $zero, 0x2c
/* 6D2D4 8007CAD4 1000B2AF */  sw         $s2, 0x10($sp)
/* 6D2D8 8007CAD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 6D2DC 8007CADC 0C000386 */  lh         $v1, 0xc($s0)
/* 6D2E0 8007CAE0 FFFF0224 */  addiu      $v0, $zero, -1
/* 6D2E4 8007CAE4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6D2E8 8007CAE8 2130CA00 */  addu       $a2, $a2, $t2
/* 6D2EC 8007CAEC 4001C624 */  addiu      $a2, $a2, 0x140
/* 6D2F0 8007CAF0 2138E900 */  addu       $a3, $a3, $t1
/* 6D2F4 8007CAF4 E800E724 */  addiu      $a3, $a3, 0xe8
/* 6D2F8 8007CAF8 1769010C */  jal        FUN_8005a45c
/* 6D2FC 8007CAFC 1800A3AF */   sw        $v1, 0x18($sp)
/* 6D300 8007CB00 2120C003 */  addu       $a0, $fp, $zero
/* 6D304 8007CB04 16000686 */  lh         $a2, 0x16($s0)
/* 6D308 8007CB08 18000786 */  lh         $a3, 0x18($s0)
/* 6D30C 8007CB0C 396D010C */  jal        FUN_8005b4e4
/* 6D310 8007CB10 21286002 */   addu      $a1, $s3, $zero
/* 6D314 8007CB14 2120C003 */  addu       $a0, $fp, $zero
/* 6D318 8007CB18 7800A68F */  lw         $a2, 0x78($sp)
/* 6D31C 8007CB1C 7C00AA8F */  lw         $t2, 0x7c($sp)
/* 6D320 8007CB20 21286002 */  addu       $a1, $s3, $zero
/* 6D324 8007CB24 1000B2AF */  sw         $s2, 0x10($sp)
/* 6D328 8007CB28 1400B1AF */  sw         $s1, 0x14($sp)
/* 6D32C 8007CB2C F8FF4725 */  addiu      $a3, $t2, -8
.L8007CB30:
/* 6D330 8007CB30 976D010C */  jal        FUN_8005b65c
/* 6D334 8007CB34 00000000 */   nop
/* 6D338 8007CB38 2120C003 */  addu       $a0, $fp, $zero
/* 6D33C 8007CB3C 8000A68F */  lw         $a2, 0x80($sp)
/* 6D340 8007CB40 21286002 */  addu       $a1, $s3, $zero
/* 6D344 8007CB44 2138C000 */  addu       $a3, $a2, $zero
/* 6D348 8007CB48 EB6C010C */  jal        FUN_8005b3ac
/* 6D34C 8007CB4C 1000A6AF */   sw        $a2, 0x10($sp)
/* 6D350 8007CB50 01007326 */  addiu      $s3, $s3, 1
/* 6D354 8007CB54 21106002 */  addu       $v0, $s3, $zero
.L8007CB58:
/* 6D358 8007CB58 5C00BF8F */  lw         $ra, 0x5c($sp)
/* 6D35C 8007CB5C 5800BE8F */  lw         $fp, 0x58($sp)
/* 6D360 8007CB60 5400B78F */  lw         $s7, 0x54($sp)
/* 6D364 8007CB64 5000B68F */  lw         $s6, 0x50($sp)
/* 6D368 8007CB68 4C00B58F */  lw         $s5, 0x4c($sp)
/* 6D36C 8007CB6C 4800B48F */  lw         $s4, 0x48($sp)
/* 6D370 8007CB70 4400B38F */  lw         $s3, 0x44($sp)
/* 6D374 8007CB74 4000B28F */  lw         $s2, 0x40($sp)
/* 6D378 8007CB78 3C00B18F */  lw         $s1, 0x3c($sp)
/* 6D37C 8007CB7C 3800B08F */  lw         $s0, 0x38($sp)
/* 6D380 8007CB80 0800E003 */  jr         $ra
/* 6D384 8007CB84 6000BD27 */   addiu     $sp, $sp, 0x60

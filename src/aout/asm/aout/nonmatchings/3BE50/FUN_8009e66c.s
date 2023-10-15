.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009e66c
/* 8EE6C 8009E66C 10FFBD27 */  addiu      $sp, $sp, -0xf0
/* 8EE70 8009E670 0001A28F */  lw         $v0, 0x100($sp)
/* 8EE74 8009E674 003B0700 */  sll        $a3, $a3, 0xc
/* 8EE78 8009E678 1A00E200 */  div        $zero, $a3, $v0
/* 8EE7C 8009E67C E800BEAF */  sw         $fp, 0xe8($sp)
/* 8EE80 8009E680 21F0C000 */  addu       $fp, $a2, $zero
/* 8EE84 8009E684 EC00BFAF */  sw         $ra, 0xec($sp)
/* 8EE88 8009E688 E400B7AF */  sw         $s7, 0xe4($sp)
/* 8EE8C 8009E68C E000B6AF */  sw         $s6, 0xe0($sp)
/* 8EE90 8009E690 DC00B5AF */  sw         $s5, 0xdc($sp)
/* 8EE94 8009E694 D800B4AF */  sw         $s4, 0xd8($sp)
/* 8EE98 8009E698 D400B3AF */  sw         $s3, 0xd4($sp)
/* 8EE9C 8009E69C D000B2AF */  sw         $s2, 0xd0($sp)
/* 8EEA0 8009E6A0 CC00B1AF */  sw         $s1, 0xcc($sp)
/* 8EEA4 8009E6A4 C800B0AF */  sw         $s0, 0xc8($sp)
/* 8EEA8 8009E6A8 F000A4AF */  sw         $a0, 0xf0($sp)
/* 8EEAC 8009E6AC F400A5AF */  sw         $a1, 0xf4($sp)
/* 8EEB0 8009E6B0 12180000 */  mflo       $v1
/* 8EEB4 8009E6B4 6800A3AF */  sw         $v1, 0x68($sp)
/* 8EEB8 8009E6B8 02004014 */  bnez       $v0, .L8009E6C4
/* 8EEBC 8009E6BC 00000000 */   nop
/* 8EEC0 8009E6C0 CD010000 */  break      0, 7
.L8009E6C4:
/* 8EEC4 8009E6C4 01106328 */   slti      $v1, $v1, 0x1001
/* 8EEC8 8009E6C8 04006014 */  bnez       $v1, .L8009E6DC
/* 8EECC 8009E6CC 00200224 */   addiu     $v0, $zero, 0x2000
/* 8EED0 8009E6D0 6800A58F */  lw         $a1, 0x68($sp)
/* 8EED4 8009E6D4 B8790208 */  j          .L8009E6E0
/* 8EED8 8009E6D8 23204500 */   subu      $a0, $v0, $a1
.L8009E6DC:
/* 8EEDC 8009E6DC 6800A48F */  lw         $a0, 0x68($sp)
.L8009E6E0:
/* 8EEE0 8009E6E0 00000000 */  nop
/* 8EEE4 8009E6E4 00FE8424 */  addiu      $a0, $a0, -0x200
/* 8EEE8 8009E6E8 03008104 */  bgez       $a0, .L8009E6F8
/* 8EEEC 8009E6EC 00110400 */   sll       $v0, $a0, 4
/* 8EEF0 8009E6F0 21200000 */  addu       $a0, $zero, $zero
/* 8EEF4 8009E6F4 00110400 */  sll        $v0, $a0, 4
.L8009E6F8:
/* 8EEF8 8009E6F8 21104400 */  addu       $v0, $v0, $a0
/* 8EEFC 8009E6FC 00110200 */  sll        $v0, $v0, 4
/* 8EF00 8009E700 02004104 */  bgez       $v0, .L8009E70C
/* 8EF04 8009E704 00000000 */   nop
/* 8EF08 8009E708 FF034224 */  addiu      $v0, $v0, 0x3ff
.L8009E70C:
/* 8EF0C 8009E70C 83120200 */  sra        $v0, $v0, 0xa
/* 8EF10 8009E710 7800A2AF */  sw         $v0, 0x78($sp)
/* 8EF14 8009E714 11014228 */  slti       $v0, $v0, 0x111
/* 8EF18 8009E718 03004014 */  bnez       $v0, .L8009E728
/* 8EF1C 8009E71C AA2A033C */   lui       $v1, 0x2aaa
/* 8EF20 8009E720 10010624 */  addiu      $a2, $zero, 0x110
/* 8EF24 8009E724 7800A6AF */  sw         $a2, 0x78($sp)
.L8009E728:
/* 8EF28 8009E728 ABAA6334 */  ori        $v1, $v1, 0xaaab
/* 8EF2C 8009E72C 00FC8424 */  addiu      $a0, $a0, -0x400
/* 8EF30 8009E730 40110400 */  sll        $v0, $a0, 5
/* 8EF34 8009E734 23104400 */  subu       $v0, $v0, $a0
/* 8EF38 8009E738 C0100200 */  sll        $v0, $v0, 3
/* 8EF3C 8009E73C 18004300 */  mult       $v0, $v1
/* 8EF40 8009E740 C3170200 */  sra        $v0, $v0, 0x1f
/* 8EF44 8009E744 10180000 */  mfhi       $v1
/* 8EF48 8009E748 031A0300 */  sra        $v1, $v1, 8
/* 8EF4C 8009E74C 23186200 */  subu       $v1, $v1, $v0
/* 8EF50 8009E750 10006428 */  slti       $a0, $v1, 0x10
/* 8EF54 8009E754 03008010 */  beqz       $a0, .L8009E764
/* 8EF58 8009E758 7400A3AF */   sw        $v1, 0x74($sp)
/* 8EF5C 8009E75C 10000224 */  addiu      $v0, $zero, 0x10
/* 8EF60 8009E760 7400A2AF */  sw         $v0, 0x74($sp)
.L8009E764:
/* 8EF64 8009E764 7400A38F */  lw         $v1, 0x74($sp)
/* 8EF68 8009E768 00000000 */  nop
/* 8EF6C 8009E76C F9006228 */  slti       $v0, $v1, 0xf9
/* 8EF70 8009E770 03004014 */  bnez       $v0, .L8009E780
/* 8EF74 8009E774 4800B127 */   addiu     $s1, $sp, 0x48
/* 8EF78 8009E778 F8000424 */  addiu      $a0, $zero, 0xf8
/* 8EF7C 8009E77C 7400A4AF */  sw         $a0, 0x74($sp)
.L8009E780:
/* 8EF80 8009E780 21202002 */  addu       $a0, $s1, $zero
/* 8EF84 8009E784 21280000 */  addu       $a1, $zero, $zero
/* 8EF88 8009E788 0180063C */  lui        $a2, %hi(D_8001684C)
/* 8EF8C 8009E78C 4C68C224 */  addiu      $v0, $a2, %lo(D_8001684C)
/* 8EF90 8009E790 0180073C */  lui        $a3, %hi(D_8001685C)
/* 8EF94 8009E794 5C68E324 */  addiu      $v1, $a3, %lo(D_8001685C)
/* 8EF98 8009E798 4C68C88C */  lw         $t0, 0x684c($a2)
/* 8EF9C 8009E79C 0400498C */  lw         $t1, 4($v0)
/* 8EFA0 8009E7A0 08004A8C */  lw         $t2, 8($v0)
/* 8EFA4 8009E7A4 0C004B8C */  lw         $t3, 0xc($v0)
/* 8EFA8 8009E7A8 5C68EC8C */  lw         $t4, 0x685c($a3)
/* 8EFAC 8009E7AC 0400628C */  lw         $v0, 4($v1)
/* 8EFB0 8009E7B0 0800678C */  lw         $a3, 8($v1)
/* 8EFB4 8009E7B4 0C006D8C */  lw         $t5, 0xc($v1)
/* 8EFB8 8009E7B8 10000624 */  addiu      $a2, $zero, 0x10
/* 8EFBC 8009E7BC 2800A8AF */  sw         $t0, 0x28($sp)
/* 8EFC0 8009E7C0 2C00A9AF */  sw         $t1, 0x2c($sp)
/* 8EFC4 8009E7C4 3000AAAF */  sw         $t2, 0x30($sp)
/* 8EFC8 8009E7C8 3400ABAF */  sw         $t3, 0x34($sp)
/* 8EFCC 8009E7CC 3800ACAF */  sw         $t4, 0x38($sp)
/* 8EFD0 8009E7D0 3C00A2AF */  sw         $v0, 0x3c($sp)
/* 8EFD4 8009E7D4 4000A7AF */  sw         $a3, 0x40($sp)
/* 8EFD8 8009E7D8 F6A2000C */  jal        memset
/* 8EFDC 8009E7DC 4400ADAF */   sw        $t5, 0x44($sp)
/* 8EFE0 8009E7E0 1380063C */  lui        $a2, %hi(D_801280E0)
/* 8EFE4 8009E7E4 E080C224 */  addiu      $v0, $a2, %lo(D_801280E0)
/* 8EFE8 8009E7E8 42000324 */  addiu      $v1, $zero, 0x42
/* 8EFEC 8009E7EC 41004490 */  lbu        $a0, 0x41($v0)
/* 8EFF0 8009E7F0 1380053C */  lui        $a1, %hi(D_801282E0)
/* 8EFF4 8009E7F4 5000A3AF */  sw         $v1, 0x50($sp)
/* 8EFF8 8009E7F8 E082A324 */  addiu      $v1, $a1, %lo(D_801282E0)
/* 8EFFC 8009E7FC C0100400 */  sll        $v0, $a0, 3
/* 8F000 8009E800 23104400 */  subu       $v0, $v0, $a0
/* 8F004 8009E804 80100200 */  sll        $v0, $v0, 2
/* 8F008 8009E808 21904300 */  addu       $s2, $v0, $v1
/* 8F00C 8009E80C 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 8F010 8009E810 28008324 */  addiu      $v1, $a0, %lo(D_800F0028)
/* 8F014 8009E814 8A006290 */  lbu        $v0, 0x8a($v1)
/* 8F018 8009E818 07000724 */  addiu      $a3, $zero, 7
/* 8F01C 8009E81C 02004710 */  beq        $v0, $a3, .L8009E828
/* 8F020 8009E820 21480000 */   addu      $t1, $zero, $zero
/* 8F024 8009E824 2B480200 */  sltu       $t1, $zero, $v0
.L8009E828:
/* 8F028 8009E828 0100023C */  lui        $v0, 1
/* 8F02C 8009E82C 21106200 */  addu       $v0, $v1, $v0
/* 8F030 8009E830 06434290 */  lbu        $v0, 0x4306($v0)
/* 8F034 8009E834 00000000 */  nop
/* 8F038 8009E838 05004710 */  beq        $v0, $a3, .L8009E850
/* 8F03C 8009E83C 10000624 */   addiu     $a2, $zero, 0x10
/* 8F040 8009E840 04004010 */  beqz       $v0, .L8009E854
/* 8F044 8009E844 7878083C */   lui       $t0, 0x7878
/* 8F048 8009E848 02002935 */  ori        $t1, $t1, 2
/* 8F04C 8009E84C 10000624 */  addiu      $a2, $zero, 0x10
.L8009E850:
/* 8F050 8009E850 7878083C */  lui        $t0, 0x7878
.L8009E854:
/* 8F054 8009E854 79780835 */  ori        $t0, $t0, 0x7879
/* 8F058 8009E858 2128C003 */  addu       $a1, $fp, $zero
/* 8F05C 8009E85C 2800AA27 */  addiu      $t2, $sp, 0x28
/* 8F060 8009E860 3800AB27 */  addiu      $t3, $sp, 0x38
/* 8F064 8009E864 80180900 */  sll        $v1, $t1, 2
/* 8F068 8009E868 21504301 */  addu       $t2, $t2, $v1
/* 8F06C 8009E86C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F070 8009E870 6800A78F */  lw         $a3, 0x68($sp)
/* 8F074 8009E874 6800A28F */  lw         $v0, 0x68($sp)
/* 8F078 8009E878 21586301 */  addu       $t3, $t3, $v1
/* 8F07C 8009E87C 6C00A0AF */  sw         $zero, 0x6c($sp)
/* 8F080 8009E880 0010E728 */  slti       $a3, $a3, 0x1000
/* 8F084 8009E884 01104228 */  slti       $v0, $v0, 0x1001
/* 8F088 8009E888 9C00A7AF */  sw         $a3, 0x9c($sp)
/* 8F08C 8009E88C A000A2AF */  sw         $v0, 0xa0($sp)
/* 8F090 8009E890 04004C86 */  lh         $t4, 4($s2)
/* 8F094 8009E894 06004786 */  lh         $a3, 6($s2)
/* 8F098 8009E898 2110A303 */  addu       $v0, $sp, $v1
/* 8F09C 8009E89C 1400A6AF */  sw         $a2, 0x14($sp)
/* 8F0A0 8009E8A0 48004624 */  addiu      $a2, $v0, 0x48
/* 8F0A4 8009E8A4 7800A28F */  lw         $v0, 0x78($sp)
/* 8F0A8 8009E8A8 0000718D */  lw         $s1, ($t3)
/* 8F0AC 8009E8AC 00490200 */  sll        $t1, $v0, 4
/* 8F0B0 8009E8B0 18002801 */  mult       $t1, $t0
/* 8F0B4 8009E8B4 7800E724 */  addiu      $a3, $a3, 0x78
/* 8F0B8 8009E8B8 0000C28C */  lw         $v0, ($a2)
/* 8F0BC 8009E8BC 0000468D */  lw         $a2, ($t2)
/* 8F0C0 8009E8C0 C34F0900 */  sra        $t1, $t1, 0x1f
/* 8F0C4 8009E8C4 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F0C8 8009E8C8 0C004386 */  lh         $v1, 0xc($s2)
/* 8F0CC 8009E8CC C8FF5624 */  addiu      $s6, $v0, -0x38
/* 8F0D0 8009E8D0 21308601 */  addu       $a2, $t4, $a2
/* 8F0D4 8009E8D4 FFFF0224 */  addiu      $v0, $zero, -1
/* 8F0D8 8009E8D8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8F0DC 8009E8DC 1800A3AF */  sw         $v1, 0x18($sp)
/* 8F0E0 8009E8E0 10400000 */  mfhi       $t0
/* 8F0E4 8009E8E4 C3410800 */  sra        $t0, $t0, 7
/* 8F0E8 8009E8E8 1769010C */  jal        FUN_8005a45c
/* 8F0EC 8009E8EC 23980901 */   subu      $s3, $t0, $t1
/* 8F0F0 8009E8F0 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F0F4 8009E8F4 16004686 */  lh         $a2, 0x16($s2)
/* 8F0F8 8009E8F8 18004786 */  lh         $a3, 0x18($s2)
/* 8F0FC 8009E8FC 396D010C */  jal        FUN_8005b4e4
/* 8F100 8009E900 2128C003 */   addu      $a1, $fp, $zero
/* 8F104 8009E904 2128C003 */  addu       $a1, $fp, $zero
/* 8F108 8009E908 2130C002 */  addu       $a2, $s6, $zero
/* 8F10C 8009E90C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F110 8009E910 60FF0724 */  addiu      $a3, $zero, -0xa0
/* 8F114 8009E914 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F118 8009E918 976D010C */  jal        FUN_8005b65c
/* 8F11C 8009E91C 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F120 8009E920 2128C003 */  addu       $a1, $fp, $zero
/* 8F124 8009E924 80000624 */  addiu      $a2, $zero, 0x80
/* 8F128 8009E928 80000724 */  addiu      $a3, $zero, 0x80
/* 8F12C 8009E92C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F130 8009E930 80000224 */  addiu      $v0, $zero, 0x80
/* 8F134 8009E934 EB6C010C */  jal        FUN_8005b3ac
/* 8F138 8009E938 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F13C 8009E93C 0100DE27 */  addiu      $fp, $fp, 1
/* 8F140 8009E940 5800A227 */  addiu      $v0, $sp, 0x58
/* 8F144 8009E944 AC00A2AF */  sw         $v0, 0xac($sp)
.L8009E948:
/* 8F148 8009E948 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8F14C 8009E94C E8FE0324 */  addiu      $v1, $zero, -0x118
/* 8F150 8009E950 03008010 */  beqz       $a0, .L8009E960
/* 8F154 8009E954 7000A3AF */   sw        $v1, 0x70($sp)
/* 8F158 8009E958 18010524 */  addiu      $a1, $zero, 0x118
/* 8F15C 8009E95C 7000A5AF */  sw         $a1, 0x70($sp)
.L8009E960:
/* 8F160 8009E960 0F80083C */  lui        $t0, 0x800f
/* 8F164 8009E964 6C00A68F */  lw         $a2, 0x6c($sp)
/* 8F168 8009E968 F000A78F */  lw         $a3, 0xf0($sp)
/* 8F16C 8009E96C 80200600 */  sll        $a0, $a2, 2
/* 8F170 8009E970 2110E400 */  addu       $v0, $a3, $a0
/* 8F174 8009E974 0000428C */  lw         $v0, ($v0)
/* 8F178 8009E978 28000525 */  addiu      $a1, $t0, 0x28
/* 8F17C 8009E97C 8000A2AF */  sw         $v0, 0x80($sp)
/* 8F180 8009E980 21108600 */  addu       $v0, $a0, $a2
/* 8F184 8009E984 C0190200 */  sll        $v1, $v0, 7
/* 8F188 8009E988 21104300 */  addu       $v0, $v0, $v1
/* 8F18C 8009E98C 40110200 */  sll        $v0, $v0, 5
/* 8F190 8009E990 23104600 */  subu       $v0, $v0, $a2
/* 8F194 8009E994 80100200 */  sll        $v0, $v0, 2
/* 8F198 8009E998 21104500 */  addu       $v0, $v0, $a1
/* 8F19C 8009E99C 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8F1A0 8009E9A0 07000324 */  addiu      $v1, $zero, 7
/* 8F1A4 8009E9A4 03004310 */  beq        $v0, $v1, .L8009E9B4
/* 8F1A8 8009E9A8 00000000 */   nop
/* 8F1AC 8009E9AC 03004014 */  bnez       $v0, .L8009E9BC
/* 8F1B0 8009E9B0 00000000 */   nop
.L8009E9B4:
/* 8F1B4 8009E9B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 8F1B8 8009E9B8 8000A2AF */  sw         $v0, 0x80($sp)
.L8009E9BC:
/* 8F1BC 8009E9BC 8000A38F */  lw         $v1, 0x80($sp)
/* 8F1C0 8009E9C0 FFFF0524 */  addiu      $a1, $zero, -1
/* 8F1C4 8009E9C4 B4026510 */  beq        $v1, $a1, .L8009F498
/* 8F1C8 8009E9C8 10000224 */   addiu     $v0, $zero, 0x10
/* 8F1CC 8009E9CC F000A68F */  lw         $a2, 0xf0($sp)
/* 8F1D0 8009E9D0 00000000 */  nop
/* 8F1D4 8009E9D4 2110C400 */  addu       $v0, $a2, $a0
/* 8F1D8 8009E9D8 0800488C */  lw         $t0, 8($v0)
/* 8F1DC 8009E9DC 00000000 */  nop
/* 8F1E0 8009E9E0 69000011 */  beqz       $t0, .L8009EB88
/* 8F1E4 8009E9E4 1380073C */   lui       $a3, %hi(D_801280E0)
/* 8F1E8 8009E9E8 E080E724 */  addiu      $a3, $a3, %lo(D_801280E0)
/* 8F1EC 8009E9EC 7400A28F */  lw         $v0, 0x74($sp)
/* 8F1F0 8009E9F0 4100E390 */  lbu        $v1, 0x41($a3)
/* 8F1F4 8009E9F4 4CFF5124 */  addiu      $s1, $v0, -0xb4
/* 8F1F8 8009E9F8 C0100300 */  sll        $v0, $v1, 3
/* 8F1FC 8009E9FC 23104300 */  subu       $v0, $v0, $v1
/* 8F200 8009EA00 80100200 */  sll        $v0, $v0, 2
/* 8F204 8009EA04 1380033C */  lui        $v1, %hi(D_801282E0)
/* 8F208 8009EA08 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 8F20C 8009EA0C 02002106 */  bgez       $s1, .L8009EA18
/* 8F210 8009EA10 21904300 */   addu      $s2, $v0, $v1
/* 8F214 8009EA14 21880000 */  addu       $s1, $zero, $zero
.L8009EA18:
/* 8F218 8009EA18 4500222A */  slti       $v0, $s1, 0x45
/* 8F21C 8009EA1C 02004014 */  bnez       $v0, .L8009EA28
/* 8F220 8009EA20 88000424 */   addiu     $a0, $zero, 0x88
/* 8F224 8009EA24 44001124 */  addiu      $s1, $zero, 0x44
.L8009EA28:
/* 8F228 8009EA28 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F22C 8009EA2C 23209100 */  subu       $a0, $a0, $s1
/* 8F230 8009EA30 18004400 */  mult       $v0, $a0
/* 8F234 8009EA34 6666073C */  lui        $a3, 0x6666
/* 8F238 8009EA38 6766E734 */  ori        $a3, $a3, 0x6667
/* 8F23C 8009EA3C 00190800 */  sll        $v1, $t0, 4
/* 8F240 8009EA40 12200000 */  mflo       $a0
/* 8F244 8009EA44 21186800 */  addu       $v1, $v1, $t0
/* 8F248 8009EA48 80180300 */  sll        $v1, $v1, 2
/* 8F24C 8009EA4C 18006700 */  mult       $v1, $a3
/* 8F250 8009EA50 06004286 */  lh         $v0, 6($s2)
/* 8F254 8009EA54 04004586 */  lh         $a1, 4($s2)
/* 8F258 8009EA58 AC004924 */  addiu      $t1, $v0, 0xac
/* 8F25C 8009EA5C B8008424 */  addiu      $a0, $a0, 0xb8
/* 8F260 8009EA60 C31F0300 */  sra        $v1, $v1, 0x1f
/* 8F264 8009EA64 10300000 */  mfhi       $a2
/* 8F268 8009EA68 43300600 */  sra        $a2, $a2, 1
/* 8F26C 8009EA6C 2330C300 */  subu       $a2, $a2, $v1
/* 8F270 8009EA70 4500C228 */  slti       $v0, $a2, 0x45
/* 8F274 8009EA74 02004014 */  bnez       $v0, .L8009EA80
/* 8F278 8009EA78 21A0A400 */   addu      $s4, $a1, $a0
/* 8F27C 8009EA7C 44000624 */  addiu      $a2, $zero, 0x44
.L8009EA80:
/* 8F280 8009EA80 ACFE0224 */  addiu      $v0, $zero, -0x154
/* 8F284 8009EA84 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8F288 8009EA88 23105100 */  subu       $v0, $v0, $s1
/* 8F28C 8009EA8C 18006200 */  mult       $v1, $v0
/* 8F290 8009EA90 7000A48F */  lw         $a0, 0x70($sp)
/* 8F294 8009EA94 10000329 */  slti       $v1, $t0, 0x10
/* 8F298 8009EA98 12100000 */  mflo       $v0
/* 8F29C 8009EA9C AA004224 */  addiu      $v0, $v0, 0xaa
/* 8F2A0 8009EAA0 04006014 */  bnez       $v1, .L8009EAB4
/* 8F2A4 8009EAA4 21B08200 */   addu      $s6, $a0, $v0
/* 8F2A8 8009EAA8 32000524 */  addiu      $a1, $zero, 0x32
/* 8F2AC 8009EAAC C27A0208 */  j          .L8009EB08
/* 8F2B0 8009EAB0 7C00A5AF */   sw        $a1, 0x7c($sp)
.L8009EAB4:
/* 8F2B4 8009EAB4 06000229 */  slti       $v0, $t0, 6
/* 8F2B8 8009EAB8 10004014 */  bnez       $v0, .L8009EAFC
/* 8F2BC 8009EABC F4FEC224 */   addiu     $v0, $a2, -0x10c
/* 8F2C0 8009EAC0 0A000224 */  addiu      $v0, $zero, 0xa
/* 8F2C4 8009EAC4 23104800 */  subu       $v0, $v0, $t0
/* 8F2C8 8009EAC8 80200200 */  sll        $a0, $v0, 2
/* 8F2CC 8009EACC 18004400 */  mult       $v0, $a0
/* 8F2D0 8009EAD0 12100000 */  mflo       $v0
/* 8F2D4 8009EAD4 00000000 */  nop
/* 8F2D8 8009EAD8 00000000 */  nop
/* 8F2DC 8009EADC 18004700 */  mult       $v0, $a3
/* 8F2E0 8009EAE0 C3170200 */  sra        $v0, $v0, 0x1f
/* 8F2E4 8009EAE4 10180000 */  mfhi       $v1
/* 8F2E8 8009EAE8 43180300 */  sra        $v1, $v1, 1
/* 8F2EC 8009EAEC 23186200 */  subu       $v1, $v1, $v0
/* 8F2F0 8009EAF0 1E006324 */  addiu      $v1, $v1, 0x1e
/* 8F2F4 8009EAF4 C27A0208 */  j          .L8009EB08
/* 8F2F8 8009EAF8 7C00A3AF */   sw        $v1, 0x7c($sp)
.L8009EAFC:
/* 8F2FC 8009EAFC 6AFF0324 */  addiu      $v1, $zero, -0x96
/* 8F300 8009EB00 23106200 */  subu       $v0, $v1, $v0
/* 8F304 8009EB04 7C00A2AF */  sw         $v0, 0x7c($sp)
.L8009EB08:
/* 8F308 8009EB08 2198C000 */  addu       $s3, $a2, $zero
/* 8F30C 8009EB0C 2128C003 */  addu       $a1, $fp, $zero
/* 8F310 8009EB10 21308002 */  addu       $a2, $s4, $zero
/* 8F314 8009EB14 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F318 8009EB18 21382001 */  addu       $a3, $t1, $zero
/* 8F31C 8009EB1C 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F320 8009EB20 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F324 8009EB24 0C004286 */  lh         $v0, 0xc($s2)
/* 8F328 8009EB28 FFFF0824 */  addiu      $t0, $zero, -1
/* 8F32C 8009EB2C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 8F330 8009EB30 1769010C */  jal        FUN_8005a45c
/* 8F334 8009EB34 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F338 8009EB38 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F33C 8009EB3C 16004686 */  lh         $a2, 0x16($s2)
/* 8F340 8009EB40 18004786 */  lh         $a3, 0x18($s2)
/* 8F344 8009EB44 396D010C */  jal        FUN_8005b4e4
/* 8F348 8009EB48 2128C003 */   addu      $a1, $fp, $zero
/* 8F34C 8009EB4C 2128C003 */  addu       $a1, $fp, $zero
/* 8F350 8009EB50 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F354 8009EB54 7C00A78F */  lw         $a3, 0x7c($sp)
/* 8F358 8009EB58 2130C002 */  addu       $a2, $s6, $zero
/* 8F35C 8009EB5C 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F360 8009EB60 976D010C */  jal        FUN_8005b65c
/* 8F364 8009EB64 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F368 8009EB68 2128C003 */  addu       $a1, $fp, $zero
/* 8F36C 8009EB6C 80000624 */  addiu      $a2, $zero, 0x80
/* 8F370 8009EB70 80000724 */  addiu      $a3, $zero, 0x80
/* 8F374 8009EB74 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F378 8009EB78 80000224 */  addiu      $v0, $zero, 0x80
/* 8F37C 8009EB7C EB6C010C */  jal        FUN_8005b3ac
/* 8F380 8009EB80 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F384 8009EB84 0100DE27 */  addiu      $fp, $fp, 1
.L8009EB88:
/* 8F388 8009EB88 0180053C */  lui        $a1, %hi(D_8001686C)
/* 8F38C 8009EB8C 1380033C */  lui        $v1, %hi(D_801280E0)
/* 8F390 8009EB90 E0806324 */  addiu      $v1, $v1, %lo(D_801280E0)
/* 8F394 8009EB94 41006290 */  lbu        $v0, 0x41($v1)
/* 8F398 8009EB98 6C68A324 */  addiu      $v1, $a1, %lo(D_8001686C)
/* 8F39C 8009EB9C 0400668C */  lw         $a2, 4($v1)
/* 8F3A0 8009EBA0 0C00678C */  lw         $a3, 0xc($v1)
/* 8F3A4 8009EBA4 1000688C */  lw         $t0, 0x10($v1)
/* 8F3A8 8009EBA8 1400698C */  lw         $t1, 0x14($v1)
/* 8F3AC 8009EBAC C0200200 */  sll        $a0, $v0, 3
/* 8F3B0 8009EBB0 23208200 */  subu       $a0, $a0, $v0
/* 8F3B4 8009EBB4 80200400 */  sll        $a0, $a0, 2
/* 8F3B8 8009EBB8 6C68A28C */  lw         $v0, 0x686c($a1)
/* 8F3BC 8009EBBC 0800658C */  lw         $a1, 8($v1)
/* 8F3C0 8009EBC0 1380033C */  lui        $v1, %hi(D_801282E0)
/* 8F3C4 8009EBC4 E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 8F3C8 8009EBC8 21908300 */  addu       $s2, $a0, $v1
/* 8F3CC 8009EBCC 8000A48F */  lw         $a0, 0x80($sp)
/* 8F3D0 8009EBD0 2C00A6AF */  sw         $a2, 0x2c($sp)
/* 8F3D4 8009EBD4 3400A7AF */  sw         $a3, 0x34($sp)
/* 8F3D8 8009EBD8 3800A8AF */  sw         $t0, 0x38($sp)
/* 8F3DC 8009EBDC 3C00A9AF */  sw         $t1, 0x3c($sp)
/* 8F3E0 8009EBE0 2800A2AF */  sw         $v0, 0x28($sp)
/* 8F3E4 8009EBE4 04000224 */  addiu      $v0, $zero, 4
/* 8F3E8 8009EBE8 0A008214 */  bne        $a0, $v0, .L8009EC14
/* 8F3EC 8009EBEC 3000A5AF */   sw        $a1, 0x30($sp)
/* 8F3F0 8009EBF0 1380053C */  lui        $a1, %hi(D_801280E0)
/* 8F3F4 8009EBF4 E080A524 */  addiu      $a1, $a1, %lo(D_801280E0)
/* 8F3F8 8009EBF8 4000A390 */  lbu        $v1, 0x40($a1)
/* 8F3FC 8009EBFC 1380063C */  lui        $a2, %hi(D_801282E0)
/* 8F400 8009EC00 E082C624 */  addiu      $a2, $a2, %lo(D_801282E0)
/* 8F404 8009EC04 C0100300 */  sll        $v0, $v1, 3
/* 8F408 8009EC08 23104300 */  subu       $v0, $v0, $v1
/* 8F40C 8009EC0C 80100200 */  sll        $v0, $v0, 2
/* 8F410 8009EC10 21904600 */  addu       $s2, $v0, $a2
.L8009EC14:
/* 8F414 8009EC14 7400A78F */  lw         $a3, 0x74($sp)
/* 8F418 8009EC18 00000000 */  nop
/* 8F41C 8009EC1C EBFFF124 */  addiu      $s1, $a3, -0x15
/* 8F420 8009EC20 03002106 */  bgez       $s1, .L8009EC30
/* 8F424 8009EC24 4100222A */   slti      $v0, $s1, 0x41
/* 8F428 8009EC28 21880000 */  addu       $s1, $zero, $zero
/* 8F42C 8009EC2C 4100222A */  slti       $v0, $s1, 0x41
.L8009EC30:
/* 8F430 8009EC30 02004014 */  bnez       $v0, .L8009EC3C
/* 8F434 8009EC34 D6FF0224 */   addiu     $v0, $zero, -0x2a
/* 8F438 8009EC38 40001124 */  addiu      $s1, $zero, 0x40
.L8009EC3C:
/* 8F43C 8009EC3C 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8F440 8009EC40 23105100 */  subu       $v0, $v0, $s1
/* 8F444 8009EC44 18006200 */  mult       $v1, $v0
/* 8F448 8009EC48 2E001324 */  addiu      $s3, $zero, 0x2e
/* 8F44C 8009EC4C 2128C003 */  addu       $a1, $fp, $zero
/* 8F450 8009EC50 40000624 */  addiu      $a2, $zero, 0x40
/* 8F454 8009EC54 2330D100 */  subu       $a2, $a2, $s1
/* 8F458 8009EC58 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F45C 8009EC5C 12100000 */  mflo       $v0
/* 8F460 8009EC60 04004986 */  lh         $t1, 4($s2)
/* 8F464 8009EC64 06004886 */  lh         $t0, 6($s2)
/* 8F468 8009EC68 18006600 */  mult       $v1, $a2
/* 8F46C 8009EC6C 8000A38F */  lw         $v1, 0x80($sp)
/* 8F470 8009EC70 FFFF1724 */  addiu      $s7, $zero, -1
/* 8F474 8009EC74 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F478 8009EC78 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F47C 8009EC7C 80A00300 */  sll        $s4, $v1, 2
/* 8F480 8009EC80 2138B403 */  addu       $a3, $sp, $s4
/* 8F484 8009EC84 2800F524 */  addiu      $s5, $a3, 0x28
/* 8F488 8009EC88 0000A78E */  lw         $a3, ($s5)
/* 8F48C 8009EC8C 0C004386 */  lh         $v1, 0xc($s2)
/* 8F490 8009EC90 21380701 */  addu       $a3, $t0, $a3
/* 8F494 8009EC94 7000A88F */  lw         $t0, 0x70($sp)
/* 8F498 8009EC98 15004224 */  addiu      $v0, $v0, 0x15
/* 8F49C 8009EC9C 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 8F4A0 8009ECA0 1800A3AF */  sw         $v1, 0x18($sp)
/* 8F4A4 8009ECA4 21B00201 */  addu       $s6, $t0, $v0
/* 8F4A8 8009ECA8 12300000 */  mflo       $a2
/* 8F4AC 8009ECAC 1769010C */  jal        FUN_8005a45c
/* 8F4B0 8009ECB0 21302601 */   addu      $a2, $t1, $a2
/* 8F4B4 8009ECB4 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F4B8 8009ECB8 16004686 */  lh         $a2, 0x16($s2)
/* 8F4BC 8009ECBC 18004786 */  lh         $a3, 0x18($s2)
/* 8F4C0 8009ECC0 396D010C */  jal        FUN_8005b4e4
/* 8F4C4 8009ECC4 2128C003 */   addu      $a1, $fp, $zero
/* 8F4C8 8009ECC8 2128C003 */  addu       $a1, $fp, $zero
/* 8F4CC 8009ECCC 2130C002 */  addu       $a2, $s6, $zero
/* 8F4D0 8009ECD0 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F4D4 8009ECD4 6DFF0724 */  addiu      $a3, $zero, -0x93
/* 8F4D8 8009ECD8 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F4DC 8009ECDC 976D010C */  jal        FUN_8005b65c
/* 8F4E0 8009ECE0 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F4E4 8009ECE4 2128C003 */  addu       $a1, $fp, $zero
/* 8F4E8 8009ECE8 80000624 */  addiu      $a2, $zero, 0x80
/* 8F4EC 8009ECEC F400A48F */  lw         $a0, 0xf4($sp)
/* 8F4F0 8009ECF0 80000724 */  addiu      $a3, $zero, 0x80
/* 8F4F4 8009ECF4 EB6C010C */  jal        FUN_8005b3ac
/* 8F4F8 8009ECF8 1000A7AF */   sw        $a3, 0x10($sp)
/* 8F4FC 8009ECFC 7400A28F */  lw         $v0, 0x74($sp)
/* 8F500 8009ED00 0100DE27 */  addiu      $fp, $fp, 1
/* 8F504 8009ED04 ABFF5124 */  addiu      $s1, $v0, -0x55
/* 8F508 8009ED08 02002106 */  bgez       $s1, .L8009ED14
/* 8F50C 8009ED0C BC00B4AF */   sw        $s4, 0xbc($sp)
/* 8F510 8009ED10 21880000 */  addu       $s1, $zero, $zero
.L8009ED14:
/* 8F514 8009ED14 7100222A */  slti       $v0, $s1, 0x71
/* 8F518 8009ED18 02004014 */  bnez       $v0, .L8009ED24
/* 8F51C 8009ED1C 70000624 */   addiu     $a2, $zero, 0x70
/* 8F520 8009ED20 70001124 */  addiu      $s1, $zero, 0x70
.L8009ED24:
/* 8F524 8009ED24 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F528 8009ED28 2330D100 */  subu       $a2, $a2, $s1
/* 8F52C 8009ED2C 18004600 */  mult       $v0, $a2
/* 8F530 8009ED30 2128C003 */  addu       $a1, $fp, $zero
/* 8F534 8009ED34 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8F538 8009ED38 04004986 */  lh         $t1, 4($s2)
/* 8F53C 8009ED3C 06004886 */  lh         $t0, 6($s2)
/* 8F540 8009ED40 12300000 */  mflo       $a2
/* 8F544 8009ED44 56FF0224 */  addiu      $v0, $zero, -0xaa
/* 8F548 8009ED48 23105100 */  subu       $v0, $v0, $s1
/* 8F54C 8009ED4C 18006200 */  mult       $v1, $v0
/* 8F550 8009ED50 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F554 8009ED54 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F558 8009ED58 0000A78E */  lw         $a3, ($s5)
/* 8F55C 8009ED5C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F560 8009ED60 21380701 */  addu       $a3, $t0, $a3
/* 8F564 8009ED64 7000A88F */  lw         $t0, 0x70($sp)
/* 8F568 8009ED68 4000C624 */  addiu      $a2, $a2, 0x40
/* 8F56C 8009ED6C 0C004386 */  lh         $v1, 0xc($s2)
/* 8F570 8009ED70 21302601 */  addu       $a2, $t1, $a2
/* 8F574 8009ED74 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 8F578 8009ED78 1800A3AF */  sw         $v1, 0x18($sp)
/* 8F57C 8009ED7C 12100000 */  mflo       $v0
/* 8F580 8009ED80 55004224 */  addiu      $v0, $v0, 0x55
/* 8F584 8009ED84 1769010C */  jal        FUN_8005a45c
/* 8F588 8009ED88 21B00201 */   addu      $s6, $t0, $v0
/* 8F58C 8009ED8C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F590 8009ED90 16004686 */  lh         $a2, 0x16($s2)
/* 8F594 8009ED94 18004786 */  lh         $a3, 0x18($s2)
/* 8F598 8009ED98 396D010C */  jal        FUN_8005b4e4
/* 8F59C 8009ED9C 2128C003 */   addu      $a1, $fp, $zero
/* 8F5A0 8009EDA0 2128C003 */  addu       $a1, $fp, $zero
/* 8F5A4 8009EDA4 2130C002 */  addu       $a2, $s6, $zero
/* 8F5A8 8009EDA8 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F5AC 8009EDAC 6DFF0724 */  addiu      $a3, $zero, -0x93
/* 8F5B0 8009EDB0 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F5B4 8009EDB4 976D010C */  jal        FUN_8005b65c
/* 8F5B8 8009EDB8 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F5BC 8009EDBC 2128C003 */  addu       $a1, $fp, $zero
/* 8F5C0 8009EDC0 80000624 */  addiu      $a2, $zero, 0x80
/* 8F5C4 8009EDC4 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F5C8 8009EDC8 80000724 */  addiu      $a3, $zero, 0x80
/* 8F5CC 8009EDCC EB6C010C */  jal        FUN_8005b3ac
/* 8F5D0 8009EDD0 1000A7AF */   sw        $a3, 0x10($sp)
/* 8F5D4 8009EDD4 0100DE27 */  addiu      $fp, $fp, 1
/* 8F5D8 8009EDD8 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8F5DC 8009EDDC E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 8F5E0 8009EDE0 1380053C */  lui        $a1, %hi(D_801282E0)
/* 8F5E4 8009EDE4 E082A524 */  addiu      $a1, $a1, %lo(D_801282E0)
/* 8F5E8 8009EDE8 7400A48F */  lw         $a0, 0x74($sp)
/* 8F5EC 8009EDEC 72004390 */  lbu        $v1, 0x72($v0)
/* 8F5F0 8009EDF0 F0FF9124 */  addiu      $s1, $a0, -0x10
/* 8F5F4 8009EDF4 C0100300 */  sll        $v0, $v1, 3
/* 8F5F8 8009EDF8 23104300 */  subu       $v0, $v0, $v1
/* 8F5FC 8009EDFC 80100200 */  sll        $v0, $v0, 2
/* 8F600 8009EE00 21904500 */  addu       $s2, $v0, $a1
/* 8F604 8009EE04 02002106 */  bgez       $s1, .L8009EE10
/* 8F608 8009EE08 21B82002 */   addu      $s7, $s1, $zero
/* 8F60C 8009EE0C 21880000 */  addu       $s1, $zero, $zero
.L8009EE10:
/* 8F610 8009EE10 6C00A68F */  lw         $a2, 0x6c($sp)
/* 8F614 8009EE14 00000000 */  nop
/* 8F618 8009EE18 0500C010 */  beqz       $a2, .L8009EE30
/* 8F61C 8009EE1C 2100222A */   slti      $v0, $s1, 0x21
/* 8F620 8009EE20 06004010 */  beqz       $v0, .L8009EE3C
/* 8F624 8009EE24 E0FF0324 */   addiu     $v1, $zero, -0x20
/* 8F628 8009EE28 957B0208 */  j          .L8009EE54
/* 8F62C 8009EE2C 00000000 */   nop
.L8009EE30:
/* 8F630 8009EE30 C100222A */  slti       $v0, $s1, 0xc1
/* 8F634 8009EE34 07004014 */  bnez       $v0, .L8009EE54
/* 8F638 8009EE38 E0FF0324 */   addiu     $v1, $zero, -0x20
.L8009EE3C:
/* 8F63C 8009EE3C 6C00A78F */  lw         $a3, 0x6c($sp)
/* 8F640 8009EE40 00000000 */  nop
/* 8F644 8009EE44 0200E010 */  beqz       $a3, .L8009EE50
/* 8F648 8009EE48 C0001124 */   addiu     $s1, $zero, 0xc0
/* 8F64C 8009EE4C 20001124 */  addiu      $s1, $zero, 0x20
.L8009EE50:
/* 8F650 8009EE50 E0FF0324 */  addiu      $v1, $zero, -0x20
.L8009EE54:
/* 8F654 8009EE54 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F658 8009EE58 23187100 */  subu       $v1, $v1, $s1
/* 8F65C 8009EE5C 18004300 */  mult       $v0, $v1
/* 8F660 8009EE60 08001324 */  addiu      $s3, $zero, 8
/* 8F664 8009EE64 E0000624 */  addiu      $a2, $zero, 0xe0
/* 8F668 8009EE68 2330D100 */  subu       $a2, $a2, $s1
/* 8F66C 8009EE6C 2128C003 */  addu       $a1, $fp, $zero
/* 8F670 8009EE70 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8F674 8009EE74 04004986 */  lh         $t1, 4($s2)
/* 8F678 8009EE78 06004886 */  lh         $t0, 6($s2)
/* 8F67C 8009EE7C FFFF2226 */  addiu      $v0, $s1, -1
/* 8F680 8009EE80 21584400 */  addu       $t3, $v0, $a0
/* 8F684 8009EE84 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F688 8009EE88 12180000 */  mflo       $v1
/* 8F68C 8009EE8C 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F690 8009EE90 1000ABAF */  sw         $t3, 0x10($sp)
/* 8F694 8009EE94 18004600 */  mult       $v0, $a2
/* 8F698 8009EE98 0C004286 */  lh         $v0, 0xc($s2)
/* 8F69C 8009EE9C FFFF0724 */  addiu      $a3, $zero, -1
/* 8F6A0 8009EEA0 1C00A7AF */  sw         $a3, 0x1c($sp)
/* 8F6A4 8009EEA4 6C00A78F */  lw         $a3, 0x6c($sp)
/* 8F6A8 8009EEA8 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F6AC 8009EEAC C0A00700 */  sll        $s4, $a3, 3
/* 8F6B0 8009EEB0 E0008726 */  addiu      $a3, $s4, 0xe0
/* 8F6B4 8009EEB4 21380701 */  addu       $a3, $t0, $a3
/* 8F6B8 8009EEB8 7000A88F */  lw         $t0, 0x70($sp)
/* 8F6BC 8009EEBC 10006324 */  addiu      $v1, $v1, 0x10
/* 8F6C0 8009EEC0 1800A2AF */  sw         $v0, 0x18($sp)
/* 8F6C4 8009EEC4 21B00301 */  addu       $s6, $t0, $v1
/* 8F6C8 8009EEC8 12300000 */  mflo       $a2
/* 8F6CC 8009EECC 1769010C */  jal        FUN_8005a45c
/* 8F6D0 8009EED0 21302601 */   addu      $a2, $t1, $a2
/* 8F6D4 8009EED4 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F6D8 8009EED8 16004686 */  lh         $a2, 0x16($s2)
/* 8F6DC 8009EEDC 18004786 */  lh         $a3, 0x18($s2)
/* 8F6E0 8009EEE0 396D010C */  jal        FUN_8005b4e4
/* 8F6E4 8009EEE4 2128C003 */   addu      $a1, $fp, $zero
/* 8F6E8 8009EEE8 2128C003 */  addu       $a1, $fp, $zero
/* 8F6EC 8009EEEC 2130C002 */  addu       $a2, $s6, $zero
/* 8F6F0 8009EEF0 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F6F4 8009EEF4 9BFF0724 */  addiu      $a3, $zero, -0x65
/* 8F6F8 8009EEF8 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F6FC 8009EEFC 976D010C */  jal        FUN_8005b65c
/* 8F700 8009EF00 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F704 8009EF04 2128C003 */  addu       $a1, $fp, $zero
/* 8F708 8009EF08 80000624 */  addiu      $a2, $zero, 0x80
/* 8F70C 8009EF0C 80000724 */  addiu      $a3, $zero, 0x80
/* 8F710 8009EF10 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F714 8009EF14 80000224 */  addiu      $v0, $zero, 0x80
/* 8F718 8009EF18 EB6C010C */  jal        FUN_8005b3ac
/* 8F71C 8009EF1C 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F720 8009EF20 0100DE27 */  addiu      $fp, $fp, 1
/* 8F724 8009EF24 21808002 */  addu       $s0, $s4, $zero
/* 8F728 8009EF28 7400A28F */  lw         $v0, 0x74($sp)
/* 8F72C 8009EF2C 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8F730 8009EF30 30FF5124 */  addiu      $s1, $v0, -0xd0
/* 8F734 8009EF34 02006010 */  beqz       $v1, .L8009EF40
/* 8F738 8009EF38 21A82002 */   addu      $s5, $s1, $zero
/* 8F73C 8009EF3C D0FF5124 */  addiu      $s1, $v0, -0x30
.L8009EF40:
/* 8F740 8009EF40 02002106 */  bgez       $s1, .L8009EF4C
/* 8F744 8009EF44 00000000 */   nop
/* 8F748 8009EF48 21880000 */  addu       $s1, $zero, $zero
.L8009EF4C:
/* 8F74C 8009EF4C 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8F750 8009EF50 00000000 */  nop
/* 8F754 8009EF54 05008010 */  beqz       $a0, .L8009EF6C
/* 8F758 8009EF58 C100222A */   slti      $v0, $s1, 0xc1
/* 8F75C 8009EF5C 06004010 */  beqz       $v0, .L8009EF78
/* 8F760 8009EF60 00000000 */   nop
/* 8F764 8009EF64 E37B0208 */  j          .L8009EF8C
/* 8F768 8009EF68 00000000 */   nop
.L8009EF6C:
/* 8F76C 8009EF6C 2100222A */  slti       $v0, $s1, 0x21
/* 8F770 8009EF70 06004014 */  bnez       $v0, .L8009EF8C
/* 8F774 8009EF74 00000000 */   nop
.L8009EF78:
/* 8F778 8009EF78 6C00A58F */  lw         $a1, 0x6c($sp)
/* 8F77C 8009EF7C 00000000 */  nop
/* 8F780 8009EF80 0200A010 */  beqz       $a1, .L8009EF8C
/* 8F784 8009EF84 20001124 */   addiu     $s1, $zero, 0x20
/* 8F788 8009EF88 C0001124 */  addiu      $s1, $zero, 0xc0
.L8009EF8C:
/* 8F78C 8009EF8C 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F790 8009EF90 23181100 */  negu       $v1, $s1
/* 8F794 8009EF94 18004300 */  mult       $v0, $v1
/* 8F798 8009EF98 06004486 */  lh         $a0, 6($s2)
/* 8F79C 8009EF9C 04004586 */  lh         $a1, 4($s2)
/* 8F7A0 8009EFA0 23582202 */  subu       $t3, $s1, $v0
/* 8F7A4 8009EFA4 E0000226 */  addiu      $v0, $s0, 0xe0
/* 8F7A8 8009EFA8 21488200 */  addu       $t1, $a0, $v0
/* 8F7AC 8009EFAC 12180000 */  mflo       $v1
/* 8F7B0 8009EFB0 C0006324 */  addiu      $v1, $v1, 0xc0
/* 8F7B4 8009EFB4 21A0A300 */  addu       $s4, $a1, $v1
/* 8F7B8 8009EFB8 7000A38F */  lw         $v1, 0x70($sp)
/* 8F7BC 8009EFBC 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8F7C0 8009EFC0 00000000 */  nop
/* 8F7C4 8009EFC4 08008010 */  beqz       $a0, .L8009EFE8
/* 8F7C8 8009EFC8 D0007024 */   addiu     $s0, $v1, 0xd0
/* 8F7CC 8009EFCC A0FF0224 */  addiu      $v0, $zero, -0x60
/* 8F7D0 8009EFD0 23105100 */  subu       $v0, $v0, $s1
/* 8F7D4 8009EFD4 18008200 */  mult       $a0, $v0
/* 8F7D8 8009EFD8 30006324 */  addiu      $v1, $v1, 0x30
/* 8F7DC 8009EFDC 12100000 */  mflo       $v0
/* 8F7E0 8009EFE0 FB7B0208 */  j          .L8009EFEC
/* 8F7E4 8009EFE4 21B06200 */   addu      $s6, $v1, $v0
.L8009EFE8:
/* 8F7E8 8009EFE8 21B00002 */  addu       $s6, $s0, $zero
.L8009EFEC:
/* 8F7EC 8009EFEC 08001324 */  addiu      $s3, $zero, 8
/* 8F7F0 8009EFF0 2128C003 */  addu       $a1, $fp, $zero
/* 8F7F4 8009EFF4 21308002 */  addu       $a2, $s4, $zero
/* 8F7F8 8009EFF8 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F7FC 8009EFFC 21382001 */  addu       $a3, $t1, $zero
/* 8F800 8009F000 1000ABAF */  sw         $t3, 0x10($sp)
/* 8F804 8009F004 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F808 8009F008 0C004286 */  lh         $v0, 0xc($s2)
/* 8F80C 8009F00C FFFF0324 */  addiu      $v1, $zero, -1
/* 8F810 8009F010 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 8F814 8009F014 1769010C */  jal        FUN_8005a45c
/* 8F818 8009F018 1800A2AF */   sw        $v0, 0x18($sp)
/* 8F81C 8009F01C F400A48F */  lw         $a0, 0xf4($sp)
/* 8F820 8009F020 16004686 */  lh         $a2, 0x16($s2)
/* 8F824 8009F024 18004786 */  lh         $a3, 0x18($s2)
/* 8F828 8009F028 396D010C */  jal        FUN_8005b4e4
/* 8F82C 8009F02C 2128C003 */   addu      $a1, $fp, $zero
/* 8F830 8009F030 2128C003 */  addu       $a1, $fp, $zero
/* 8F834 8009F034 2130C002 */  addu       $a2, $s6, $zero
/* 8F838 8009F038 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F83C 8009F03C 9BFF0724 */  addiu      $a3, $zero, -0x65
/* 8F840 8009F040 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F844 8009F044 976D010C */  jal        FUN_8005b65c
/* 8F848 8009F048 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F84C 8009F04C 2128C003 */  addu       $a1, $fp, $zero
/* 8F850 8009F050 80000624 */  addiu      $a2, $zero, 0x80
/* 8F854 8009F054 80000724 */  addiu      $a3, $zero, 0x80
/* 8F858 8009F058 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F85C 8009F05C 80000224 */  addiu      $v0, $zero, 0x80
/* 8F860 8009F060 EB6C010C */  jal        FUN_8005b3ac
/* 8F864 8009F064 1000A2AF */   sw        $v0, 0x10($sp)
/* 8F868 8009F068 0100DE27 */  addiu      $fp, $fp, 1
/* 8F86C 8009F06C 0180053C */  lui        $a1, %hi(D_80016884)
/* 8F870 8009F070 1380043C */  lui        $a0, %hi(D_801280E0)
/* 8F874 8009F074 E0808B24 */  addiu      $t3, $a0, %lo(D_801280E0)
/* 8F878 8009F078 8468A324 */  addiu      $v1, $a1, %lo(D_80016884)
/* 8F87C 8009F07C 1380063C */  lui        $a2, %hi(D_801282E0)
/* 8F880 8009F080 E082CA24 */  addiu      $t2, $a2, %lo(D_801282E0)
/* 8F884 8009F084 72006291 */  lbu        $v0, 0x72($t3)
/* 8F888 8009F088 0400668C */  lw         $a2, 4($v1)
/* 8F88C 8009F08C 0C00678C */  lw         $a3, 0xc($v1)
/* 8F890 8009F090 1000688C */  lw         $t0, 0x10($v1)
/* 8F894 8009F094 1400698C */  lw         $t1, 0x14($v1)
/* 8F898 8009F098 C0200200 */  sll        $a0, $v0, 3
/* 8F89C 8009F09C 23208200 */  subu       $a0, $a0, $v0
/* 8F8A0 8009F0A0 8468A28C */  lw         $v0, 0x6884($a1)
/* 8F8A4 8009F0A4 0800658C */  lw         $a1, 8($v1)
/* 8F8A8 8009F0A8 80200400 */  sll        $a0, $a0, 2
/* 8F8AC 8009F0AC 3400A7AF */  sw         $a3, 0x34($sp)
/* 8F8B0 8009F0B0 8000A78F */  lw         $a3, 0x80($sp)
/* 8F8B4 8009F0B4 21908A00 */  addu       $s2, $a0, $t2
/* 8F8B8 8009F0B8 2C00A6AF */  sw         $a2, 0x2c($sp)
/* 8F8BC 8009F0BC 3800A8AF */  sw         $t0, 0x38($sp)
/* 8F8C0 8009F0C0 3C00A9AF */  sw         $t1, 0x3c($sp)
/* 8F8C4 8009F0C4 2800A2AF */  sw         $v0, 0x28($sp)
/* 8F8C8 8009F0C8 04000224 */  addiu      $v0, $zero, 4
/* 8F8CC 8009F0CC 0700E214 */  bne        $a3, $v0, .L8009F0EC
/* 8F8D0 8009F0D0 3000A5AF */   sw        $a1, 0x30($sp)
/* 8F8D4 8009F0D4 71006391 */  lbu        $v1, 0x71($t3)
/* 8F8D8 8009F0D8 00000000 */  nop
/* 8F8DC 8009F0DC C0100300 */  sll        $v0, $v1, 3
/* 8F8E0 8009F0E0 23104300 */  subu       $v0, $v0, $v1
/* 8F8E4 8009F0E4 80100200 */  sll        $v0, $v0, 2
/* 8F8E8 8009F0E8 21904A00 */  addu       $s2, $v0, $t2
.L8009F0EC:
/* 8F8EC 8009F0EC 2188E002 */  addu       $s1, $s7, $zero
/* 8F8F0 8009F0F0 02002106 */  bgez       $s1, .L8009F0FC
/* 8F8F4 8009F0F4 00000000 */   nop
/* 8F8F8 8009F0F8 21880000 */  addu       $s1, $zero, $zero
.L8009F0FC:
/* 8F8FC 8009F0FC 6C00A88F */  lw         $t0, 0x6c($sp)
/* 8F900 8009F100 00000000 */  nop
/* 8F904 8009F104 05000011 */  beqz       $t0, .L8009F11C
/* 8F908 8009F108 2100222A */   slti      $v0, $s1, 0x21
/* 8F90C 8009F10C 06004010 */  beqz       $v0, .L8009F128
/* 8F910 8009F110 E0FF0324 */   addiu     $v1, $zero, -0x20
/* 8F914 8009F114 517C0208 */  j          .L8009F144
/* 8F918 8009F118 23187100 */   subu      $v1, $v1, $s1
.L8009F11C:
/* 8F91C 8009F11C C100222A */  slti       $v0, $s1, 0xc1
/* 8F920 8009F120 07004014 */  bnez       $v0, .L8009F140
/* 8F924 8009F124 E0FF0324 */   addiu     $v1, $zero, -0x20
.L8009F128:
/* 8F928 8009F128 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F92C 8009F12C 00000000 */  nop
/* 8F930 8009F130 02004010 */  beqz       $v0, .L8009F13C
/* 8F934 8009F134 C0001124 */   addiu     $s1, $zero, 0xc0
/* 8F938 8009F138 20001124 */  addiu      $s1, $zero, 0x20
.L8009F13C:
/* 8F93C 8009F13C E0FF0324 */  addiu      $v1, $zero, -0x20
.L8009F140:
/* 8F940 8009F140 23187100 */  subu       $v1, $v1, $s1
.L8009F144:
/* 8F944 8009F144 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F948 8009F148 28001324 */  addiu      $s3, $zero, 0x28
/* 8F94C 8009F14C 18004300 */  mult       $v0, $v1
/* 8F950 8009F150 E0000624 */  addiu      $a2, $zero, 0xe0
/* 8F954 8009F154 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8F958 8009F158 04004A86 */  lh         $t2, 4($s2)
/* 8F95C 8009F15C 06004986 */  lh         $t1, 6($s2)
/* 8F960 8009F160 BC00A58F */  lw         $a1, 0xbc($sp)
/* 8F964 8009F164 2330D100 */  subu       $a2, $a2, $s1
/* 8F968 8009F168 1400B3AF */  sw         $s3, 0x14($sp)
/* 8F96C 8009F16C FFFF2226 */  addiu      $v0, $s1, -1
/* 8F970 8009F170 21584400 */  addu       $t3, $v0, $a0
/* 8F974 8009F174 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F978 8009F178 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8F97C 8009F17C 12180000 */  mflo       $v1
/* 8F980 8009F180 2128BD00 */  addu       $a1, $a1, $sp
/* 8F984 8009F184 1000ABAF */  sw         $t3, 0x10($sp)
/* 8F988 8009F188 18004600 */  mult       $v0, $a2
/* 8F98C 8009F18C 0C004886 */  lh         $t0, 0xc($s2)
/* 8F990 8009F190 2800A224 */  addiu      $v0, $a1, 0x28
/* 8F994 8009F194 2128C003 */  addu       $a1, $fp, $zero
/* 8F998 8009F198 0000478C */  lw         $a3, ($v0)
/* 8F99C 8009F19C FFFF0224 */  addiu      $v0, $zero, -1
/* 8F9A0 8009F1A0 1800A8AF */  sw         $t0, 0x18($sp)
/* 8F9A4 8009F1A4 7000A88F */  lw         $t0, 0x70($sp)
/* 8F9A8 8009F1A8 10006324 */  addiu      $v1, $v1, 0x10
/* 8F9AC 8009F1AC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8F9B0 8009F1B0 21382701 */  addu       $a3, $t1, $a3
/* 8F9B4 8009F1B4 21B00301 */  addu       $s6, $t0, $v1
/* 8F9B8 8009F1B8 12300000 */  mflo       $a2
/* 8F9BC 8009F1BC 1769010C */  jal        FUN_8005a45c
/* 8F9C0 8009F1C0 21304601 */   addu      $a2, $t2, $a2
/* 8F9C4 8009F1C4 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F9C8 8009F1C8 16004686 */  lh         $a2, 0x16($s2)
/* 8F9CC 8009F1CC 18004786 */  lh         $a3, 0x18($s2)
/* 8F9D0 8009F1D0 396D010C */  jal        FUN_8005b4e4
/* 8F9D4 8009F1D4 2128C003 */   addu      $a1, $fp, $zero
/* 8F9D8 8009F1D8 2128C003 */  addu       $a1, $fp, $zero
/* 8F9DC 8009F1DC 2130C002 */  addu       $a2, $s6, $zero
/* 8F9E0 8009F1E0 F400A48F */  lw         $a0, 0xf4($sp)
/* 8F9E4 8009F1E4 A3FF0724 */  addiu      $a3, $zero, -0x5d
/* 8F9E8 8009F1E8 1000B1AF */  sw         $s1, 0x10($sp)
/* 8F9EC 8009F1EC 976D010C */  jal        FUN_8005b65c
/* 8F9F0 8009F1F0 1400B3AF */   sw        $s3, 0x14($sp)
/* 8F9F4 8009F1F4 2128C003 */  addu       $a1, $fp, $zero
/* 8F9F8 8009F1F8 80000624 */  addiu      $a2, $zero, 0x80
/* 8F9FC 8009F1FC 80000724 */  addiu      $a3, $zero, 0x80
/* 8FA00 8009F200 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FA04 8009F204 80000224 */  addiu      $v0, $zero, 0x80
/* 8FA08 8009F208 EB6C010C */  jal        FUN_8005b3ac
/* 8FA0C 8009F20C 1000A2AF */   sw        $v0, 0x10($sp)
/* 8FA10 8009F210 0100DE27 */  addiu      $fp, $fp, 1
/* 8FA14 8009F214 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8FA18 8009F218 00000000 */  nop
/* 8FA1C 8009F21C 04004010 */  beqz       $v0, .L8009F230
/* 8FA20 8009F220 2188A002 */   addu      $s1, $s5, $zero
/* 8FA24 8009F224 7400A38F */  lw         $v1, 0x74($sp)
/* 8FA28 8009F228 00000000 */  nop
/* 8FA2C 8009F22C D0FF7124 */  addiu      $s1, $v1, -0x30
.L8009F230:
/* 8FA30 8009F230 02002106 */  bgez       $s1, .L8009F23C
/* 8FA34 8009F234 00000000 */   nop
/* 8FA38 8009F238 21880000 */  addu       $s1, $zero, $zero
.L8009F23C:
/* 8FA3C 8009F23C 6C00A48F */  lw         $a0, 0x6c($sp)
/* 8FA40 8009F240 00000000 */  nop
/* 8FA44 8009F244 05008010 */  beqz       $a0, .L8009F25C
/* 8FA48 8009F248 C100222A */   slti      $v0, $s1, 0xc1
/* 8FA4C 8009F24C 06004010 */  beqz       $v0, .L8009F268
/* 8FA50 8009F250 00000000 */   nop
/* 8FA54 8009F254 9F7C0208 */  j          .L8009F27C
/* 8FA58 8009F258 00000000 */   nop
.L8009F25C:
/* 8FA5C 8009F25C 2100222A */  slti       $v0, $s1, 0x21
/* 8FA60 8009F260 06004014 */  bnez       $v0, .L8009F27C
/* 8FA64 8009F264 00000000 */   nop
.L8009F268:
/* 8FA68 8009F268 6C00A58F */  lw         $a1, 0x6c($sp)
/* 8FA6C 8009F26C 00000000 */  nop
/* 8FA70 8009F270 0200A010 */  beqz       $a1, .L8009F27C
/* 8FA74 8009F274 20001124 */   addiu     $s1, $zero, 0x20
/* 8FA78 8009F278 C0001124 */  addiu      $s1, $zero, 0xc0
.L8009F27C:
/* 8FA7C 8009F27C 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8FA80 8009F280 23101100 */  negu       $v0, $s1
/* 8FA84 8009F284 18006200 */  mult       $v1, $v0
/* 8FA88 8009F288 BC00A48F */  lw         $a0, 0xbc($sp)
/* 8FA8C 8009F28C 06004586 */  lh         $a1, 6($s2)
/* 8FA90 8009F290 6C00A68F */  lw         $a2, 0x6c($sp)
/* 8FA94 8009F294 21209D00 */  addu       $a0, $a0, $sp
/* 8FA98 8009F298 28008324 */  addiu      $v1, $a0, 0x28
/* 8FA9C 8009F29C 23582602 */  subu       $t3, $s1, $a2
/* 8FAA0 8009F2A0 0000648C */  lw         $a0, ($v1)
/* 8FAA4 8009F2A4 04004386 */  lh         $v1, 4($s2)
/* 8FAA8 8009F2A8 2148A400 */  addu       $t1, $a1, $a0
/* 8FAAC 8009F2AC 12100000 */  mflo       $v0
/* 8FAB0 8009F2B0 C0004224 */  addiu      $v0, $v0, 0xc0
/* 8FAB4 8009F2B4 0A00C010 */  beqz       $a2, .L8009F2E0
/* 8FAB8 8009F2B8 21A06200 */   addu      $s4, $v1, $v0
/* 8FABC 8009F2BC A0FF0224 */  addiu      $v0, $zero, -0x60
/* 8FAC0 8009F2C0 23105100 */  subu       $v0, $v0, $s1
/* 8FAC4 8009F2C4 1800C200 */  mult       $a2, $v0
/* 8FAC8 8009F2C8 7000A48F */  lw         $a0, 0x70($sp)
/* 8FACC 8009F2CC 00000000 */  nop
/* 8FAD0 8009F2D0 30008324 */  addiu      $v1, $a0, 0x30
/* 8FAD4 8009F2D4 12100000 */  mflo       $v0
/* 8FAD8 8009F2D8 B97C0208 */  j          .L8009F2E4
/* 8FADC 8009F2DC 21B06200 */   addu      $s6, $v1, $v0
.L8009F2E0:
/* 8FAE0 8009F2E0 21B00002 */  addu       $s6, $s0, $zero
.L8009F2E4:
/* 8FAE4 8009F2E4 28001324 */  addiu      $s3, $zero, 0x28
/* 8FAE8 8009F2E8 2128C003 */  addu       $a1, $fp, $zero
/* 8FAEC 8009F2EC 21308002 */  addu       $a2, $s4, $zero
/* 8FAF0 8009F2F0 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FAF4 8009F2F4 21382001 */  addu       $a3, $t1, $zero
/* 8FAF8 8009F2F8 1000ABAF */  sw         $t3, 0x10($sp)
/* 8FAFC 8009F2FC 1400B3AF */  sw         $s3, 0x14($sp)
/* 8FB00 8009F300 0C004286 */  lh         $v0, 0xc($s2)
/* 8FB04 8009F304 FFFF1024 */  addiu      $s0, $zero, -1
/* 8FB08 8009F308 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 8FB0C 8009F30C 1769010C */  jal        FUN_8005a45c
/* 8FB10 8009F310 1800A2AF */   sw        $v0, 0x18($sp)
/* 8FB14 8009F314 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FB18 8009F318 16004686 */  lh         $a2, 0x16($s2)
/* 8FB1C 8009F31C 18004786 */  lh         $a3, 0x18($s2)
/* 8FB20 8009F320 396D010C */  jal        FUN_8005b4e4
/* 8FB24 8009F324 2128C003 */   addu      $a1, $fp, $zero
/* 8FB28 8009F328 2128C003 */  addu       $a1, $fp, $zero
/* 8FB2C 8009F32C 2130C002 */  addu       $a2, $s6, $zero
/* 8FB30 8009F330 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FB34 8009F334 A3FF0724 */  addiu      $a3, $zero, -0x5d
/* 8FB38 8009F338 1000B1AF */  sw         $s1, 0x10($sp)
/* 8FB3C 8009F33C 976D010C */  jal        FUN_8005b65c
/* 8FB40 8009F340 1400B3AF */   sw        $s3, 0x14($sp)
/* 8FB44 8009F344 2128C003 */  addu       $a1, $fp, $zero
/* 8FB48 8009F348 80000624 */  addiu      $a2, $zero, 0x80
/* 8FB4C 8009F34C 80000724 */  addiu      $a3, $zero, 0x80
/* 8FB50 8009F350 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FB54 8009F354 80001424 */  addiu      $s4, $zero, 0x80
/* 8FB58 8009F358 EB6C010C */  jal        FUN_8005b3ac
/* 8FB5C 8009F35C 1000B4AF */   sw        $s4, 0x10($sp)
/* 8FB60 8009F360 0180023C */  lui        $v0, %hi(D_8001689C)
/* 8FB64 8009F364 9C684324 */  addiu      $v1, $v0, %lo(D_8001689C)
/* 8FB68 8009F368 0100DE27 */  addiu      $fp, $fp, 1
/* 8FB6C 8009F36C 9C68448C */  lw         $a0, 0x689c($v0)
/* 8FB70 8009F370 0400658C */  lw         $a1, 4($v1)
/* 8FB74 8009F374 0800628C */  lw         $v0, 8($v1)
/* 8FB78 8009F378 0C00668C */  lw         $a2, 0xc($v1)
/* 8FB7C 8009F37C 1000678C */  lw         $a3, 0x10($v1)
/* 8FB80 8009F380 1400688C */  lw         $t0, 0x14($v1)
/* 8FB84 8009F384 2188E002 */  addu       $s1, $s7, $zero
/* 8FB88 8009F388 3400A6AF */  sw         $a2, 0x34($sp)
/* 8FB8C 8009F38C 1380063C */  lui        $a2, %hi(D_801280E0)
/* 8FB90 8009F390 2C00A5AF */  sw         $a1, 0x2c($sp)
/* 8FB94 8009F394 BC00A58F */  lw         $a1, 0xbc($sp)
/* 8FB98 8009F398 E080C624 */  addiu      $a2, $a2, %lo(D_801280E0)
/* 8FB9C 8009F39C 2800A4AF */  sw         $a0, 0x28($sp)
/* 8FBA0 8009F3A0 3000A2AF */  sw         $v0, 0x30($sp)
/* 8FBA4 8009F3A4 3800A7AF */  sw         $a3, 0x38($sp)
/* 8FBA8 8009F3A8 3C00A8AF */  sw         $t0, 0x3c($sp)
/* 8FBAC 8009F3AC 2128BD00 */  addu       $a1, $a1, $sp
/* 8FBB0 8009F3B0 2800A224 */  addiu      $v0, $a1, 0x28
/* 8FBB4 8009F3B4 0000438C */  lw         $v1, ($v0)
/* 8FBB8 8009F3B8 1380073C */  lui        $a3, %hi(D_801282E0)
/* 8FBBC 8009F3BC 21186600 */  addu       $v1, $v1, $a2
/* 8FBC0 8009F3C0 00006490 */  lbu        $a0, ($v1)
/* 8FBC4 8009F3C4 E082E724 */  addiu      $a3, $a3, %lo(D_801282E0)
/* 8FBC8 8009F3C8 C0100400 */  sll        $v0, $a0, 3
/* 8FBCC 8009F3CC 23104400 */  subu       $v0, $v0, $a0
/* 8FBD0 8009F3D0 80100200 */  sll        $v0, $v0, 2
/* 8FBD4 8009F3D4 02002106 */  bgez       $s1, .L8009F3E0
/* 8FBD8 8009F3D8 21904700 */   addu      $s2, $v0, $a3
/* 8FBDC 8009F3DC 21880000 */  addu       $s1, $zero, $zero
.L8009F3E0:
/* 8FBE0 8009F3E0 E900222A */  slti       $v0, $s1, 0xe9
/* 8FBE4 8009F3E4 02004014 */  bnez       $v0, .L8009F3F0
/* 8FBE8 8009F3E8 E4FF0224 */   addiu     $v0, $zero, -0x1c
/* 8FBEC 8009F3EC E8001124 */  addiu      $s1, $zero, 0xe8
.L8009F3F0:
/* 8FBF0 8009F3F0 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8FBF4 8009F3F4 23105100 */  subu       $v0, $v0, $s1
/* 8FBF8 8009F3F8 18006200 */  mult       $v1, $v0
/* 8FBFC 8009F3FC E8000624 */  addiu      $a2, $zero, 0xe8
/* 8FC00 8009F400 2330D100 */  subu       $a2, $a2, $s1
/* 8FC04 8009F404 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FC08 8009F408 12100000 */  mflo       $v0
/* 8FC0C 8009F40C 06004986 */  lh         $t1, 6($s2)
/* 8FC10 8009F410 0A005386 */  lh         $s3, 0xa($s2)
/* 8FC14 8009F414 18006600 */  mult       $v1, $a2
/* 8FC18 8009F418 04004886 */  lh         $t0, 4($s2)
/* 8FC1C 8009F41C 2128C003 */  addu       $a1, $fp, $zero
/* 8FC20 8009F420 1000B1AF */  sw         $s1, 0x10($sp)
/* 8FC24 8009F424 1400B3AF */  sw         $s3, 0x14($sp)
/* 8FC28 8009F428 0C004386 */  lh         $v1, 0xc($s2)
/* 8FC2C 8009F42C 21382001 */  addu       $a3, $t1, $zero
/* 8FC30 8009F430 1800A3AF */  sw         $v1, 0x18($sp)
/* 8FC34 8009F434 7000A38F */  lw         $v1, 0x70($sp)
/* 8FC38 8009F438 0E004224 */  addiu      $v0, $v0, 0xe
/* 8FC3C 8009F43C 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 8FC40 8009F440 21B06200 */  addu       $s6, $v1, $v0
/* 8FC44 8009F444 12300000 */  mflo       $a2
/* 8FC48 8009F448 1769010C */  jal        FUN_8005a45c
/* 8FC4C 8009F44C 21300601 */   addu      $a2, $t0, $a2
/* 8FC50 8009F450 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FC54 8009F454 16004686 */  lh         $a2, 0x16($s2)
/* 8FC58 8009F458 18004786 */  lh         $a3, 0x18($s2)
/* 8FC5C 8009F45C 396D010C */  jal        FUN_8005b4e4
/* 8FC60 8009F460 2128C003 */   addu      $a1, $fp, $zero
/* 8FC64 8009F464 2128C003 */  addu       $a1, $fp, $zero
/* 8FC68 8009F468 2130C002 */  addu       $a2, $s6, $zero
/* 8FC6C 8009F46C F400A48F */  lw         $a0, 0xf4($sp)
/* 8FC70 8009F470 CBFF0724 */  addiu      $a3, $zero, -0x35
/* 8FC74 8009F474 1000B1AF */  sw         $s1, 0x10($sp)
/* 8FC78 8009F478 976D010C */  jal        FUN_8005b65c
/* 8FC7C 8009F47C 1400B3AF */   sw        $s3, 0x14($sp)
/* 8FC80 8009F480 2128C003 */  addu       $a1, $fp, $zero
/* 8FC84 8009F484 80000624 */  addiu      $a2, $zero, 0x80
/* 8FC88 8009F488 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FC8C 8009F48C 80000724 */  addiu      $a3, $zero, 0x80
/* 8FC90 8009F490 607D0208 */  j          .L8009F580
/* 8FC94 8009F494 1000B4AF */   sw        $s4, 0x10($sp)
.L8009F498:
/* 8FC98 8009F498 7400A48F */  lw         $a0, 0x74($sp)
/* 8FC9C 8009F49C 00000000 */  nop
/* 8FCA0 8009F4A0 39008210 */  beq        $a0, $v0, .L8009F588
/* 8FCA4 8009F4A4 1380053C */   lui       $a1, %hi(D_801280E0)
/* 8FCA8 8009F4A8 E080A524 */  addiu      $a1, $a1, %lo(D_801280E0)
/* 8FCAC 8009F4AC 4400A390 */  lbu        $v1, 0x44($a1)
/* 8FCB0 8009F4B0 F2FF9124 */  addiu      $s1, $a0, -0xe
/* 8FCB4 8009F4B4 1380063C */  lui        $a2, %hi(D_801282E0)
/* 8FCB8 8009F4B8 E082C624 */  addiu      $a2, $a2, %lo(D_801282E0)
/* 8FCBC 8009F4BC C0100300 */  sll        $v0, $v1, 3
/* 8FCC0 8009F4C0 23104300 */  subu       $v0, $v0, $v1
/* 8FCC4 8009F4C4 80100200 */  sll        $v0, $v0, 2
/* 8FCC8 8009F4C8 02002106 */  bgez       $s1, .L8009F4D4
/* 8FCCC 8009F4CC 21904600 */   addu      $s2, $v0, $a2
/* 8FCD0 8009F4D0 21880000 */  addu       $s1, $zero, $zero
.L8009F4D4:
/* 8FCD4 8009F4D4 F100222A */  slti       $v0, $s1, 0xf1
/* 8FCD8 8009F4D8 02004014 */  bnez       $v0, .L8009F4E4
/* 8FCDC 8009F4DC ECFF0224 */   addiu     $v0, $zero, -0x14
/* 8FCE0 8009F4E0 F0001124 */  addiu      $s1, $zero, 0xf0
.L8009F4E4:
/* 8FCE4 8009F4E4 23105100 */  subu       $v0, $v0, $s1
/* 8FCE8 8009F4E8 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FCEC 8009F4EC 6C00A38F */  lw         $v1, 0x6c($sp)
/* 8FCF0 8009F4F0 04005486 */  lh         $s4, 4($s2)
/* 8FCF4 8009F4F4 06004986 */  lh         $t1, 6($s2)
/* 8FCF8 8009F4F8 18006200 */  mult       $v1, $v0
/* 8FCFC 8009F4FC 0A005386 */  lh         $s3, 0xa($s2)
/* 8FD00 8009F500 8000A88F */  lw         $t0, 0x80($sp)
/* 8FD04 8009F504 2128C003 */  addu       $a1, $fp, $zero
/* 8FD08 8009F508 1000B1AF */  sw         $s1, 0x10($sp)
/* 8FD0C 8009F50C 21308002 */  addu       $a2, $s4, $zero
/* 8FD10 8009F510 1400B3AF */  sw         $s3, 0x14($sp)
/* 8FD14 8009F514 0C004386 */  lh         $v1, 0xc($s2)
/* 8FD18 8009F518 21382001 */  addu       $a3, $t1, $zero
/* 8FD1C 8009F51C 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 8FD20 8009F520 1800A3AF */  sw         $v1, 0x18($sp)
/* 8FD24 8009F524 7000A38F */  lw         $v1, 0x70($sp)
/* 8FD28 8009F528 12100000 */  mflo       $v0
/* 8FD2C 8009F52C 0A004224 */  addiu      $v0, $v0, 0xa
/* 8FD30 8009F530 1769010C */  jal        FUN_8005a45c
/* 8FD34 8009F534 21B06200 */   addu      $s6, $v1, $v0
/* 8FD38 8009F538 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FD3C 8009F53C 16004686 */  lh         $a2, 0x16($s2)
/* 8FD40 8009F540 18004786 */  lh         $a3, 0x18($s2)
/* 8FD44 8009F544 396D010C */  jal        FUN_8005b4e4
/* 8FD48 8009F548 2128C003 */   addu      $a1, $fp, $zero
/* 8FD4C 8009F54C 2128C003 */  addu       $a1, $fp, $zero
/* 8FD50 8009F550 2130C002 */  addu       $a2, $s6, $zero
/* 8FD54 8009F554 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FD58 8009F558 96FF0724 */  addiu      $a3, $zero, -0x6a
/* 8FD5C 8009F55C 1000B1AF */  sw         $s1, 0x10($sp)
/* 8FD60 8009F560 976D010C */  jal        FUN_8005b65c
/* 8FD64 8009F564 1400B3AF */   sw        $s3, 0x14($sp)
/* 8FD68 8009F568 2128C003 */  addu       $a1, $fp, $zero
/* 8FD6C 8009F56C 80000624 */  addiu      $a2, $zero, 0x80
/* 8FD70 8009F570 80000724 */  addiu      $a3, $zero, 0x80
/* 8FD74 8009F574 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FD78 8009F578 80000224 */  addiu      $v0, $zero, 0x80
/* 8FD7C 8009F57C 1000A2AF */  sw         $v0, 0x10($sp)
.L8009F580:
/* 8FD80 8009F580 EB6C010C */  jal        FUN_8005b3ac
/* 8FD84 8009F584 0100DE27 */   addiu     $fp, $fp, 1
.L8009F588:
/* 8FD88 8009F588 0180043C */  lui        $a0, %hi(D_800168B4)
/* 8FD8C 8009F58C B4688224 */  addiu      $v0, $a0, %lo(D_800168B4)
/* 8FD90 8009F590 0180053C */  lui        $a1, %hi(D_800168C0)
/* 8FD94 8009F594 C068A324 */  addiu      $v1, $a1, %lo(D_800168C0)
/* 8FD98 8009F598 0180063C */  lui        $a2, %hi(D_800168CC)
/* 8FD9C 8009F59C CC68C424 */  addiu      $a0, $a2, %lo(D_800168CC)
/* 8FDA0 8009F5A0 0180073C */  lui        $a3, %hi(D_800168D8)
/* 8FDA4 8009F5A4 D868E524 */  addiu      $a1, $a3, %lo(D_800168D8)
/* 8FDA8 8009F5A8 0180083C */  lui        $t0, %hi(D_800168B4)
/* 8FDAC 8009F5AC B468068D */  lw         $a2, %lo(D_800168B4)($t0)
/* 8FDB0 8009F5B0 0400478C */  lw         $a3, 4($v0)
/* 8FDB4 8009F5B4 0800488C */  lw         $t0, 8($v0)
/* 8FDB8 8009F5B8 0180023C */  lui        $v0, %hi(D_800168C0)
/* 8FDBC 8009F5BC C068498C */  lw         $t1, %lo(D_800168C0)($v0)
/* 8FDC0 8009F5C0 0400628C */  lw         $v0, 4($v1)
/* 8FDC4 8009F5C4 08006A8C */  lw         $t2, 8($v1)
/* 8FDC8 8009F5C8 0180033C */  lui        $v1, %hi(D_800168CC)
/* 8FDCC 8009F5CC CC686B8C */  lw         $t3, %lo(D_800168CC)($v1)
/* 8FDD0 8009F5D0 0400838C */  lw         $v1, 4($a0)
/* 8FDD4 8009F5D4 08008C8C */  lw         $t4, 8($a0)
/* 8FDD8 8009F5D8 0180043C */  lui        $a0, %hi(D_800168D8)
/* 8FDDC 8009F5DC D8688D8C */  lw         $t5, %lo(D_800168D8)($a0)
/* 8FDE0 8009F5E0 0400A48C */  lw         $a0, 4($a1)
/* 8FDE4 8009F5E4 0800AE8C */  lw         $t6, 8($a1)
/* 8FDE8 8009F5E8 8000A58F */  lw         $a1, 0x80($sp)
/* 8FDEC 8009F5EC 2800A6AF */  sw         $a2, 0x28($sp)
/* 8FDF0 8009F5F0 FFFF0624 */  addiu      $a2, $zero, -1
/* 8FDF4 8009F5F4 2C00A7AF */  sw         $a3, 0x2c($sp)
/* 8FDF8 8009F5F8 3000A8AF */  sw         $t0, 0x30($sp)
/* 8FDFC 8009F5FC 3800A9AF */  sw         $t1, 0x38($sp)
/* 8FE00 8009F600 3C00A2AF */  sw         $v0, 0x3c($sp)
/* 8FE04 8009F604 4000AAAF */  sw         $t2, 0x40($sp)
/* 8FE08 8009F608 4800ABAF */  sw         $t3, 0x48($sp)
/* 8FE0C 8009F60C 4C00A3AF */  sw         $v1, 0x4c($sp)
/* 8FE10 8009F610 5000ACAF */  sw         $t4, 0x50($sp)
/* 8FE14 8009F614 5800ADAF */  sw         $t5, 0x58($sp)
/* 8FE18 8009F618 5C00A4AF */  sw         $a0, 0x5c($sp)
/* 8FE1C 8009F61C 0B00A610 */  beq        $a1, $a2, .L8009F64C
/* 8FE20 8009F620 6000AEAF */   sw        $t6, 0x60($sp)
/* 8FE24 8009F624 1380073C */  lui        $a3, %hi(D_801280E0)
/* 8FE28 8009F628 E080E724 */  addiu      $a3, $a3, %lo(D_801280E0)
/* 8FE2C 8009F62C 4100E390 */  lbu        $v1, 0x41($a3)
/* 8FE30 8009F630 1380083C */  lui        $t0, %hi(D_801282E0)
/* 8FE34 8009F634 E0820825 */  addiu      $t0, $t0, %lo(D_801282E0)
/* 8FE38 8009F638 C0100300 */  sll        $v0, $v1, 3
/* 8FE3C 8009F63C 23104300 */  subu       $v0, $v0, $v1
/* 8FE40 8009F640 80100200 */  sll        $v0, $v0, 2
/* 8FE44 8009F644 9D7D0208 */  j          .L8009F674
/* 8FE48 8009F648 21904800 */   addu      $s2, $v0, $t0
.L8009F64C:
/* 8FE4C 8009F64C 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8FE50 8009F650 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 8FE54 8009F654 72004390 */  lbu        $v1, 0x72($v0)
/* 8FE58 8009F658 00000000 */  nop
/* 8FE5C 8009F65C C0100300 */  sll        $v0, $v1, 3
/* 8FE60 8009F660 23104300 */  subu       $v0, $v0, $v1
/* 8FE64 8009F664 80100200 */  sll        $v0, $v0, 2
/* 8FE68 8009F668 1380033C */  lui        $v1, %hi(D_801282E0)
/* 8FE6C 8009F66C E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 8FE70 8009F670 21904300 */  addu       $s2, $v0, $v1
.L8009F674:
/* 8FE74 8009F674 FFFF0524 */  addiu      $a1, $zero, -1
/* 8FE78 8009F678 8000A48F */  lw         $a0, 0x80($sp)
/* 8FE7C 8009F67C 06004986 */  lh         $t1, 6($s2)
/* 8FE80 8009F680 02008514 */  bne        $a0, $a1, .L8009F68C
/* 8FE84 8009F684 6AFF0624 */   addiu     $a2, $zero, -0x96
/* 8FE88 8009F688 80002925 */  addiu      $t1, $t1, 0x80
.L8009F68C:
/* 8FE8C 8009F68C 21380000 */  addu       $a3, $zero, $zero
/* 8FE90 8009F690 7C00A6AF */  sw         $a2, 0x7c($sp)
/* 8FE94 8009F694 7800A68F */  lw         $a2, 0x78($sp)
/* 8FE98 8009F698 6C00A88F */  lw         $t0, 0x6c($sp)
/* 8FE9C 8009F69C 6C00A28F */  lw         $v0, 0x6c($sp)
/* 8FEA0 8009F6A0 40400800 */  sll        $t0, $t0, 1
/* 8FEA4 8009F6A4 01004224 */  addiu      $v0, $v0, 1
/* 8FEA8 8009F6A8 B800A8AF */  sw         $t0, 0xb8($sp)
/* 8FEAC 8009F6AC B000A2AF */  sw         $v0, 0xb0($sp)
.L8009F6B0:
/* 8FEB0 8009F6B0 FFFF0424 */  addiu      $a0, $zero, -1
/* 8FEB4 8009F6B4 04004286 */  lh         $v0, 4($s2)
/* 8FEB8 8009F6B8 8000A38F */  lw         $v1, 0x80($sp)
/* 8FEBC 8009F6BC 00000000 */  nop
/* 8FEC0 8009F6C0 02006410 */  beq        $v1, $a0, .L8009F6CC
/* 8FEC4 8009F6C4 FF005424 */   addiu     $s4, $v0, 0xff
/* 8FEC8 8009F6C8 C0005424 */  addiu      $s4, $v0, 0xc0
.L8009F6CC:
/* 8FECC 8009F6CC 80180700 */  sll        $v1, $a3, 2
/* 8FED0 8009F6D0 7000B68F */  lw         $s6, 0x70($sp)
/* 8FED4 8009F6D4 AC00A88F */  lw         $t0, 0xac($sp)
/* 8FED8 8009F6D8 7400B78F */  lw         $s7, 0x74($sp)
/* 8FEDC 8009F6DC 21280301 */  addu       $a1, $t0, $v1
/* 8FEE0 8009F6E0 0000A48C */  lw         $a0, ($a1)
/* 8FEE4 8009F6E4 21A8C000 */  addu       $s5, $a2, $zero
/* 8FEE8 8009F6E8 2A108600 */  slt        $v0, $a0, $a2
/* 8FEEC 8009F6EC 02004010 */  beqz       $v0, .L8009F6F8
/* 8FEF0 8009F6F0 B400A3AF */   sw        $v1, 0xb4($sp)
/* 8FEF4 8009F6F4 21A88000 */  addu       $s5, $a0, $zero
.L8009F6F8:
/* 8FEF8 8009F6F8 2330D500 */  subu       $a2, $a2, $s5
/* 8FEFC 8009F6FC 0100E724 */  addiu      $a3, $a3, 1
/* 8FF00 8009F700 2800B327 */  addiu      $s3, $sp, 0x28
/* 8FF04 8009F704 7C00A28F */  lw         $v0, 0x7c($sp)
/* 8FF08 8009F708 B400A38F */  lw         $v1, 0xb4($sp)
/* 8FF0C 8009F70C B800A48F */  lw         $a0, 0xb8($sp)
/* 8FF10 8009F710 4800B027 */  addiu      $s0, $sp, 0x48
/* 8FF14 8009F714 8C00A5AF */  sw         $a1, 0x8c($sp)
/* 8FF18 8009F718 02000524 */  addiu      $a1, $zero, 2
/* 8FF1C 8009F71C A400A6AF */  sw         $a2, 0xa4($sp)
/* 8FF20 8009F720 A800A7AF */  sw         $a3, 0xa8($sp)
/* 8FF24 8009F724 8400A5AF */  sw         $a1, 0x84($sp)
/* 8FF28 8009F728 21105500 */  addu       $v0, $v0, $s5
/* 8FF2C 8009F72C 9800A2AF */  sw         $v0, 0x98($sp)
/* 8FF30 8009F730 01000224 */  addiu      $v0, $zero, 1
/* 8FF34 8009F734 23104400 */  subu       $v0, $v0, $a0
/* 8FF38 8009F738 8800A3AF */  sw         $v1, 0x88($sp)
/* 8FF3C 8009F73C 9000A2AF */  sw         $v0, 0x90($sp)
.L8009F740:
/* 8FF40 8009F740 0000048E */  lw         $a0, ($s0)
/* 8FF44 8009F744 00000000 */  nop
/* 8FF48 8009F748 2A109700 */  slt        $v0, $a0, $s7
/* 8FF4C 8009F74C 02004010 */  beqz       $v0, .L8009F758
/* 8FF50 8009F750 2188E002 */   addu      $s1, $s7, $zero
/* 8FF54 8009F754 21888000 */  addu       $s1, $a0, $zero
.L8009F758:
/* 8FF58 8009F758 0000638E */  lw         $v1, ($s3)
/* 8FF5C 8009F75C 00000000 */  nop
/* 8FF60 8009F760 18007100 */  mult       $v1, $s1
/* 8FF64 8009F764 12180000 */  mflo       $v1
/* 8FF68 8009F768 00000000 */  nop
/* 8FF6C 8009F76C 00000000 */  nop
/* 8FF70 8009F770 1A006400 */  div        $zero, $v1, $a0
/* 8FF74 8009F774 12180000 */  mflo       $v1
/* 8FF78 8009F778 02008014 */  bnez       $a0, .L8009F784
/* 8FF7C 8009F77C 00000000 */   nop
/* 8FF80 8009F780 CD010000 */  break      0, 7
.L8009F784:
/* 8FF84 8009F784 8800A48F */   lw        $a0, 0x88($sp)
/* 8FF88 8009F788 00000000 */  nop
/* 8FF8C 8009F78C 21209D00 */  addu       $a0, $a0, $sp
/* 8FF90 8009F790 38008224 */  addiu      $v0, $a0, 0x38
/* 8FF94 8009F794 0000488C */  lw         $t0, ($v0)
/* 8FF98 8009F798 00000000 */  nop
/* 8FF9C 8009F79C 18001501 */  mult       $t0, $s5
/* 8FFA0 8009F7A0 8C00A48F */  lw         $a0, 0x8c($sp)
/* 8FFA4 8009F7A4 12400000 */  mflo       $t0
/* 8FFA8 8009F7A8 0000828C */  lw         $v0, ($a0)
/* 8FFAC 8009F7AC 00000000 */  nop
/* 8FFB0 8009F7B0 1A000201 */  div        $zero, $t0, $v0
/* 8FFB4 8009F7B4 1000A3AF */  sw         $v1, 0x10($sp)
/* 8FFB8 8009F7B8 12400000 */  mflo       $t0
/* 8FFBC 8009F7BC 02004014 */  bnez       $v0, .L8009F7C8
/* 8FFC0 8009F7C0 00000000 */   nop
/* 8FFC4 8009F7C4 CD010000 */  break      0, 7
.L8009F7C8:
/* 8FFC8 8009F7C8 1400A8AF */   sw        $t0, 0x14($sp)
/* 8FFCC 8009F7CC 0C004286 */  lh         $v0, 0xc($s2)
/* 8FFD0 8009F7D0 00000000 */  nop
/* 8FFD4 8009F7D4 1800A2AF */  sw         $v0, 0x18($sp)
/* 8FFD8 8009F7D8 9000A28F */  lw         $v0, 0x90($sp)
/* 8FFDC 8009F7DC 2128C003 */  addu       $a1, $fp, $zero
/* 8FFE0 8009F7E0 18002202 */  mult       $s1, $v0
/* 8FFE4 8009F7E4 21308002 */  addu       $a2, $s4, $zero
/* 8FFE8 8009F7E8 21382001 */  addu       $a3, $t1, $zero
/* 8FFEC 8009F7EC 23B8F102 */  subu       $s7, $s7, $s1
/* 8FFF0 8009F7F0 04001026 */  addiu      $s0, $s0, 4
/* 8FFF4 8009F7F4 F400A48F */  lw         $a0, 0xf4($sp)
/* 8FFF8 8009F7F8 8400A38F */  lw         $v1, 0x84($sp)
/* 8FFFC 8009F7FC FFFF0824 */  addiu      $t0, $zero, -1
/* 90000 8009F800 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 90004 8009F804 C000A9AF */  sw         $t1, 0xc0($sp)
/* 90008 8009F808 FFFF6324 */  addiu      $v1, $v1, -1
/* 9000C 8009F80C 8400A3AF */  sw         $v1, 0x84($sp)
/* 90010 8009F810 12100000 */  mflo       $v0
/* 90014 8009F814 1769010C */  jal        FUN_8005a45c
/* 90018 8009F818 9400A2AF */   sw        $v0, 0x94($sp)
/* 9001C 8009F81C F400A48F */  lw         $a0, 0xf4($sp)
/* 90020 8009F820 16004686 */  lh         $a2, 0x16($s2)
/* 90024 8009F824 18004786 */  lh         $a3, 0x18($s2)
/* 90028 8009F828 396D010C */  jal        FUN_8005b4e4
/* 9002C 8009F82C 2128C003 */   addu      $a1, $fp, $zero
/* 90030 8009F830 2128C003 */  addu       $a1, $fp, $zero
/* 90034 8009F834 F400A48F */  lw         $a0, 0xf4($sp)
/* 90038 8009F838 7C00A78F */  lw         $a3, 0x7c($sp)
/* 9003C 8009F83C 9400A38F */  lw         $v1, 0x94($sp)
/* 90040 8009F840 2130C002 */  addu       $a2, $s6, $zero
/* 90044 8009F844 1400B5AF */  sw         $s5, 0x14($sp)
/* 90048 8009F848 976D010C */  jal        FUN_8005b65c
/* 9004C 8009F84C 1000A3AF */   sw        $v1, 0x10($sp)
/* 90050 8009F850 2128C003 */  addu       $a1, $fp, $zero
/* 90054 8009F854 80000624 */  addiu      $a2, $zero, 0x80
/* 90058 8009F858 80000724 */  addiu      $a3, $zero, 0x80
/* 9005C 8009F85C F400A48F */  lw         $a0, 0xf4($sp)
/* 90060 8009F860 80000224 */  addiu      $v0, $zero, 0x80
/* 90064 8009F864 EB6C010C */  jal        FUN_8005b3ac
/* 90068 8009F868 1000A2AF */   sw        $v0, 0x10($sp)
/* 9006C 8009F86C 0100DE27 */  addiu      $fp, $fp, 1
/* 90070 8009F870 0000628E */  lw         $v0, ($s3)
/* 90074 8009F874 04007326 */  addiu      $s3, $s3, 4
/* 90078 8009F878 9400A48F */  lw         $a0, 0x94($sp)
/* 9007C 8009F87C C000A98F */  lw         $t1, 0xc0($sp)
/* 90080 8009F880 8400A58F */  lw         $a1, 0x84($sp)
/* 90084 8009F884 21B0C402 */  addu       $s6, $s6, $a0
/* 90088 8009F888 ADFFA104 */  bgez       $a1, .L8009F740
/* 9008C 8009F88C 21A08202 */   addu      $s4, $s4, $v0
/* 90090 8009F890 B400A78F */  lw         $a3, 0xb4($sp)
/* 90094 8009F894 9800A68F */  lw         $a2, 0x98($sp)
/* 90098 8009F898 2138FD00 */  addu       $a3, $a3, $sp
/* 9009C 8009F89C 3800E224 */  addiu      $v0, $a3, 0x38
/* 900A0 8009F8A0 7C00A6AF */  sw         $a2, 0x7c($sp)
/* 900A4 8009F8A4 A400A68F */  lw         $a2, 0xa4($sp)
/* 900A8 8009F8A8 0000438C */  lw         $v1, ($v0)
/* 900AC 8009F8AC A800A78F */  lw         $a3, 0xa8($sp)
/* 900B0 8009F8B0 00000000 */  nop
/* 900B4 8009F8B4 0300E228 */  slti       $v0, $a3, 3
/* 900B8 8009F8B8 7DFF4014 */  bnez       $v0, .L8009F6B0
/* 900BC 8009F8BC 21482301 */   addu      $t1, $t1, $v1
/* 900C0 8009F8C0 1380083C */  lui        $t0, %hi(D_801280E0)
/* 900C4 8009F8C4 E0800825 */  addiu      $t0, $t0, %lo(D_801280E0)
/* 900C8 8009F8C8 59000291 */  lbu        $v0, 0x59($t0)
/* 900CC 8009F8CC 00000000 */  nop
/* 900D0 8009F8D0 C0180200 */  sll        $v1, $v0, 3
/* 900D4 8009F8D4 23186200 */  subu       $v1, $v1, $v0
/* 900D8 8009F8D8 80180300 */  sll        $v1, $v1, 2
/* 900DC 8009F8DC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 900E0 8009F8E0 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 900E4 8009F8E4 21886200 */  addu       $s1, $v1, $v0
/* 900E8 8009F8E8 6800A38F */  lw         $v1, 0x68($sp)
/* 900EC 8009F8EC 00100224 */  addiu      $v0, $zero, 0x1000
/* 900F0 8009F8F0 25006210 */  beq        $v1, $v0, .L8009F988
/* 900F4 8009F8F4 FF000524 */   addiu     $a1, $zero, 0xff
/* 900F8 8009F8F8 80000624 */  addiu      $a2, $zero, 0x80
/* 900FC 8009F8FC C8FF0724 */  addiu      $a3, $zero, -0x38
/* 90100 8009F900 60FF0224 */  addiu      $v0, $zero, -0xa0
/* 90104 8009F904 F000A88F */  lw         $t0, 0xf0($sp)
/* 90108 8009F908 50001224 */  addiu      $s2, $zero, 0x50
/* 9010C 8009F90C 2800048D */  lw         $a0, 0x28($t0)
/* 90110 8009F910 10000324 */  addiu      $v1, $zero, 0x10
/* 90114 8009F914 1000A2AF */  sw         $v0, 0x10($sp)
/* 90118 8009F918 08010224 */  addiu      $v0, $zero, 0x108
/* 9011C 8009F91C 1800A2AF */  sw         $v0, 0x18($sp)
/* 90120 8009F920 70000224 */  addiu      $v0, $zero, 0x70
/* 90124 8009F924 1400B1AF */  sw         $s1, 0x14($sp)
/* 90128 8009F928 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 9012C 8009F92C 2000A2AF */  sw         $v0, 0x20($sp)
/* 90130 8009F930 3DAD010C */  jal        FUN_8006b4f4
/* 90134 8009F934 2400A3AF */   sw        $v1, 0x24($sp)
/* 90138 8009F938 21204000 */  addu       $a0, $v0, $zero
/* 9013C 8009F93C FF000524 */  addiu      $a1, $zero, 0xff
/* 90140 8009F940 80000624 */  addiu      $a2, $zero, 0x80
/* 90144 8009F944 D8FFC726 */  addiu      $a3, $s6, -0x28
/* 90148 8009F948 F000A38F */  lw         $v1, 0xf0($sp)
/* 9014C 8009F94C 6AFF0824 */  addiu      $t0, $zero, -0x96
/* 90150 8009F950 280062AC */  sw         $v0, 0x28($v1)
/* 90154 8009F954 1801C226 */  addiu      $v0, $s6, 0x118
/* 90158 8009F958 5A000324 */  addiu      $v1, $zero, 0x5a
/* 9015C 8009F95C 1800A2AF */  sw         $v0, 0x18($sp)
/* 90160 8009F960 10010224 */  addiu      $v0, $zero, 0x110
/* 90164 8009F964 1000A8AF */  sw         $t0, 0x10($sp)
/* 90168 8009F968 1400B1AF */  sw         $s1, 0x14($sp)
/* 9016C 8009F96C 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 90170 8009F970 2000B2AF */  sw         $s2, 0x20($sp)
/* 90174 8009F974 3DAD010C */  jal        FUN_8006b4f4
/* 90178 8009F978 2400A2AF */   sw        $v0, 0x24($sp)
/* 9017C 8009F97C F000A38F */  lw         $v1, 0xf0($sp)
/* 90180 8009F980 00000000 */  nop
/* 90184 8009F984 280062AC */  sw         $v0, 0x28($v1)
.L8009F988:
/* 90188 8009F988 9C00A48F */  lw         $a0, 0x9c($sp)
/* 9018C 8009F98C 00000000 */  nop
/* 90190 8009F990 19008010 */  beqz       $a0, .L8009F9F8
/* 90194 8009F994 FF000524 */   addiu     $a1, $zero, 0xff
/* 90198 8009F998 80000624 */  addiu      $a2, $zero, 0x80
/* 9019C 8009F99C F000A78F */  lw         $a3, 0xf0($sp)
/* 901A0 8009F9A0 6C00A88F */  lw         $t0, 0x6c($sp)
/* 901A4 8009F9A4 7000A38F */  lw         $v1, 0x70($sp)
/* 901A8 8009F9A8 00110800 */  sll        $v0, $t0, 4
/* 901AC 8009F9AC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 901B0 8009F9B0 21106200 */  addu       $v0, $v1, $v0
/* 901B4 8009F9B4 2800E48C */  lw         $a0, 0x28($a3)
/* 901B8 8009F9B8 21384000 */  addu       $a3, $v0, $zero
/* 901BC 8009F9BC 6AFF0824 */  addiu      $t0, $zero, -0x96
/* 901C0 8009F9C0 40014224 */  addiu      $v0, $v0, 0x140
/* 901C4 8009F9C4 5A000324 */  addiu      $v1, $zero, 0x5a
/* 901C8 8009F9C8 1800A2AF */  sw         $v0, 0x18($sp)
/* 901CC 8009F9CC 10000224 */  addiu      $v0, $zero, 0x10
/* 901D0 8009F9D0 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 901D4 8009F9D4 10010324 */  addiu      $v1, $zero, 0x110
/* 901D8 8009F9D8 1000A8AF */  sw         $t0, 0x10($sp)
/* 901DC 8009F9DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 901E0 8009F9E0 2000A2AF */  sw         $v0, 0x20($sp)
/* 901E4 8009F9E4 3DAD010C */  jal        FUN_8006b4f4
/* 901E8 8009F9E8 2400A3AF */   sw        $v1, 0x24($sp)
/* 901EC 8009F9EC F000A38F */  lw         $v1, 0xf0($sp)
/* 901F0 8009F9F0 00000000 */  nop
/* 901F4 8009F9F4 280062AC */  sw         $v0, 0x28($v1)
.L8009F9F8:
/* 901F8 8009F9F8 A000A48F */  lw         $a0, 0xa0($sp)
/* 901FC 8009F9FC 00000000 */  nop
/* 90200 8009FA00 15008014 */  bnez       $a0, .L8009FA58
/* 90204 8009FA04 FF000524 */   addiu     $a1, $zero, 0xff
/* 90208 8009FA08 F000A78F */  lw         $a3, 0xf0($sp)
/* 9020C 8009FA0C 9800A88F */  lw         $t0, 0x98($sp)
/* 90210 8009FA10 2800E48C */  lw         $a0, 0x28($a3)
/* 90214 8009FA14 7000A78F */  lw         $a3, 0x70($sp)
/* 90218 8009FA18 80000624 */  addiu      $a2, $zero, 0x80
/* 9021C 8009FA1C 1000A8AF */  sw         $t0, 0x10($sp)
/* 90220 8009FA20 1400B1AF */  sw         $s1, 0x14($sp)
/* 90224 8009FA24 2118E000 */  addu       $v1, $a3, $zero
/* 90228 8009FA28 40016224 */  addiu      $v0, $v1, 0x140
/* 9022C 8009FA2C F0000325 */  addiu      $v1, $t0, 0xf0
/* 90230 8009FA30 1800A2AF */  sw         $v0, 0x18($sp)
/* 90234 8009FA34 10000224 */  addiu      $v0, $zero, 0x10
/* 90238 8009FA38 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 9023C 8009FA3C 10010324 */  addiu      $v1, $zero, 0x110
/* 90240 8009FA40 2000A2AF */  sw         $v0, 0x20($sp)
/* 90244 8009FA44 3DAD010C */  jal        FUN_8006b4f4
/* 90248 8009FA48 2400A3AF */   sw        $v1, 0x24($sp)
/* 9024C 8009FA4C F000A48F */  lw         $a0, 0xf0($sp)
/* 90250 8009FA50 00000000 */  nop
/* 90254 8009FA54 280082AC */  sw         $v0, 0x28($a0)
.L8009FA58:
/* 90258 8009FA58 B000A58F */  lw         $a1, 0xb0($sp)
/* 9025C 8009FA5C 00000000 */  nop
/* 90260 8009FA60 0200A228 */  slti       $v0, $a1, 2
/* 90264 8009FA64 B8FB4014 */  bnez       $v0, .L8009E948
/* 90268 8009FA68 6C00A5AF */   sw        $a1, 0x6c($sp)
/* 9026C 8009FA6C 2110C003 */  addu       $v0, $fp, $zero
/* 90270 8009FA70 EC00BF8F */  lw         $ra, 0xec($sp)
/* 90274 8009FA74 E800BE8F */  lw         $fp, 0xe8($sp)
/* 90278 8009FA78 E400B78F */  lw         $s7, 0xe4($sp)
/* 9027C 8009FA7C E000B68F */  lw         $s6, 0xe0($sp)
/* 90280 8009FA80 DC00B58F */  lw         $s5, 0xdc($sp)
/* 90284 8009FA84 D800B48F */  lw         $s4, 0xd8($sp)
/* 90288 8009FA88 D400B38F */  lw         $s3, 0xd4($sp)
/* 9028C 8009FA8C D000B28F */  lw         $s2, 0xd0($sp)
/* 90290 8009FA90 CC00B18F */  lw         $s1, 0xcc($sp)
/* 90294 8009FA94 C800B08F */  lw         $s0, 0xc8($sp)
/* 90298 8009FA98 0800E003 */  jr         $ra
/* 9029C 8009FA9C F000BD27 */   addiu     $sp, $sp, 0xf0

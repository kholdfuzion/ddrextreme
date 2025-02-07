.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a4d8c
/* 9558C 800A4D8C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 95590 800A4D90 21200000 */  addu       $a0, $zero, $zero
/* 95594 800A4D94 7400BFAF */  sw         $ra, 0x74($sp)
/* 95598 800A4D98 7000BEAF */  sw         $fp, 0x70($sp)
/* 9559C 800A4D9C 6C00B7AF */  sw         $s7, 0x6c($sp)
/* 955A0 800A4DA0 6800B6AF */  sw         $s6, 0x68($sp)
/* 955A4 800A4DA4 6400B5AF */  sw         $s5, 0x64($sp)
/* 955A8 800A4DA8 6000B4AF */  sw         $s4, 0x60($sp)
/* 955AC 800A4DAC 5C00B3AF */  sw         $s3, 0x5c($sp)
/* 955B0 800A4DB0 5800B2AF */  sw         $s2, 0x58($sp)
/* 955B4 800A4DB4 5400B1AF */  sw         $s1, 0x54($sp)
/* 955B8 800A4DB8 6894020C */  jal        FUN_800a51a0
/* 955BC 800A4DBC 5000B0AF */   sw        $s0, 0x50($sp)
/* 955C0 800A4DC0 0180023C */  lui        $v0, %hi(D_80016AC8)
/* 955C4 800A4DC4 C86A5424 */  addiu      $s4, $v0, %lo(D_80016AC8)
/* 955C8 800A4DC8 0F801E3C */  lui        $fp, %hi(D_800F02D4)
/* 955CC 800A4DCC D402DE27 */  addiu      $fp, $fp, %lo(D_800F02D4)
/* 955D0 800A4DD0 4800A0AF */  sw         $zero, 0x48($sp)
/* 955D4 800A4DD4 4C00A0AF */  sw         $zero, 0x4c($sp)
/* 955D8 800A4DD8 21900000 */  addu       $s2, $zero, $zero
.L800A4DDC:
/* 955DC 800A4DDC 21300000 */  addu       $a2, $zero, $zero
.L800A4DE0:
/* 955E0 800A4DE0 80100600 */  sll        $v0, $a2, 2
/* 955E4 800A4DE4 21104600 */  addu       $v0, $v0, $a2
/* 955E8 800A4DE8 C0100200 */  sll        $v0, $v0, 3
/* 955EC 800A4DEC 15004016 */  bnez       $s2, .L800A4E44
/* 955F0 800A4DF0 2180C203 */   addu      $s0, $fp, $v0
/* 955F4 800A4DF4 21780000 */  addu       $t7, $zero, $zero
/* 955F8 800A4DF8 21A80000 */  addu       $s5, $zero, $zero
/* 955FC 800A4DFC 01001624 */  addiu      $s6, $zero, 1
/* 95600 800A4E00 0100D124 */  addiu      $s1, $a2, 1
/* 95604 800A4E04 1E000526 */  addiu      $a1, $s0, 0x1e
/* 95608 800A4E08 FF000624 */  addiu      $a2, $zero, 0xff
/* 9560C 800A4E0C 0E000426 */  addiu      $a0, $s0, 0xe
/* 95610 800A4E10 FFFF0224 */  addiu      $v0, $zero, -1
/* 95614 800A4E14 06000324 */  addiu      $v1, $zero, 6
/* 95618 800A4E18 040002A6 */  sh         $v0, 4($s0)
/* 9561C 800A4E1C 060003A6 */  sh         $v1, 6($s0)
.L800A4E20:
/* 95620 800A4E20 000080A4 */  sh         $zero, ($a0)
/* 95624 800A4E24 02008424 */  addiu      $a0, $a0, 2
/* 95628 800A4E28 2118AF00 */  addu       $v1, $a1, $t7
/* 9562C 800A4E2C 0100EF25 */  addiu      $t7, $t7, 1
/* 95630 800A4E30 0800E229 */  slti       $v0, $t7, 8
/* 95634 800A4E34 FAFF4014 */  bnez       $v0, .L800A4E20
/* 95638 800A4E38 000066A0 */   sb        $a2, ($v1)
/* 9563C 800A4E3C E0930208 */  j          .L800A4F80
/* 95640 800A4E40 6666043C */   lui       $a0, 0x6666
.L800A4E44:
/* 95644 800A4E44 06000224 */  addiu      $v0, $zero, 6
/* 95648 800A4E48 13004216 */  bne        $s2, $v0, .L800A4E98
/* 9564C 800A4E4C 21780000 */   addu      $t7, $zero, $zero
/* 95650 800A4E50 0C001524 */  addiu      $s5, $zero, 0xc
/* 95654 800A4E54 07001624 */  addiu      $s6, $zero, 7
/* 95658 800A4E58 0100D124 */  addiu      $s1, $a2, 1
/* 9565C 800A4E5C 1E000526 */  addiu      $a1, $s0, 0x1e
/* 95660 800A4E60 FF000624 */  addiu      $a2, $zero, 0xff
/* 95664 800A4E64 0E000426 */  addiu      $a0, $s0, 0xe
/* 95668 800A4E68 FEFF0224 */  addiu      $v0, $zero, -2
/* 9566C 800A4E6C 040002A6 */  sh         $v0, 4($s0)
/* 95670 800A4E70 060000A6 */  sh         $zero, 6($s0)
.L800A4E74:
/* 95674 800A4E74 000080A4 */  sh         $zero, ($a0)
/* 95678 800A4E78 02008424 */  addiu      $a0, $a0, 2
/* 9567C 800A4E7C 2118AF00 */  addu       $v1, $a1, $t7
/* 95680 800A4E80 0100EF25 */  addiu      $t7, $t7, 1
/* 95684 800A4E84 0800E229 */  slti       $v0, $t7, 8
/* 95688 800A4E88 FAFF4014 */  bnez       $v0, .L800A4E74
/* 9568C 800A4E8C 000066A0 */   sb        $a2, ($v1)
/* 95690 800A4E90 E0930208 */  j          .L800A4F80
/* 95694 800A4E94 6666043C */   lui       $a0, 0x6666
.L800A4E98:
/* 95698 800A4E98 40A81200 */  sll        $s5, $s2, 1
/* 9569C 800A4E9C 01005626 */  addiu      $s6, $s2, 1
/* 956A0 800A4EA0 0100D124 */  addiu      $s1, $a2, 1
/* 956A4 800A4EA4 2118B202 */  addu       $v1, $s5, $s2
/* 956A8 800A4EA8 80180300 */  sll        $v1, $v1, 2
/* 956AC 800A4EAC 0F80023C */  lui        $v0, %hi(D_800EC654)
/* 956B0 800A4EB0 54C64224 */  addiu      $v0, $v0, %lo(D_800EC654)
/* 956B4 800A4EB4 21986200 */  addu       $s3, $v1, $v0
/* 956B8 800A4EB8 FF001924 */  addiu      $t9, $zero, 0xff
/* 956BC 800A4EBC 1E000E26 */  addiu      $t6, $s0, 0x1e
/* 956C0 800A4EC0 0E000D26 */  addiu      $t5, $s0, 0xe
/* 956C4 800A4EC4 1800AC27 */  addiu      $t4, $sp, 0x18
/* 956C8 800A4EC8 1000AB27 */  addiu      $t3, $sp, 0x10
/* 956CC 800A4ECC 01001724 */  addiu      $s7, $zero, 1
/* 956D0 800A4ED0 2800B827 */  addiu      $t8, $sp, 0x28
/* 956D4 800A4ED4 0180023C */  lui        $v0, %hi(D_80016AC8)
/* 956D8 800A4ED8 C86A438C */  lw         $v1, %lo(D_80016AC8)($v0)
/* 956DC 800A4EDC 0400848E */  lw         $a0, 4($s4)
/* 956E0 800A4EE0 0800858E */  lw         $a1, 8($s4)
/* 956E4 800A4EE4 0C00868E */  lw         $a2, 0xc($s4)
/* 956E8 800A4EE8 1000878E */  lw         $a3, 0x10($s4)
/* 956EC 800A4EEC 1400888E */  lw         $t0, 0x14($s4)
/* 956F0 800A4EF0 1800898E */  lw         $t1, 0x18($s4)
/* 956F4 800A4EF4 1C008A8E */  lw         $t2, 0x1c($s4)
/* 956F8 800A4EF8 FFFF0224 */  addiu      $v0, $zero, -1
/* 956FC 800A4EFC 060002A6 */  sh         $v0, 6($s0)
/* 95700 800A4F00 2800A3AF */  sw         $v1, 0x28($sp)
/* 95704 800A4F04 2C00A4AF */  sw         $a0, 0x2c($sp)
/* 95708 800A4F08 3000A5AF */  sw         $a1, 0x30($sp)
/* 9570C 800A4F0C 3400A6AF */  sw         $a2, 0x34($sp)
/* 95710 800A4F10 3800A7AF */  sw         $a3, 0x38($sp)
/* 95714 800A4F14 3C00A8AF */  sw         $t0, 0x3c($sp)
/* 95718 800A4F18 4000A9AF */  sw         $t1, 0x40($sp)
/* 9571C 800A4F1C 4400AAAF */  sw         $t2, 0x44($sp)
.L800A4F20:
/* 95720 800A4F20 0000638E */  lw         $v1, ($s3)
/* 95724 800A4F24 0000028F */  lw         $v0, ($t8)
/* 95728 800A4F28 00000000 */  nop
/* 9572C 800A4F2C 24186200 */  and        $v1, $v1, $v0
/* 95730 800A4F30 03006010 */  beqz       $v1, .L800A4F40
/* 95734 800A4F34 00000000 */   nop
/* 95738 800A4F38 D1930208 */  j          .L800A4F44
/* 9573C 800A4F3C 000077A1 */   sb        $s7, ($t3)
.L800A4F40:
/* 95740 800A4F40 000060A1 */  sb         $zero, ($t3)
.L800A4F44:
/* 95744 800A4F44 000080A5 */  sh         $zero, ($t4)
/* 95748 800A4F48 0000A0A5 */  sh         $zero, ($t5)
/* 9574C 800A4F4C 0000D9A1 */  sb         $t9, ($t6)
/* 95750 800A4F50 0100CE25 */  addiu      $t6, $t6, 1
/* 95754 800A4F54 0200AD25 */  addiu      $t5, $t5, 2
/* 95758 800A4F58 02008C25 */  addiu      $t4, $t4, 2
/* 9575C 800A4F5C 01006B25 */  addiu      $t3, $t3, 1
/* 95760 800A4F60 0100EF25 */  addiu      $t7, $t7, 1
/* 95764 800A4F64 0800E229 */  slti       $v0, $t7, 8
/* 95768 800A4F68 EDFF4014 */  bnez       $v0, .L800A4F20
/* 9576C 800A4F6C 04001827 */   addiu     $t8, $t8, 4
/* 95770 800A4F70 6894020C */  jal        FUN_800a51a0
/* 95774 800A4F74 1000A427 */   addiu     $a0, $sp, 0x10
/* 95778 800A4F78 040002A6 */  sh         $v0, 4($s0)
/* 9577C 800A4F7C 6666043C */  lui        $a0, 0x6666
.L800A4F80:
/* 95780 800A4F80 0F80023C */  lui        $v0, %hi(D_800EC650)
/* 95784 800A4F84 50C64324 */  addiu      $v1, $v0, %lo(D_800EC650)
/* 95788 800A4F88 2110B202 */  addu       $v0, $s5, $s2
/* 9578C 800A4F8C 80100200 */  sll        $v0, $v0, 2
/* 95790 800A4F90 21104300 */  addu       $v0, $v0, $v1
/* 95794 800A4F94 0000458C */  lw         $a1, ($v0)
/* 95798 800A4F98 67668434 */  ori        $a0, $a0, 0x6667
/* 9579C 800A4F9C 031A0500 */  sra        $v1, $a1, 8
/* 957A0 800A4FA0 C0100300 */  sll        $v0, $v1, 3
/* 957A4 800A4FA4 23104300 */  subu       $v0, $v0, $v1
/* 957A8 800A4FA8 40110200 */  sll        $v0, $v0, 5
/* 957AC 800A4FAC 21104300 */  addu       $v0, $v0, $v1
/* 957B0 800A4FB0 00110200 */  sll        $v0, $v0, 4
/* 957B4 800A4FB4 18004400 */  mult       $v0, $a0
/* 957B8 800A4FB8 2190C002 */  addu       $s2, $s6, $zero
/* 957BC 800A4FBC 21302002 */  addu       $a2, $s1, $zero
/* 957C0 800A4FC0 007D0324 */  addiu      $v1, $zero, 0x7d00
/* 957C4 800A4FC4 C3170200 */  sra        $v0, $v0, 0x1f
/* 957C8 800A4FC8 0A0003A6 */  sh         $v1, 0xa($s0)
/* 957CC 800A4FCC 000005AE */  sw         $a1, ($s0)
/* 957D0 800A4FD0 10200000 */  mfhi       $a0
/* 957D4 800A4FD4 C3210400 */  sra        $a0, $a0, 7
/* 957D8 800A4FD8 23208200 */  subu       $a0, $a0, $v0
/* 957DC 800A4FDC 0700422A */  slti       $v0, $s2, 7
/* 957E0 800A4FE0 7FFF4014 */  bnez       $v0, .L800A4DE0
/* 957E4 800A4FE4 080004A6 */   sh        $a0, 8($s0)
/* 957E8 800A4FE8 FFFF0724 */  addiu      $a3, $zero, -1
/* 957EC 800A4FEC 1900201A */  blez       $s1, .L800A5054
/* 957F0 800A4FF0 21280000 */   addu      $a1, $zero, $zero
/* 957F4 800A4FF4 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 957F8 800A4FF8 D4024624 */  addiu      $a2, $v0, %lo(D_800F02D4)
/* 957FC 800A4FFC FFFF0824 */  addiu      $t0, $zero, -1
/* 95800 800A5000 4C00A28F */  lw         $v0, 0x4c($sp)
/* 95804 800A5004 4800A48F */  lw         $a0, 0x48($sp)
/* 95808 800A5008 80180200 */  sll        $v1, $v0, 2
/* 9580C 800A500C 21186600 */  addu       $v1, $v1, $a2
.L800A5010:
/* 95810 800A5010 08006284 */  lh         $v0, 8($v1)
/* 95814 800A5014 00000000 */  nop
/* 95818 800A5018 0A004004 */  bltz       $v0, .L800A5044
/* 9581C 800A501C 060068A4 */   sh        $t0, 6($v1)
/* 95820 800A5020 0700E004 */  bltz       $a3, .L800A5040
/* 95824 800A5024 060060A4 */   sh        $zero, 6($v1)
/* 95828 800A5028 80100700 */  sll        $v0, $a3, 2
/* 9582C 800A502C 21104700 */  addu       $v0, $v0, $a3
/* 95830 800A5030 C0100200 */  sll        $v0, $v0, 3
/* 95834 800A5034 21104400 */  addu       $v0, $v0, $a0
/* 95838 800A5038 21104600 */  addu       $v0, $v0, $a2
/* 9583C 800A503C 060045A4 */  sh         $a1, 6($v0)
.L800A5040:
/* 95840 800A5040 2138A000 */  addu       $a3, $a1, $zero
.L800A5044:
/* 95844 800A5044 0100A524 */  addiu      $a1, $a1, 1
/* 95848 800A5048 2A10B100 */  slt        $v0, $a1, $s1
/* 9584C 800A504C F0FF4014 */  bnez       $v0, .L800A5010
/* 95850 800A5050 28006324 */   addiu     $v1, $v1, 0x28
.L800A5054:
/* 95854 800A5054 0100033C */  lui        $v1, 1
/* 95858 800A5058 7C426334 */  ori        $v1, $v1, 0x427c
/* 9585C 800A505C 4800A28F */  lw         $v0, 0x48($sp)
/* 95860 800A5060 21F0C303 */  addu       $fp, $fp, $v1
/* 95864 800A5064 21104300 */  addu       $v0, $v0, $v1
/* 95868 800A5068 0F80033C */  lui        $v1, %hi(D_800F02D4)
/* 9586C 800A506C 4800A2AF */  sw         $v0, 0x48($sp)
/* 95870 800A5070 4C00A28F */  lw         $v0, 0x4c($sp)
/* 95874 800A5074 D4026324 */  addiu      $v1, $v1, %lo(D_800F02D4)
/* 95878 800A5078 9F504224 */  addiu      $v0, $v0, 0x509f
/* 9587C 800A507C 4C00A2AF */  sw         $v0, 0x4c($sp)
/* 95880 800A5080 0200023C */  lui        $v0, 2
/* 95884 800A5084 F8844234 */  ori        $v0, $v0, 0x84f8
/* 95888 800A5088 21106200 */  addu       $v0, $v1, $v0
/* 9588C 800A508C 2A10C203 */  slt        $v0, $fp, $v0
/* 95890 800A5090 52FF4014 */  bnez       $v0, .L800A4DDC
/* 95894 800A5094 21900000 */   addu      $s2, $zero, $zero
/* 95898 800A5098 21400000 */  addu       $t0, $zero, $zero
/* 9589C 800A509C 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 958A0 800A50A0 D4024B24 */  addiu      $t3, $v0, %lo(D_800F02D4)
/* 958A4 800A50A4 FEFF0C24 */  addiu      $t4, $zero, -2
/* 958A8 800A50A8 FFFF0724 */  addiu      $a3, $zero, -1
.L800A50AC:
/* 958AC 800A50AC 21280000 */  addu       $a1, $zero, $zero
/* 958B0 800A50B0 80480800 */  sll        $t1, $t0, 2
/* 958B4 800A50B4 30940208 */  j          .L800A50C0
/* 958B8 800A50B8 01000A25 */   addiu     $t2, $t0, 1
.L800A50BC:
/* 958BC 800A50BC 0100A524 */  addiu      $a1, $a1, 1
.L800A50C0:
/* 958C0 800A50C0 21102801 */  addu       $v0, $t1, $t0
/* 958C4 800A50C4 C0190200 */  sll        $v1, $v0, 7
/* 958C8 800A50C8 21104300 */  addu       $v0, $v0, $v1
/* 958CC 800A50CC 40110200 */  sll        $v0, $v0, 5
/* 958D0 800A50D0 23104800 */  subu       $v0, $v0, $t0
/* 958D4 800A50D4 80100200 */  sll        $v0, $v0, 2
/* 958D8 800A50D8 21204B00 */  addu       $a0, $v0, $t3
/* 958DC 800A50DC 80180500 */  sll        $v1, $a1, 2
/* 958E0 800A50E0 21186500 */  addu       $v1, $v1, $a1
/* 958E4 800A50E4 C0180300 */  sll        $v1, $v1, 3
/* 958E8 800A50E8 21308300 */  addu       $a2, $a0, $v1
/* 958EC 800A50EC 0600C284 */  lh         $v0, 6($a2)
/* 958F0 800A50F0 00000000 */  nop
/* 958F4 800A50F4 06004004 */  bltz       $v0, .L800A5110
/* 958F8 800A50F8 00000000 */   nop
/* 958FC 800A50FC 0400E104 */  bgez       $a3, .L800A5110
/* 95900 800A5100 2138A000 */   addu      $a3, $a1, $zero
/* 95904 800A5104 0200A018 */  blez       $a1, .L800A5110
/* 95908 800A5108 00000000 */   nop
/* 9590C 800A510C 060085A4 */  sh         $a1, 6($a0)
.L800A5110:
/* 95910 800A5110 0400C284 */  lh         $v0, 4($a2)
/* 95914 800A5114 00000000 */  nop
/* 95918 800A5118 E8FF4C14 */  bne        $v0, $t4, .L800A50BC
/* 9591C 800A511C 00000000 */   nop
/* 95920 800A5120 0600C284 */  lh         $v0, 6($a2)
/* 95924 800A5124 00000000 */  nop
/* 95928 800A5128 0D004010 */  beqz       $v0, .L800A5160
/* 9592C 800A512C 80100700 */   sll       $v0, $a3, 2
/* 95930 800A5130 21104700 */  addu       $v0, $v0, $a3
/* 95934 800A5134 C0100200 */  sll        $v0, $v0, 3
/* 95938 800A5138 21182801 */  addu       $v1, $t1, $t0
/* 9593C 800A513C C0210300 */  sll        $a0, $v1, 7
/* 95940 800A5140 21186400 */  addu       $v1, $v1, $a0
/* 95944 800A5144 40190300 */  sll        $v1, $v1, 5
/* 95948 800A5148 23186800 */  subu       $v1, $v1, $t0
/* 9594C 800A514C 80180300 */  sll        $v1, $v1, 2
/* 95950 800A5150 21104300 */  addu       $v0, $v0, $v1
/* 95954 800A5154 21104B00 */  addu       $v0, $v0, $t3
/* 95958 800A5158 060045A4 */  sh         $a1, 6($v0)
/* 9595C 800A515C 0600C0A4 */  sh         $zero, 6($a2)
.L800A5160:
/* 95960 800A5160 21404001 */  addu       $t0, $t2, $zero
/* 95964 800A5164 02000229 */  slti       $v0, $t0, 2
/* 95968 800A5168 D0FF4014 */  bnez       $v0, .L800A50AC
/* 9596C 800A516C FFFF0724 */   addiu     $a3, $zero, -1
/* 95970 800A5170 7400BF8F */  lw         $ra, 0x74($sp)
/* 95974 800A5174 7000BE8F */  lw         $fp, 0x70($sp)
/* 95978 800A5178 6C00B78F */  lw         $s7, 0x6c($sp)
/* 9597C 800A517C 6800B68F */  lw         $s6, 0x68($sp)
/* 95980 800A5180 6400B58F */  lw         $s5, 0x64($sp)
/* 95984 800A5184 6000B48F */  lw         $s4, 0x60($sp)
/* 95988 800A5188 5C00B38F */  lw         $s3, 0x5c($sp)
/* 9598C 800A518C 5800B28F */  lw         $s2, 0x58($sp)
/* 95990 800A5190 5400B18F */  lw         $s1, 0x54($sp)
/* 95994 800A5194 5000B08F */  lw         $s0, 0x50($sp)
/* 95998 800A5198 0800E003 */  jr         $ra
/* 9599C 800A519C 7800BD27 */   addiu     $sp, $sp, 0x78

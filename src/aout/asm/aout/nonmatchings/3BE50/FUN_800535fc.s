.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800535fc
/* 43DFC 800535FC B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 43E00 80053600 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 43E04 80053604 2188A000 */  addu       $s1, $a1, $zero
/* 43E08 80053608 4800B4AF */  sw         $s4, 0x48($sp)
/* 43E0C 8005360C 21A00000 */  addu       $s4, $zero, $zero
/* 43E10 80053610 4400B3AF */  sw         $s3, 0x44($sp)
/* 43E14 80053614 21988000 */  addu       $s3, $a0, $zero
/* 43E18 80053618 01000424 */  addiu      $a0, $zero, 1
/* 43E1C 8005361C 0F000524 */  addiu      $a1, $zero, 0xf
/* 43E20 80053620 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 43E24 80053624 4000B2AF */  sw         $s2, 0x40($sp)
/* 43E28 80053628 FA56010C */  jal        FUN_80055be8
/* 43E2C 8005362C 3800B0AF */   sw        $s0, 0x38($sp)
/* 43E30 80053630 01000424 */  addiu      $a0, $zero, 1
/* 43E34 80053634 946B010C */  jal        FUN_8005ae50
/* 43E38 80053638 FFFF0524 */   addiu     $a1, $zero, -1
/* 43E3C 8005363C 01000424 */  addiu      $a0, $zero, 1
/* 43E40 80053640 376C010C */  jal        FUN_8005b0dc
/* 43E44 80053644 FE000524 */   addiu     $a1, $zero, 0xfe
/* 43E48 80053648 07006016 */  bnez       $s3, .L80053668
/* 43E4C 8005364C 0F80023C */   lui       $v0, %hi(D_800F0020)
/* 43E50 80053650 2000428C */  lw         $v0, %lo(D_800F0020)($v0)
/* 43E54 80053654 00000000 */  nop
/* 43E58 80053658 20004328 */  slti       $v1, $v0, 0x20
/* 43E5C 8005365C 02006010 */  beqz       $v1, .L80053668
/* 43E60 80053660 00000000 */   nop
/* 43E64 80053664 80880200 */  sll        $s1, $v0, 2
.L80053668:
/* 43E68 80053668 03002106 */  bgez       $s1, .L80053678
/* 43E6C 8005366C 8100222A */   slti      $v0, $s1, 0x81
/* 43E70 80053670 21880000 */  addu       $s1, $zero, $zero
/* 43E74 80053674 8100222A */  slti       $v0, $s1, 0x81
.L80053678:
/* 43E78 80053678 02004014 */  bnez       $v0, .L80053684
/* 43E7C 8005367C 1380023C */   lui       $v0, %hi(D_80128162)
/* 43E80 80053680 80001124 */  addiu      $s1, $zero, 0x80
.L80053684:
/* 43E84 80053684 62814490 */  lbu        $a0, %lo(D_80128162)($v0)
/* 43E88 80053688 1380023C */  lui        $v0, %hi(D_801282E0)
/* 43E8C 8005368C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 43E90 80053690 C0180400 */  sll        $v1, $a0, 3
/* 43E94 80053694 23186400 */  subu       $v1, $v1, $a0
/* 43E98 80053698 80180300 */  sll        $v1, $v1, 2
/* 43E9C 8005369C 07006016 */  bnez       $s3, .L800536BC
/* 43EA0 800536A0 21406200 */   addu      $t0, $v1, $v0
/* 43EA4 800536A4 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 43EA8 800536A8 2000628C */  lw         $v0, %lo(D_800F0020)($v1)
/* 43EAC 800536AC 00000000 */  nop
/* 43EB0 800536B0 20004228 */  slti       $v0, $v0, 0x20
/* 43EB4 800536B4 08004014 */  bnez       $v0, .L800536D8
/* 43EB8 800536B8 80000224 */   addiu     $v0, $zero, 0x80
.L800536BC:
/* 43EBC 800536BC 21200000 */  addu       $a0, $zero, $zero
/* 43EC0 800536C0 FF000524 */  addiu      $a1, $zero, 0xff
/* 43EC4 800536C4 21302002 */  addu       $a2, $s1, $zero
/* 43EC8 800536C8 F4AD010C */  jal        FUN_8006b7d0
/* 43ECC 800536CC 21380001 */   addu      $a3, $t0, $zero
/* 43ED0 800536D0 D34D0108 */  j          .L8005374C
/* 43ED4 800536D4 21904000 */   addu      $s2, $v0, $zero
.L800536D8:
/* 43ED8 800536D8 23105100 */  subu       $v0, $v0, $s1
/* 43EDC 800536DC 40800200 */  sll        $s0, $v0, 1
/* 43EE0 800536E0 0001032A */  slti       $v1, $s0, 0x100
/* 43EE4 800536E4 02006014 */  bnez       $v1, .L800536F0
/* 43EE8 800536E8 21200000 */   addu      $a0, $zero, $zero
/* 43EEC 800536EC FF001024 */  addiu      $s0, $zero, 0xff
.L800536F0:
/* 43EF0 800536F0 FF000524 */  addiu      $a1, $zero, 0xff
/* 43EF4 800536F4 01000624 */  addiu      $a2, $zero, 1
/* 43EF8 800536F8 21382002 */  addu       $a3, $s1, $zero
/* 43EFC 800536FC C0FE0224 */  addiu      $v0, $zero, -0x140
/* 43F00 80053700 10FF0324 */  addiu      $v1, $zero, -0xf0
/* 43F04 80053704 1800A2AF */  sw         $v0, 0x18($sp)
/* 43F08 80053708 FFFF0224 */  addiu      $v0, $zero, -1
/* 43F0C 8005370C 1000B1AF */  sw         $s1, 0x10($sp)
/* 43F10 80053710 1400B1AF */  sw         $s1, 0x14($sp)
/* 43F14 80053714 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 43F18 80053718 2000A8AF */  sw         $t0, 0x20($sp)
/* 43F1C 8005371C 2400A0AF */  sw         $zero, 0x24($sp)
/* 43F20 80053720 2800A0AF */  sw         $zero, 0x28($sp)
/* 43F24 80053724 2C00A2AF */  sw         $v0, 0x2c($sp)
/* 43F28 80053728 74AD010C */  jal        FUN_8006b5d0
/* 43F2C 8005372C 3000A2AF */   sw        $v0, 0x30($sp)
/* 43F30 80053730 21904000 */  addu       $s2, $v0, $zero
/* 43F34 80053734 FF000432 */  andi       $a0, $s0, 0xff
/* 43F38 80053738 21288000 */  addu       $a1, $a0, $zero
/* 43F3C 8005373C 1380023C */  lui        $v0, %hi(D_8012A9D4)
/* 43F40 80053740 D4A9478C */  lw         $a3, %lo(D_8012A9D4)($v0)
/* 43F44 80053744 8885000C */  jal        GsSortClear
/* 43F48 80053748 21308000 */   addu      $a2, $a0, $zero
.L8005374C:
/* 43F4C 8005374C 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 43F50 80053750 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* 43F54 80053754 1E004384 */  lh         $v1, 0x1e($v0)
/* 43F58 80053758 00000000 */  nop
/* 43F5C 8005375C 0E006010 */  beqz       $v1, .L80053798
/* 43F60 80053760 00000000 */   nop
/* 43F64 80053764 10004284 */  lh         $v0, 0x10($v0)
/* 43F68 80053768 00000000 */  nop
/* 43F6C 8005376C 0A004014 */  bnez       $v0, .L80053798
/* 43F70 80053770 00000000 */   nop
/* 43F74 80053774 0800201A */  blez       $s1, .L80053798
/* 43F78 80053778 01000224 */   addiu     $v0, $zero, 1
/* 43F7C 8005377C 1000A2AF */  sw         $v0, 0x10($sp)
/* 43F80 80053780 21204002 */  addu       $a0, $s2, $zero
/* 43F84 80053784 02000524 */  addiu      $a1, $zero, 2
/* 43F88 80053788 21302002 */  addu       $a2, $s1, $zero
/* 43F8C 8005378C EA4C010C */  jal        FUN_800533a8
/* 43F90 80053790 84000724 */   addiu     $a3, $zero, 0x84
/* 43F94 80053794 21904000 */  addu       $s2, $v0, $zero
.L80053798:
/* 43F98 80053798 35006012 */  beqz       $s3, .L80053870
/* 43F9C 8005379C 01000424 */   addiu     $a0, $zero, 1
/* 43FA0 800537A0 3300201A */  blez       $s1, .L80053870
/* 43FA4 800537A4 0F80033C */   lui       $v1, %hi(D_800EFFA8)
/* 43FA8 800537A8 A8FF7324 */  addiu      $s3, $v1, %lo(D_800EFFA8)
/* 43FAC 800537AC 6C00628E */  lw         $v0, 0x6c($s3)
/* 43FB0 800537B0 00000000 */  nop
/* 43FB4 800537B4 C2100200 */  srl        $v0, $v0, 3
/* 43FB8 800537B8 01004230 */  andi       $v0, $v0, 1
/* 43FBC 800537BC 02004010 */  beqz       $v0, .L800537C8
/* 43FC0 800537C0 40001024 */   addiu     $s0, $zero, 0x40
/* 43FC4 800537C4 80001024 */  addiu      $s0, $zero, 0x80
.L800537C8:
/* 43FC8 800537C8 18003002 */  mult       $s1, $s0
/* 43FCC 800537CC 12100000 */  mflo       $v0
/* 43FD0 800537D0 02004104 */  bgez       $v0, .L800537DC
/* 43FD4 800537D4 01000424 */   addiu     $a0, $zero, 1
/* 43FD8 800537D8 7F004224 */  addiu      $v0, $v0, 0x7f
.L800537DC:
/* 43FDC 800537DC 21280000 */  addu       $a1, $zero, $zero
/* 43FE0 800537E0 21300000 */  addu       $a2, $zero, $zero
/* 43FE4 800537E4 C3390200 */  sra        $a3, $v0, 7
/* 43FE8 800537E8 60FF0224 */  addiu      $v0, $zero, -0xa0
/* 43FEC 800537EC A0000324 */  addiu      $v1, $zero, 0xa0
/* 43FF0 800537F0 1000A2AF */  sw         $v0, 0x10($sp)
/* 43FF4 800537F4 E9F8010C */  jal        FUN_8007e3a4
/* 43FF8 800537F8 1400A3AF */   sw        $v1, 0x14($sp)
/* 43FFC 800537FC F8AE020C */  jal        FUN_800abbe0
/* 44000 80053800 21A04000 */   addu      $s4, $v0, $zero
/* 44004 80053804 1A004010 */  beqz       $v0, .L80053870
/* 44008 80053808 01000424 */   addiu     $a0, $zero, 1
/* 4400C 8005380C 6C00628E */  lw         $v0, 0x6c($s3)
/* 44010 80053810 00000000 */  nop
/* 44014 80053814 80100200 */  sll        $v0, $v0, 2
/* 44018 80053818 FF005030 */  andi       $s0, $v0, 0xff
/* 4401C 8005381C 8100032A */  slti       $v1, $s0, 0x81
/* 44020 80053820 04006014 */  bnez       $v1, .L80053834
/* 44024 80053824 18003002 */   mult      $s1, $s0
/* 44028 80053828 00010224 */  addiu      $v0, $zero, 0x100
/* 4402C 8005382C 23805000 */  subu       $s0, $v0, $s0
/* 44030 80053830 18003002 */  mult       $s1, $s0
.L80053834:
/* 44034 80053834 12100000 */  mflo       $v0
/* 44038 80053838 03004104 */  bgez       $v0, .L80053848
/* 4403C 8005383C C3810200 */   sra       $s0, $v0, 7
/* 44040 80053840 7F004224 */  addiu      $v0, $v0, 0x7f
/* 44044 80053844 C3810200 */  sra        $s0, $v0, 7
.L80053848:
/* 44048 80053848 21204002 */  addu       $a0, $s2, $zero
/* 4404C 8005384C 21280000 */  addu       $a1, $zero, $zero
/* 44050 80053850 E2FF0624 */  addiu      $a2, $zero, -0x1e
/* 44054 80053854 21380000 */  addu       $a3, $zero, $zero
/* 44058 80053858 1E000226 */  addiu      $v0, $s0, 0x1e
/* 4405C 8005385C FFFF0324 */  addiu      $v1, $zero, -1
/* 44060 80053860 1000A2AF */  sw         $v0, 0x10($sp)
/* 44064 80053864 AE76010C */  jal        FUN_8005dab8
/* 44068 80053868 1400A3AF */   sw        $v1, 0x14($sp)
/* 4406C 8005386C 01000424 */  addiu      $a0, $zero, 1
.L80053870:
/* 44070 80053870 1D6B010C */  jal        FUN_8005ac74
/* 44074 80053874 21288002 */   addu      $a1, $s4, $zero
/* 44078 80053878 9157010C */  jal        FUN_80055e44
/* 4407C 8005387C 01000424 */   addiu     $a0, $zero, 1
/* 44080 80053880 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 44084 80053884 4800B48F */  lw         $s4, 0x48($sp)
/* 44088 80053888 4400B38F */  lw         $s3, 0x44($sp)
/* 4408C 8005388C 4000B28F */  lw         $s2, 0x40($sp)
/* 44090 80053890 3C00B18F */  lw         $s1, 0x3c($sp)
/* 44094 80053894 3800B08F */  lw         $s0, 0x38($sp)
/* 44098 80053898 0800E003 */  jr         $ra
/* 4409C 8005389C 5000BD27 */   addiu     $sp, $sp, 0x50

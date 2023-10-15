.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001f5cc
/* FDCC 8001F5CC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* FDD0 8001F5D0 2400B3AF */  sw         $s3, 0x24($sp)
/* FDD4 8001F5D4 21980000 */  addu       $s3, $zero, $zero
/* FDD8 8001F5D8 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* FDDC 8001F5DC A8FF4324 */  addiu      $v1, $v0, %lo(D_800EFFA8)
/* FDE0 8001F5E0 3000B6AF */  sw         $s6, 0x30($sp)
/* FDE4 8001F5E4 21B00000 */  addu       $s6, $zero, $zero
/* FDE8 8001F5E8 3400BFAF */  sw         $ra, 0x34($sp)
/* FDEC 8001F5EC 2C00B5AF */  sw         $s5, 0x2c($sp)
/* FDF0 8001F5F0 2800B4AF */  sw         $s4, 0x28($sp)
/* FDF4 8001F5F4 2000B2AF */  sw         $s2, 0x20($sp)
/* FDF8 8001F5F8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* FDFC 8001F5FC 1800B0AF */  sw         $s0, 0x18($sp)
/* FE00 8001F600 7800648C */  lw         $a0, 0x78($v1)
/* FE04 8001F604 00000000 */  nop
/* FE08 8001F608 06008328 */  slti       $v1, $a0, 6
/* FE0C 8001F60C 05006010 */  beqz       $v1, .L8001F624
/* FE10 8001F610 21A84000 */   addu      $s5, $v0, $zero
/* FE14 8001F614 2726010C */  jal        FUN_8004989c
/* FE18 8001F618 40000424 */   addiu     $a0, $zero, 0x40
/* FE1C 8001F61C 387E0008 */  j          .L8001F8E0
/* FE20 8001F620 01000224 */   addiu     $v0, $zero, 1
.L8001F624:
/* FE24 8001F624 06000224 */  addiu      $v0, $zero, 6
/* FE28 8001F628 0B008214 */  bne        $a0, $v0, .L8001F658
/* FE2C 8001F62C 21800000 */   addu      $s0, $zero, $zero
/* FE30 8001F630 96000424 */  addiu      $a0, $zero, 0x96
/* FE34 8001F634 1380023C */  lui        $v0, %hi(D_80129DA8)
/* FE38 8001F638 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* FE3C 8001F63C B40D438C */  lw         $v1, 0xdb4($v0)
/* FE40 8001F640 0FFF0524 */  addiu      $a1, $zero, -0xf1
/* FE44 8001F644 24186500 */  and        $v1, $v1, $a1
/* FE48 8001F648 20006334 */  ori        $v1, $v1, 0x20
/* FE4C 8001F64C 12CB020C */  jal        FUN_800b2c48
/* FE50 8001F650 B40D43AC */   sw        $v1, 0xdb4($v0)
/* FE54 8001F654 21800000 */  addu       $s0, $zero, $zero
.L8001F658:
/* FE58 8001F658 1580143C */  lui        $s4, 0x8015
/* FE5C 8001F65C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* FE60 8001F660 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* FE64 8001F664 3C005224 */  addiu      $s2, $v0, 0x3c
/* FE68 8001F668 0100113C */  lui        $s1, 1
/* FE6C 8001F66C 7C423136 */  ori        $s1, $s1, 0x427c
.L8001F670:
/* FE70 8001F670 21200002 */  addu       $a0, $s0, $zero
/* FE74 8001F674 EDA9000C */  jal        FUN_8002a7b4
/* FE78 8001F678 21280000 */   addu      $a1, $zero, $zero
/* FE7C 8001F67C 0C004014 */  bnez       $v0, .L8001F6B0
/* FE80 8001F680 A8FFA326 */   addiu     $v1, $s5, -0x58
/* FE84 8001F684 50BA8326 */  addiu      $v1, $s4, -0x45b0
/* FE88 8001F688 1E006284 */  lh         $v0, 0x1e($v1)
/* FE8C 8001F68C 00000000 */  nop
/* FE90 8001F690 23004010 */  beqz       $v0, .L8001F720
/* FE94 8001F694 00000000 */   nop
/* FE98 8001F698 10006284 */  lh         $v0, 0x10($v1)
/* FE9C 8001F69C 00000000 */  nop
/* FEA0 8001F6A0 1F004014 */  bnez       $v0, .L8001F720
/* FEA4 8001F6A4 00000000 */   nop
/* FEA8 8001F6A8 1D006012 */  beqz       $s3, .L8001F720
/* FEAC 8001F6AC A8FFA326 */   addiu     $v1, $s5, -0x58
.L8001F6B0:
/* FEB0 8001F6B0 6C00628C */  lw         $v0, 0x6c($v1)
/* FEB4 8001F6B4 00000000 */  nop
/* FEB8 8001F6B8 C2100200 */  srl        $v0, $v0, 3
/* FEBC 8001F6BC 01004230 */  andi       $v0, $v0, 1
/* FEC0 8001F6C0 03004010 */  beqz       $v0, .L8001F6D0
/* FEC4 8001F6C4 00000000 */   nop
/* FEC8 8001F6C8 BB9C020C */  jal        FUN_800a72ec
/* FECC 8001F6CC 21200002 */   addu      $a0, $s0, $zero
.L8001F6D0:
/* FED0 8001F6D0 35B3000C */  jal        FUN_8002ccd4
/* FED4 8001F6D4 21200002 */   addu      $a0, $s0, $zero
/* FED8 8001F6D8 11004010 */  beqz       $v0, .L8001F720
/* FEDC 8001F6DC 50BA8326 */   addiu     $v1, $s4, -0x45b0
/* FEE0 8001F6E0 1E006284 */  lh         $v0, 0x1e($v1)
/* FEE4 8001F6E4 00000000 */  nop
/* FEE8 8001F6E8 07004010 */  beqz       $v0, .L8001F708
/* FEEC 8001F6EC 00000000 */   nop
/* FEF0 8001F6F0 10006284 */  lh         $v0, 0x10($v1)
/* FEF4 8001F6F4 00000000 */  nop
/* FEF8 8001F6F8 03004014 */  bnez       $v0, .L8001F708
/* FEFC 8001F6FC 00000000 */   nop
/* FF00 8001F700 05006016 */  bnez       $s3, .L8001F718
/* FF04 8001F704 01000224 */   addiu     $v0, $zero, 1
.L8001F708:
/* FF08 8001F708 21200002 */  addu       $a0, $s0, $zero
/* FF0C 8001F70C 3AAA000C */  jal        FUN_8002a8e8
/* FF10 8001F710 21280000 */   addu      $a1, $zero, $zero
/* FF14 8001F714 01000224 */  addiu      $v0, $zero, 1
.L8001F718:
/* FF18 8001F718 000042A2 */  sb         $v0, ($s2)
/* FF1C 8001F71C 01007326 */  addiu      $s3, $s3, 1
.L8001F720:
/* FF20 8001F720 01001026 */  addiu      $s0, $s0, 1
/* FF24 8001F724 0200022A */  slti       $v0, $s0, 2
/* FF28 8001F728 D1FF4014 */  bnez       $v0, .L8001F670
/* FF2C 8001F72C 21905102 */   addu      $s2, $s2, $s1
/* FF30 8001F730 A8FFA226 */  addiu      $v0, $s5, -0x58
/* FF34 8001F734 7800458C */  lw         $a1, 0x78($v0)
/* FF38 8001F738 00000000 */  nop
/* FF3C 8001F73C 8403A328 */  slti       $v1, $a1, 0x384
/* FF40 8001F740 45006014 */  bnez       $v1, .L8001F858
/* FF44 8001F744 00000000 */   nop
/* FF48 8001F748 45006016 */  bnez       $s3, .L8001F860
/* FF4C 8001F74C 1000A427 */   addiu     $a0, $sp, 0x10
/* FF50 8001F750 A291023C */  lui        $v0, 0x91a2
/* FF54 8001F754 C5B34234 */  ori        $v0, $v0, 0xb3c5
/* FF58 8001F758 1800A200 */  mult       $a1, $v0
/* FF5C 8001F75C C3270500 */  sra        $a0, $a1, 0x1f
/* FF60 8001F760 10100000 */  mfhi       $v0
/* FF64 8001F764 21104500 */  addu       $v0, $v0, $a1
/* FF68 8001F768 43120200 */  sra        $v0, $v0, 9
/* FF6C 8001F76C 23104400 */  subu       $v0, $v0, $a0
/* FF70 8001F770 C0180200 */  sll        $v1, $v0, 3
/* FF74 8001F774 23186200 */  subu       $v1, $v1, $v0
/* FF78 8001F778 40190300 */  sll        $v1, $v1, 5
/* FF7C 8001F77C 21186200 */  addu       $v1, $v1, $v0
/* FF80 8001F780 80180300 */  sll        $v1, $v1, 2
/* FF84 8001F784 0A00A314 */  bne        $a1, $v1, .L8001F7B0
/* FF88 8001F788 0F80103C */   lui       $s0, %hi(D_800F0028)
/* FF8C 8001F78C 28000226 */  addiu      $v0, $s0, %lo(D_800F0028)
/* FF90 8001F790 13004380 */  lb         $v1, 0x13($v0)
/* FF94 8001F794 00000000 */  nop
/* FF98 8001F798 03006014 */  bnez       $v1, .L8001F7A8
/* FF9C 8001F79C 00000000 */   nop
/* FFA0 8001F7A0 12CB020C */  jal        FUN_800b2c48
/* FFA4 8001F7A4 1D000424 */   addiu     $a0, $zero, 0x1d
.L8001F7A8:
/* FFA8 8001F7A8 D5C1020C */  jal        FUN_800b0754
/* FFAC 8001F7AC 00000000 */   nop
.L8001F7B0:
/* FFB0 8001F7B0 28000226 */  addiu      $v0, $s0, 0x28
/* FFB4 8001F7B4 13004380 */  lb         $v1, 0x13($v0)
/* FFB8 8001F7B8 00000000 */  nop
/* FFBC 8001F7BC 26006014 */  bnez       $v1, .L8001F858
/* FFC0 8001F7C0 1580023C */   lui       $v0, %hi(D_8014BA60)
/* FFC4 8001F7C4 60BA4384 */  lh         $v1, %lo(D_8014BA60)($v0)
/* FFC8 8001F7C8 00000000 */  nop
/* FFCC 8001F7CC 22006010 */  beqz       $v1, .L8001F858
/* FFD0 8001F7D0 00000000 */   nop
/* FFD4 8001F7D4 ADB3000C */  jal        FUN_8002ceb4
/* FFD8 8001F7D8 21200000 */   addu      $a0, $zero, $zero
/* FFDC 8001F7DC 1E004014 */  bnez       $v0, .L8001F858
/* FFE0 8001F7E0 00000000 */   nop
/* FFE4 8001F7E4 B4B3000C */  jal        FUN_8002ced0
/* FFE8 8001F7E8 21200000 */   addu      $a0, $zero, $zero
/* FFEC 8001F7EC 1A004014 */  bnez       $v0, .L8001F858
/* FFF0 8001F7F0 00000000 */   nop
/* FFF4 8001F7F4 BDB3000C */  jal        FUN_8002cef4
/* FFF8 8001F7F8 21200000 */   addu      $a0, $zero, $zero
/* FFFC 8001F7FC 16004014 */  bnez       $v0, .L8001F858
/* 10000 8001F800 00000000 */   nop
/* 10004 8001F804 C6B3000C */  jal        FUN_8002cf18
/* 10008 8001F808 21200000 */   addu      $a0, $zero, $zero
/* 1000C 8001F80C 12004014 */  bnez       $v0, .L8001F858
/* 10010 8001F810 00000000 */   nop
/* 10014 8001F814 ADB3000C */  jal        FUN_8002ceb4
/* 10018 8001F818 01000424 */   addiu     $a0, $zero, 1
/* 1001C 8001F81C 0E004014 */  bnez       $v0, .L8001F858
/* 10020 8001F820 00000000 */   nop
/* 10024 8001F824 B4B3000C */  jal        FUN_8002ced0
/* 10028 8001F828 01000424 */   addiu     $a0, $zero, 1
/* 1002C 8001F82C 0A004014 */  bnez       $v0, .L8001F858
/* 10030 8001F830 00000000 */   nop
/* 10034 8001F834 BDB3000C */  jal        FUN_8002cef4
/* 10038 8001F838 01000424 */   addiu     $a0, $zero, 1
/* 1003C 8001F83C 06004014 */  bnez       $v0, .L8001F858
/* 10040 8001F840 00000000 */   nop
/* 10044 8001F844 C6B3000C */  jal        FUN_8002cf18
/* 10048 8001F848 01000424 */   addiu     $a0, $zero, 1
/* 1004C 8001F84C 02004014 */  bnez       $v0, .L8001F858
/* 10050 8001F850 00000000 */   nop
/* 10054 8001F854 01001624 */  addiu      $s6, $zero, 1
.L8001F858:
/* 10058 8001F858 0F006012 */  beqz       $s3, .L8001F898
/* 1005C 8001F85C 1000A427 */   addiu     $a0, $sp, 0x10
.L8001F860:
/* 10060 8001F860 21280000 */  addu       $a1, $zero, $zero
/* 10064 8001F864 80020224 */  addiu      $v0, $zero, 0x280
/* 10068 8001F868 E0010324 */  addiu      $v1, $zero, 0x1e0
/* 1006C 8001F86C 21300000 */  addu       $a2, $zero, $zero
/* 10070 8001F870 21380000 */  addu       $a3, $zero, $zero
/* 10074 8001F874 1000A0A7 */  sh         $zero, 0x10($sp)
/* 10078 8001F878 1200A0A7 */  sh         $zero, 0x12($sp)
/* 1007C 8001F87C 1400A2A7 */  sh         $v0, 0x14($sp)
/* 10080 8001F880 5D61000C */  jal        ClearImage2
/* 10084 8001F884 1600A3A7 */   sh        $v1, 0x16($sp)
/* 10088 8001F888 D860000C */  jal        DrawSync
/* 1008C 8001F88C 21200000 */   addu      $a0, $zero, $zero
/* 10090 8001F890 387E0008 */  j          .L8001F8E0
/* 10094 8001F894 02000224 */   addiu     $v0, $zero, 2
.L8001F898:
/* 10098 8001F898 A8FFA326 */  addiu      $v1, $s5, -0x58
/* 1009C 8001F89C 7800628C */  lw         $v0, 0x78($v1)
/* 100A0 8001F8A0 00000000 */  nop
/* 100A4 8001F8A4 F9FF4224 */  addiu      $v0, $v0, -7
/* 100A8 8001F8A8 0800C012 */  beqz       $s6, .L8001F8CC
/* 100AC 8001F8AC C0280200 */   sll       $a1, $v0, 3
/* 100B0 8001F8B0 21280000 */  addu       $a1, $zero, $zero
/* 100B4 8001F8B4 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 100B8 8001F8B8 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 100BC 8001F8BC B40D438C */  lw         $v1, 0xdb4($v0)
/* 100C0 8001F8C0 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 100C4 8001F8C4 24186400 */  and        $v1, $v1, $a0
/* 100C8 8001F8C8 B40D43AC */  sw         $v1, 0xdb4($v0)
.L8001F8CC:
/* 100CC 8001F8CC 0400A018 */  blez       $a1, .L8001F8E0
/* 100D0 8001F8D0 0100C23A */   xori      $v0, $s6, 1
/* 100D4 8001F8D4 7F4D010C */  jal        FUN_800535fc
/* 100D8 8001F8D8 01000424 */   addiu     $a0, $zero, 1
/* 100DC 8001F8DC 0100C23A */  xori       $v0, $s6, 1
.L8001F8E0:
/* 100E0 8001F8E0 3400BF8F */  lw         $ra, 0x34($sp)
/* 100E4 8001F8E4 3000B68F */  lw         $s6, 0x30($sp)
/* 100E8 8001F8E8 2C00B58F */  lw         $s5, 0x2c($sp)
/* 100EC 8001F8EC 2800B48F */  lw         $s4, 0x28($sp)
/* 100F0 8001F8F0 2400B38F */  lw         $s3, 0x24($sp)
/* 100F4 8001F8F4 2000B28F */  lw         $s2, 0x20($sp)
/* 100F8 8001F8F8 1C00B18F */  lw         $s1, 0x1c($sp)
/* 100FC 8001F8FC 1800B08F */  lw         $s0, 0x18($sp)
/* 10100 8001F900 0800E003 */  jr         $ra
/* 10104 8001F904 3800BD27 */   addiu     $sp, $sp, 0x38

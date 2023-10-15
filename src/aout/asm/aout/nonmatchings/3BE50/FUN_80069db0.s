.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80069db0
/* 5A5B0 80069DB0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 5A5B4 80069DB4 4000BEAF */  sw         $fp, 0x40($sp)
/* 5A5B8 80069DB8 21F08000 */  addu       $fp, $a0, $zero
/* 5A5BC 80069DBC 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 5A5C0 80069DC0 2400B1AF */  sw         $s1, 0x24($sp)
/* 5A5C4 80069DC4 A8FF5124 */  addiu      $s1, $v0, %lo(D_800EFFA8)
/* 5A5C8 80069DC8 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 5A5CC 80069DCC 4400BFAF */  sw         $ra, 0x44($sp)
/* 5A5D0 80069DD0 3800B6AF */  sw         $s6, 0x38($sp)
/* 5A5D4 80069DD4 3400B5AF */  sw         $s5, 0x34($sp)
/* 5A5D8 80069DD8 3000B4AF */  sw         $s4, 0x30($sp)
/* 5A5DC 80069DDC 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 5A5E0 80069DE0 2800B2AF */  sw         $s2, 0x28($sp)
/* 5A5E4 80069DE4 2000B0AF */  sw         $s0, 0x20($sp)
/* 5A5E8 80069DE8 0000C0AF */  sw         $zero, ($fp)
/* 5A5EC 80069DEC 7400238E */  lw         $v1, 0x74($s1)
/* 5A5F0 80069DF0 0400C48F */  lw         $a0, 4($fp)
/* 5A5F4 80069DF4 FDFF6324 */  addiu      $v1, $v1, -3
/* 5A5F8 80069DF8 03008314 */  bne        $a0, $v1, .L80069E08
/* 5A5FC 80069DFC 21B80000 */   addu      $s7, $zero, $zero
/* 5A600 80069E00 12CB020C */  jal        FUN_800b2c48
/* 5A604 80069E04 52000424 */   addiu     $a0, $zero, 0x52
.L80069E08:
/* 5A608 80069E08 7400228E */  lw         $v0, 0x74($s1)
/* 5A60C 80069E0C 0400C38F */  lw         $v1, 4($fp)
/* 5A610 80069E10 00000000 */  nop
/* 5A614 80069E14 23184300 */  subu       $v1, $v0, $v1
/* 5A618 80069E18 0200642C */  sltiu      $a0, $v1, 2
/* 5A61C 80069E1C 12008010 */  beqz       $a0, .L80069E68
/* 5A620 80069E20 3C00622C */   sltiu     $v0, $v1, 0x3c
/* 5A624 80069E24 78C3010C */  jal        FUN_80070de0
/* 5A628 80069E28 FFFF0424 */   addiu     $a0, $zero, -1
/* 5A62C 80069E2C 04004104 */  bgez       $v0, .L80069E40
/* 5A630 80069E30 04000424 */   addiu     $a0, $zero, 4
/* 5A634 80069E34 7400228E */  lw         $v0, 0x74($s1)
/* 5A638 80069E38 ABA70108 */  j          .L80069EAC
/* 5A63C 80069E3C 0400C2AF */   sw        $v0, 4($fp)
.L80069E40:
/* 5A640 80069E40 7400228E */  lw         $v0, 0x74($s1)
/* 5A644 80069E44 01000524 */  addiu      $a1, $zero, 1
/* 5A648 80069E48 FEFF4224 */  addiu      $v0, $v0, -2
/* 5A64C 80069E4C 3EA2020C */  jal        FUN_800a88f8
/* 5A650 80069E50 0400C2AF */   sw        $v0, 4($fp)
/* 5A654 80069E54 0C004494 */  lhu        $a0, 0xc($v0)
/* 5A658 80069E58 06C2020C */  jal        FUN_800b0818
/* 5A65C 80069E5C 00000000 */   nop
/* 5A660 80069E60 ABA70108 */  j          .L80069EAC
/* 5A664 80069E64 00000000 */   nop
.L80069E68:
/* 5A668 80069E68 10004014 */  bnez       $v0, .L80069EAC
/* 5A66C 80069E6C 6009622C */   sltiu     $v0, $v1, 0x960
/* 5A670 80069E70 0E004010 */  beqz       $v0, .L80069EAC
/* 5A674 80069E74 00000000 */   nop
/* 5A678 80069E78 78C3010C */  jal        FUN_80070de0
/* 5A67C 80069E7C 03000424 */   addiu     $a0, $zero, 3
/* 5A680 80069E80 02000424 */  addiu      $a0, $zero, 2
/* 5A684 80069E84 78C3010C */  jal        FUN_80070de0
/* 5A688 80069E88 21804000 */   addu      $s0, $v0, $zero
/* 5A68C 80069E8C E0FF4224 */  addiu      $v0, $v0, -0x20
/* 5A690 80069E90 2A800202 */  slt        $s0, $s0, $v0
/* 5A694 80069E94 05000016 */  bnez       $s0, .L80069EAC
/* 5A698 80069E98 00000000 */   nop
/* 5A69C 80069E9C 7400228E */  lw         $v0, 0x74($s1)
/* 5A6A0 80069EA0 00000000 */  nop
/* 5A6A4 80069EA4 64F64224 */  addiu      $v0, $v0, -0x99c
/* 5A6A8 80069EA8 0400C2AF */  sw         $v0, 4($fp)
.L80069EAC:
/* 5A6AC 80069EAC 0800C38F */  lw         $v1, 8($fp)
/* 5A6B0 80069EB0 80000224 */  addiu      $v0, $zero, 0x80
/* 5A6B4 80069EB4 05006210 */  beq        $v1, $v0, .L80069ECC
/* 5A6B8 80069EB8 FFFF6224 */   addiu     $v0, $v1, -1
/* 5A6BC 80069EBC 03004104 */  bgez       $v0, .L80069ECC
/* 5A6C0 80069EC0 0800C2AF */   sw        $v0, 8($fp)
.L80069EC4:
/* 5A6C4 80069EC4 E0AA0108 */  j          .L8006AB80
/* 5A6C8 80069EC8 04000224 */   addiu     $v0, $zero, 4
.L80069ECC:
/* 5A6CC 80069ECC 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 5A6D0 80069ED0 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 5A6D4 80069ED4 8A006390 */  lbu        $v1, 0x8a($v1)
/* 5A6D8 80069ED8 07000424 */  addiu      $a0, $zero, 7
/* 5A6DC 80069EDC 07006410 */  beq        $v1, $a0, .L80069EFC
/* 5A6E0 80069EE0 21804000 */   addu      $s0, $v0, $zero
/* 5A6E4 80069EE4 06006010 */  beqz       $v1, .L80069F00
/* 5A6E8 80069EE8 28000226 */   addiu     $v0, $s0, 0x28
/* 5A6EC 80069EEC 3EB3000C */  jal        FUN_8002ccf8
/* 5A6F0 80069EF0 21200000 */   addu      $a0, $zero, $zero
/* 5A6F4 80069EF4 0E004014 */  bnez       $v0, .L80069F30
/* 5A6F8 80069EF8 00000000 */   nop
.L80069EFC:
/* 5A6FC 80069EFC 28000226 */  addiu      $v0, $s0, 0x28
.L80069F00:
/* 5A700 80069F00 0100033C */  lui        $v1, 1
/* 5A704 80069F04 21104300 */  addu       $v0, $v0, $v1
/* 5A708 80069F08 06434290 */  lbu        $v0, 0x4306($v0)
/* 5A70C 80069F0C 07000324 */  addiu      $v1, $zero, 7
/* 5A710 80069F10 0D004310 */  beq        $v0, $v1, .L80069F48
/* 5A714 80069F14 02000424 */   addiu     $a0, $zero, 2
/* 5A718 80069F18 0B004010 */  beqz       $v0, .L80069F48
/* 5A71C 80069F1C 00000000 */   nop
/* 5A720 80069F20 3EB3000C */  jal        FUN_8002ccf8
/* 5A724 80069F24 01000424 */   addiu     $a0, $zero, 1
/* 5A728 80069F28 07004010 */  beqz       $v0, .L80069F48
/* 5A72C 80069F2C 02000424 */   addiu     $a0, $zero, 2
.L80069F30:
/* 5A730 80069F30 0800C38F */  lw         $v1, 8($fp)
/* 5A734 80069F34 80000224 */  addiu      $v0, $zero, 0x80
/* 5A738 80069F38 03006214 */  bne        $v1, $v0, .L80069F48
/* 5A73C 80069F3C 02000424 */   addiu     $a0, $zero, 2
/* 5A740 80069F40 7F000224 */  addiu      $v0, $zero, 0x7f
/* 5A744 80069F44 0800C2AF */  sw         $v0, 8($fp)
.L80069F48:
/* 5A748 80069F48 C3B0010C */  jal        FUN_8006c30c
/* 5A74C 80069F4C 01000524 */   addiu     $a1, $zero, 1
/* 5A750 80069F50 02000424 */  addiu      $a0, $zero, 2
/* 5A754 80069F54 0BB2010C */  jal        FUN_8006c82c
/* 5A758 80069F58 FD000524 */   addiu     $a1, $zero, 0xfd
/* 5A75C 80069F5C 02000424 */  addiu      $a0, $zero, 2
/* 5A760 80069F60 FFFF0524 */  addiu      $a1, $zero, -1
/* 5A764 80069F64 FFFF0624 */  addiu      $a2, $zero, -1
/* 5A768 80069F68 FFFF0724 */  addiu      $a3, $zero, -1
/* 5A76C 80069F6C 9CAE010C */  jal        FUN_8006ba70
/* 5A770 80069F70 1000A7AF */   sw        $a3, 0x10($sp)
/* 5A774 80069F74 02000424 */  addiu      $a0, $zero, 2
/* 5A778 80069F78 33B1010C */  jal        FUN_8006c4cc
/* 5A77C 80069F7C 21280000 */   addu      $a1, $zero, $zero
/* 5A780 80069F80 02000424 */  addiu      $a0, $zero, 2
/* 5A784 80069F84 81B1010C */  jal        FUN_8006c604
/* 5A788 80069F88 FFFF0524 */   addiu     $a1, $zero, -1
/* 5A78C 80069F8C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 5A790 80069F90 A8FF5124 */  addiu      $s1, $v0, %lo(D_800EFFA8)
/* 5A794 80069F94 7400228E */  lw         $v0, 0x74($s1)
/* 5A798 80069F98 0400C38F */  lw         $v1, 4($fp)
/* 5A79C 80069F9C 00000000 */  nop
/* 5A7A0 80069FA0 23184300 */  subu       $v1, $v0, $v1
/* 5A7A4 80069FA4 0200642C */  sltiu      $a0, $v1, 2
/* 5A7A8 80069FA8 0A018014 */  bnez       $a0, .L8006A3D4
/* 5A7AC 80069FAC 3C00622C */   sltiu     $v0, $v1, 0x3c
/* 5A7B0 80069FB0 78004010 */  beqz       $v0, .L8006A194
/* 5A7B4 80069FB4 FEFF0424 */   addiu     $a0, $zero, -2
/* 5A7B8 80069FB8 DDCA010C */  jal        FUN_80072b74
/* 5A7BC 80069FBC 21280000 */   addu      $a1, $zero, $zero
/* 5A7C0 80069FC0 FEFF0424 */  addiu      $a0, $zero, -2
/* 5A7C4 80069FC4 01000524 */  addiu      $a1, $zero, 1
/* 5A7C8 80069FC8 DDCA010C */  jal        FUN_80072b74
/* 5A7CC 80069FCC 21804000 */   addu      $s0, $v0, $zero
/* 5A7D0 80069FD0 7400238E */  lw         $v1, 0x74($s1)
/* 5A7D4 80069FD4 0400C48F */  lw         $a0, 4($fp)
/* 5A7D8 80069FD8 00000000 */  nop
/* 5A7DC 80069FDC 23186400 */  subu       $v1, $v1, $a0
/* 5A7E0 80069FE0 FEFF6324 */  addiu      $v1, $v1, -2
/* 5A7E4 80069FE4 C0190300 */  sll        $v1, $v1, 7
/* 5A7E8 80069FE8 3D8D043C */  lui        $a0, 0x8d3d
/* 5A7EC 80069FEC 09CB8434 */  ori        $a0, $a0, 0xcb09
/* 5A7F0 80069FF0 19006400 */  multu      $v1, $a0
/* 5A7F4 80069FF4 10180000 */  mfhi       $v1
/* 5A7F8 80069FF8 42A10300 */  srl        $s4, $v1, 5
/* 5A7FC 80069FFC 0800C38F */  lw         $v1, 8($fp)
/* 5A800 8006A000 21884000 */  addu       $s1, $v0, $zero
/* 5A804 8006A004 2A107400 */  slt        $v0, $v1, $s4
/* 5A808 8006A008 02004010 */  beqz       $v0, .L8006A014
/* 5A80C 8006A00C 02000424 */   addiu     $a0, $zero, 2
/* 5A810 8006A010 21A06000 */  addu       $s4, $v1, $zero
.L8006A014:
/* 5A814 8006A014 21280000 */  addu       $a1, $zero, $zero
/* 5A818 8006A018 02001724 */  addiu      $s7, $zero, 2
/* 5A81C 8006A01C 18000B86 */  lh         $t3, 0x18($s0)
/* 5A820 8006A020 1A000C86 */  lh         $t4, 0x1a($s0)
/* 5A824 8006A024 10001686 */  lh         $s6, 0x10($s0)
/* 5A828 8006A028 0400028E */  lw         $v0, 4($s0)
/* 5A82C 8006A02C 12001586 */  lh         $s5, 0x12($s0)
/* 5A830 8006A030 16000796 */  lhu        $a3, 0x16($s0)
/* 5A834 8006A034 C2190200 */  srl        $v1, $v0, 7
/* 5A838 8006A038 03006A30 */  andi       $t2, $v1, 3
/* 5A83C 8006A03C 42310200 */  srl        $a2, $v0, 5
/* 5A840 8006A040 0300C930 */  andi       $t1, $a2, 3
/* 5A844 8006A044 0F004330 */  andi       $v1, $v0, 0xf
/* 5A848 8006A048 80410300 */  sll        $t0, $v1, 6
/* 5A84C 8006A04C 00310200 */  sll        $a2, $v0, 4
/* 5A850 8006A050 0001C630 */  andi       $a2, $a2, 0x100
/* 5A854 8006A054 82100200 */  srl        $v0, $v0, 2
/* 5A858 8006A058 00024230 */  andi       $v0, $v0, 0x200
/* 5A85C 8006A05C 2110C200 */  addu       $v0, $a2, $v0
/* 5A860 8006A060 3F00E330 */  andi       $v1, $a3, 0x3f
/* 5A864 8006A064 82990700 */  srl        $s3, $a3, 6
/* 5A868 8006A068 14000692 */  lbu        $a2, 0x14($s0)
/* 5A86C 8006A06C 15000792 */  lbu        $a3, 0x15($s0)
/* 5A870 8006A070 00910300 */  sll        $s2, $v1, 4
/* 5A874 8006A074 1000ABAF */  sw         $t3, 0x10($sp)
/* 5A878 8006A078 1400ACAF */  sw         $t4, 0x14($sp)
/* 5A87C 8006A07C 1800AAAF */  sw         $t2, 0x18($sp)
/* 5A880 8006A080 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 5A884 8006A084 21300601 */  addu       $a2, $t0, $a2
/* 5A888 8006A088 25B2010C */  jal        FUN_8006c894
/* 5A88C 8006A08C 21384700 */   addu      $a3, $v0, $a3
/* 5A890 8006A090 02000424 */  addiu      $a0, $zero, 2
/* 5A894 8006A094 21280000 */  addu       $a1, $zero, $zero
/* 5A898 8006A098 21304002 */  addu       $a2, $s2, $zero
/* 5A89C 8006A09C FBB2010C */  jal        FUN_8006cbec
/* 5A8A0 8006A0A0 21386002 */   addu      $a3, $s3, $zero
/* 5A8A4 8006A0A4 02000424 */  addiu      $a0, $zero, 2
/* 5A8A8 8006A0A8 21280000 */  addu       $a1, $zero, $zero
/* 5A8AC 8006A0AC 2130C002 */  addu       $a2, $s6, $zero
/* 5A8B0 8006A0B0 9BB2010C */  jal        FUN_8006ca6c
/* 5A8B4 8006A0B4 2138A002 */   addu      $a3, $s5, $zero
/* 5A8B8 8006A0B8 02000424 */  addiu      $a0, $zero, 2
/* 5A8BC 8006A0BC 21280000 */  addu       $a1, $zero, $zero
/* 5A8C0 8006A0C0 21308002 */  addu       $a2, $s4, $zero
/* 5A8C4 8006A0C4 21388002 */  addu       $a3, $s4, $zero
/* 5A8C8 8006A0C8 79B2010C */  jal        FUN_8006c9e4
/* 5A8CC 8006A0CC 1000B4AF */   sw        $s4, 0x10($sp)
/* 5A8D0 8006A0D0 02000424 */  addiu      $a0, $zero, 2
/* 5A8D4 8006A0D4 01000524 */  addiu      $a1, $zero, 1
/* 5A8D8 8006A0D8 18002B86 */  lh         $t3, 0x18($s1)
/* 5A8DC 8006A0DC 1A002C86 */  lh         $t4, 0x1a($s1)
/* 5A8E0 8006A0E0 10003686 */  lh         $s6, 0x10($s1)
/* 5A8E4 8006A0E4 0400228E */  lw         $v0, 4($s1)
/* 5A8E8 8006A0E8 12003586 */  lh         $s5, 0x12($s1)
/* 5A8EC 8006A0EC 16002796 */  lhu        $a3, 0x16($s1)
/* 5A8F0 8006A0F0 C2190200 */  srl        $v1, $v0, 7
/* 5A8F4 8006A0F4 03006A30 */  andi       $t2, $v1, 3
/* 5A8F8 8006A0F8 42310200 */  srl        $a2, $v0, 5
/* 5A8FC 8006A0FC 0300C930 */  andi       $t1, $a2, 3
/* 5A900 8006A100 0F004330 */  andi       $v1, $v0, 0xf
/* 5A904 8006A104 80410300 */  sll        $t0, $v1, 6
/* 5A908 8006A108 00310200 */  sll        $a2, $v0, 4
/* 5A90C 8006A10C 0001C630 */  andi       $a2, $a2, 0x100
/* 5A910 8006A110 82100200 */  srl        $v0, $v0, 2
/* 5A914 8006A114 00024230 */  andi       $v0, $v0, 0x200
/* 5A918 8006A118 2110C200 */  addu       $v0, $a2, $v0
/* 5A91C 8006A11C 3F00E330 */  andi       $v1, $a3, 0x3f
/* 5A920 8006A120 82990700 */  srl        $s3, $a3, 6
/* 5A924 8006A124 14002692 */  lbu        $a2, 0x14($s1)
/* 5A928 8006A128 15002792 */  lbu        $a3, 0x15($s1)
/* 5A92C 8006A12C 00910300 */  sll        $s2, $v1, 4
/* 5A930 8006A130 1000ABAF */  sw         $t3, 0x10($sp)
/* 5A934 8006A134 1400ACAF */  sw         $t4, 0x14($sp)
/* 5A938 8006A138 1800AAAF */  sw         $t2, 0x18($sp)
/* 5A93C 8006A13C 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 5A940 8006A140 21300601 */  addu       $a2, $t0, $a2
/* 5A944 8006A144 25B2010C */  jal        FUN_8006c894
/* 5A948 8006A148 21384700 */   addu      $a3, $v0, $a3
/* 5A94C 8006A14C 02000424 */  addiu      $a0, $zero, 2
/* 5A950 8006A150 01000524 */  addiu      $a1, $zero, 1
/* 5A954 8006A154 21304002 */  addu       $a2, $s2, $zero
/* 5A958 8006A158 FBB2010C */  jal        FUN_8006cbec
/* 5A95C 8006A15C 21386002 */   addu      $a3, $s3, $zero
/* 5A960 8006A160 02000424 */  addiu      $a0, $zero, 2
/* 5A964 8006A164 01000524 */  addiu      $a1, $zero, 1
/* 5A968 8006A168 2130C002 */  addu       $a2, $s6, $zero
/* 5A96C 8006A16C 9BB2010C */  jal        FUN_8006ca6c
/* 5A970 8006A170 2138A002 */   addu      $a3, $s5, $zero
/* 5A974 8006A174 02000424 */  addiu      $a0, $zero, 2
/* 5A978 8006A178 01000524 */  addiu      $a1, $zero, 1
/* 5A97C 8006A17C 21308002 */  addu       $a2, $s4, $zero
/* 5A980 8006A180 2138C000 */  addu       $a3, $a2, $zero
/* 5A984 8006A184 79B2010C */  jal        FUN_8006c9e4
/* 5A988 8006A188 1000B4AF */   sw        $s4, 0x10($sp)
/* 5A98C 8006A18C F5A80108 */  j          .L8006A3D4
/* 5A990 8006A190 00000000 */   nop
.L8006A194:
/* 5A994 8006A194 6009622C */  sltiu      $v0, $v1, 0x960
/* 5A998 8006A198 07004010 */  beqz       $v0, .L8006A1B8
/* 5A99C 8006A19C 80000224 */   addiu     $v0, $zero, 0x80
/* 5A9A0 8006A1A0 0800C38F */  lw         $v1, 8($fp)
/* 5A9A4 8006A1A4 00000000 */  nop
/* 5A9A8 8006A1A8 0A006210 */  beq        $v1, $v0, .L8006A1D4
/* 5A9AC 8006A1AC FEFF0424 */   addiu     $a0, $zero, -2
/* 5A9B0 8006A1B0 80A80108 */  j          .L8006A200
/* 5A9B4 8006A1B4 00000000 */   nop
.L8006A1B8:
/* 5A9B8 8006A1B8 9C09622C */  sltiu      $v0, $v1, 0x99c
/* 5A9BC 8006A1BC 8B004010 */  beqz       $v0, .L8006A3EC
/* 5A9C0 8006A1C0 80000224 */   addiu     $v0, $zero, 0x80
/* 5A9C4 8006A1C4 0800C38F */  lw         $v1, 8($fp)
/* 5A9C8 8006A1C8 00000000 */  nop
/* 5A9CC 8006A1CC 0C006214 */  bne        $v1, $v0, .L8006A200
/* 5A9D0 8006A1D0 FEFF0424 */   addiu     $a0, $zero, -2
.L8006A1D4:
/* 5A9D4 8006A1D4 CEC0010C */  jal        FUN_80070338
/* 5A9D8 8006A1D8 FFFF0424 */   addiu     $a0, $zero, -1
/* 5A9DC 8006A1DC 1380033C */  lui        $v1, %hi(D_8012A9D4)
/* 5A9E0 8006A1E0 D4A9658C */  lw         $a1, %lo(D_8012A9D4)($v1)
/* 5A9E4 8006A1E4 00000000 */  nop
/* 5A9E8 8006A1E8 0400A48C */  lw         $a0, 4($a1)
/* 5A9EC 8006A1EC 21284000 */  addu       $a1, $v0, $zero
/* 5A9F0 8006A1F0 D685000C */  jal        AddPrim
/* 5A9F4 8006A1F4 DC038424 */   addiu     $a0, $a0, 0x3dc
/* 5A9F8 8006A1F8 F5A80108 */  j          .L8006A3D4
/* 5A9FC 8006A1FC 00000000 */   nop
.L8006A200:
/* 5AA00 8006A200 DDCA010C */  jal        FUN_80072b74
/* 5AA04 8006A204 21280000 */   addu      $a1, $zero, $zero
/* 5AA08 8006A208 FEFF0424 */  addiu      $a0, $zero, -2
/* 5AA0C 8006A20C 01000524 */  addiu      $a1, $zero, 1
/* 5AA10 8006A210 DDCA010C */  jal        FUN_80072b74
/* 5AA14 8006A214 21804000 */   addu      $s0, $v0, $zero
/* 5AA18 8006A218 7400238E */  lw         $v1, 0x74($s1)
/* 5AA1C 8006A21C 0400C48F */  lw         $a0, 4($fp)
/* 5AA20 8006A220 00000000 */  nop
/* 5AA24 8006A224 23186400 */  subu       $v1, $v1, $a0
/* 5AA28 8006A228 FEFF6324 */  addiu      $v1, $v1, -2
/* 5AA2C 8006A22C C0190300 */  sll        $v1, $v1, 7
/* 5AA30 8006A230 3D8D043C */  lui        $a0, 0x8d3d
/* 5AA34 8006A234 09CB8434 */  ori        $a0, $a0, 0xcb09
/* 5AA38 8006A238 19006400 */  multu      $v1, $a0
/* 5AA3C 8006A23C 10180000 */  mfhi       $v1
/* 5AA40 8006A240 42A10300 */  srl        $s4, $v1, 5
/* 5AA44 8006A244 0800C38F */  lw         $v1, 8($fp)
/* 5AA48 8006A248 21884000 */  addu       $s1, $v0, $zero
/* 5AA4C 8006A24C 2A107400 */  slt        $v0, $v1, $s4
/* 5AA50 8006A250 02004010 */  beqz       $v0, .L8006A25C
/* 5AA54 8006A254 02000424 */   addiu     $a0, $zero, 2
/* 5AA58 8006A258 21A06000 */  addu       $s4, $v1, $zero
.L8006A25C:
/* 5AA5C 8006A25C 21280000 */  addu       $a1, $zero, $zero
/* 5AA60 8006A260 02001724 */  addiu      $s7, $zero, 2
/* 5AA64 8006A264 18000B86 */  lh         $t3, 0x18($s0)
/* 5AA68 8006A268 1A000C86 */  lh         $t4, 0x1a($s0)
/* 5AA6C 8006A26C 10001686 */  lh         $s6, 0x10($s0)
/* 5AA70 8006A270 0400028E */  lw         $v0, 4($s0)
/* 5AA74 8006A274 12001586 */  lh         $s5, 0x12($s0)
/* 5AA78 8006A278 16000796 */  lhu        $a3, 0x16($s0)
/* 5AA7C 8006A27C C2190200 */  srl        $v1, $v0, 7
/* 5AA80 8006A280 03006A30 */  andi       $t2, $v1, 3
/* 5AA84 8006A284 42310200 */  srl        $a2, $v0, 5
/* 5AA88 8006A288 0300C930 */  andi       $t1, $a2, 3
/* 5AA8C 8006A28C 0F004330 */  andi       $v1, $v0, 0xf
/* 5AA90 8006A290 80410300 */  sll        $t0, $v1, 6
/* 5AA94 8006A294 00310200 */  sll        $a2, $v0, 4
/* 5AA98 8006A298 0001C630 */  andi       $a2, $a2, 0x100
/* 5AA9C 8006A29C 82100200 */  srl        $v0, $v0, 2
/* 5AAA0 8006A2A0 00024230 */  andi       $v0, $v0, 0x200
/* 5AAA4 8006A2A4 2110C200 */  addu       $v0, $a2, $v0
/* 5AAA8 8006A2A8 3F00E330 */  andi       $v1, $a3, 0x3f
/* 5AAAC 8006A2AC 82990700 */  srl        $s3, $a3, 6
/* 5AAB0 8006A2B0 14000692 */  lbu        $a2, 0x14($s0)
/* 5AAB4 8006A2B4 15000792 */  lbu        $a3, 0x15($s0)
/* 5AAB8 8006A2B8 00910300 */  sll        $s2, $v1, 4
/* 5AABC 8006A2BC 1000ABAF */  sw         $t3, 0x10($sp)
/* 5AAC0 8006A2C0 1400ACAF */  sw         $t4, 0x14($sp)
/* 5AAC4 8006A2C4 1800AAAF */  sw         $t2, 0x18($sp)
/* 5AAC8 8006A2C8 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 5AACC 8006A2CC 21300601 */  addu       $a2, $t0, $a2
/* 5AAD0 8006A2D0 25B2010C */  jal        FUN_8006c894
/* 5AAD4 8006A2D4 21384700 */   addu      $a3, $v0, $a3
/* 5AAD8 8006A2D8 02000424 */  addiu      $a0, $zero, 2
/* 5AADC 8006A2DC 21280000 */  addu       $a1, $zero, $zero
/* 5AAE0 8006A2E0 21304002 */  addu       $a2, $s2, $zero
/* 5AAE4 8006A2E4 FBB2010C */  jal        FUN_8006cbec
/* 5AAE8 8006A2E8 21386002 */   addu      $a3, $s3, $zero
/* 5AAEC 8006A2EC 02000424 */  addiu      $a0, $zero, 2
/* 5AAF0 8006A2F0 21280000 */  addu       $a1, $zero, $zero
/* 5AAF4 8006A2F4 2130C002 */  addu       $a2, $s6, $zero
/* 5AAF8 8006A2F8 9BB2010C */  jal        FUN_8006ca6c
/* 5AAFC 8006A2FC 2138A002 */   addu      $a3, $s5, $zero
/* 5AB00 8006A300 02000424 */  addiu      $a0, $zero, 2
/* 5AB04 8006A304 21280000 */  addu       $a1, $zero, $zero
/* 5AB08 8006A308 21308002 */  addu       $a2, $s4, $zero
/* 5AB0C 8006A30C 21388002 */  addu       $a3, $s4, $zero
/* 5AB10 8006A310 79B2010C */  jal        FUN_8006c9e4
/* 5AB14 8006A314 1000B4AF */   sw        $s4, 0x10($sp)
/* 5AB18 8006A318 02000424 */  addiu      $a0, $zero, 2
/* 5AB1C 8006A31C 01000524 */  addiu      $a1, $zero, 1
/* 5AB20 8006A320 18002B86 */  lh         $t3, 0x18($s1)
/* 5AB24 8006A324 1A002C86 */  lh         $t4, 0x1a($s1)
/* 5AB28 8006A328 10003686 */  lh         $s6, 0x10($s1)
/* 5AB2C 8006A32C 0400228E */  lw         $v0, 4($s1)
/* 5AB30 8006A330 12003586 */  lh         $s5, 0x12($s1)
/* 5AB34 8006A334 16002796 */  lhu        $a3, 0x16($s1)
/* 5AB38 8006A338 C2190200 */  srl        $v1, $v0, 7
/* 5AB3C 8006A33C 03006A30 */  andi       $t2, $v1, 3
/* 5AB40 8006A340 42310200 */  srl        $a2, $v0, 5
/* 5AB44 8006A344 0300C930 */  andi       $t1, $a2, 3
/* 5AB48 8006A348 0F004330 */  andi       $v1, $v0, 0xf
/* 5AB4C 8006A34C 80410300 */  sll        $t0, $v1, 6
/* 5AB50 8006A350 00310200 */  sll        $a2, $v0, 4
/* 5AB54 8006A354 0001C630 */  andi       $a2, $a2, 0x100
/* 5AB58 8006A358 82100200 */  srl        $v0, $v0, 2
/* 5AB5C 8006A35C 00024230 */  andi       $v0, $v0, 0x200
/* 5AB60 8006A360 2110C200 */  addu       $v0, $a2, $v0
/* 5AB64 8006A364 3F00E330 */  andi       $v1, $a3, 0x3f
/* 5AB68 8006A368 82990700 */  srl        $s3, $a3, 6
/* 5AB6C 8006A36C 14002692 */  lbu        $a2, 0x14($s1)
/* 5AB70 8006A370 15002792 */  lbu        $a3, 0x15($s1)
/* 5AB74 8006A374 00910300 */  sll        $s2, $v1, 4
/* 5AB78 8006A378 1000ABAF */  sw         $t3, 0x10($sp)
/* 5AB7C 8006A37C 1400ACAF */  sw         $t4, 0x14($sp)
/* 5AB80 8006A380 1800AAAF */  sw         $t2, 0x18($sp)
/* 5AB84 8006A384 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 5AB88 8006A388 21300601 */  addu       $a2, $t0, $a2
/* 5AB8C 8006A38C 25B2010C */  jal        FUN_8006c894
/* 5AB90 8006A390 21384700 */   addu      $a3, $v0, $a3
/* 5AB94 8006A394 02000424 */  addiu      $a0, $zero, 2
/* 5AB98 8006A398 01000524 */  addiu      $a1, $zero, 1
/* 5AB9C 8006A39C 21304002 */  addu       $a2, $s2, $zero
/* 5ABA0 8006A3A0 FBB2010C */  jal        FUN_8006cbec
/* 5ABA4 8006A3A4 21386002 */   addu      $a3, $s3, $zero
/* 5ABA8 8006A3A8 02000424 */  addiu      $a0, $zero, 2
/* 5ABAC 8006A3AC 01000524 */  addiu      $a1, $zero, 1
/* 5ABB0 8006A3B0 2130C002 */  addu       $a2, $s6, $zero
/* 5ABB4 8006A3B4 9BB2010C */  jal        FUN_8006ca6c
/* 5ABB8 8006A3B8 2138A002 */   addu      $a3, $s5, $zero
/* 5ABBC 8006A3BC 02000424 */  addiu      $a0, $zero, 2
/* 5ABC0 8006A3C0 01000524 */  addiu      $a1, $zero, 1
/* 5ABC4 8006A3C4 21308002 */  addu       $a2, $s4, $zero
/* 5ABC8 8006A3C8 2138C000 */  addu       $a3, $a2, $zero
/* 5ABCC 8006A3CC 79B2010C */  jal        FUN_8006c9e4
/* 5ABD0 8006A3D0 1000B4AF */   sw        $s4, 0x10($sp)
.L8006A3D4:
/* 5ABD4 8006A3D4 B4C7020C */  jal        FUN_800b1ed0
/* 5ABD8 8006A3D8 00000000 */   nop
/* 5ABDC 8006A3DC DFC4010C */  jal        FUN_8007137c
/* 5ABE0 8006A3E0 00000000 */   nop
/* 5ABE4 8006A3E4 67AA0108 */  j          .L8006A99C
/* 5ABE8 8006A3E8 0F80043C */   lui       $a0, 0x800f
.L8006A3EC:
/* 5ABEC 8006A3EC BC09622C */  sltiu      $v0, $v1, 0x9bc
/* 5ABF0 8006A3F0 DF004010 */  beqz       $v0, .L8006A770
/* 5ABF4 8006A3F4 8C0A622C */   sltiu     $v0, $v1, 0xa8c
/* 5ABF8 8006A3F8 64F66324 */  addiu      $v1, $v1, -0x99c
/* 5ABFC 8006A3FC 40110300 */  sll        $v0, $v1, 5
/* 5AC00 8006A400 23104300 */  subu       $v0, $v0, $v1
/* 5AC04 8006A404 80100200 */  sll        $v0, $v0, 2
/* 5AC08 8006A408 42A10200 */  srl        $s4, $v0, 5
/* 5AC0C 8006A40C 40181400 */  sll        $v1, $s4, 1
/* 5AC10 8006A410 7C000224 */  addiu      $v0, $zero, 0x7c
/* 5AC14 8006A414 23984300 */  subu       $s3, $v0, $v1
/* 5AC18 8006A418 0800C38F */  lw         $v1, 8($fp)
/* 5AC1C 8006A41C 00000000 */  nop
/* 5AC20 8006A420 2A107300 */  slt        $v0, $v1, $s3
/* 5AC24 8006A424 03004010 */  beqz       $v0, .L8006A434
/* 5AC28 8006A428 00000000 */   nop
/* 5AC2C 8006A42C 21A06000 */  addu       $s4, $v1, $zero
/* 5AC30 8006A430 21986000 */  addu       $s3, $v1, $zero
.L8006A434:
/* 5AC34 8006A434 6900601A */  blez       $s3, .L8006A5DC
/* 5AC38 8006A438 FEFF0424 */   addiu     $a0, $zero, -2
/* 5AC3C 8006A43C DDCA010C */  jal        FUN_80072b74
/* 5AC40 8006A440 21280000 */   addu      $a1, $zero, $zero
/* 5AC44 8006A444 FEFF0424 */  addiu      $a0, $zero, -2
/* 5AC48 8006A448 01000524 */  addiu      $a1, $zero, 1
/* 5AC4C 8006A44C DDCA010C */  jal        FUN_80072b74
/* 5AC50 8006A450 21804000 */   addu      $s0, $v0, $zero
/* 5AC54 8006A454 02000424 */  addiu      $a0, $zero, 2
/* 5AC58 8006A458 21280000 */  addu       $a1, $zero, $zero
/* 5AC5C 8006A45C 01001724 */  addiu      $s7, $zero, 1
/* 5AC60 8006A460 01000324 */  addiu      $v1, $zero, 1
/* 5AC64 8006A464 18000D86 */  lh         $t5, 0x18($s0)
/* 5AC68 8006A468 1A000E86 */  lh         $t6, 0x1a($s0)
/* 5AC6C 8006A46C 10001586 */  lh         $s5, 0x10($s0)
/* 5AC70 8006A470 12001686 */  lh         $s6, 0x12($s0)
/* 5AC74 8006A474 0400098E */  lw         $t1, 4($s0)
/* 5AC78 8006A478 16000A96 */  lhu        $t2, 0x16($s0)
/* 5AC7C 8006A47C 14000692 */  lbu        $a2, 0x14($s0)
/* 5AC80 8006A480 15000792 */  lbu        $a3, 0x15($s0)
/* 5AC84 8006A484 21804000 */  addu       $s0, $v0, $zero
/* 5AC88 8006A488 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5AC8C 8006A48C C2410900 */  srl        $t0, $t1, 7
/* 5AC90 8006A490 03000C31 */  andi       $t4, $t0, 3
/* 5AC94 8006A494 0F002331 */  andi       $v1, $t1, 0xf
/* 5AC98 8006A498 80590300 */  sll        $t3, $v1, 6
/* 5AC9C 8006A49C 00410900 */  sll        $t0, $t1, 4
/* 5ACA0 8006A4A0 00010831 */  andi       $t0, $t0, 0x100
/* 5ACA4 8006A4A4 82480900 */  srl        $t1, $t1, 2
/* 5ACA8 8006A4A8 00022931 */  andi       $t1, $t1, 0x200
/* 5ACAC 8006A4AC 21400901 */  addu       $t0, $t0, $t1
/* 5ACB0 8006A4B0 3F004331 */  andi       $v1, $t2, 0x3f
/* 5ACB4 8006A4B4 00890300 */  sll        $s1, $v1, 4
/* 5ACB8 8006A4B8 82910A00 */  srl        $s2, $t2, 6
/* 5ACBC 8006A4BC 21306601 */  addu       $a2, $t3, $a2
/* 5ACC0 8006A4C0 21380701 */  addu       $a3, $t0, $a3
/* 5ACC4 8006A4C4 1000ADAF */  sw         $t5, 0x10($sp)
/* 5ACC8 8006A4C8 1400AEAF */  sw         $t6, 0x14($sp)
/* 5ACCC 8006A4CC 25B2010C */  jal        FUN_8006c894
/* 5ACD0 8006A4D0 1800ACAF */   sw        $t4, 0x18($sp)
/* 5ACD4 8006A4D4 02000424 */  addiu      $a0, $zero, 2
/* 5ACD8 8006A4D8 21280000 */  addu       $a1, $zero, $zero
/* 5ACDC 8006A4DC 21302002 */  addu       $a2, $s1, $zero
/* 5ACE0 8006A4E0 FBB2010C */  jal        FUN_8006cbec
/* 5ACE4 8006A4E4 21384002 */   addu      $a3, $s2, $zero
/* 5ACE8 8006A4E8 02000424 */  addiu      $a0, $zero, 2
/* 5ACEC 8006A4EC 21280000 */  addu       $a1, $zero, $zero
/* 5ACF0 8006A4F0 2130A002 */  addu       $a2, $s5, $zero
/* 5ACF4 8006A4F4 9BB2010C */  jal        FUN_8006ca6c
/* 5ACF8 8006A4F8 2138C002 */   addu      $a3, $s6, $zero
/* 5ACFC 8006A4FC 02000424 */  addiu      $a0, $zero, 2
/* 5AD00 8006A500 21280000 */  addu       $a1, $zero, $zero
/* 5AD04 8006A504 21306002 */  addu       $a2, $s3, $zero
/* 5AD08 8006A508 21386002 */  addu       $a3, $s3, $zero
/* 5AD0C 8006A50C 79B2010C */  jal        FUN_8006c9e4
/* 5AD10 8006A510 1000B3AF */   sw        $s3, 0x10($sp)
/* 5AD14 8006A514 02000424 */  addiu      $a0, $zero, 2
/* 5AD18 8006A518 18000D86 */  lh         $t5, 0x18($s0)
/* 5AD1C 8006A51C 1A000E86 */  lh         $t6, 0x1a($s0)
/* 5AD20 8006A520 10001586 */  lh         $s5, 0x10($s0)
/* 5AD24 8006A524 12001686 */  lh         $s6, 0x12($s0)
/* 5AD28 8006A528 0400088E */  lw         $t0, 4($s0)
/* 5AD2C 8006A52C 16000996 */  lhu        $t1, 0x16($s0)
/* 5AD30 8006A530 14000692 */  lbu        $a2, 0x14($s0)
/* 5AD34 8006A534 15000792 */  lbu        $a3, 0x15($s0)
/* 5AD38 8006A538 01000524 */  addiu      $a1, $zero, 1
/* 5AD3C 8006A53C 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 5AD40 8006A540 02001724 */  addiu      $s7, $zero, 2
/* 5AD44 8006A544 C2110800 */  srl        $v0, $t0, 7
/* 5AD48 8006A548 03004C30 */  andi       $t4, $v0, 3
/* 5AD4C 8006A54C 0F000331 */  andi       $v1, $t0, 0xf
/* 5AD50 8006A550 80590300 */  sll        $t3, $v1, 6
/* 5AD54 8006A554 00110800 */  sll        $v0, $t0, 4
/* 5AD58 8006A558 00014230 */  andi       $v0, $v0, 0x100
/* 5AD5C 8006A55C 82400800 */  srl        $t0, $t0, 2
/* 5AD60 8006A560 00020831 */  andi       $t0, $t0, 0x200
/* 5AD64 8006A564 21404800 */  addu       $t0, $v0, $t0
/* 5AD68 8006A568 3F002331 */  andi       $v1, $t1, 0x3f
/* 5AD6C 8006A56C 00890300 */  sll        $s1, $v1, 4
/* 5AD70 8006A570 82910900 */  srl        $s2, $t1, 6
/* 5AD74 8006A574 21306601 */  addu       $a2, $t3, $a2
/* 5AD78 8006A578 21380701 */  addu       $a3, $t0, $a3
/* 5AD7C 8006A57C 1000ADAF */  sw         $t5, 0x10($sp)
/* 5AD80 8006A580 1400AEAF */  sw         $t6, 0x14($sp)
/* 5AD84 8006A584 25B2010C */  jal        FUN_8006c894
/* 5AD88 8006A588 1800ACAF */   sw        $t4, 0x18($sp)
/* 5AD8C 8006A58C 02000424 */  addiu      $a0, $zero, 2
/* 5AD90 8006A590 01000524 */  addiu      $a1, $zero, 1
/* 5AD94 8006A594 21302002 */  addu       $a2, $s1, $zero
/* 5AD98 8006A598 FBB2010C */  jal        FUN_8006cbec
/* 5AD9C 8006A59C 21384002 */   addu      $a3, $s2, $zero
/* 5ADA0 8006A5A0 02000424 */  addiu      $a0, $zero, 2
/* 5ADA4 8006A5A4 01000524 */  addiu      $a1, $zero, 1
/* 5ADA8 8006A5A8 2130A002 */  addu       $a2, $s5, $zero
/* 5ADAC 8006A5AC 9BB2010C */  jal        FUN_8006ca6c
/* 5ADB0 8006A5B0 2138C002 */   addu      $a3, $s6, $zero
/* 5ADB4 8006A5B4 02000424 */  addiu      $a0, $zero, 2
/* 5ADB8 8006A5B8 01000524 */  addiu      $a1, $zero, 1
/* 5ADBC 8006A5BC 21306002 */  addu       $a2, $s3, $zero
/* 5ADC0 8006A5C0 2138C000 */  addu       $a3, $a2, $zero
/* 5ADC4 8006A5C4 79B2010C */  jal        FUN_8006c9e4
/* 5ADC8 8006A5C8 1000B3AF */   sw        $s3, 0x10($sp)
/* 5ADCC 8006A5CC B4C7020C */  jal        FUN_800b1ed0
/* 5ADD0 8006A5D0 00000000 */   nop
/* 5ADD4 8006A5D4 DFC4010C */  jal        FUN_8007137c
/* 5ADD8 8006A5D8 00000000 */   nop
.L8006A5DC:
/* 5ADDC 8006A5DC 78001124 */  addiu      $s1, $zero, 0x78
/* 5ADE0 8006A5E0 02000424 */  addiu      $a0, $zero, 2
/* 5ADE4 8006A5E4 1380033C */  lui        $v1, %hi(D_801280E0)
/* 5ADE8 8006A5E8 E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 5ADEC 8006A5EC 1380033C */  lui        $v1, %hi(D_801282E0)
/* 5ADF0 8006A5F0 31004690 */  lbu        $a2, 0x31($v0)
/* 5ADF4 8006A5F4 E0826224 */  addiu      $v0, $v1, %lo(D_801282E0)
/* 5ADF8 8006A5F8 C0800600 */  sll        $s0, $a2, 3
/* 5ADFC 8006A5FC 23800602 */  subu       $s0, $s0, $a2
/* 5AE00 8006A600 80801000 */  sll        $s0, $s0, 2
/* 5AE04 8006A604 21800202 */  addu       $s0, $s0, $v0
/* 5AE08 8006A608 04000686 */  lh         $a2, 4($s0)
/* 5AE0C 8006A60C FFFF0224 */  addiu      $v0, $zero, -1
/* 5AE10 8006A610 1000B1AF */  sw         $s1, 0x10($sp)
/* 5AE14 8006A614 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5AE18 8006A618 06000786 */  lh         $a3, 6($s0)
/* 5AE1C 8006A61C 0A000286 */  lh         $v0, 0xa($s0)
/* 5AE20 8006A620 0C000386 */  lh         $v1, 0xc($s0)
/* 5AE24 8006A624 2128E002 */  addu       $a1, $s7, $zero
/* 5AE28 8006A628 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AE2C 8006A62C 25B2010C */  jal        FUN_8006c894
/* 5AE30 8006A630 1800A3AF */   sw        $v1, 0x18($sp)
/* 5AE34 8006A634 02000424 */  addiu      $a0, $zero, 2
/* 5AE38 8006A638 16000686 */  lh         $a2, 0x16($s0)
/* 5AE3C 8006A63C 18000786 */  lh         $a3, 0x18($s0)
/* 5AE40 8006A640 FBB2010C */  jal        FUN_8006cbec
/* 5AE44 8006A644 2128E002 */   addu      $a1, $s7, $zero
/* 5AE48 8006A648 02000424 */  addiu      $a0, $zero, 2
/* 5AE4C 8006A64C 2128E002 */  addu       $a1, $s7, $zero
/* 5AE50 8006A650 60FF0624 */  addiu      $a2, $zero, -0xa0
/* 5AE54 8006A654 9BB2010C */  jal        FUN_8006ca6c
/* 5AE58 8006A658 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5AE5C 8006A65C 02000424 */  addiu      $a0, $zero, 2
/* 5AE60 8006A660 2128E002 */  addu       $a1, $s7, $zero
/* 5AE64 8006A664 21308002 */  addu       $a2, $s4, $zero
/* 5AE68 8006A668 21388002 */  addu       $a3, $s4, $zero
/* 5AE6C 8006A66C 79B2010C */  jal        FUN_8006c9e4
/* 5AE70 8006A670 1000B4AF */   sw        $s4, 0x10($sp)
/* 5AE74 8006A674 0100F726 */  addiu      $s7, $s7, 1
/* 5AE78 8006A678 02000424 */  addiu      $a0, $zero, 2
/* 5AE7C 8006A67C 2128E002 */  addu       $a1, $s7, $zero
/* 5AE80 8006A680 1000B1AF */  sw         $s1, 0x10($sp)
/* 5AE84 8006A684 50001124 */  addiu      $s1, $zero, 0x50
/* 5AE88 8006A688 04000686 */  lh         $a2, 4($s0)
/* 5AE8C 8006A68C FFFF0224 */  addiu      $v0, $zero, -1
/* 5AE90 8006A690 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5AE94 8006A694 06000786 */  lh         $a3, 6($s0)
/* 5AE98 8006A698 0A000286 */  lh         $v0, 0xa($s0)
/* 5AE9C 8006A69C 0C000386 */  lh         $v1, 0xc($s0)
/* 5AEA0 8006A6A0 7800C624 */  addiu      $a2, $a2, 0x78
/* 5AEA4 8006A6A4 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AEA8 8006A6A8 25B2010C */  jal        FUN_8006c894
/* 5AEAC 8006A6AC 1800A3AF */   sw        $v1, 0x18($sp)
/* 5AEB0 8006A6B0 02000424 */  addiu      $a0, $zero, 2
/* 5AEB4 8006A6B4 16000686 */  lh         $a2, 0x16($s0)
/* 5AEB8 8006A6B8 18000786 */  lh         $a3, 0x18($s0)
/* 5AEBC 8006A6BC FBB2010C */  jal        FUN_8006cbec
/* 5AEC0 8006A6C0 2128E002 */   addu      $a1, $s7, $zero
/* 5AEC4 8006A6C4 02000424 */  addiu      $a0, $zero, 2
/* 5AEC8 8006A6C8 2128E002 */  addu       $a1, $s7, $zero
/* 5AECC 8006A6CC D8FF0624 */  addiu      $a2, $zero, -0x28
/* 5AED0 8006A6D0 9BB2010C */  jal        FUN_8006ca6c
/* 5AED4 8006A6D4 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5AED8 8006A6D8 02000424 */  addiu      $a0, $zero, 2
/* 5AEDC 8006A6DC 2128E002 */  addu       $a1, $s7, $zero
/* 5AEE0 8006A6E0 21308002 */  addu       $a2, $s4, $zero
/* 5AEE4 8006A6E4 21388002 */  addu       $a3, $s4, $zero
/* 5AEE8 8006A6E8 79B2010C */  jal        FUN_8006c9e4
/* 5AEEC 8006A6EC 1000B4AF */   sw        $s4, 0x10($sp)
/* 5AEF0 8006A6F0 0100F726 */  addiu      $s7, $s7, 1
/* 5AEF4 8006A6F4 02000424 */  addiu      $a0, $zero, 2
/* 5AEF8 8006A6F8 2128E002 */  addu       $a1, $s7, $zero
/* 5AEFC 8006A6FC 04000686 */  lh         $a2, 4($s0)
/* 5AF00 8006A700 FFFF0224 */  addiu      $v0, $zero, -1
/* 5AF04 8006A704 1000B1AF */  sw         $s1, 0x10($sp)
/* 5AF08 8006A708 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5AF0C 8006A70C 06000786 */  lh         $a3, 6($s0)
/* 5AF10 8006A710 0A000286 */  lh         $v0, 0xa($s0)
/* 5AF14 8006A714 0C000386 */  lh         $v1, 0xc($s0)
/* 5AF18 8006A718 F000C624 */  addiu      $a2, $a2, 0xf0
/* 5AF1C 8006A71C 1400A2AF */  sw         $v0, 0x14($sp)
/* 5AF20 8006A720 25B2010C */  jal        FUN_8006c894
/* 5AF24 8006A724 1800A3AF */   sw        $v1, 0x18($sp)
/* 5AF28 8006A728 02000424 */  addiu      $a0, $zero, 2
/* 5AF2C 8006A72C 16000686 */  lh         $a2, 0x16($s0)
/* 5AF30 8006A730 18000786 */  lh         $a3, 0x18($s0)
/* 5AF34 8006A734 FBB2010C */  jal        FUN_8006cbec
/* 5AF38 8006A738 2128E002 */   addu      $a1, $s7, $zero
/* 5AF3C 8006A73C 02000424 */  addiu      $a0, $zero, 2
/* 5AF40 8006A740 2128E002 */  addu       $a1, $s7, $zero
/* 5AF44 8006A744 50000624 */  addiu      $a2, $zero, 0x50
/* 5AF48 8006A748 9BB2010C */  jal        FUN_8006ca6c
/* 5AF4C 8006A74C 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5AF50 8006A750 02000424 */  addiu      $a0, $zero, 2
/* 5AF54 8006A754 2128E002 */  addu       $a1, $s7, $zero
/* 5AF58 8006A758 21308002 */  addu       $a2, $s4, $zero
/* 5AF5C 8006A75C 2138C000 */  addu       $a3, $a2, $zero
/* 5AF60 8006A760 79B2010C */  jal        FUN_8006c9e4
/* 5AF64 8006A764 1000B4AF */   sw        $s4, 0x10($sp)
/* 5AF68 8006A768 66AA0108 */  j          .L8006A998
/* 5AF6C 8006A76C 0100F726 */   addiu     $s7, $s7, 1
.L8006A770:
/* 5AF70 8006A770 14004010 */  beqz       $v0, .L8006A7C4
/* 5AF74 8006A774 C80A622C */   sltiu     $v0, $v1, 0xac8
/* 5AF78 8006A778 0800C38F */  lw         $v1, 8($fp)
/* 5AF7C 8006A77C 00000000 */  nop
/* 5AF80 8006A780 80006228 */  slti       $v0, $v1, 0x80
/* 5AF84 8006A784 02004010 */  beqz       $v0, .L8006A790
/* 5AF88 8006A788 80001124 */   addiu     $s1, $zero, 0x80
/* 5AF8C 8006A78C 21886000 */  addu       $s1, $v1, $zero
.L8006A790:
/* 5AF90 8006A790 78001224 */  addiu      $s2, $zero, 0x78
/* 5AF94 8006A794 02000424 */  addiu      $a0, $zero, 2
/* 5AF98 8006A798 21280000 */  addu       $a1, $zero, $zero
/* 5AF9C 8006A79C 1380033C */  lui        $v1, %hi(D_801280E0)
/* 5AFA0 8006A7A0 E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 5AFA4 8006A7A4 1380033C */  lui        $v1, %hi(D_801282E0)
/* 5AFA8 8006A7A8 31004690 */  lbu        $a2, 0x31($v0)
/* 5AFAC 8006A7AC E0826224 */  addiu      $v0, $v1, %lo(D_801282E0)
/* 5AFB0 8006A7B0 C0800600 */  sll        $s0, $a2, 3
/* 5AFB4 8006A7B4 23800602 */  subu       $s0, $s0, $a2
/* 5AFB8 8006A7B8 80801000 */  sll        $s0, $s0, 2
/* 5AFBC 8006A7BC 10AA0108 */  j          .L8006A840
/* 5AFC0 8006A7C0 21800202 */   addu      $s0, $s0, $v0
.L8006A7C4:
/* 5AFC4 8006A7C4 BFFD4010 */  beqz       $v0, .L80069EC4
/* 5AFC8 8006A7C8 74F56324 */   addiu     $v1, $v1, -0xa8c
/* 5AFCC 8006A7CC C0190300 */  sll        $v1, $v1, 7
/* 5AFD0 8006A7D0 8888023C */  lui        $v0, 0x8888
/* 5AFD4 8006A7D4 89884234 */  ori        $v0, $v0, 0x8889
/* 5AFD8 8006A7D8 19006200 */  multu      $v1, $v0
/* 5AFDC 8006A7DC 78001224 */  addiu      $s2, $zero, 0x78
/* 5AFE0 8006A7E0 1380023C */  lui        $v0, %hi(D_801280E0)
/* 5AFE4 8006A7E4 1380063C */  lui        $a2, %hi(D_801282E0)
/* 5AFE8 8006A7E8 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 5AFEC 8006A7EC 7F000424 */  addiu      $a0, $zero, 0x7f
/* 5AFF0 8006A7F0 31004590 */  lbu        $a1, 0x31($v0)
/* 5AFF4 8006A7F4 E082C624 */  addiu      $a2, $a2, %lo(D_801282E0)
/* 5AFF8 8006A7F8 C0100500 */  sll        $v0, $a1, 3
/* 5AFFC 8006A7FC 23104500 */  subu       $v0, $v0, $a1
/* 5B000 8006A800 80100200 */  sll        $v0, $v0, 2
/* 5B004 8006A804 10180000 */  mfhi       $v1
/* 5B008 8006A808 42190300 */  srl        $v1, $v1, 5
/* 5B00C 8006A80C 23888300 */  subu       $s1, $a0, $v1
/* 5B010 8006A810 0800C48F */  lw         $a0, 8($fp)
/* 5B014 8006A814 00000000 */  nop
/* 5B018 8006A818 2A189100 */  slt        $v1, $a0, $s1
/* 5B01C 8006A81C 02006010 */  beqz       $v1, .L8006A828
/* 5B020 8006A820 21804600 */   addu      $s0, $v0, $a2
/* 5B024 8006A824 21888000 */  addu       $s1, $a0, $zero
.L8006A828:
/* 5B028 8006A828 02002106 */  bgez       $s1, .L8006A834
/* 5B02C 8006A82C 00000000 */   nop
/* 5B030 8006A830 21880000 */  addu       $s1, $zero, $zero
.L8006A834:
/* 5B034 8006A834 58002012 */  beqz       $s1, .L8006A998
/* 5B038 8006A838 02000424 */   addiu     $a0, $zero, 2
/* 5B03C 8006A83C 21280000 */  addu       $a1, $zero, $zero
.L8006A840:
/* 5B040 8006A840 04000686 */  lh         $a2, 4($s0)
/* 5B044 8006A844 FFFF0224 */  addiu      $v0, $zero, -1
/* 5B048 8006A848 1000B2AF */  sw         $s2, 0x10($sp)
/* 5B04C 8006A84C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5B050 8006A850 06000786 */  lh         $a3, 6($s0)
/* 5B054 8006A854 0A000286 */  lh         $v0, 0xa($s0)
/* 5B058 8006A858 0C000386 */  lh         $v1, 0xc($s0)
/* 5B05C 8006A85C 03001724 */  addiu      $s7, $zero, 3
/* 5B060 8006A860 1400A2AF */  sw         $v0, 0x14($sp)
/* 5B064 8006A864 25B2010C */  jal        FUN_8006c894
/* 5B068 8006A868 1800A3AF */   sw        $v1, 0x18($sp)
/* 5B06C 8006A86C 02000424 */  addiu      $a0, $zero, 2
/* 5B070 8006A870 16000686 */  lh         $a2, 0x16($s0)
/* 5B074 8006A874 18000786 */  lh         $a3, 0x18($s0)
/* 5B078 8006A878 FBB2010C */  jal        FUN_8006cbec
/* 5B07C 8006A87C 21280000 */   addu      $a1, $zero, $zero
/* 5B080 8006A880 02000424 */  addiu      $a0, $zero, 2
/* 5B084 8006A884 21280000 */  addu       $a1, $zero, $zero
/* 5B088 8006A888 60FF0624 */  addiu      $a2, $zero, -0xa0
/* 5B08C 8006A88C 9BB2010C */  jal        FUN_8006ca6c
/* 5B090 8006A890 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5B094 8006A894 02000424 */  addiu      $a0, $zero, 2
/* 5B098 8006A898 21280000 */  addu       $a1, $zero, $zero
/* 5B09C 8006A89C 21302002 */  addu       $a2, $s1, $zero
/* 5B0A0 8006A8A0 21382002 */  addu       $a3, $s1, $zero
/* 5B0A4 8006A8A4 79B2010C */  jal        FUN_8006c9e4
/* 5B0A8 8006A8A8 1000B1AF */   sw        $s1, 0x10($sp)
/* 5B0AC 8006A8AC 02000424 */  addiu      $a0, $zero, 2
/* 5B0B0 8006A8B0 01000524 */  addiu      $a1, $zero, 1
/* 5B0B4 8006A8B4 1000B2AF */  sw         $s2, 0x10($sp)
/* 5B0B8 8006A8B8 50001224 */  addiu      $s2, $zero, 0x50
/* 5B0BC 8006A8BC 04000686 */  lh         $a2, 4($s0)
/* 5B0C0 8006A8C0 FFFF0224 */  addiu      $v0, $zero, -1
/* 5B0C4 8006A8C4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5B0C8 8006A8C8 06000786 */  lh         $a3, 6($s0)
/* 5B0CC 8006A8CC 0A000286 */  lh         $v0, 0xa($s0)
/* 5B0D0 8006A8D0 0C000386 */  lh         $v1, 0xc($s0)
/* 5B0D4 8006A8D4 7800C624 */  addiu      $a2, $a2, 0x78
/* 5B0D8 8006A8D8 1400A2AF */  sw         $v0, 0x14($sp)
/* 5B0DC 8006A8DC 25B2010C */  jal        FUN_8006c894
/* 5B0E0 8006A8E0 1800A3AF */   sw        $v1, 0x18($sp)
/* 5B0E4 8006A8E4 02000424 */  addiu      $a0, $zero, 2
/* 5B0E8 8006A8E8 16000686 */  lh         $a2, 0x16($s0)
/* 5B0EC 8006A8EC 18000786 */  lh         $a3, 0x18($s0)
/* 5B0F0 8006A8F0 FBB2010C */  jal        FUN_8006cbec
/* 5B0F4 8006A8F4 01000524 */   addiu     $a1, $zero, 1
/* 5B0F8 8006A8F8 02000424 */  addiu      $a0, $zero, 2
/* 5B0FC 8006A8FC 01000524 */  addiu      $a1, $zero, 1
/* 5B100 8006A900 D8FF0624 */  addiu      $a2, $zero, -0x28
/* 5B104 8006A904 9BB2010C */  jal        FUN_8006ca6c
/* 5B108 8006A908 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5B10C 8006A90C 02000424 */  addiu      $a0, $zero, 2
/* 5B110 8006A910 01000524 */  addiu      $a1, $zero, 1
/* 5B114 8006A914 21302002 */  addu       $a2, $s1, $zero
/* 5B118 8006A918 21382002 */  addu       $a3, $s1, $zero
/* 5B11C 8006A91C 79B2010C */  jal        FUN_8006c9e4
/* 5B120 8006A920 1000B1AF */   sw        $s1, 0x10($sp)
/* 5B124 8006A924 02000424 */  addiu      $a0, $zero, 2
/* 5B128 8006A928 02000524 */  addiu      $a1, $zero, 2
/* 5B12C 8006A92C 04000686 */  lh         $a2, 4($s0)
/* 5B130 8006A930 FFFF0224 */  addiu      $v0, $zero, -1
/* 5B134 8006A934 1000B2AF */  sw         $s2, 0x10($sp)
/* 5B138 8006A938 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5B13C 8006A93C 06000786 */  lh         $a3, 6($s0)
/* 5B140 8006A940 0A000286 */  lh         $v0, 0xa($s0)
/* 5B144 8006A944 0C000386 */  lh         $v1, 0xc($s0)
/* 5B148 8006A948 F000C624 */  addiu      $a2, $a2, 0xf0
/* 5B14C 8006A94C 1400A2AF */  sw         $v0, 0x14($sp)
/* 5B150 8006A950 25B2010C */  jal        FUN_8006c894
/* 5B154 8006A954 1800A3AF */   sw        $v1, 0x18($sp)
/* 5B158 8006A958 02000424 */  addiu      $a0, $zero, 2
/* 5B15C 8006A95C 16000686 */  lh         $a2, 0x16($s0)
/* 5B160 8006A960 18000786 */  lh         $a3, 0x18($s0)
/* 5B164 8006A964 FBB2010C */  jal        FUN_8006cbec
/* 5B168 8006A968 02000524 */   addiu     $a1, $zero, 2
/* 5B16C 8006A96C 02000424 */  addiu      $a0, $zero, 2
/* 5B170 8006A970 02000524 */  addiu      $a1, $zero, 2
/* 5B174 8006A974 50000624 */  addiu      $a2, $zero, 0x50
/* 5B178 8006A978 9BB2010C */  jal        FUN_8006ca6c
/* 5B17C 8006A97C 88FF0724 */   addiu     $a3, $zero, -0x78
/* 5B180 8006A980 02000424 */  addiu      $a0, $zero, 2
/* 5B184 8006A984 02000524 */  addiu      $a1, $zero, 2
/* 5B188 8006A988 21302002 */  addu       $a2, $s1, $zero
/* 5B18C 8006A98C 2138C000 */  addu       $a3, $a2, $zero
/* 5B190 8006A990 79B2010C */  jal        FUN_8006c9e4
/* 5B194 8006A994 1000B1AF */   sw        $s1, 0x10($sp)
.L8006A998:
/* 5B198 8006A998 0F80043C */  lui        $a0, %hi(D_800EFFA8)
.L8006A99C:
/* 5B19C 8006A99C A8FF8324 */  addiu      $v1, $a0, %lo(D_800EFFA8)
/* 5B1A0 8006A9A0 7400628C */  lw         $v0, 0x74($v1)
/* 5B1A4 8006A9A4 0400C48F */  lw         $a0, 4($fp)
/* 5B1A8 8006A9A8 8888033C */  lui        $v1, 0x8888
/* 5B1AC 8006A9AC 89886334 */  ori        $v1, $v1, 0x8889
/* 5B1B0 8006A9B0 23104400 */  subu       $v0, $v0, $a0
/* 5B1B4 8006A9B4 74F54224 */  addiu      $v0, $v0, -0xa8c
/* 5B1B8 8006A9B8 C0110200 */  sll        $v0, $v0, 7
/* 5B1BC 8006A9BC 19004300 */  multu      $v0, $v1
/* 5B1C0 8006A9C0 78001424 */  addiu      $s4, $zero, 0x78
/* 5B1C4 8006A9C4 1380043C */  lui        $a0, %hi(D_801280E0)
/* 5B1C8 8006A9C8 E0808324 */  addiu      $v1, $a0, %lo(D_801280E0)
/* 5B1CC 8006A9CC 31006590 */  lbu        $a1, 0x31($v1)
/* 5B1D0 8006A9D0 80000424 */  addiu      $a0, $zero, 0x80
/* 5B1D4 8006A9D4 C0180500 */  sll        $v1, $a1, 3
/* 5B1D8 8006A9D8 23186500 */  subu       $v1, $v1, $a1
/* 5B1DC 8006A9DC 80180300 */  sll        $v1, $v1, 2
/* 5B1E0 8006A9E0 0800C58F */  lw         $a1, 8($fp)
/* 5B1E4 8006A9E4 10100000 */  mfhi       $v0
/* 5B1E8 8006A9E8 42110200 */  srl        $v0, $v0, 5
/* 5B1EC 8006A9EC 23988200 */  subu       $s3, $a0, $v0
/* 5B1F0 8006A9F0 1380023C */  lui        $v0, %hi(D_801282E0)
/* 5B1F4 8006A9F4 E0824424 */  addiu      $a0, $v0, %lo(D_801282E0)
/* 5B1F8 8006A9F8 2A10B300 */  slt        $v0, $a1, $s3
/* 5B1FC 8006A9FC 02004010 */  beqz       $v0, .L8006AA08
/* 5B200 8006AA00 21906400 */   addu      $s2, $v1, $a0
/* 5B204 8006AA04 2198A000 */  addu       $s3, $a1, $zero
.L8006AA08:
/* 5B208 8006AA08 02000424 */  addiu      $a0, $zero, 2
/* 5B20C 8006AA0C 2128E002 */  addu       $a1, $s7, $zero
/* 5B210 8006AA10 28001124 */  addiu      $s1, $zero, 0x28
/* 5B214 8006AA14 1000B4AF */  sw         $s4, 0x10($sp)
/* 5B218 8006AA18 1400B1AF */  sw         $s1, 0x14($sp)
/* 5B21C 8006AA1C 04004686 */  lh         $a2, 4($s2)
/* 5B220 8006AA20 FFFF1024 */  addiu      $s0, $zero, -1
/* 5B224 8006AA24 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 5B228 8006AA28 06004786 */  lh         $a3, 6($s2)
/* 5B22C 8006AA2C 0C004286 */  lh         $v0, 0xc($s2)
/* 5B230 8006AA30 C800E724 */  addiu      $a3, $a3, 0xc8
/* 5B234 8006AA34 25B2010C */  jal        FUN_8006c894
/* 5B238 8006AA38 1800A2AF */   sw        $v0, 0x18($sp)
/* 5B23C 8006AA3C 02000424 */  addiu      $a0, $zero, 2
/* 5B240 8006AA40 16004686 */  lh         $a2, 0x16($s2)
/* 5B244 8006AA44 18004786 */  lh         $a3, 0x18($s2)
/* 5B248 8006AA48 FBB2010C */  jal        FUN_8006cbec
/* 5B24C 8006AA4C 2128E002 */   addu      $a1, $s7, $zero
/* 5B250 8006AA50 02000424 */  addiu      $a0, $zero, 2
/* 5B254 8006AA54 2128E002 */  addu       $a1, $s7, $zero
/* 5B258 8006AA58 60FF0624 */  addiu      $a2, $zero, -0xa0
/* 5B25C 8006AA5C 9BB2010C */  jal        FUN_8006ca6c
/* 5B260 8006AA60 50000724 */   addiu     $a3, $zero, 0x50
/* 5B264 8006AA64 02000424 */  addiu      $a0, $zero, 2
/* 5B268 8006AA68 2128E002 */  addu       $a1, $s7, $zero
/* 5B26C 8006AA6C 21306002 */  addu       $a2, $s3, $zero
/* 5B270 8006AA70 21386002 */  addu       $a3, $s3, $zero
/* 5B274 8006AA74 79B2010C */  jal        FUN_8006c9e4
/* 5B278 8006AA78 1000B3AF */   sw        $s3, 0x10($sp)
/* 5B27C 8006AA7C 0100F726 */  addiu      $s7, $s7, 1
/* 5B280 8006AA80 02000424 */  addiu      $a0, $zero, 2
/* 5B284 8006AA84 2128E002 */  addu       $a1, $s7, $zero
/* 5B288 8006AA88 1000B4AF */  sw         $s4, 0x10($sp)
/* 5B28C 8006AA8C 04004686 */  lh         $a2, 4($s2)
/* 5B290 8006AA90 50001424 */  addiu      $s4, $zero, 0x50
/* 5B294 8006AA94 1400B1AF */  sw         $s1, 0x14($sp)
/* 5B298 8006AA98 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 5B29C 8006AA9C 06004786 */  lh         $a3, 6($s2)
/* 5B2A0 8006AAA0 0C004286 */  lh         $v0, 0xc($s2)
/* 5B2A4 8006AAA4 7800C624 */  addiu      $a2, $a2, 0x78
/* 5B2A8 8006AAA8 C800E724 */  addiu      $a3, $a3, 0xc8
/* 5B2AC 8006AAAC 25B2010C */  jal        FUN_8006c894
/* 5B2B0 8006AAB0 1800A2AF */   sw        $v0, 0x18($sp)
/* 5B2B4 8006AAB4 02000424 */  addiu      $a0, $zero, 2
/* 5B2B8 8006AAB8 16004686 */  lh         $a2, 0x16($s2)
/* 5B2BC 8006AABC 18004786 */  lh         $a3, 0x18($s2)
/* 5B2C0 8006AAC0 FBB2010C */  jal        FUN_8006cbec
/* 5B2C4 8006AAC4 2128E002 */   addu      $a1, $s7, $zero
/* 5B2C8 8006AAC8 02000424 */  addiu      $a0, $zero, 2
/* 5B2CC 8006AACC 2128E002 */  addu       $a1, $s7, $zero
/* 5B2D0 8006AAD0 D8FF0624 */  addiu      $a2, $zero, -0x28
/* 5B2D4 8006AAD4 9BB2010C */  jal        FUN_8006ca6c
/* 5B2D8 8006AAD8 50000724 */   addiu     $a3, $zero, 0x50
/* 5B2DC 8006AADC 02000424 */  addiu      $a0, $zero, 2
/* 5B2E0 8006AAE0 2128E002 */  addu       $a1, $s7, $zero
/* 5B2E4 8006AAE4 21306002 */  addu       $a2, $s3, $zero
/* 5B2E8 8006AAE8 21386002 */  addu       $a3, $s3, $zero
/* 5B2EC 8006AAEC 79B2010C */  jal        FUN_8006c9e4
/* 5B2F0 8006AAF0 1000B3AF */   sw        $s3, 0x10($sp)
/* 5B2F4 8006AAF4 0100F726 */  addiu      $s7, $s7, 1
/* 5B2F8 8006AAF8 02000424 */  addiu      $a0, $zero, 2
/* 5B2FC 8006AAFC 04004686 */  lh         $a2, 4($s2)
/* 5B300 8006AB00 2128E002 */  addu       $a1, $s7, $zero
/* 5B304 8006AB04 1000B4AF */  sw         $s4, 0x10($sp)
/* 5B308 8006AB08 1400B1AF */  sw         $s1, 0x14($sp)
/* 5B30C 8006AB0C 1C00B0AF */  sw         $s0, 0x1c($sp)
/* 5B310 8006AB10 06004786 */  lh         $a3, 6($s2)
/* 5B314 8006AB14 0C004286 */  lh         $v0, 0xc($s2)
/* 5B318 8006AB18 F000C624 */  addiu      $a2, $a2, 0xf0
/* 5B31C 8006AB1C C800E724 */  addiu      $a3, $a3, 0xc8
/* 5B320 8006AB20 25B2010C */  jal        FUN_8006c894
/* 5B324 8006AB24 1800A2AF */   sw        $v0, 0x18($sp)
/* 5B328 8006AB28 02000424 */  addiu      $a0, $zero, 2
/* 5B32C 8006AB2C 16004686 */  lh         $a2, 0x16($s2)
/* 5B330 8006AB30 18004786 */  lh         $a3, 0x18($s2)
/* 5B334 8006AB34 FBB2010C */  jal        FUN_8006cbec
/* 5B338 8006AB38 2128E002 */   addu      $a1, $s7, $zero
/* 5B33C 8006AB3C 02000424 */  addiu      $a0, $zero, 2
/* 5B340 8006AB40 2128E002 */  addu       $a1, $s7, $zero
/* 5B344 8006AB44 50000624 */  addiu      $a2, $zero, 0x50
/* 5B348 8006AB48 9BB2010C */  jal        FUN_8006ca6c
/* 5B34C 8006AB4C 50000724 */   addiu     $a3, $zero, 0x50
/* 5B350 8006AB50 02000424 */  addiu      $a0, $zero, 2
/* 5B354 8006AB54 2128E002 */  addu       $a1, $s7, $zero
/* 5B358 8006AB58 21306002 */  addu       $a2, $s3, $zero
/* 5B35C 8006AB5C 2138C000 */  addu       $a3, $a2, $zero
/* 5B360 8006AB60 79B2010C */  jal        FUN_8006c9e4
/* 5B364 8006AB64 1000B3AF */   sw        $s3, 0x10($sp)
/* 5B368 8006AB68 02000424 */  addiu      $a0, $zero, 2
/* 5B36C 8006AB6C 15B1010C */  jal        FUN_8006c454
/* 5B370 8006AB70 0100E526 */   addiu     $a1, $s7, 1
/* 5B374 8006AB74 EAAE010C */  jal        FUN_8006bba8
/* 5B378 8006AB78 02000424 */   addiu     $a0, $zero, 2
/* 5B37C 8006AB7C 01000224 */  addiu      $v0, $zero, 1
.L8006AB80:
/* 5B380 8006AB80 4400BF8F */  lw         $ra, 0x44($sp)
/* 5B384 8006AB84 4000BE8F */  lw         $fp, 0x40($sp)
/* 5B388 8006AB88 3C00B78F */  lw         $s7, 0x3c($sp)
/* 5B38C 8006AB8C 3800B68F */  lw         $s6, 0x38($sp)
/* 5B390 8006AB90 3400B58F */  lw         $s5, 0x34($sp)
/* 5B394 8006AB94 3000B48F */  lw         $s4, 0x30($sp)
/* 5B398 8006AB98 2C00B38F */  lw         $s3, 0x2c($sp)
/* 5B39C 8006AB9C 2800B28F */  lw         $s2, 0x28($sp)
/* 5B3A0 8006ABA0 2400B18F */  lw         $s1, 0x24($sp)
/* 5B3A4 8006ABA4 2000B08F */  lw         $s0, 0x20($sp)
/* 5B3A8 8006ABA8 0800E003 */  jr         $ra
/* 5B3AC 8006ABAC 4800BD27 */   addiu     $sp, $sp, 0x48

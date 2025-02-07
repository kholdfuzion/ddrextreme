.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80025f70
/* 16770 80025F70 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 16774 80025F74 3400B7AF */  sw         $s7, 0x34($sp)
/* 16778 80025F78 21B88000 */  addu       $s7, $a0, $zero
/* 1677C 80025F7C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 16780 80025F80 1800B0AF */  sw         $s0, 0x18($sp)
/* 16784 80025F84 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 16788 80025F88 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 1678C 80025F8C 3800BEAF */  sw         $fp, 0x38($sp)
/* 16790 80025F90 3000B6AF */  sw         $s6, 0x30($sp)
/* 16794 80025F94 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 16798 80025F98 2800B4AF */  sw         $s4, 0x28($sp)
/* 1679C 80025F9C 2400B3AF */  sw         $s3, 0x24($sp)
/* 167A0 80025FA0 2000B2AF */  sw         $s2, 0x20($sp)
/* 167A4 80025FA4 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 167A8 80025FA8 13000382 */  lb         $v1, 0x13($s0)
/* 167AC 80025FAC 00000000 */  nop
/* 167B0 80025FB0 2F006010 */  beqz       $v1, .L80026070
/* 167B4 80025FB4 21884000 */   addu      $s1, $v0, $zero
/* 167B8 80025FB8 28002386 */  lh         $v1, 0x28($s1)
/* 167BC 80025FBC 19000224 */  addiu      $v0, $zero, 0x19
/* 167C0 80025FC0 2B006210 */  beq        $v1, $v0, .L80026070
/* 167C4 80025FC4 1A000224 */   addiu     $v0, $zero, 0x1a
/* 167C8 80025FC8 29006210 */  beq        $v1, $v0, .L80026070
/* 167CC 80025FCC 16000224 */   addiu     $v0, $zero, 0x16
/* 167D0 80025FD0 28006210 */  beq        $v1, $v0, .L80026074
/* 167D4 80025FD4 21980000 */   addu      $s3, $zero, $zero
/* 167D8 80025FD8 6BB3000C */  jal        FUN_8002cdac
/* 167DC 80025FDC 21200000 */   addu      $a0, $zero, $zero
/* 167E0 80025FE0 0E004010 */  beqz       $v0, .L8002601C
/* 167E4 80025FE4 00000000 */   nop
/* 167E8 80025FE8 74B3000C */  jal        FUN_8002cdd0
/* 167EC 80025FEC 21200000 */   addu      $a0, $zero, $zero
/* 167F0 80025FF0 0A004010 */  beqz       $v0, .L8002601C
/* 167F4 80025FF4 00000000 */   nop
/* 167F8 80025FF8 62B3000C */  jal        FUN_8002cd88
/* 167FC 80025FFC 21200000 */   addu      $a0, $zero, $zero
/* 16800 80026000 06004010 */  beqz       $v0, .L8002601C
/* 16804 80026004 00000000 */   nop
/* 16808 80026008 3000028E */  lw         $v0, 0x30($s0)
/* 1680C 8002600C 00000000 */  nop
/* 16810 80026010 3D00422C */  sltiu      $v0, $v0, 0x3d
/* 16814 80026014 68004010 */  beqz       $v0, .L800261B8
/* 16818 80026018 01000224 */   addiu     $v0, $zero, 1
.L8002601C:
/* 1681C 8002601C 6BB3000C */  jal        FUN_8002cdac
/* 16820 80026020 01000424 */   addiu     $a0, $zero, 1
/* 16824 80026024 13004010 */  beqz       $v0, .L80026074
/* 16828 80026028 21980000 */   addu      $s3, $zero, $zero
/* 1682C 8002602C 74B3000C */  jal        FUN_8002cdd0
/* 16830 80026030 01000424 */   addiu     $a0, $zero, 1
/* 16834 80026034 0F004010 */  beqz       $v0, .L80026074
/* 16838 80026038 21980000 */   addu      $s3, $zero, $zero
/* 1683C 8002603C 62B3000C */  jal        FUN_8002cd88
/* 16840 80026040 01000424 */   addiu     $a0, $zero, 1
/* 16844 80026044 0A004010 */  beqz       $v0, .L80026070
/* 16848 80026048 28002226 */   addiu     $v0, $s1, 0x28
/* 1684C 8002604C 0100043C */  lui        $a0, 1
/* 16850 80026050 21104400 */  addu       $v0, $v0, $a0
/* 16854 80026054 AC42438C */  lw         $v1, 0x42ac($v0)
/* 16858 80026058 00000000 */  nop
/* 1685C 8002605C 3D00632C */  sltiu      $v1, $v1, 0x3d
/* 16860 80026060 04006014 */  bnez       $v1, .L80026074
/* 16864 80026064 21980000 */   addu      $s3, $zero, $zero
/* 16868 80026068 6E980008 */  j          .L800261B8
/* 1686C 8002606C 01000224 */   addiu     $v0, $zero, 1
.L80026070:
/* 16870 80026070 21980000 */  addu       $s3, $zero, $zero
.L80026074:
/* 16874 80026074 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 16878 80026078 A8FF5E24 */  addiu      $fp, $v0, %lo(D_800EFFA8)
/* 1687C 8002607C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 16880 80026080 28005424 */  addiu      $s4, $v0, %lo(D_800F0028)
/* 16884 80026084 21908002 */  addu       $s2, $s4, $zero
/* 16888 80026088 05001624 */  addiu      $s6, $zero, 5
/* 1688C 8002608C 0100153C */  lui        $s5, 1
/* 16890 80026090 7C42B536 */  ori        $s5, $s5, 0x427c
.L80026094:
/* 16894 80026094 3C005082 */  lb         $s0, 0x3c($s2)
/* 16898 80026098 01000224 */  addiu      $v0, $zero, 1
/* 1689C 8002609C 23000216 */  bne        $s0, $v0, .L8002612C
/* 168A0 800260A0 04287002 */   sllv      $a1, $s0, $s3
/* 168A4 800260A4 23201302 */  subu       $a0, $s0, $s3
/* 168A8 800260A8 80100400 */  sll        $v0, $a0, 2
/* 168AC 800260AC 21104400 */  addu       $v0, $v0, $a0
/* 168B0 800260B0 C0190200 */  sll        $v1, $v0, 7
/* 168B4 800260B4 21104300 */  addu       $v0, $v0, $v1
/* 168B8 800260B8 40110200 */  sll        $v0, $v0, 5
/* 168BC 800260BC 23104400 */  subu       $v0, $v0, $a0
/* 168C0 800260C0 80100200 */  sll        $v0, $v0, 2
/* 168C4 800260C4 21885400 */  addu       $s1, $v0, $s4
/* 168C8 800260C8 7C00C393 */  lbu        $v1, 0x7c($fp)
/* 168CC 800260CC 3C002292 */  lbu        $v0, 0x3c($s1)
/* 168D0 800260D0 25186500 */  or         $v1, $v1, $a1
/* 168D4 800260D4 0200422C */  sltiu      $v0, $v0, 2
/* 168D8 800260D8 07004010 */  beqz       $v0, .L800260F8
/* 168DC 800260DC 7C00C3A3 */   sb        $v1, 0x7c($fp)
/* 168E0 800260E0 12CB020C */  jal        FUN_800b2c48
/* 168E4 800260E4 02000424 */   addiu     $a0, $zero, 2
/* 168E8 800260E8 02000224 */  addiu      $v0, $zero, 2
/* 168EC 800260EC 8A0050A2 */  sb         $s0, 0x8a($s2)
/* 168F0 800260F0 4B980008 */  j          .L8002612C
/* 168F4 800260F4 3C0042A2 */   sb        $v0, 0x3c($s2)
.L800260F8:
/* 168F8 800260F8 12CB020C */  jal        FUN_800b2c48
/* 168FC 800260FC 02000424 */   addiu     $a0, $zero, 2
/* 16900 80026100 03000224 */  addiu      $v0, $zero, 3
/* 16904 80026104 1580043C */  lui        $a0, %hi(D_8014BA50)
/* 16908 80026108 50BA8424 */  addiu      $a0, $a0, %lo(D_8014BA50)
/* 1690C 8002610C 8A0056A2 */  sb         $s6, 0x8a($s2)
/* 16910 80026110 8A0036A2 */  sb         $s6, 0x8a($s1)
/* 16914 80026114 3C0042A2 */  sb         $v0, 0x3c($s2)
/* 16918 80026118 08008392 */  lbu        $v1, 8($s4)
/* 1691C 8002611C 42008290 */  lbu        $v0, 0x42($a0)
/* 16920 80026120 00000000 */  nop
/* 16924 80026124 21186200 */  addu       $v1, $v1, $v0
/* 16928 80026128 080083A2 */  sb         $v1, 8($s4)
.L8002612C:
/* 1692C 8002612C 01007326 */  addiu      $s3, $s3, 1
/* 16930 80026130 0200622A */  slti       $v0, $s3, 2
/* 16934 80026134 D7FF4014 */  bnez       $v0, .L80026094
/* 16938 80026138 21905502 */   addu      $s2, $s2, $s5
/* 1693C 8002613C 0E80023C */  lui        $v0, %hi(D_800D8B54)
/* 16940 80026140 0000E38E */  lw         $v1, ($s7)
/* 16944 80026144 548B5124 */  addiu      $s1, $v0, %lo(D_800D8B54)
/* 16948 80026148 80180300 */  sll        $v1, $v1, 2
/* 1694C 8002614C 21182302 */  addu       $v1, $s1, $v1
/* 16950 80026150 3C00628C */  lw         $v0, 0x3c($v1)
/* 16954 80026154 00000000 */  nop
/* 16958 80026158 09F84000 */  jalr       $v0
/* 1695C 8002615C 2120E002 */   addu      $a0, $s7, $zero
/* 16960 80026160 0000E38E */  lw         $v1, ($s7)
/* 16964 80026164 21804000 */  addu       $s0, $v0, $zero
/* 16968 80026168 0F000312 */  beq        $s0, $v1, .L800261A8
/* 1696C 8002616C 80100300 */   sll       $v0, $v1, 2
/* 16970 80026170 2120E002 */  addu       $a0, $s7, $zero
/* 16974 80026174 21102202 */  addu       $v0, $s1, $v0
/* 16978 80026178 7800438C */  lw         $v1, 0x78($v0)
/* 1697C 8002617C 00000000 */  nop
/* 16980 80026180 09F86000 */  jalr       $v1
/* 16984 80026184 21280002 */   addu      $a1, $s0, $zero
/* 16988 80026188 80101000 */  sll        $v0, $s0, 2
/* 1698C 8002618C 21105100 */  addu       $v0, $v0, $s1
/* 16990 80026190 0000E58E */  lw         $a1, ($s7)
/* 16994 80026194 0000438C */  lw         $v1, ($v0)
/* 16998 80026198 00000000 */  nop
/* 1699C 8002619C 09F86000 */  jalr       $v1
/* 169A0 800261A0 2120E002 */   addu      $a0, $s7, $zero
/* 169A4 800261A4 0000F0AE */  sw         $s0, ($s7)
.L800261A8:
/* 169A8 800261A8 0000E28E */  lw         $v0, ($s7)
/* 169AC 800261AC 00000000 */  nop
/* 169B0 800261B0 0E004238 */  xori       $v0, $v0, 0xe
/* 169B4 800261B4 0100422C */  sltiu      $v0, $v0, 1
.L800261B8:
/* 169B8 800261B8 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 169BC 800261BC 3800BE8F */  lw         $fp, 0x38($sp)
/* 169C0 800261C0 3400B78F */  lw         $s7, 0x34($sp)
/* 169C4 800261C4 3000B68F */  lw         $s6, 0x30($sp)
/* 169C8 800261C8 2C00B58F */  lw         $s5, 0x2c($sp)
/* 169CC 800261CC 2800B48F */  lw         $s4, 0x28($sp)
/* 169D0 800261D0 2400B38F */  lw         $s3, 0x24($sp)
/* 169D4 800261D4 2000B28F */  lw         $s2, 0x20($sp)
/* 169D8 800261D8 1C00B18F */  lw         $s1, 0x1c($sp)
/* 169DC 800261DC 1800B08F */  lw         $s0, 0x18($sp)
/* 169E0 800261E0 0800E003 */  jr         $ra
/* 169E4 800261E4 4000BD27 */   addiu     $sp, $sp, 0x40

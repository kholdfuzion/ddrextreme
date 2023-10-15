.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C57DC
/* B5FDC 800C57DC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B5FE0 800C57E0 1800B2AF */  sw         $s2, 0x18($sp)
/* B5FE4 800C57E4 21908000 */  addu       $s2, $a0, $zero
/* B5FE8 800C57E8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B5FEC 800C57EC 3400BFAF */  sw         $ra, 0x34($sp)
/* B5FF0 800C57F0 3000BEAF */  sw         $fp, 0x30($sp)
/* B5FF4 800C57F4 2C00B7AF */  sw         $s7, 0x2c($sp)
/* B5FF8 800C57F8 2800B6AF */  sw         $s6, 0x28($sp)
/* B5FFC 800C57FC 2400B5AF */  sw         $s5, 0x24($sp)
/* B6000 800C5800 2000B4AF */  sw         $s4, 0x20($sp)
/* B6004 800C5804 1400B1AF */  sw         $s1, 0x14($sp)
/* B6008 800C5808 1000B0AF */  sw         $s0, 0x10($sp)
/* B600C 800C580C 01004392 */  lbu        $v1, 1($s2)
/* B6010 800C5810 3A000224 */  addiu      $v0, $zero, 0x3a
/* B6014 800C5814 0A006214 */  bne        $v1, $v0, .L800C5840
/* B6018 800C5818 21980000 */   addu      $s3, $zero, $zero
/* B601C 800C581C 00004292 */  lbu        $v0, ($s2)
/* B6020 800C5820 00000000 */  nop
/* B6024 800C5824 CFFF4224 */  addiu      $v0, $v0, -0x31
/* B6028 800C5828 0200422C */  sltiu      $v0, $v0, 2
/* B602C 800C582C 49004010 */  beqz       $v0, .L800C5954
/* B6030 800C5830 FFFF0224 */   addiu     $v0, $zero, -1
/* B6034 800C5834 00004292 */  lbu        $v0, ($s2)
/* B6038 800C5838 02005226 */  addiu      $s2, $s2, 2
/* B603C 800C583C CFFF5324 */  addiu      $s3, $v0, -0x31
.L800C5840:
/* B6040 800C5840 2080023C */  lui        $v0, %hi(D_801FB750)
/* B6044 800C5844 50B75724 */  addiu      $s7, $v0, %lo(D_801FB750)
/* B6048 800C5848 80201300 */  sll        $a0, $s3, 2
/* B604C 800C584C 04000224 */  addiu      $v0, $zero, 4
/* B6050 800C5850 E0BCE38E */  lw         $v1, -0x4320($s7)
/* B6054 800C5854 04108200 */  sllv       $v0, $v0, $a0
/* B6058 800C5858 24186200 */  and        $v1, $v1, $v0
/* B605C 800C585C 1D006010 */  beqz       $v1, .L800C58D4
/* B6060 800C5860 FEFF0224 */   addiu     $v0, $zero, -2
/* B6064 800C5864 0800E38E */  lw         $v1, 8($s7)
/* B6068 800C5868 00000000 */  nop
/* B606C 800C586C 19006210 */  beq        $v1, $v0, .L800C58D4
/* B6070 800C5870 80111300 */   sll       $v0, $s3, 6
/* B6074 800C5874 21105300 */  addu       $v0, $v0, $s3
/* B6078 800C5878 40110200 */  sll        $v0, $v0, 5
/* B607C 800C587C 21105300 */  addu       $v0, $v0, $s3
/* B6080 800C5880 80100200 */  sll        $v0, $v0, 2
/* B6084 800C5884 E8BCE326 */  addiu      $v1, $s7, -0x4318
/* B6088 800C5888 21A04300 */  addu       $s4, $v0, $v1
/* B608C 800C588C 80009026 */  addiu      $s0, $s4, 0x80
/* B6090 800C5890 21880000 */  addu       $s1, $zero, $zero
/* B6094 800C5894 51001524 */  addiu      $s5, $zero, 0x51
.L800C5898:
/* B6098 800C5898 0000028E */  lw         $v0, ($s0)
/* B609C 800C589C 00000000 */  nop
/* B60A0 800C58A0 05005514 */  bne        $v0, $s5, .L800C58B8
/* B60A4 800C58A4 0A000426 */   addiu     $a0, $s0, 0xa
/* B60A8 800C58A8 DD5F000C */  jal        strcmp
/* B60AC 800C58AC 21284002 */   addu      $a1, $s2, $zero
/* B60B0 800C58B0 06004010 */  beqz       $v0, .L800C58CC
/* B60B4 800C58B4 0F00222A */   slti      $v0, $s1, 0xf
.L800C58B8:
/* B60B8 800C58B8 01003126 */  addiu      $s1, $s1, 1
/* B60BC 800C58BC 0F00222A */  slti       $v0, $s1, 0xf
/* B60C0 800C58C0 F5FF4014 */  bnez       $v0, .L800C5898
/* B60C4 800C58C4 80001026 */   addiu     $s0, $s0, 0x80
/* B60C8 800C58C8 0F00222A */  slti       $v0, $s1, 0xf
.L800C58CC:
/* B60CC 800C58CC 03004014 */  bnez       $v0, .L800C58DC
/* B60D0 800C58D0 FFFF0234 */   ori       $v0, $zero, 0xffff
.L800C58D4:
/* B60D4 800C58D4 55160308 */  j          .L800C5954
/* B60D8 800C58D8 FFFF0224 */   addiu     $v0, $zero, -1
.L800C58DC:
/* B60DC 800C58DC 12002212 */  beq        $s1, $v0, .L800C5928
/* B60E0 800C58E0 80009526 */   addiu     $s5, $s4, 0x80
/* B60E4 800C58E4 A0001224 */  addiu      $s2, $zero, 0xa0
/* B60E8 800C58E8 21F04000 */  addu       $fp, $v0, $zero
/* B60EC 800C58EC 21B04000 */  addu       $s6, $v0, $zero
.L800C58F0:
/* B60F0 800C58F0 C0111100 */  sll        $v0, $s1, 7
/* B60F4 800C58F4 2180A202 */  addu       $s0, $s5, $v0
/* B60F8 800C58F8 21200002 */  addu       $a0, $s0, $zero
/* B60FC 800C58FC 21280000 */  addu       $a1, $zero, $zero
/* B6100 800C5900 21103402 */  addu       $v0, $s1, $s4
/* B6104 800C5904 01000724 */  addiu      $a3, $zero, 1
/* B6108 800C5908 412047A0 */  sb         $a3, 0x2041($v0)
/* B610C 800C590C 08001196 */  lhu        $s1, 8($s0)
/* B6110 800C5910 F6A2000C */  jal        memset
/* B6114 800C5914 80000624 */   addiu     $a2, $zero, 0x80
/* B6118 800C5918 000012AE */  sw         $s2, ($s0)
/* B611C 800C591C 08001EA6 */  sh         $fp, 8($s0)
/* B6120 800C5920 F3FF3616 */  bne        $s1, $s6, .L800C58F0
/* B6124 800C5924 7F0012A2 */   sb        $s2, 0x7f($s0)
.L800C5928:
/* B6128 800C5928 FFFF1024 */  addiu      $s0, $zero, -1
/* B612C 800C592C 2A1C030C */  jal        FUN_800c70a8
/* B6130 800C5930 21206002 */   addu      $a0, $s3, $zero
/* B6134 800C5934 06004010 */  beqz       $v0, .L800C5950
/* B6138 800C5938 2120E002 */   addu      $a0, $s7, $zero
/* B613C 800C593C 0C00F3AE */  sw         $s3, 0xc($s7)
/* B6140 800C5940 04000524 */  addiu      $a1, $zero, 4
/* B6144 800C5944 1F1B030C */  jal        FUN_800c6c7c
/* B6148 800C5948 21300000 */   addu      $a2, $zero, $zero
/* B614C 800C594C 21804000 */  addu       $s0, $v0, $zero
.L800C5950:
/* B6150 800C5950 21100002 */  addu       $v0, $s0, $zero
.L800C5954:
/* B6154 800C5954 3400BF8F */  lw         $ra, 0x34($sp)
/* B6158 800C5958 3000BE8F */  lw         $fp, 0x30($sp)
/* B615C 800C595C 2C00B78F */  lw         $s7, 0x2c($sp)
/* B6160 800C5960 2800B68F */  lw         $s6, 0x28($sp)
/* B6164 800C5964 2400B58F */  lw         $s5, 0x24($sp)
/* B6168 800C5968 2000B48F */  lw         $s4, 0x20($sp)
/* B616C 800C596C 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6170 800C5970 1800B28F */  lw         $s2, 0x18($sp)
/* B6174 800C5974 1400B18F */  lw         $s1, 0x14($sp)
/* B6178 800C5978 1000B08F */  lw         $s0, 0x10($sp)
/* B617C 800C597C 0800E003 */  jr         $ra
/* B6180 800C5980 3800BD27 */   addiu     $sp, $sp, 0x38

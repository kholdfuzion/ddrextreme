.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b57f8
/* A5FF8 800B57F8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* A5FFC 800B57FC 21588000 */  addu       $t3, $a0, $zero
/* A6000 800B5800 1000622D */  sltiu      $v0, $t3, 0x10
/* A6004 800B5804 4400BFAF */  sw         $ra, 0x44($sp)
/* A6008 800B5808 4000B4AF */  sw         $s4, 0x40($sp)
/* A600C 800B580C 3C00B3AF */  sw         $s3, 0x3c($sp)
/* A6010 800B5810 3800B2AF */  sw         $s2, 0x38($sp)
/* A6014 800B5814 3400B1AF */  sw         $s1, 0x34($sp)
/* A6018 800B5818 0E004010 */  beqz       $v0, .L800B5854
/* A601C 800B581C 3000B0AF */   sw        $s0, 0x30($sp)
/* A6020 800B5820 1E80023C */  lui        $v0, %hi(D_801E07E0)
/* A6024 800B5824 E0074624 */  addiu      $a2, $v0, %lo(D_801E07E0)
/* A6028 800B5828 40210B00 */  sll        $a0, $t3, 5
/* A602C 800B582C 2110C400 */  addu       $v0, $a2, $a0
/* A6030 800B5830 1C00438C */  lw         $v1, 0x1c($v0)
/* A6034 800B5834 00000000 */  nop
/* A6038 800B5838 06006010 */  beqz       $v1, .L800B5854
/* A603C 800B583C FFFFA330 */   andi      $v1, $a1, 0xffff
/* A6040 800B5840 1800448C */  lw         $a0, 0x18($v0)
/* A6044 800B5844 00000000 */  nop
/* A6048 800B5848 2B186400 */  sltu       $v1, $v1, $a0
/* A604C 800B584C 03006014 */  bnez       $v1, .L800B585C
/* A6050 800B5850 1E80023C */   lui       $v0, 0x801e
.L800B5854:
/* A6054 800B5854 8AD60208 */  j          .L800B5A28
/* A6058 800B5858 FEFF0224 */   addiu     $v0, $zero, -2
.L800B585C:
/* A605C 800B585C FFFFA830 */  andi       $t0, $a1, 0xffff
/* A6060 800B5860 02540500 */  srl        $t2, $a1, 0x10
/* A6064 800B5864 02660500 */  srl        $t4, $a1, 0x18
/* A6068 800B5868 D807438C */  lw         $v1, 0x7d8($v0)
/* A606C 800B586C 00000000 */  nop
/* A6070 800B5870 00006294 */  lhu        $v0, ($v1)
/* A6074 800B5874 0800648C */  lw         $a0, 8($v1)
/* A6078 800B5878 40110200 */  sll        $v0, $v0, 5
/* A607C 800B587C 21308200 */  addu       $a2, $a0, $v0
/* A6080 800B5880 2B188600 */  sltu       $v1, $a0, $a2
/* A6084 800B5884 16006010 */  beqz       $v1, .L800B58E0
/* A6088 800B5888 1E80093C */   lui       $t1, 0x801e
/* A608C 800B588C 00140B00 */  sll        $v0, $t3, 0x10
/* A6090 800B5890 033C0200 */  sra        $a3, $v0, 0x10
/* A6094 800B5894 2118C000 */  addu       $v1, $a2, $zero
.L800B5898:
/* A6098 800B5898 00008294 */  lhu        $v0, ($a0)
/* A609C 800B589C 00000000 */  nop
/* A60A0 800B58A0 FEFF4224 */  addiu      $v0, $v0, -2
/* A60A4 800B58A4 0200422C */  sltiu      $v0, $v0, 2
/* A60A8 800B58A8 09004010 */  beqz       $v0, .L800B58D0
/* A60AC 800B58AC 00000000 */   nop
/* A60B0 800B58B0 02008294 */  lhu        $v0, 2($a0)
/* A60B4 800B58B4 00000000 */  nop
/* A60B8 800B58B8 05004814 */  bne        $v0, $t0, .L800B58D0
/* A60BC 800B58BC 00000000 */   nop
/* A60C0 800B58C0 06008284 */  lh         $v0, 6($a0)
/* A60C4 800B58C4 00000000 */  nop
/* A60C8 800B58C8 06004710 */  beq        $v0, $a3, .L800B58E4
/* A60CC 800B58CC 21908000 */   addu      $s2, $a0, $zero
.L800B58D0:
/* A60D0 800B58D0 20008424 */  addiu      $a0, $a0, 0x20
/* A60D4 800B58D4 2B108300 */  sltu       $v0, $a0, $v1
/* A60D8 800B58D8 EFFF4014 */  bnez       $v0, .L800B5898
/* A60DC 800B58DC 00000000 */   nop
.L800B58E0:
/* A60E0 800B58E0 21900000 */  addu       $s2, $zero, $zero
.L800B58E4:
/* A60E4 800B58E4 36004012 */  beqz       $s2, .L800B59C0
/* A60E8 800B58E8 FF7F023C */   lui       $v0, 0x7fff
/* A60EC 800B58EC FFFF4234 */  ori        $v0, $v0, 0xffff
/* A60F0 800B58F0 7F005431 */  andi       $s4, $t2, 0x7f
/* A60F4 800B58F4 AC07238D */  lw         $v1, 0x7ac($t1)
/* A60F8 800B58F8 00000000 */  nop
/* A60FC 800B58FC 05006210 */  beq        $v1, $v0, .L800B5914
/* A6100 800B5900 01009331 */   andi      $s3, $t4, 1
/* A6104 800B5904 21886000 */  addu       $s1, $v1, $zero
/* A6108 800B5908 01002226 */  addiu      $v0, $s1, 1
/* A610C 800B590C 46D60208 */  j          .L800B5918
/* A6110 800B5910 AC0722AD */   sw        $v0, 0x7ac($t1)
.L800B5914:
/* A6114 800B5914 21880000 */  addu       $s1, $zero, $zero
.L800B5918:
/* A6118 800B5918 AE6C000C */  jal        CheckCallback
/* A611C 800B591C 00000000 */   nop
/* A6120 800B5920 0D004014 */  bnez       $v0, .L800B5958
/* A6124 800B5924 21204002 */   addu      $a0, $s2, $zero
/* A6128 800B5928 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A612C 800B592C B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A6130 800B5930 00000000 */  nop
/* A6134 800B5934 03004014 */  bnez       $v0, .L800B5944
/* A6138 800B5938 00000000 */   nop
/* A613C 800B593C 1D6E000C */  jal        FUN_8001b874
/* A6140 800B5940 00000000 */   nop
.L800B5944:
/* A6144 800B5944 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A6148 800B5948 00000000 */  nop
/* A614C 800B594C 01004224 */  addiu      $v0, $v0, 1
/* A6150 800B5950 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A6154 800B5954 21204002 */  addu       $a0, $s2, $zero
.L800B5958:
/* A6158 800B5958 7F000224 */  addiu      $v0, $zero, 0x7f
/* A615C 800B595C 1000A527 */  addiu      $a1, $sp, 0x10
/* A6160 800B5960 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A6164 800B5964 1800A0A7 */  sh         $zero, 0x18($sp)
/* A6168 800B5968 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* A616C 800B596C 1100B4A3 */  sb         $s4, 0x11($sp)
/* A6170 800B5970 1200B3A3 */  sb         $s3, 0x12($sp)
/* A6174 800B5974 2CCD020C */  jal        FUN_800b34b0
/* A6178 800B5978 1600A2A3 */   sb        $v0, 0x16($sp)
/* A617C 800B597C AE6C000C */  jal        CheckCallback
/* A6180 800B5980 00000000 */   nop
/* A6184 800B5984 0B004014 */  bnez       $v0, .L800B59B4
/* A6188 800B5988 1E80103C */   lui       $s0, %hi(D_801E07B0)
/* A618C 800B598C B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A6190 800B5990 01000224 */  addiu      $v0, $zero, 1
/* A6194 800B5994 03006214 */  bne        $v1, $v0, .L800B59A4
/* A6198 800B5998 00000000 */   nop
/* A619C 800B599C 216E000C */  jal        FUN_8001b884
/* A61A0 800B59A0 00000000 */   nop
.L800B59A4:
/* A61A4 800B59A4 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A61A8 800B59A8 00000000 */  nop
/* A61AC 800B59AC FFFF4224 */  addiu      $v0, $v0, -1
/* A61B0 800B59B0 B00702A2 */  sb         $v0, 0x7b0($s0)
.L800B59B4:
/* A61B4 800B59B4 040040A6 */  sh         $zero, 4($s2)
/* A61B8 800B59B8 8AD60208 */  j          .L800B5A28
/* A61BC 800B59BC 21102002 */   addu      $v0, $s1, $zero
.L800B59C0:
/* A61C0 800B59C0 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A61C4 800B59C4 AC07248D */  lw         $a0, 0x7ac($t1)
/* A61C8 800B59C8 7F004331 */  andi       $v1, $t2, 0x7f
/* A61CC 800B59CC 2100A3A3 */  sb         $v1, 0x21($sp)
/* A61D0 800B59D0 01008331 */  andi       $v1, $t4, 1
/* A61D4 800B59D4 2400A5A7 */  sh         $a1, 0x24($sp)
/* A61D8 800B59D8 2200A3A3 */  sb         $v1, 0x22($sp)
/* A61DC 800B59DC 2700ABA3 */  sb         $t3, 0x27($sp)
/* A61E0 800B59E0 05008210 */  beq        $a0, $v0, .L800B59F8
/* A61E4 800B59E4 2000A0A3 */   sb        $zero, 0x20($sp)
/* A61E8 800B59E8 21188000 */  addu       $v1, $a0, $zero
/* A61EC 800B59EC 01006224 */  addiu      $v0, $v1, 1
/* A61F0 800B59F0 7FD60208 */  j          .L800B59FC
/* A61F4 800B59F4 AC0722AD */   sw        $v0, 0x7ac($t1)
.L800B59F8:
/* A61F8 800B59F8 21180000 */  addu       $v1, $zero, $zero
.L800B59FC:
/* A61FC 800B59FC 2000A427 */  addiu      $a0, $sp, 0x20
/* A6200 800B5A00 7F000224 */  addiu      $v0, $zero, 0x7f
/* A6204 800B5A04 2C00A3AF */  sw         $v1, 0x2c($sp)
/* A6208 800B5A08 2600A2A3 */  sb         $v0, 0x26($sp)
/* A620C 800B5A0C 2800A0A7 */  sh         $zero, 0x28($sp)
/* A6210 800B5A10 0CCC020C */  jal        FUN_800b3030
/* A6214 800B5A14 2A00A0A7 */   sh        $zero, 0x2a($sp)
/* A6218 800B5A18 FFFF0324 */  addiu      $v1, $zero, -1
/* A621C 800B5A1C 02004310 */  beq        $v0, $v1, .L800B5A28
/* A6220 800B5A20 FFFF0224 */   addiu     $v0, $zero, -1
/* A6224 800B5A24 2C00A28F */  lw         $v0, 0x2c($sp)
.L800B5A28:
/* A6228 800B5A28 4400BF8F */  lw         $ra, 0x44($sp)
/* A622C 800B5A2C 4000B48F */  lw         $s4, 0x40($sp)
/* A6230 800B5A30 3C00B38F */  lw         $s3, 0x3c($sp)
/* A6234 800B5A34 3800B28F */  lw         $s2, 0x38($sp)
/* A6238 800B5A38 3400B18F */  lw         $s1, 0x34($sp)
/* A623C 800B5A3C 3000B08F */  lw         $s0, 0x30($sp)
/* A6240 800B5A40 0800E003 */  jr         $ra
/* A6244 800B5A44 4800BD27 */   addiu     $sp, $sp, 0x48

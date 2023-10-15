.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c503c
/* B583C 800C503C 80FFBD27 */  addiu      $sp, $sp, -0x80
/* B5840 800C5040 7400B7AF */  sw         $s7, 0x74($sp)
/* B5844 800C5044 21B88000 */  addu       $s7, $a0, $zero
/* B5848 800C5048 6C00B5AF */  sw         $s5, 0x6c($sp)
/* B584C 800C504C 21A8C000 */  addu       $s5, $a2, $zero
/* B5850 800C5050 7800BEAF */  sw         $fp, 0x78($sp)
/* B5854 800C5054 21F0E000 */  addu       $fp, $a3, $zero
/* B5858 800C5058 FF1FA426 */  addiu      $a0, $s5, 0x1fff
/* B585C 800C505C 7000B6AF */  sw         $s6, 0x70($sp)
/* B5860 800C5060 8000F626 */  addiu      $s6, $s7, 0x80
/* B5864 800C5064 7C00BFAF */  sw         $ra, 0x7c($sp)
/* B5868 800C5068 6800B4AF */  sw         $s4, 0x68($sp)
/* B586C 800C506C 6400B3AF */  sw         $s3, 0x64($sp)
/* B5870 800C5070 6000B2AF */  sw         $s2, 0x60($sp)
/* B5874 800C5074 5C00B1AF */  sw         $s1, 0x5c($sp)
/* B5878 800C5078 02008104 */  bgez       $a0, .L800C5084
/* B587C 800C507C 5800B0AF */   sw        $s0, 0x58($sp)
/* B5880 800C5080 FE3FA426 */  addiu      $a0, $s5, 0x3ffe
.L800C5084:
/* B5884 800C5084 43A30400 */  sra        $s4, $a0, 0xd
/* B5888 800C5088 40AB1400 */  sll        $s5, $s4, 0xd
/* B588C 800C508C 2190A000 */  addu       $s2, $a1, $zero
/* B5890 800C5090 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B5894 800C5094 14004212 */  beq        $s2, $v0, .L800C50E8
/* B5898 800C5098 21880000 */   addu      $s1, $zero, $zero
/* B589C 800C509C 21204000 */  addu       $a0, $v0, $zero
/* B58A0 800C50A0 1000A327 */  addiu      $v1, $sp, 0x10
/* B58A4 800C50A4 C0111200 */  sll        $v0, $s2, 7
.L800C50A8:
/* B58A8 800C50A8 2180C202 */  addu       $s0, $s6, $v0
/* B58AC 800C50AC 08000596 */  lhu        $a1, 8($s0)
/* B58B0 800C50B0 000072AC */  sw         $s2, ($v1)
/* B58B4 800C50B4 01003126 */  addiu      $s1, $s1, 1
/* B58B8 800C50B8 2A103402 */  slt        $v0, $s1, $s4
/* B58BC 800C50BC 07004014 */  bnez       $v0, .L800C50DC
/* B58C0 800C50C0 04006324 */   addiu     $v1, $v1, 4
/* B58C4 800C50C4 0A00A410 */  beq        $a1, $a0, .L800C50F0
/* B58C8 800C50C8 2180C002 */   addu      $s0, $s6, $zero
/* B58CC 800C50CC 521C030C */  jal        FUN_800c7148
/* B58D0 800C50D0 2120E002 */   addu      $a0, $s7, $zero
/* B58D4 800C50D4 3B140308 */  j          .L800C50EC
/* B58D8 800C50D8 2180C002 */   addu      $s0, $s6, $zero
.L800C50DC:
/* B58DC 800C50DC 2190A000 */  addu       $s2, $a1, $zero
/* B58E0 800C50E0 F1FF4416 */  bne        $s2, $a0, .L800C50A8
/* B58E4 800C50E4 C0111200 */   sll       $v0, $s2, 7
.L800C50E8:
/* B58E8 800C50E8 2180C002 */  addu       $s0, $s6, $zero
.L800C50EC:
/* B58EC 800C50EC 2A103402 */  slt        $v0, $s1, $s4
.L800C50F0:
/* B58F0 800C50F0 17004010 */  beqz       $v0, .L800C5150
/* B58F4 800C50F4 21900000 */   addu      $s2, $zero, $zero
/* B58F8 800C50F8 1000A327 */  addiu      $v1, $sp, 0x10
/* B58FC 800C50FC 80101100 */  sll        $v0, $s1, 2
/* B5900 800C5100 21184300 */  addu       $v1, $v0, $v1
.L800C5104:
/* B5904 800C5104 0F00422A */  slti       $v0, $s2, 0xf
/* B5908 800C5108 0F004010 */  beqz       $v0, .L800C5148
/* B590C 800C510C 2A103402 */   slt       $v0, $s1, $s4
/* B5910 800C5110 0000028E */  lw         $v0, ($s0)
/* B5914 800C5114 00000000 */  nop
/* B5918 800C5118 60FF4224 */  addiu      $v0, $v0, -0xa0
/* B591C 800C511C 0400422C */  sltiu      $v0, $v0, 4
/* B5920 800C5120 04004010 */  beqz       $v0, .L800C5134
/* B5924 800C5124 00000000 */   nop
/* B5928 800C5128 000072AC */  sw         $s2, ($v1)
/* B592C 800C512C 04006324 */  addiu      $v1, $v1, 4
/* B5930 800C5130 01003126 */  addiu      $s1, $s1, 1
.L800C5134:
/* B5934 800C5134 01005226 */  addiu      $s2, $s2, 1
/* B5938 800C5138 2A103402 */  slt        $v0, $s1, $s4
/* B593C 800C513C F1FF4014 */  bnez       $v0, .L800C5104
/* B5940 800C5140 80001026 */   addiu     $s0, $s0, 0x80
/* B5944 800C5144 2A103402 */  slt        $v0, $s1, $s4
.L800C5148:
/* B5948 800C5148 3B004014 */  bnez       $v0, .L800C5238
/* B594C 800C514C FFFF0224 */   addiu     $v0, $zero, -1
.L800C5150:
/* B5950 800C5150 80101100 */  sll        $v0, $s1, 2
/* B5954 800C5154 2118A203 */  addu       $v1, $sp, $v0
/* B5958 800C5158 FFFF0234 */  ori        $v0, $zero, 0xffff
/* B595C 800C515C 100062AC */  sw         $v0, 0x10($v1)
/* B5960 800C5160 1000B28F */  lw         $s2, 0x10($sp)
/* B5964 800C5164 3300801A */  blez       $s4, .L800C5234
/* B5968 800C5168 21980000 */   addu      $s3, $zero, $zero
/* B596C 800C516C 04001124 */  addiu      $s1, $zero, 4
.L800C5170:
/* B5970 800C5170 C0111200 */  sll        $v0, $s2, 7
/* B5974 800C5174 2180C202 */  addu       $s0, $s6, $v0
/* B5978 800C5178 21200002 */  addu       $a0, $s0, $zero
/* B597C 800C517C 21280000 */  addu       $a1, $zero, $zero
/* B5980 800C5180 21185702 */  addu       $v1, $s2, $s7
/* B5984 800C5184 01000224 */  addiu      $v0, $zero, 1
/* B5988 800C5188 412062A0 */  sb         $v0, 0x2041($v1)
/* B598C 800C518C 2110B103 */  addu       $v0, $sp, $s1
/* B5990 800C5190 1000528C */  lw         $s2, 0x10($v0)
/* B5994 800C5194 F6A2000C */  jal        memset
/* B5998 800C5198 80000624 */   addiu     $a2, $zero, 0x80
/* B599C 800C519C 05006012 */  beqz       $s3, .L800C51B4
/* B59A0 800C51A0 FFFF0234 */   ori       $v0, $zero, 0xffff
/* B59A4 800C51A4 04004216 */  bne        $s2, $v0, .L800C51B8
/* B59A8 800C51A8 52000224 */   addiu     $v0, $zero, 0x52
/* B59AC 800C51AC 6E140308 */  j          .L800C51B8
/* B59B0 800C51B0 53000224 */   addiu     $v0, $zero, 0x53
.L800C51B4:
/* B59B4 800C51B4 51000224 */  addiu      $v0, $zero, 0x51
.L800C51B8:
/* B59B8 800C51B8 000002AE */  sw         $v0, ($s0)
/* B59BC 800C51BC 0A000426 */  addiu      $a0, $s0, 0xa
/* B59C0 800C51C0 2128C003 */  addu       $a1, $fp, $zero
/* B59C4 800C51C4 14000624 */  addiu      $a2, $zero, 0x14
/* B59C8 800C51C8 040015AE */  sw         $s5, 4($s0)
/* B59CC 800C51CC 55BB000C */  jal        strncpy
/* B59D0 800C51D0 080012A6 */   sh        $s2, 8($s0)
/* B59D4 800C51D4 21280002 */  addu       $a1, $s0, $zero
/* B59D8 800C51D8 21200000 */  addu       $a0, $zero, $zero
/* B59DC 800C51DC 5000A0AF */  sw         $zero, 0x50($sp)
.L800C51E0:
/* B59E0 800C51E0 0000A28C */  lw         $v0, ($a1)
/* B59E4 800C51E4 0400A524 */  addiu      $a1, $a1, 4
/* B59E8 800C51E8 5000A38F */  lw         $v1, 0x50($sp)
/* B59EC 800C51EC 01008424 */  addiu      $a0, $a0, 1
/* B59F0 800C51F0 26186200 */  xor        $v1, $v1, $v0
/* B59F4 800C51F4 2000822C */  sltiu      $v0, $a0, 0x20
/* B59F8 800C51F8 F9FF4014 */  bnez       $v0, .L800C51E0
/* B59FC 800C51FC 5000A3AF */   sw        $v1, 0x50($sp)
/* B5A00 800C5200 04003126 */  addiu      $s1, $s1, 4
/* B5A04 800C5204 5000A327 */  addiu      $v1, $sp, 0x50
/* B5A08 800C5208 5000A493 */  lbu        $a0, 0x50($sp)
/* B5A0C 800C520C 01006290 */  lbu        $v0, 1($v1)
/* B5A10 800C5210 01007326 */  addiu      $s3, $s3, 1
/* B5A14 800C5214 26208200 */  xor        $a0, $a0, $v0
/* B5A18 800C5218 02006290 */  lbu        $v0, 2($v1)
/* B5A1C 800C521C 03006390 */  lbu        $v1, 3($v1)
/* B5A20 800C5220 26104400 */  xor        $v0, $v0, $a0
/* B5A24 800C5224 26186200 */  xor        $v1, $v1, $v0
/* B5A28 800C5228 2A107402 */  slt        $v0, $s3, $s4
/* B5A2C 800C522C D0FF4014 */  bnez       $v0, .L800C5170
/* B5A30 800C5230 7F0003A2 */   sb        $v1, 0x7f($s0)
.L800C5234:
/* B5A34 800C5234 1000A28F */  lw         $v0, 0x10($sp)
.L800C5238:
/* B5A38 800C5238 7C00BF8F */  lw         $ra, 0x7c($sp)
/* B5A3C 800C523C 7800BE8F */  lw         $fp, 0x78($sp)
/* B5A40 800C5240 7400B78F */  lw         $s7, 0x74($sp)
/* B5A44 800C5244 7000B68F */  lw         $s6, 0x70($sp)
/* B5A48 800C5248 6C00B58F */  lw         $s5, 0x6c($sp)
/* B5A4C 800C524C 6800B48F */  lw         $s4, 0x68($sp)
/* B5A50 800C5250 6400B38F */  lw         $s3, 0x64($sp)
/* B5A54 800C5254 6000B28F */  lw         $s2, 0x60($sp)
/* B5A58 800C5258 5C00B18F */  lw         $s1, 0x5c($sp)
/* B5A5C 800C525C 5800B08F */  lw         $s0, 0x58($sp)
/* B5A60 800C5260 0800E003 */  jr         $ra
/* B5A64 800C5264 8000BD27 */   addiu     $sp, $sp, 0x80

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc0e4
/* BC8E4 800CC0E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BC8E8 800CC0E8 1400B1AF */  sw         $s1, 0x14($sp)
/* BC8EC 800CC0EC 21888000 */  addu       $s1, $a0, $zero
/* BC8F0 800CC0F0 1800B2AF */  sw         $s2, 0x18($sp)
/* BC8F4 800CC0F4 2190C000 */  addu       $s2, $a2, $zero
/* BC8F8 800CC0F8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BC8FC 800CC0FC 2198E000 */  addu       $s3, $a3, $zero
/* BC900 800CC100 0900622A */  slti       $v0, $s3, 9
/* BC904 800CC104 2000BFAF */  sw         $ra, 0x20($sp)
/* BC908 800CC108 03004014 */  bnez       $v0, .L800CC118
/* BC90C 800CC10C 1000B0AF */   sw        $s0, 0x10($sp)
/* BC910 800CC110 73300308 */  j          .L800CC1CC
/* BC914 800CC114 FEFF0224 */   addiu     $v0, $zero, -2
.L800CC118:
/* BC918 800CC118 83200500 */  sra        $a0, $a1, 2
/* BC91C 800CC11C 7E008430 */  andi       $a0, $a0, 0x7e
/* BC920 800CC120 E42D030C */  jal        FUN_800cb790
/* BC924 800CC124 80008434 */   ori       $a0, $a0, 0x80
/* BC928 800CC128 05004010 */  beqz       $v0, .L800CC140
/* BC92C 800CC12C 21800000 */   addu      $s0, $zero, $zero
/* BC930 800CC130 D32D030C */  jal        FUN_800cb74c
/* BC934 800CC134 FFFF0424 */   addiu     $a0, $zero, -1
/* BC938 800CC138 73300308 */  j          .L800CC1CC
/* BC93C 800CC13C 00000000 */   nop
.L800CC140:
/* BC940 800CC140 00002492 */  lbu        $a0, ($s1)
/* BC944 800CC144 442B030C */  jal        FUN_800cad10
/* BC948 800CC148 01003126 */   addiu     $s1, $s1, 1
/* BC94C 800CC14C 0C004014 */  bnez       $v0, .L800CC180
/* BC950 800CC150 01001026 */   addiu     $s0, $s0, 1
/* BC954 800CC154 0800022A */  slti       $v0, $s0, 8
/* BC958 800CC158 F9FF4014 */  bnez       $v0, .L800CC140
/* BC95C 800CC15C 00000000 */   nop
/* BC960 800CC160 E42D030C */  jal        FUN_800cb790
/* BC964 800CC164 55000424 */   addiu     $a0, $zero, 0x55
/* BC968 800CC168 09004010 */  beqz       $v0, .L800CC190
/* BC96C 800CC16C 00000000 */   nop
/* BC970 800CC170 D32D030C */  jal        FUN_800cb74c
/* BC974 800CC174 FDFF0424 */   addiu     $a0, $zero, -3
/* BC978 800CC178 73300308 */  j          .L800CC1CC
/* BC97C 800CC17C 00000000 */   nop
.L800CC180:
/* BC980 800CC180 D32D030C */  jal        FUN_800cb74c
/* BC984 800CC184 FEFF0424 */   addiu     $a0, $zero, -2
/* BC988 800CC188 73300308 */  j          .L800CC1CC
/* BC98C 800CC18C 00000000 */   nop
.L800CC190:
/* BC990 800CC190 0900601A */  blez       $s3, .L800CC1B8
/* BC994 800CC194 21800000 */   addu      $s0, $zero, $zero
.L800CC198:
/* BC998 800CC198 00004492 */  lbu        $a0, ($s2)
/* BC99C 800CC19C 442B030C */  jal        FUN_800cad10
/* BC9A0 800CC1A0 01005226 */   addiu     $s2, $s2, 1
/* BC9A4 800CC1A4 F6FF4014 */  bnez       $v0, .L800CC180
/* BC9A8 800CC1A8 01001026 */   addiu     $s0, $s0, 1
/* BC9AC 800CC1AC 2A101302 */  slt        $v0, $s0, $s3
/* BC9B0 800CC1B0 F9FF4014 */  bnez       $v0, .L800CC198
/* BC9B4 800CC1B4 00000000 */   nop
.L800CC1B8:
/* BC9B8 800CC1B8 162B030C */  jal        FUN_800cac58
/* BC9BC 800CC1BC 00000000 */   nop
/* BC9C0 800CC1C0 B32D030C */  jal        FUN_800cb6cc
/* BC9C4 800CC1C4 04000424 */   addiu     $a0, $zero, 4
/* BC9C8 800CC1C8 21100000 */  addu       $v0, $zero, $zero
.L800CC1CC:
/* BC9CC 800CC1CC 2000BF8F */  lw         $ra, 0x20($sp)
/* BC9D0 800CC1D0 1C00B38F */  lw         $s3, 0x1c($sp)
/* BC9D4 800CC1D4 1800B28F */  lw         $s2, 0x18($sp)
/* BC9D8 800CC1D8 1400B18F */  lw         $s1, 0x14($sp)
/* BC9DC 800CC1DC 1000B08F */  lw         $s0, 0x10($sp)
/* BC9E0 800CC1E0 0800E003 */  jr         $ra
/* BC9E4 800CC1E4 2800BD27 */   addiu     $sp, $sp, 0x28

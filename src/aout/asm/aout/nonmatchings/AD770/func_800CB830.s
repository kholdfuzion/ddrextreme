.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CB830
/* BC030 800CB830 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC034 800CB834 1000B0AF */  sw         $s0, 0x10($sp)
/* BC038 800CB838 21808000 */  addu       $s0, $a0, $zero
/* BC03C 800CB83C 1400B1AF */  sw         $s1, 0x14($sp)
/* BC040 800CB840 2188A000 */  addu       $s1, $a1, $zero
/* BC044 800CB844 1800B2AF */  sw         $s2, 0x18($sp)
/* BC048 800CB848 2190C000 */  addu       $s2, $a2, $zero
/* BC04C 800CB84C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BC050 800CB850 E42D030C */  jal        FUN_800cb790
/* BC054 800CB854 80000424 */   addiu     $a0, $zero, 0x80
/* BC058 800CB858 05004010 */  beqz       $v0, .L800CB870
/* BC05C 800CB85C 00000000 */   nop
/* BC060 800CB860 D32D030C */  jal        FUN_800cb74c
/* BC064 800CB864 FFFF0424 */   addiu     $a0, $zero, -1
/* BC068 800CB868 4C2E0308 */  j          .L800CB930
/* BC06C 800CB86C 00000000 */   nop
.L800CB870:
/* BC070 800CB870 442B030C */  jal        FUN_800cad10
/* BC074 800CB874 FF000432 */   andi      $a0, $s0, 0xff
/* BC078 800CB878 11004014 */  bnez       $v0, .L800CB8C0
/* BC07C 800CB87C 21800000 */   addu      $s0, $zero, $zero
.L800CB880:
/* BC080 800CB880 00002492 */  lbu        $a0, ($s1)
/* BC084 800CB884 442B030C */  jal        FUN_800cad10
/* BC088 800CB888 01003126 */   addiu     $s1, $s1, 1
/* BC08C 800CB88C 0C004014 */  bnez       $v0, .L800CB8C0
/* BC090 800CB890 01001026 */   addiu     $s0, $s0, 1
/* BC094 800CB894 0800022A */  slti       $v0, $s0, 8
/* BC098 800CB898 F9FF4014 */  bnez       $v0, .L800CB880
/* BC09C 800CB89C 00000000 */   nop
/* BC0A0 800CB8A0 E42D030C */  jal        FUN_800cb790
/* BC0A4 800CB8A4 C0000424 */   addiu     $a0, $zero, 0xc0
/* BC0A8 800CB8A8 09004010 */  beqz       $v0, .L800CB8D0
/* BC0AC 800CB8AC 21800000 */   addu      $s0, $zero, $zero
/* BC0B0 800CB8B0 D32D030C */  jal        FUN_800cb74c
/* BC0B4 800CB8B4 FDFF0424 */   addiu     $a0, $zero, -3
/* BC0B8 800CB8B8 4C2E0308 */  j          .L800CB930
/* BC0BC 800CB8BC 00000000 */   nop
.L800CB8C0:
/* BC0C0 800CB8C0 D32D030C */  jal        FUN_800cb74c
/* BC0C4 800CB8C4 FEFF0424 */   addiu     $a0, $zero, -2
/* BC0C8 800CB8C8 4C2E0308 */  j          .L800CB930
/* BC0CC 800CB8CC 00000000 */   nop
.L800CB8D0:
/* BC0D0 800CB8D0 21105002 */  addu       $v0, $s2, $s0
.L800CB8D4:
/* BC0D4 800CB8D4 00004490 */  lbu        $a0, ($v0)
/* BC0D8 800CB8D8 442B030C */  jal        FUN_800cad10
/* BC0DC 800CB8DC 00000000 */   nop
/* BC0E0 800CB8E0 F7FF4014 */  bnez       $v0, .L800CB8C0
/* BC0E4 800CB8E4 01001026 */   addiu     $s0, $s0, 1
/* BC0E8 800CB8E8 0800022A */  slti       $v0, $s0, 8
/* BC0EC 800CB8EC F9FF4014 */  bnez       $v0, .L800CB8D4
/* BC0F0 800CB8F0 21105002 */   addu      $v0, $s2, $s0
/* BC0F4 800CB8F4 21800000 */  addu       $s0, $zero, $zero
/* BC0F8 800CB8F8 21105002 */  addu       $v0, $s2, $s0
.L800CB8FC:
/* BC0FC 800CB8FC 00004490 */  lbu        $a0, ($v0)
/* BC100 800CB900 442B030C */  jal        FUN_800cad10
/* BC104 800CB904 00000000 */   nop
/* BC108 800CB908 EDFF4014 */  bnez       $v0, .L800CB8C0
/* BC10C 800CB90C 01001026 */   addiu     $s0, $s0, 1
/* BC110 800CB910 0800022A */  slti       $v0, $s0, 8
/* BC114 800CB914 F9FF4014 */  bnez       $v0, .L800CB8FC
/* BC118 800CB918 21105002 */   addu      $v0, $s2, $s0
/* BC11C 800CB91C 162B030C */  jal        FUN_800cac58
/* BC120 800CB920 00000000 */   nop
/* BC124 800CB924 B32D030C */  jal        FUN_800cb6cc
/* BC128 800CB928 04000424 */   addiu     $a0, $zero, 4
/* BC12C 800CB92C 21100000 */  addu       $v0, $zero, $zero
.L800CB930:
/* BC130 800CB930 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BC134 800CB934 1800B28F */  lw         $s2, 0x18($sp)
/* BC138 800CB938 1400B18F */  lw         $s1, 0x14($sp)
/* BC13C 800CB93C 1000B08F */  lw         $s0, 0x10($sp)
/* BC140 800CB940 0800E003 */  jr         $ra
/* BC144 800CB944 2000BD27 */   addiu     $sp, $sp, 0x20

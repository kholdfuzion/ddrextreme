.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c00a8
/* B08A8 800C00A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B08AC 800C00AC 2400BFAF */  sw         $ra, 0x24($sp)
/* B08B0 800C00B0 2000B2AF */  sw         $s2, 0x20($sp)
/* B08B4 800C00B4 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B08B8 800C00B8 1800B0AF */  sw         $s0, 0x18($sp)
/* B08BC 800C00BC F6FF020C */  jal        FUN_800bffd8
/* B08C0 800C00C0 FFFF9030 */   andi      $s0, $a0, 0xffff
/* B08C4 800C00C4 FEFF0324 */  addiu      $v1, $zero, -2
/* B08C8 800C00C8 03004314 */  bne        $v0, $v1, .L800C00D8
/* B08CC 800C00CC 21200002 */   addu      $a0, $s0, $zero
/* B08D0 800C00D0 59000308 */  j          .L800C0164
/* B08D4 800C00D4 FEFF0224 */   addiu     $v0, $zero, -2
.L800C00D8:
/* B08D8 800C00D8 2500030C */  jal        FUN_800c0094
/* B08DC 800C00DC 1000A527 */   addiu     $a1, $sp, 0x10
/* B08E0 800C00E0 55FE020C */  jal        FUN_800bf954
/* B08E4 800C00E4 21900000 */   addu      $s2, $zero, $zero
/* B08E8 800C00E8 5AFF020C */  jal        FUN_800bfd68
/* B08EC 800C00EC 3A000424 */   addiu     $a0, $zero, 0x3a
/* B08F0 800C00F0 E0FF020C */  jal        FUN_800bff80
/* B08F4 800C00F4 00000000 */   nop
/* B08F8 800C00F8 07004014 */  bnez       $v0, .L800C0118
/* B08FC 800C00FC 00000000 */   nop
/* B0900 800C0100 5AFF020C */  jal        FUN_800bfd68
/* B0904 800C0104 68000424 */   addiu     $a0, $zero, 0x68
/* B0908 800C0108 E0FF020C */  jal        FUN_800bff80
/* B090C 800C010C 00000000 */   nop
/* B0910 800C0110 03004010 */  beqz       $v0, .L800C0120
/* B0914 800C0114 21800000 */   addu      $s0, $zero, $zero
.L800C0118:
/* B0918 800C0118 54000308 */  j          .L800C0150
/* B091C 800C011C FDFF1224 */   addiu     $s2, $zero, -3
.L800C0120:
/* B0920 800C0120 1000B127 */  addiu      $s1, $sp, 0x10
/* B0924 800C0124 21103002 */  addu       $v0, $s1, $s0
.L800C0128:
/* B0928 800C0128 00004490 */  lbu        $a0, ($v0)
/* B092C 800C012C 5AFF020C */  jal        FUN_800bfd68
/* B0930 800C0130 00000000 */   nop
/* B0934 800C0134 E0FF020C */  jal        FUN_800bff80
/* B0938 800C0138 00000000 */   nop
/* B093C 800C013C F6FF4014 */  bnez       $v0, .L800C0118
/* B0940 800C0140 01001026 */   addiu     $s0, $s0, 1
/* B0944 800C0144 0200022A */  slti       $v0, $s0, 2
/* B0948 800C0148 F7FF4014 */  bnez       $v0, .L800C0128
/* B094C 800C014C 21103002 */   addu      $v0, $s1, $s0
.L800C0150:
/* B0950 800C0150 A7FE020C */  jal        FUN_800bfa9c
/* B0954 800C0154 00000000 */   nop
/* B0958 800C0158 0C00030C */  jal        FUN_800c0030
/* B095C 800C015C 00000000 */   nop
/* B0960 800C0160 21104002 */  addu       $v0, $s2, $zero
.L800C0164:
/* B0964 800C0164 2400BF8F */  lw         $ra, 0x24($sp)
/* B0968 800C0168 2000B28F */  lw         $s2, 0x20($sp)
/* B096C 800C016C 1C00B18F */  lw         $s1, 0x1c($sp)
/* B0970 800C0170 1800B08F */  lw         $s0, 0x18($sp)
/* B0974 800C0174 0800E003 */  jr         $ra
/* B0978 800C0178 2800BD27 */   addiu     $sp, $sp, 0x28

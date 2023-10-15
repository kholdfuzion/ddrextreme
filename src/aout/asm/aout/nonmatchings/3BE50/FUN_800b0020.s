.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0020
/* A0820 800B0020 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A0824 800B0024 2000BFAF */  sw         $ra, 0x20($sp)
/* A0828 800B0028 FFFF8630 */  andi       $a2, $a0, 0xffff
/* A082C 800B002C 21180000 */  addu       $v1, $zero, $zero
/* A0830 800B0030 FEFF0534 */  ori        $a1, $zero, 0xfffe
/* A0834 800B0034 1D80083C */  lui        $t0, %hi(D_801CC948)
/* A0838 800B0038 48C90225 */  addiu      $v0, $t0, %lo(D_801CC948)
/* A083C 800B003C 05004424 */  addiu      $a0, $v0, 5
.L800B0040:
/* A0840 800B0040 00008290 */  lbu        $v0, ($a0)
/* A0844 800B0044 00000000 */  nop
/* A0848 800B0048 06004010 */  beqz       $v0, .L800B0064
/* A084C 800B004C 21106000 */   addu      $v0, $v1, $zero
/* A0850 800B0050 01006324 */  addiu      $v1, $v1, 1
/* A0854 800B0054 2A10A300 */  slt        $v0, $a1, $v1
/* A0858 800B0058 F9FF4010 */  beqz       $v0, .L800B0040
/* A085C 800B005C 18008424 */   addiu     $a0, $a0, 0x18
/* A0860 800B0060 21100000 */  addu       $v0, $zero, $zero
.L800B0064:
/* A0864 800B0064 2A10C200 */  slt        $v0, $a2, $v0
/* A0868 800B0068 05004014 */  bnez       $v0, .L800B0080
/* A086C 800B006C 21280000 */   addu      $a1, $zero, $zero
/* A0870 800B0070 6EC00208 */  j          .L800B01B8
/* A0874 800B0074 FFFF0224 */   addiu     $v0, $zero, -1
.L800B0078:
/* A0878 800B0078 2CC00208 */  j          .L800B00B0
/* A087C 800B007C 21108000 */   addu      $v0, $a0, $zero
.L800B0080:
/* A0880 800B0080 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0884 800B0084 B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
/* A0888 800B0088 21206000 */  addu       $a0, $v1, $zero
.L800B008C:
/* A088C 800B008C 00006294 */  lhu        $v0, ($v1)
/* A0890 800B0090 00000000 */  nop
/* A0894 800B0094 F8FF4610 */  beq        $v0, $a2, .L800B0078
/* A0898 800B0098 10006324 */   addiu     $v1, $v1, 0x10
/* A089C 800B009C 0100A524 */  addiu      $a1, $a1, 1
/* A08A0 800B00A0 2C01A228 */  slti       $v0, $a1, 0x12c
/* A08A4 800B00A4 F9FF4014 */  bnez       $v0, .L800B008C
/* A08A8 800B00A8 10008424 */   addiu     $a0, $a0, 0x10
/* A08AC 800B00AC 21100000 */  addu       $v0, $zero, $zero
.L800B00B0:
/* A08B0 800B00B0 02004010 */  beqz       $v0, .L800B00BC
/* A08B4 800B00B4 21180000 */   addu      $v1, $zero, $zero
/* A08B8 800B00B8 07004390 */  lbu        $v1, 7($v0)
.L800B00BC:
/* A08BC 800B00BC 00000000 */  nop
/* A08C0 800B00C0 07006010 */  beqz       $v1, .L800B00E0
/* A08C4 800B00C4 21280000 */   addu      $a1, $zero, $zero
/* A08C8 800B00C8 6EC00208 */  j          .L800B01B8
/* A08CC 800B00CC 21100000 */   addu      $v0, $zero, $zero
.L800B00D0:
/* A08D0 800B00D0 43C00208 */  j          .L800B010C
/* A08D4 800B00D4 21108000 */   addu      $v0, $a0, $zero
.L800B00D8:
/* A08D8 800B00D8 51C00208 */  j          .L800B0144
/* A08DC 800B00DC 21108000 */   addu      $v0, $a0, $zero
.L800B00E0:
/* A08E0 800B00E0 1D80073C */  lui        $a3, %hi(D_801D2378)
/* A08E4 800B00E4 7823E324 */  addiu      $v1, $a3, %lo(D_801D2378)
/* A08E8 800B00E8 21206000 */  addu       $a0, $v1, $zero
.L800B00EC:
/* A08EC 800B00EC 00006294 */  lhu        $v0, ($v1)
/* A08F0 800B00F0 00000000 */  nop
/* A08F4 800B00F4 F6FF4610 */  beq        $v0, $a2, .L800B00D0
/* A08F8 800B00F8 10006324 */   addiu     $v1, $v1, 0x10
/* A08FC 800B00FC 0100A524 */  addiu      $a1, $a1, 1
/* A0900 800B0100 FAFFA018 */  blez       $a1, .L800B00EC
/* A0904 800B0104 10008424 */   addiu     $a0, $a0, 0x10
/* A0908 800B0108 21100000 */  addu       $v0, $zero, $zero
.L800B010C:
/* A090C 800B010C 12004014 */  bnez       $v0, .L800B0158
/* A0910 800B0110 21280000 */   addu      $a1, $zero, $zero
/* A0914 800B0114 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0918 800B0118 B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
/* A091C 800B011C 21206000 */  addu       $a0, $v1, $zero
.L800B0120:
/* A0920 800B0120 00006294 */  lhu        $v0, ($v1)
/* A0924 800B0124 00000000 */  nop
/* A0928 800B0128 EBFF4610 */  beq        $v0, $a2, .L800B00D8
/* A092C 800B012C 10006324 */   addiu     $v1, $v1, 0x10
/* A0930 800B0130 0100A524 */  addiu      $a1, $a1, 1
/* A0934 800B0134 2C01A228 */  slti       $v0, $a1, 0x12c
/* A0938 800B0138 F9FF4014 */  bnez       $v0, .L800B0120
/* A093C 800B013C 10008424 */   addiu     $a0, $a0, 0x10
/* A0940 800B0140 21100000 */  addu       $v0, $zero, $zero
.L800B0144:
/* A0944 800B0144 02004010 */  beqz       $v0, .L800B0150
/* A0948 800B0148 21180000 */   addu      $v1, $zero, $zero
/* A094C 800B014C 07004390 */  lbu        $v1, 7($v0)
.L800B0150:
/* A0950 800B0150 57C00208 */  j          .L800B015C
/* A0954 800B0154 21106000 */   addu      $v0, $v1, $zero
.L800B0158:
/* A0958 800B0158 07004290 */  lbu        $v0, 7($v0)
.L800B015C:
/* A095C 800B015C 00000000 */  nop
/* A0960 800B0160 15004014 */  bnez       $v0, .L800B01B8
/* A0964 800B0164 21100000 */   addu      $v0, $zero, $zero
/* A0968 800B0168 1D80023C */  lui        $v0, %hi(D_801D0072)
/* A096C 800B016C 72004494 */  lhu        $a0, %lo(D_801D0072)($v0)
/* A0970 800B0170 FFFF0334 */  ori        $v1, $zero, 0xffff
/* A0974 800B0174 10008314 */  bne        $a0, $v1, .L800B01B8
/* A0978 800B0178 01000224 */   addiu     $v0, $zero, 1
/* A097C 800B017C 48C90325 */  addiu      $v1, $t0, -0x36b8
/* A0980 800B0180 40100600 */  sll        $v0, $a2, 1
/* A0984 800B0184 21104600 */  addu       $v0, $v0, $a2
/* A0988 800B0188 C0100200 */  sll        $v0, $v0, 3
/* A098C 800B018C 21206200 */  addu       $a0, $v1, $v0
/* A0990 800B0190 21188000 */  addu       $v1, $a0, $zero
/* A0994 800B0194 1000858C */  lw         $a1, 0x10($a0)
/* A0998 800B0198 7823E424 */  addiu      $a0, $a3, 0x2378
/* A099C 800B019C 1400628C */  lw         $v0, 0x14($v1)
/* A09A0 800B01A0 21380000 */  addu       $a3, $zero, $zero
/* A09A4 800B01A4 1000A0AF */  sw         $zero, 0x10($sp)
/* A09A8 800B01A8 1800A5AF */  sw         $a1, 0x18($sp)
/* A09AC 800B01AC 1800A527 */  addiu      $a1, $sp, 0x18
/* A09B0 800B01B0 73BF020C */  jal        FUN_800afdcc
/* A09B4 800B01B4 1C00A2AF */   sw        $v0, 0x1c($sp)
.L800B01B8:
/* A09B8 800B01B8 2000BF8F */  lw         $ra, 0x20($sp)
/* A09BC 800B01BC 00000000 */  nop
/* A09C0 800B01C0 0800E003 */  jr         $ra
/* A09C4 800B01C4 2800BD27 */   addiu     $sp, $sp, 0x28

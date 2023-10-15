.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c07d0
/* B0FD0 800C07D0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B0FD4 800C07D4 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B0FD8 800C07D8 2800B4AF */  sw         $s4, 0x28($sp)
/* B0FDC 800C07DC 2400B3AF */  sw         $s3, 0x24($sp)
/* B0FE0 800C07E0 2000B2AF */  sw         $s2, 0x20($sp)
/* B0FE4 800C07E4 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B0FE8 800C07E8 1800B0AF */  sw         $s0, 0x18($sp)
/* B0FEC 800C07EC 21A0A000 */  addu       $s4, $a1, $zero
/* B0FF0 800C07F0 00240400 */  sll        $a0, $a0, 0x10
/* B0FF4 800C07F4 55FE020C */  jal        FUN_800bf954
/* B0FF8 800C07F8 039C0400 */   sra       $s3, $a0, 0x10
/* B0FFC 800C07FC 5AFF020C */  jal        FUN_800bfd68
/* B1000 800C0800 3A000424 */   addiu     $a0, $zero, 0x3a
/* B1004 800C0804 E0FF020C */  jal        FUN_800bff80
/* B1008 800C0808 00000000 */   nop
/* B100C 800C080C 0F004014 */  bnez       $v0, .L800C084C
/* B1010 800C0810 00000000 */   nop
/* B1014 800C0814 5AFF020C */  jal        FUN_800bfd68
/* B1018 800C0818 69000424 */   addiu     $a0, $zero, 0x69
/* B101C 800C081C E0FF020C */  jal        FUN_800bff80
/* B1020 800C0820 00000000 */   nop
/* B1024 800C0824 09004014 */  bnez       $v0, .L800C084C
/* B1028 800C0828 00000000 */   nop
/* B102C 800C082C 55FE020C */  jal        FUN_800bf954
/* B1030 800C0830 00000000 */   nop
/* B1034 800C0834 5AFF020C */  jal        FUN_800bfd68
/* B1038 800C0838 3B000424 */   addiu     $a0, $zero, 0x3b
/* B103C 800C083C E0FF020C */  jal        FUN_800bff80
/* B1040 800C0840 00000000 */   nop
/* B1044 800C0844 05004010 */  beqz       $v0, .L800C085C
/* B1048 800C0848 FFFF6226 */   addiu     $v0, $s3, -1
.L800C084C:
/* B104C 800C084C A7FE020C */  jal        FUN_800bfa9c
/* B1050 800C0850 00000000 */   nop
/* B1054 800C0854 57020308 */  j          .L800C095C
/* B1058 800C0858 01000224 */   addiu     $v0, $zero, 1
.L800C085C:
/* B105C 800C085C 1E004018 */  blez       $v0, .L800C08D8
/* B1060 800C0860 21880000 */   addu      $s1, $zero, $zero
/* B1064 800C0864 1000B227 */  addiu      $s2, $sp, 0x10
/* B1068 800C0868 21800000 */  addu       $s0, $zero, $zero
.L800C086C:
/* B106C 800C086C B9FF020C */  jal        FUN_800bfee4
/* B1070 800C0870 00000000 */   nop
/* B1074 800C0874 21185002 */  addu       $v1, $s2, $s0
/* B1078 800C0878 D0FF020C */  jal        FUN_800bff40
/* B107C 800C087C 000062A0 */   sb        $v0, ($v1)
/* B1080 800C0880 01001026 */  addiu      $s0, $s0, 1
/* B1084 800C0884 0400022A */  slti       $v0, $s0, 4
/* B1088 800C0888 F8FF4014 */  bnez       $v0, .L800C086C
/* B108C 800C088C 80201100 */   sll       $a0, $s1, 2
/* B1090 800C0890 21209400 */  addu       $a0, $a0, $s4
/* B1094 800C0894 1300A293 */  lbu        $v0, 0x13($sp)
/* B1098 800C0898 00000000 */  nop
/* B109C 800C089C 0F004230 */  andi       $v0, $v0, 0xf
/* B10A0 800C08A0 00120200 */  sll        $v0, $v0, 8
/* B10A4 800C08A4 1000A393 */  lbu        $v1, 0x10($sp)
/* B10A8 800C08A8 00000000 */  nop
/* B10AC 800C08AC 25186200 */  or         $v1, $v1, $v0
/* B10B0 800C08B0 001A0300 */  sll        $v1, $v1, 8
/* B10B4 800C08B4 1100A293 */  lbu        $v0, 0x11($sp)
/* B10B8 800C08B8 00000000 */  nop
/* B10BC 800C08BC 25104300 */  or         $v0, $v0, $v1
/* B10C0 800C08C0 000082AC */  sw         $v0, ($a0)
/* B10C4 800C08C4 01003126 */  addiu      $s1, $s1, 1
/* B10C8 800C08C8 FFFF6226 */  addiu      $v0, $s3, -1
/* B10CC 800C08CC 2A102202 */  slt        $v0, $s1, $v0
/* B10D0 800C08D0 E6FF4014 */  bnez       $v0, .L800C086C
/* B10D4 800C08D4 21800000 */   addu      $s0, $zero, $zero
.L800C08D8:
/* B10D8 800C08D8 21800000 */  addu       $s0, $zero, $zero
/* B10DC 800C08DC 1000B127 */  addiu      $s1, $sp, 0x10
.L800C08E0:
/* B10E0 800C08E0 B9FF020C */  jal        FUN_800bfee4
/* B10E4 800C08E4 00000000 */   nop
/* B10E8 800C08E8 21183002 */  addu       $v1, $s1, $s0
/* B10EC 800C08EC D0FF020C */  jal        FUN_800bff40
/* B10F0 800C08F0 000062A0 */   sb        $v0, ($v1)
/* B10F4 800C08F4 01001026 */  addiu      $s0, $s0, 1
/* B10F8 800C08F8 0300022A */  slti       $v0, $s0, 3
/* B10FC 800C08FC F8FF4014 */  bnez       $v0, .L800C08E0
/* B1100 800C0900 00000000 */   nop
/* B1104 800C0904 B9FF020C */  jal        FUN_800bfee4
/* B1108 800C0908 00000000 */   nop
/* B110C 800C090C D8FF020C */  jal        FUN_800bff60
/* B1110 800C0910 1300A2A3 */   sb        $v0, 0x13($sp)
/* B1114 800C0914 80201300 */  sll        $a0, $s3, 2
/* B1118 800C0918 21209400 */  addu       $a0, $a0, $s4
/* B111C 800C091C 1300A293 */  lbu        $v0, 0x13($sp)
/* B1120 800C0920 00000000 */  nop
/* B1124 800C0924 0F004230 */  andi       $v0, $v0, 0xf
/* B1128 800C0928 00120200 */  sll        $v0, $v0, 8
/* B112C 800C092C FCFF82AC */  sw         $v0, -4($a0)
/* B1130 800C0930 1000A393 */  lbu        $v1, 0x10($sp)
/* B1134 800C0934 00000000 */  nop
/* B1138 800C0938 25186200 */  or         $v1, $v1, $v0
/* B113C 800C093C 001A0300 */  sll        $v1, $v1, 8
/* B1140 800C0940 FCFF83AC */  sw         $v1, -4($a0)
/* B1144 800C0944 1100A293 */  lbu        $v0, 0x11($sp)
/* B1148 800C0948 00000000 */  nop
/* B114C 800C094C 25104300 */  or         $v0, $v0, $v1
/* B1150 800C0950 A7FE020C */  jal        FUN_800bfa9c
/* B1154 800C0954 FCFF82AC */   sw        $v0, -4($a0)
/* B1158 800C0958 21100000 */  addu       $v0, $zero, $zero
.L800C095C:
/* B115C 800C095C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B1160 800C0960 2800B48F */  lw         $s4, 0x28($sp)
/* B1164 800C0964 2400B38F */  lw         $s3, 0x24($sp)
/* B1168 800C0968 2000B28F */  lw         $s2, 0x20($sp)
/* B116C 800C096C 1C00B18F */  lw         $s1, 0x1c($sp)
/* B1170 800C0970 1800B08F */  lw         $s0, 0x18($sp)
/* B1174 800C0974 0800E003 */  jr         $ra
/* B1178 800C0978 3000BD27 */   addiu     $sp, $sp, 0x30

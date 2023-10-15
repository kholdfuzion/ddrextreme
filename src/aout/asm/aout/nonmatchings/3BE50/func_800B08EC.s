.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B08EC
/* A10EC 800B08EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A10F0 800B08F0 1000BFAF */  sw         $ra, 0x10($sp)
/* A10F4 800B08F4 FFFF8730 */  andi       $a3, $a0, 0xffff
/* A10F8 800B08F8 21180000 */  addu       $v1, $zero, $zero
/* A10FC 800B08FC FEFF0634 */  ori        $a2, $zero, 0xfffe
/* A1100 800B0900 1D80023C */  lui        $v0, %hi(D_801CC948)
/* A1104 800B0904 48C94224 */  addiu      $v0, $v0, %lo(D_801CC948)
/* A1108 800B0908 05004424 */  addiu      $a0, $v0, 5
.L800B090C:
/* A110C 800B090C 00008290 */  lbu        $v0, ($a0)
/* A1110 800B0910 00000000 */  nop
/* A1114 800B0914 06004010 */  beqz       $v0, .L800B0930
/* A1118 800B0918 21106000 */   addu      $v0, $v1, $zero
/* A111C 800B091C 01006324 */  addiu      $v1, $v1, 1
/* A1120 800B0920 2A10C300 */  slt        $v0, $a2, $v1
/* A1124 800B0924 F9FF4010 */  beqz       $v0, .L800B090C
/* A1128 800B0928 18008424 */   addiu     $a0, $a0, 0x18
/* A112C 800B092C 21100000 */  addu       $v0, $zero, $zero
.L800B0930:
/* A1130 800B0930 2A10E200 */  slt        $v0, $a3, $v0
/* A1134 800B0934 03004014 */  bnez       $v0, .L800B0944
/* A1138 800B0938 1D80023C */   lui       $v0, %hi(D_801D0072)
/* A113C 800B093C 57C20208 */  j          .L800B095C
/* A1140 800B0940 FFFF0224 */   addiu     $v0, $zero, -1
.L800B0944:
/* A1144 800B0944 72004494 */  lhu        $a0, %lo(D_801D0072)($v0)
/* A1148 800B0948 FFFF0334 */  ori        $v1, $zero, 0xffff
/* A114C 800B094C 03008314 */  bne        $a0, $v1, .L800B095C
/* A1150 800B0950 01000224 */   addiu     $v0, $zero, 1
/* A1154 800B0954 A8BE020C */  jal        FUN_800afaa0
/* A1158 800B0958 2120E000 */   addu      $a0, $a3, $zero
.L800B095C:
/* A115C 800B095C 1000BF8F */  lw         $ra, 0x10($sp)
/* A1160 800B0960 00000000 */  nop
/* A1164 800B0964 0800E003 */  jr         $ra
/* A1168 800B0968 1800BD27 */   addiu     $sp, $sp, 0x18

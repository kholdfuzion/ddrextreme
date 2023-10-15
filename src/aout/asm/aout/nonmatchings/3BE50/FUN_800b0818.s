.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0818
/* A1018 800B0818 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A101C 800B081C 1000BFAF */  sw         $ra, 0x10($sp)
/* A1020 800B0820 FFFF8630 */  andi       $a2, $a0, 0xffff
/* A1024 800B0824 21180000 */  addu       $v1, $zero, $zero
/* A1028 800B0828 FEFF0534 */  ori        $a1, $zero, 0xfffe
/* A102C 800B082C 1D80023C */  lui        $v0, %hi(D_801CC948)
/* A1030 800B0830 48C94224 */  addiu      $v0, $v0, %lo(D_801CC948)
/* A1034 800B0834 05004424 */  addiu      $a0, $v0, 5
.L800B0838:
/* A1038 800B0838 00008290 */  lbu        $v0, ($a0)
/* A103C 800B083C 00000000 */  nop
/* A1040 800B0840 06004010 */  beqz       $v0, .L800B085C
/* A1044 800B0844 21106000 */   addu      $v0, $v1, $zero
/* A1048 800B0848 01006324 */  addiu      $v1, $v1, 1
/* A104C 800B084C 2A10A300 */  slt        $v0, $a1, $v1
/* A1050 800B0850 F9FF4010 */  beqz       $v0, .L800B0838
/* A1054 800B0854 18008424 */   addiu     $a0, $a0, 0x18
/* A1058 800B0858 21100000 */  addu       $v0, $zero, $zero
.L800B085C:
/* A105C 800B085C 2A10C200 */  slt        $v0, $a2, $v0
/* A1060 800B0860 03004014 */  bnez       $v0, .L800B0870
/* A1064 800B0864 1D80023C */   lui       $v0, %hi(D_801D0072)
/* A1068 800B0868 23C20208 */  j          .L800B088C
/* A106C 800B086C FFFF0224 */   addiu     $v0, $zero, -1
.L800B0870:
/* A1070 800B0870 72004494 */  lhu        $a0, %lo(D_801D0072)($v0)
/* A1074 800B0874 FFFF0334 */  ori        $v1, $zero, 0xffff
/* A1078 800B0878 04008314 */  bne        $a0, $v1, .L800B088C
/* A107C 800B087C 01000224 */   addiu     $v0, $zero, 1
/* A1080 800B0880 2120C000 */  addu       $a0, $a2, $zero
/* A1084 800B0884 A8BE020C */  jal        FUN_800afaa0
/* A1088 800B0888 21280000 */   addu      $a1, $zero, $zero
.L800B088C:
/* A108C 800B088C 1000BF8F */  lw         $ra, 0x10($sp)
/* A1090 800B0890 00000000 */  nop
/* A1094 800B0894 0800E003 */  jr         $ra
/* A1098 800B0898 1800BD27 */   addiu     $sp, $sp, 0x18

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c37e0
/* B3FE0 800C37E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B3FE4 800C37E4 1000BFAF */  sw         $ra, 0x10($sp)
/* B3FE8 800C37E8 10000924 */  addiu      $t1, $zero, 0x10
/* B3FEC 800C37EC 21400000 */  addu       $t0, $zero, $zero
/* B3FF0 800C37F0 39008724 */  addiu      $a3, $a0, 0x39
/* B3FF4 800C37F4 21300001 */  addu       $a2, $t0, $zero
/* B3FF8 800C37F8 21280001 */  addu       $a1, $t0, $zero
/* B3FFC 800C37FC 01000A24 */  addiu      $t2, $zero, 1
.L800C3800:
/* B4000 800C3800 0700A230 */  andi       $v0, $a1, 7
/* B4004 800C3804 04004014 */  bnez       $v0, .L800C3818
/* B4008 800C3808 0100C230 */   andi      $v0, $a2, 1
/* B400C 800C380C 0000E690 */  lbu        $a2, ($a3)
/* B4010 800C3810 0100E724 */  addiu      $a3, $a3, 1
/* B4014 800C3814 0100C230 */  andi       $v0, $a2, 1
.L800C3818:
/* B4018 800C3818 0F004010 */  beqz       $v0, .L800C3858
/* B401C 800C381C 00000000 */   nop
/* B4020 800C3820 1A00A900 */  div        $zero, $a1, $t1
/* B4024 800C3824 02002015 */  bnez       $t1, .L800C3830
/* B4028 800C3828 00000000 */   nop
/* B402C 800C382C 0D000700 */  break      7
.L800C3830:
/* B4030 800C3830 FFFF0124 */   addiu     $at, $zero, -1
/* B4034 800C3834 04002115 */  bne        $t1, $at, .L800C3848
/* B4038 800C3838 0080013C */   lui       $at, 0x8000
/* B403C 800C383C 0200A114 */  bne        $a1, $at, .L800C3848
/* B4040 800C3840 00000000 */   nop
/* B4044 800C3844 0D000600 */  break      6
.L800C3848:
/* B4048 800C3848 10100000 */   mfhi      $v0
/* B404C 800C384C 00000000 */  nop
/* B4050 800C3850 04104A00 */  sllv       $v0, $t2, $v0
/* B4054 800C3854 26400201 */  xor        $t0, $t0, $v0
.L800C3858:
/* B4058 800C3858 0100A524 */  addiu      $a1, $a1, 1
/* B405C 800C385C 3000A228 */  slti       $v0, $a1, 0x30
/* B4060 800C3860 E7FF4014 */  bnez       $v0, .L800C3800
/* B4064 800C3864 43300600 */   sra       $a2, $a2, 1
/* B4068 800C3868 04008524 */  addiu      $a1, $a0, 4
/* B406C 800C386C 2138A000 */  addu       $a3, $a1, $zero
/* B4070 800C3870 21300000 */  addu       $a2, $zero, $zero
/* B4074 800C3874 2118C000 */  addu       $v1, $a2, $zero
/* B4078 800C3878 82000224 */  addiu      $v0, $zero, 0x82
/* B407C 800C387C 040082A0 */  sb         $v0, 4($a0)
/* B4080 800C3880 03120800 */  sra        $v0, $t0, 8
/* B4084 800C3884 0100A2A0 */  sb         $v0, 1($a1)
/* B4088 800C3888 0200A8A0 */  sb         $t0, 2($a1)
/* B408C 800C388C 0700A0A0 */  sb         $zero, 7($a1)
/* B4090 800C3890 0600A0A0 */  sb         $zero, 6($a1)
/* B4094 800C3894 0500A0A0 */  sb         $zero, 5($a1)
/* B4098 800C3898 0400A0A0 */  sb         $zero, 4($a1)
/* B409C 800C389C 0300A0A0 */  sb         $zero, 3($a1)
/* B40A0 800C38A0 2110E300 */  addu       $v0, $a3, $v1
.L800C38A4:
/* B40A4 800C38A4 00004290 */  lbu        $v0, ($v0)
/* B40A8 800C38A8 01006324 */  addiu      $v1, $v1, 1
/* B40AC 800C38AC 2130C200 */  addu       $a2, $a2, $v0
/* B40B0 800C38B0 08006228 */  slti       $v0, $v1, 8
/* B40B4 800C38B4 FBFF4014 */  bnez       $v0, .L800C38A4
/* B40B8 800C38B8 2110E300 */   addu      $v0, $a3, $v1
/* B40BC 800C38BC 27100600 */  nor        $v0, $zero, $a2
/* B40C0 800C38C0 0700A2A0 */  sb         $v0, 7($a1)
/* B40C4 800C38C4 04008224 */  addiu      $v0, $a0, 4
/* B40C8 800C38C8 0180053C */  lui        $a1, %hi(D_80017830)
/* B40CC 800C38CC 14008424 */  addiu      $a0, $a0, 0x14
/* B40D0 800C38D0 01004690 */  lbu        $a2, 1($v0)
/* B40D4 800C38D4 02004790 */  lbu        $a3, 2($v0)
/* B40D8 800C38D8 8E81000C */  jal        sprintf
/* B40DC 800C38DC 3078A524 */   addiu     $a1, $a1, %lo(D_80017830)
/* B40E0 800C38E0 1000BF8F */  lw         $ra, 0x10($sp)
/* B40E4 800C38E4 21100000 */  addu       $v0, $zero, $zero
/* B40E8 800C38E8 0800E003 */  jr         $ra
/* B40EC 800C38EC 1800BD27 */   addiu     $sp, $sp, 0x18

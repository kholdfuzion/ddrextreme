.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a97f4
/* 99FF4 800A97F4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 99FF8 800A97F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 99FFC 800A97FC 21888000 */  addu       $s1, $a0, $zero
/* 9A000 800A9800 01000424 */  addiu      $a0, $zero, 1
/* 9A004 800A9804 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A008 800A9808 2180A000 */  addu       $s0, $a1, $zero
/* 9A00C 800A980C 2000BFAF */  sw         $ra, 0x20($sp)
/* 9A010 800A9810 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9A014 800A9814 CD6B000C */  jal        VSync
/* 9A018 800A9818 1800B2AF */   sw        $s2, 0x18($sp)
/* 9A01C 800A981C 21904000 */  addu       $s2, $v0, $zero
/* 9A020 800A9820 BE001324 */  addiu      $s3, $zero, 0xbe
/* 9A024 800A9824 10A60208 */  j          .L800A9840
/* 9A028 800A9828 21805002 */   addu      $s0, $s2, $s0
.L800A982C:
/* 9A02C 800A982C 03004014 */  bnez       $v0, .L800A983C
/* 9A030 800A9830 00000000 */   nop
/* 9A034 800A9834 7CAA000C */  jal        vsync_8002a9f0
/* 9A038 800A9838 00000000 */   nop
.L800A983C:
/* 9A03C 800A983C FFFF3126 */  addiu      $s1, $s1, -1
.L800A9840:
/* 9A040 800A9840 1200201A */  blez       $s1, .L800A988C
/* 9A044 800A9844 21102002 */   addu      $v0, $s1, $zero
/* 9A048 800A9848 B4C7020C */  jal        FUN_800b1ed0
/* 9A04C 800A984C 00000000 */   nop
/* 9A050 800A9850 63C3020C */  jal        FUN_800b0d8c
/* 9A054 800A9854 00000000 */   nop
/* 9A058 800A9858 72C0020C */  jal        FUN_800b01c8
/* 9A05C 800A985C 00000000 */   nop
/* 9A060 800A9860 CD6B000C */  jal        VSync
/* 9A064 800A9864 01000424 */   addiu     $a0, $zero, 1
/* 9A068 800A9868 21184000 */  addu       $v1, $v0, $zero
/* 9A06C 800A986C 2A100302 */  slt        $v0, $s0, $v1
/* 9A070 800A9870 05004014 */  bnez       $v0, .L800A9888
/* 9A074 800A9874 2A107200 */   slt       $v0, $v1, $s2
/* 9A078 800A9878 03004014 */  bnez       $v0, .L800A9888
/* 9A07C 800A987C 2B106302 */   sltu      $v0, $s3, $v1
/* 9A080 800A9880 EAFF4010 */  beqz       $v0, .L800A982C
/* 9A084 800A9884 07002232 */   andi      $v0, $s1, 7
.L800A9888:
/* 9A088 800A9888 21102002 */  addu       $v0, $s1, $zero
.L800A988C:
/* 9A08C 800A988C 2000BF8F */  lw         $ra, 0x20($sp)
/* 9A090 800A9890 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9A094 800A9894 1800B28F */  lw         $s2, 0x18($sp)
/* 9A098 800A9898 1400B18F */  lw         $s1, 0x14($sp)
/* 9A09C 800A989C 1000B08F */  lw         $s0, 0x10($sp)
/* 9A0A0 800A98A0 0800E003 */  jr         $ra
/* 9A0A4 800A98A4 2800BD27 */   addiu     $sp, $sp, 0x28

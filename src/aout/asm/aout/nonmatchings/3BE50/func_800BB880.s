.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BB880
/* AC080 800BB880 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* AC084 800BB884 2800B2AF */  sw         $s2, 0x28($sp)
/* AC088 800BB888 21908000 */  addu       $s2, $a0, $zero
/* AC08C 800BB88C 21284502 */  addu       $a1, $s2, $a1
/* AC090 800BB890 3400B5AF */  sw         $s5, 0x34($sp)
/* AC094 800BB894 FFFFB524 */  addiu      $s5, $a1, -1
/* AC098 800BB898 2C00B3AF */  sw         $s3, 0x2c($sp)
/* AC09C 800BB89C 1000B327 */  addiu      $s3, $sp, 0x10
/* AC0A0 800BB8A0 3C00B7AF */  sw         $s7, 0x3c($sp)
/* AC0A4 800BB8A4 0180173C */  lui        $s7, 0x8001
/* AC0A8 800BB8A8 3800B6AF */  sw         $s6, 0x38($sp)
/* AC0AC 800BB8AC 0180163C */  lui        $s6, 0x8001
/* AC0B0 800BB8B0 4000BFAF */  sw         $ra, 0x40($sp)
/* AC0B4 800BB8B4 3000B4AF */  sw         $s4, 0x30($sp)
/* AC0B8 800BB8B8 2400B1AF */  sw         $s1, 0x24($sp)
/* AC0BC 800BB8BC 2000B0AF */  sw         $s0, 0x20($sp)
/* AC0C0 800BB8C0 2B10B202 */  sltu       $v0, $s5, $s2
.L800BB8C4:
/* AC0C4 800BB8C4 3C004014 */  bnez       $v0, .L800BB9B8
/* AC0C8 800BB8C8 2388B202 */   subu      $s1, $s5, $s2
/* AC0CC 800BB8CC 1000222A */  slti       $v0, $s1, 0x10
/* AC0D0 800BB8D0 02004014 */  bnez       $v0, .L800BB8DC
/* AC0D4 800BB8D4 01003126 */   addiu     $s1, $s1, 1
/* AC0D8 800BB8D8 10001124 */  addiu      $s1, $zero, 0x10
.L800BB8DC:
/* AC0DC 800BB8DC 0800201A */  blez       $s1, .L800BB900
/* AC0E0 800BB8E0 21800000 */   addu      $s0, $zero, $zero
.L800BB8E4:
/* AC0E4 800BB8E4 00004392 */  lbu        $v1, ($s2)
/* AC0E8 800BB8E8 21107002 */  addu       $v0, $s3, $s0
/* AC0EC 800BB8EC 01001026 */  addiu      $s0, $s0, 1
/* AC0F0 800BB8F0 000043A0 */  sb         $v1, ($v0)
/* AC0F4 800BB8F4 2A101102 */  slt        $v0, $s0, $s1
/* AC0F8 800BB8F8 FAFF4014 */  bnez       $v0, .L800BB8E4
/* AC0FC 800BB8FC 01005226 */   addiu     $s2, $s2, 1
.L800BB900:
/* AC100 800BB900 21800000 */  addu       $s0, $zero, $zero
/* AC104 800BB904 2A101102 */  slt        $v0, $s0, $s1
.L800BB908:
/* AC108 800BB908 05004014 */  bnez       $v0, .L800BB920
/* AC10C 800BB90C 21107002 */   addu      $v0, $s3, $s0
/* AC110 800BB910 7B5F000C */  jal        FUN_80017dec
/* AC114 800BB914 B075E426 */   addiu     $a0, $s7, 0x75b0
/* AC118 800BB918 4CEE0208 */  j          .L800BB930
/* AC11C 800BB91C 07000224 */   addiu     $v0, $zero, 7
.L800BB920:
/* AC120 800BB920 00004590 */  lbu        $a1, ($v0)
/* AC124 800BB924 755F000C */  jal        FUN_80017dd4
/* AC128 800BB928 B475C426 */   addiu     $a0, $s6, 0x75b4
/* AC12C 800BB92C 07000224 */  addiu      $v0, $zero, 7
.L800BB930:
/* AC130 800BB930 04000216 */  bne        $s0, $v0, .L800BB944
/* AC134 800BB934 00000000 */   nop
/* AC138 800BB938 0180043C */  lui        $a0, %hi(D_800175BC)
/* AC13C 800BB93C 7B5F000C */  jal        FUN_80017dec
/* AC140 800BB940 BC758424 */   addiu     $a0, $a0, %lo(D_800175BC)
.L800BB944:
/* AC144 800BB944 01001026 */  addiu      $s0, $s0, 1
/* AC148 800BB948 1000022A */  slti       $v0, $s0, 0x10
/* AC14C 800BB94C EEFF4014 */  bnez       $v0, .L800BB908
/* AC150 800BB950 2A101102 */   slt       $v0, $s0, $s1
/* AC154 800BB954 21800000 */  addu       $s0, $zero, $zero
/* AC158 800BB958 0180143C */  lui        $s4, %hi(D_800175C0)
/* AC15C 800BB95C 2A101102 */  slt        $v0, $s0, $s1
.L800BB960:
/* AC160 800BB960 05004014 */  bnez       $v0, .L800BB978
/* AC164 800BB964 21187002 */   addu      $v1, $s3, $s0
/* AC168 800BB968 7B5F000C */  jal        FUN_80017dec
/* AC16C 800BB96C C0758426 */   addiu     $a0, $s4, %lo(D_800175C0)
/* AC170 800BB970 67EE0208 */  j          .L800BB99C
/* AC174 800BB974 01001026 */   addiu     $s0, $s0, 1
.L800BB978:
/* AC178 800BB978 00006290 */  lbu        $v0, ($v1)
/* AC17C 800BB97C 00000000 */  nop
/* AC180 800BB980 E0FF4224 */  addiu      $v0, $v0, -0x20
/* AC184 800BB984 5F00422C */  sltiu      $v0, $v0, 0x5f
/* AC188 800BB988 02004010 */  beqz       $v0, .L800BB994
/* AC18C 800BB98C 2E000424 */   addiu     $a0, $zero, 0x2e
/* AC190 800BB990 00006490 */  lbu        $a0, ($v1)
.L800BB994:
/* AC194 800BB994 11EF020C */  jal        putchar
/* AC198 800BB998 01001026 */   addiu     $s0, $s0, 1
.L800BB99C:
/* AC19C 800BB99C 1000022A */  slti       $v0, $s0, 0x10
/* AC1A0 800BB9A0 EFFF4014 */  bnez       $v0, .L800BB960
/* AC1A4 800BB9A4 2A101102 */   slt       $v0, $s0, $s1
/* AC1A8 800BB9A8 11EF020C */  jal        putchar
/* AC1AC 800BB9AC 0A000424 */   addiu     $a0, $zero, 0xa
/* AC1B0 800BB9B0 31EE0208 */  j          .L800BB8C4
/* AC1B4 800BB9B4 2B10B202 */   sltu      $v0, $s5, $s2
.L800BB9B8:
/* AC1B8 800BB9B8 11EF020C */  jal        putchar
/* AC1BC 800BB9BC 0A000424 */   addiu     $a0, $zero, 0xa
/* AC1C0 800BB9C0 4000BF8F */  lw         $ra, 0x40($sp)
/* AC1C4 800BB9C4 3C00B78F */  lw         $s7, 0x3c($sp)
/* AC1C8 800BB9C8 3800B68F */  lw         $s6, 0x38($sp)
/* AC1CC 800BB9CC 3400B58F */  lw         $s5, 0x34($sp)
/* AC1D0 800BB9D0 3000B48F */  lw         $s4, 0x30($sp)
/* AC1D4 800BB9D4 2C00B38F */  lw         $s3, 0x2c($sp)
/* AC1D8 800BB9D8 2800B28F */  lw         $s2, 0x28($sp)
/* AC1DC 800BB9DC 2400B18F */  lw         $s1, 0x24($sp)
/* AC1E0 800BB9E0 2000B08F */  lw         $s0, 0x20($sp)
/* AC1E4 800BB9E4 0800E003 */  jr         $ra
/* AC1E8 800BB9E8 4800BD27 */   addiu     $sp, $sp, 0x48

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cf8cc
/* C00CC 800CF8CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* C00D0 800CF8D0 1400B1AF */  sw         $s1, 0x14($sp)
/* C00D4 800CF8D4 21888000 */  addu       $s1, $a0, $zero
/* C00D8 800CF8D8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C00DC 800CF8DC 2000BFAF */  sw         $ra, 0x20($sp)
/* C00E0 800CF8E0 1800B2AF */  sw         $s2, 0x18($sp)
/* C00E4 800CF8E4 1000B0AF */  sw         $s0, 0x10($sp)
/* C00E8 800CF8E8 1000228E */  lw         $v0, 0x10($s1)
/* C00EC 800CF8EC 2190C000 */  addu       $s2, $a2, $zero
/* C00F0 800CF8F0 C2180200 */  srl        $v1, $v0, 3
/* C00F4 800CF8F4 3F006430 */  andi       $a0, $v1, 0x3f
/* C00F8 800CF8F8 C0181200 */  sll        $v1, $s2, 3
/* C00FC 800CF8FC 21104300 */  addu       $v0, $v0, $v1
/* C0100 800CF900 100022AE */  sw         $v0, 0x10($s1)
/* C0104 800CF904 2B104300 */  sltu       $v0, $v0, $v1
/* C0108 800CF908 05004010 */  beqz       $v0, .L800CF920
/* C010C 800CF90C 2198A000 */   addu      $s3, $a1, $zero
/* C0110 800CF910 1400228E */  lw         $v0, 0x14($s1)
/* C0114 800CF914 00000000 */  nop
/* C0118 800CF918 01004224 */  addiu      $v0, $v0, 1
/* C011C 800CF91C 140022AE */  sw         $v0, 0x14($s1)
.L800CF920:
/* C0120 800CF920 1400228E */  lw         $v0, 0x14($s1)
/* C0124 800CF924 421F1200 */  srl        $v1, $s2, 0x1d
/* C0128 800CF928 21104300 */  addu       $v0, $v0, $v1
/* C012C 800CF92C 140022AE */  sw         $v0, 0x14($s1)
/* C0130 800CF930 40000224 */  addiu      $v0, $zero, 0x40
/* C0134 800CF934 23804400 */  subu       $s0, $v0, $a0
/* C0138 800CF938 2B105002 */  sltu       $v0, $s2, $s0
/* C013C 800CF93C 13004014 */  bnez       $v0, .L800CF98C
/* C0140 800CF940 21286002 */   addu      $a1, $s3, $zero
/* C0144 800CF944 18008424 */  addiu      $a0, $a0, 0x18
/* C0148 800CF948 21202402 */  addu       $a0, $s1, $a0
/* C014C 800CF94C 9A3E030C */  jal        FUN_800cfa68
/* C0150 800CF950 21300002 */   addu      $a2, $s0, $zero
/* C0154 800CF954 21202002 */  addu       $a0, $s1, $zero
/* C0158 800CF958 4F3A030C */  jal        FUN_800ce93c
/* C015C 800CF95C 18002526 */   addiu     $a1, $s1, 0x18
/* C0160 800CF960 5E3E0308 */  j          .L800CF978
/* C0164 800CF964 3F000226 */   addiu     $v0, $s0, 0x3f
.L800CF968:
/* C0168 800CF968 4F3A030C */  jal        FUN_800ce93c
/* C016C 800CF96C 21287002 */   addu      $a1, $s3, $s0
/* C0170 800CF970 40001026 */  addiu      $s0, $s0, 0x40
/* C0174 800CF974 3F000226 */  addiu      $v0, $s0, 0x3f
.L800CF978:
/* C0178 800CF978 2B105200 */  sltu       $v0, $v0, $s2
/* C017C 800CF97C FAFF4014 */  bnez       $v0, .L800CF968
/* C0180 800CF980 21202002 */   addu      $a0, $s1, $zero
/* C0184 800CF984 643E0308 */  j          .L800CF990
/* C0188 800CF988 21200000 */   addu      $a0, $zero, $zero
.L800CF98C:
/* C018C 800CF98C 21800000 */  addu       $s0, $zero, $zero
.L800CF990:
/* C0190 800CF990 18008424 */  addiu      $a0, $a0, 0x18
/* C0194 800CF994 21202402 */  addu       $a0, $s1, $a0
/* C0198 800CF998 21287002 */  addu       $a1, $s3, $s0
/* C019C 800CF99C 9A3E030C */  jal        FUN_800cfa68
/* C01A0 800CF9A0 23305002 */   subu      $a2, $s2, $s0
/* C01A4 800CF9A4 2000BF8F */  lw         $ra, 0x20($sp)
/* C01A8 800CF9A8 1C00B38F */  lw         $s3, 0x1c($sp)
/* C01AC 800CF9AC 1800B28F */  lw         $s2, 0x18($sp)
/* C01B0 800CF9B0 1400B18F */  lw         $s1, 0x14($sp)
/* C01B4 800CF9B4 1000B08F */  lw         $s0, 0x10($sp)
/* C01B8 800CF9B8 0800E003 */  jr         $ra
/* C01BC 800CF9BC 2800BD27 */   addiu     $sp, $sp, 0x28

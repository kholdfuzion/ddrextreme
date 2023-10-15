.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca0d0
/* BA8D0 800CA0D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BA8D4 800CA0D4 1400B1AF */  sw         $s1, 0x14($sp)
/* BA8D8 800CA0D8 21888000 */  addu       $s1, $a0, $zero
/* BA8DC 800CA0DC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BA8E0 800CA0E0 2198A000 */  addu       $s3, $a1, $zero
/* BA8E4 800CA0E4 1000B0AF */  sw         $s0, 0x10($sp)
/* BA8E8 800CA0E8 2180C000 */  addu       $s0, $a2, $zero
/* BA8EC 800CA0EC 1800B2AF */  sw         $s2, 0x18($sp)
/* BA8F0 800CA0F0 2000BFAF */  sw         $ra, 0x20($sp)
/* BA8F4 800CA0F4 A509030C */  jal        FUN_800c2694
/* BA8F8 800CA0F8 2190E000 */   addu      $s2, $a3, $zero
/* BA8FC 800CA0FC 21200000 */  addu       $a0, $zero, $zero
/* BA900 800CA100 0A000224 */  addiu      $v0, $zero, 0xa
/* BA904 800CA104 1A0022A2 */  sb         $v0, 0x1a($s1)
/* BA908 800CA108 72000224 */  addiu      $v0, $zero, 0x72
/* BA90C 800CA10C 0C00258E */  lw         $a1, 0xc($s1)
/* BA910 800CA110 10001026 */  addiu      $s0, $s0, 0x10
/* BA914 800CA114 2A0020A2 */  sb         $zero, 0x2a($s1)
/* BA918 800CA118 0000A2A0 */  sb         $v0, ($a1)
/* BA91C 800CA11C 0100B0A0 */  sb         $s0, 1($a1)
/* BA920 800CA120 21188500 */  addu       $v1, $a0, $a1
.L800CA124:
/* BA924 800CA124 21104402 */  addu       $v0, $s2, $a0
/* BA928 800CA128 00004290 */  lbu        $v0, ($v0)
/* BA92C 800CA12C 01008424 */  addiu      $a0, $a0, 1
/* BA930 800CA130 020062A0 */  sb         $v0, 2($v1)
/* BA934 800CA134 08008228 */  slti       $v0, $a0, 8
/* BA938 800CA138 FAFF4014 */  bnez       $v0, .L800CA124
/* BA93C 800CA13C 21188500 */   addu      $v1, $a0, $a1
/* BA940 800CA140 21202002 */  addu       $a0, $s1, $zero
/* BA944 800CA144 21286002 */  addu       $a1, $s3, $zero
/* BA948 800CA148 21300000 */  addu       $a2, $zero, $zero
/* BA94C 800CA14C B209030C */  jal        FUN_800c26c8
/* BA950 800CA150 2138C000 */   addu      $a3, $a2, $zero
/* BA954 800CA154 2000BF8F */  lw         $ra, 0x20($sp)
/* BA958 800CA158 1C00B38F */  lw         $s3, 0x1c($sp)
/* BA95C 800CA15C 1800B28F */  lw         $s2, 0x18($sp)
/* BA960 800CA160 1400B18F */  lw         $s1, 0x14($sp)
/* BA964 800CA164 1000B08F */  lw         $s0, 0x10($sp)
/* BA968 800CA168 0800E003 */  jr         $ra
/* BA96C 800CA16C 2800BD27 */   addiu     $sp, $sp, 0x28

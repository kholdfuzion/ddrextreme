.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf16c
/* AF96C 800BF16C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AF970 800BF170 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AF974 800BF174 1800B0AF */  sw         $s0, 0x18($sp)
/* AF978 800BF178 30000224 */  addiu      $v0, $zero, 0x30
/* AF97C 800BF17C 1000A2AF */  sw         $v0, 0x10($sp)
/* AF980 800BF180 63FC0208 */  j          .L800BF18C
/* AF984 800BF184 21800000 */   addu      $s0, $zero, $zero
.L800BF188:
/* AF988 800BF188 01001026 */  addiu      $s0, $s0, 1
.L800BF18C:
/* AF98C 800BF18C 0300022A */  slti       $v0, $s0, 3
/* AF990 800BF190 0B004010 */  beqz       $v0, .L800BF1C0
/* AF994 800BF194 2F030524 */   addiu     $a1, $zero, 0x32f
/* AF998 800BF198 21200000 */  addu       $a0, $zero, $zero
/* AF99C 800BF19C 01000624 */  addiu      $a2, $zero, 1
/* AF9A0 800BF1A0 6A01030C */  jal        FUN_800c05a8
/* AF9A4 800BF1A4 1000A727 */   addiu     $a3, $sp, 0x10
/* AF9A8 800BF1A8 F7FF4014 */  bnez       $v0, .L800BF188
/* AF9AC 800BF1AC 00000000 */   nop
/* AF9B0 800BF1B0 2A00030C */  jal        FUN_800c00a8
/* AF9B4 800BF1B4 CB0F0424 */   addiu     $a0, $zero, 0xfcb
/* AF9B8 800BF1B8 F3FF4014 */  bnez       $v0, .L800BF188
/* AF9BC 800BF1BC 00000000 */   nop
.L800BF1C0:
/* AF9C0 800BF1C0 0300032A */  slti       $v1, $s0, 3
/* AF9C4 800BF1C4 02006014 */  bnez       $v1, .L800BF1D0
/* AF9C8 800BF1C8 21100000 */   addu      $v0, $zero, $zero
/* AF9CC 800BF1CC FFFF0224 */  addiu      $v0, $zero, -1
.L800BF1D0:
/* AF9D0 800BF1D0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AF9D4 800BF1D4 1800B08F */  lw         $s0, 0x18($sp)
/* AF9D8 800BF1D8 0800E003 */  jr         $ra
/* AF9DC 800BF1DC 2000BD27 */   addiu     $sp, $sp, 0x20

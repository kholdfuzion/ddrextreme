.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca2a0
/* BAAA0 800CA2A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BAAA4 800CA2A4 1400B1AF */  sw         $s1, 0x14($sp)
/* BAAA8 800CA2A8 21888000 */  addu       $s1, $a0, $zero
/* BAAAC 800CA2AC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BAAB0 800CA2B0 2198A000 */  addu       $s3, $a1, $zero
/* BAAB4 800CA2B4 1000B0AF */  sw         $s0, 0x10($sp)
/* BAAB8 800CA2B8 2180C000 */  addu       $s0, $a2, $zero
/* BAABC 800CA2BC 1800B2AF */  sw         $s2, 0x18($sp)
/* BAAC0 800CA2C0 2000BFAF */  sw         $ra, 0x20($sp)
/* BAAC4 800CA2C4 A509030C */  jal        FUN_800c2694
/* BAAC8 800CA2C8 2190E000 */   addu      $s2, $a3, $zero
/* BAACC 800CA2CC 21202002 */  addu       $a0, $s1, $zero
/* BAAD0 800CA2D0 05000224 */  addiu      $v0, $zero, 5
/* BAAD4 800CA2D4 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BAAD8 800CA2D8 72000224 */  addiu      $v0, $zero, 0x72
/* BAADC 800CA2DC 50001026 */  addiu      $s0, $s0, 0x50
/* BAAE0 800CA2E0 21286002 */  addu       $a1, $s3, $zero
/* BAAE4 800CA2E4 21300000 */  addu       $a2, $zero, $zero
/* BAAE8 800CA2E8 0C00838C */  lw         $v1, 0xc($a0)
/* BAAEC 800CA2EC 2138C000 */  addu       $a3, $a2, $zero
/* BAAF0 800CA2F0 2A0080A0 */  sb         $zero, 0x2a($a0)
/* BAAF4 800CA2F4 000062A0 */  sb         $v0, ($v1)
/* BAAF8 800CA2F8 03141200 */  sra        $v0, $s2, 0x10
/* BAAFC 800CA2FC 020062A0 */  sb         $v0, 2($v1)
/* BAB00 800CA300 03121200 */  sra        $v0, $s2, 8
/* BAB04 800CA304 010070A0 */  sb         $s0, 1($v1)
/* BAB08 800CA308 030062A0 */  sb         $v0, 3($v1)
/* BAB0C 800CA30C B209030C */  jal        FUN_800c26c8
/* BAB10 800CA310 040072A0 */   sb        $s2, 4($v1)
/* BAB14 800CA314 2000BF8F */  lw         $ra, 0x20($sp)
/* BAB18 800CA318 1C00B38F */  lw         $s3, 0x1c($sp)
/* BAB1C 800CA31C 1800B28F */  lw         $s2, 0x18($sp)
/* BAB20 800CA320 1400B18F */  lw         $s1, 0x14($sp)
/* BAB24 800CA324 1000B08F */  lw         $s0, 0x10($sp)
/* BAB28 800CA328 0800E003 */  jr         $ra
/* BAB2C 800CA32C 2800BD27 */   addiu     $sp, $sp, 0x28

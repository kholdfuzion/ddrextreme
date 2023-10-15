.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be2b4
/* AEAB4 800BE2B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AEAB8 800BE2B8 1000B0AF */  sw         $s0, 0x10($sp)
/* AEABC 800BE2BC 21808000 */  addu       $s0, $a0, $zero
/* AEAC0 800BE2C0 1400B1AF */  sw         $s1, 0x14($sp)
/* AEAC4 800BE2C4 1800BFAF */  sw         $ra, 0x18($sp)
/* AEAC8 800BE2C8 C9F8020C */  jal        FUN_800be324
/* AEACC 800BE2CC FEFF1124 */   addiu     $s1, $zero, -2
/* AEAD0 800BE2D0 21200002 */  addu       $a0, $s0, $zero
/* AEAD4 800BE2D4 D5F8020C */  jal        FUN_800be354
/* AEAD8 800BE2D8 21804000 */   addu      $s0, $v0, $zero
/* AEADC 800BE2DC FFFF0324 */  addiu      $v1, $zero, -1
/* AEAE0 800BE2E0 03000312 */  beq        $s0, $v1, .L800BE2F0
/* AEAE4 800BE2E4 00000000 */   nop
/* AEAE8 800BE2E8 03004314 */  bne        $v0, $v1, .L800BE2F8
/* AEAEC 800BE2EC 00000000 */   nop
.L800BE2F0:
/* AEAF0 800BE2F0 C3F80208 */  j          .L800BE30C
/* AEAF4 800BE2F4 FFFF1124 */   addiu     $s1, $zero, -1
.L800BE2F8:
/* AEAF8 800BE2F8 04000016 */  bnez       $s0, .L800BE30C
/* AEAFC 800BE2FC 00000000 */   nop
/* AEB00 800BE300 03004014 */  bnez       $v0, .L800BE310
/* AEB04 800BE304 21102002 */   addu      $v0, $s1, $zero
/* AEB08 800BE308 21880000 */  addu       $s1, $zero, $zero
.L800BE30C:
/* AEB0C 800BE30C 21102002 */  addu       $v0, $s1, $zero
.L800BE310:
/* AEB10 800BE310 1800BF8F */  lw         $ra, 0x18($sp)
/* AEB14 800BE314 1400B18F */  lw         $s1, 0x14($sp)
/* AEB18 800BE318 1000B08F */  lw         $s0, 0x10($sp)
/* AEB1C 800BE31C 0800E003 */  jr         $ra
/* AEB20 800BE320 2000BD27 */   addiu     $sp, $sp, 0x20

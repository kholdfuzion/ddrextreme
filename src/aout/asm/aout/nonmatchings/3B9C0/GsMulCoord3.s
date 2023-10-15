.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsMulCoord3
/* 3B9C0 8004B1C0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3B9C4 8004B1C4 2000B0AF */  sw         $s0, 0x20($sp)
/* 3B9C8 8004B1C8 21808000 */  addu       $s0, $a0, $zero
/* 3B9CC 8004B1CC 2400B1AF */  sw         $s1, 0x24($sp)
/* 3B9D0 8004B1D0 2188A000 */  addu       $s1, $a1, $zero
/* 3B9D4 8004B1D4 14002526 */  addiu      $a1, $s1, 0x14
/* 3B9D8 8004B1D8 2800BFAF */  sw         $ra, 0x28($sp)
/* 3B9DC 8004B1DC 902C010C */  jal        ApplyMatrixLV
/* 3B9E0 8004B1E0 1000A627 */   addiu     $a2, $sp, 0x10
/* 3B9E4 8004B1E4 21200002 */  addu       $a0, $s0, $zero
/* 3B9E8 8004B1E8 E82C010C */  jal        MulMatrix
/* 3B9EC 8004B1EC 21282002 */   addu      $a1, $s1, $zero
/* 3B9F0 8004B1F0 1000A28F */  lw         $v0, 0x10($sp)
/* 3B9F4 8004B1F4 1400038E */  lw         $v1, 0x14($s0)
/* 3B9F8 8004B1F8 00000000 */  nop
/* 3B9FC 8004B1FC 21104300 */  addu       $v0, $v0, $v1
/* 3BA00 8004B200 140002AE */  sw         $v0, 0x14($s0)
/* 3BA04 8004B204 1400A28F */  lw         $v0, 0x14($sp)
/* 3BA08 8004B208 1800038E */  lw         $v1, 0x18($s0)
/* 3BA0C 8004B20C 00000000 */  nop
/* 3BA10 8004B210 21104300 */  addu       $v0, $v0, $v1
/* 3BA14 8004B214 180002AE */  sw         $v0, 0x18($s0)
/* 3BA18 8004B218 1800A28F */  lw         $v0, 0x18($sp)
/* 3BA1C 8004B21C 1C00038E */  lw         $v1, 0x1c($s0)
/* 3BA20 8004B220 00000000 */  nop
/* 3BA24 8004B224 21104300 */  addu       $v0, $v0, $v1
/* 3BA28 8004B228 1C0002AE */  sw         $v0, 0x1c($s0)
/* 3BA2C 8004B22C 2800BF8F */  lw         $ra, 0x28($sp)
/* 3BA30 8004B230 2400B18F */  lw         $s1, 0x24($sp)
/* 3BA34 8004B234 2000B08F */  lw         $s0, 0x20($sp)
/* 3BA38 8004B238 0800E003 */  jr         $ra
/* 3BA3C 8004B23C 3000BD27 */   addiu     $sp, $sp, 0x30

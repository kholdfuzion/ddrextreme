.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6AB4
/* B72B4 800C6AB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B72B8 800C6AB8 2080063C */  lui        $a2, %hi(D_801FB764)
/* B72BC 800C6ABC 1400B1AF */  sw         $s1, 0x14($sp)
/* B72C0 800C6AC0 64B7D124 */  addiu      $s1, $a2, %lo(D_801FB764)
/* B72C4 800C6AC4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B72C8 800C6AC8 1800B2AF */  sw         $s2, 0x18($sp)
/* B72CC 800C6ACC 1000B0AF */  sw         $s0, 0x10($sp)
/* B72D0 800C6AD0 0800228E */  lw         $v0, 8($s1)
/* B72D4 800C6AD4 FEFF1224 */  addiu      $s2, $zero, -2
/* B72D8 800C6AD8 1B005210 */  beq        $v0, $s2, .L800C6B48
/* B72DC 800C6ADC FFFF0324 */   addiu     $v1, $zero, -1
/* B72E0 800C6AE0 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B72E4 800C6AE4 0A000224 */  addiu      $v0, $zero, 0xa
/* B72E8 800C6AE8 0C0024AE */  sw         $a0, 0xc($s1)
/* B72EC 800C6AEC 1C002426 */  addiu      $a0, $s1, 0x1c
/* B72F0 800C6AF0 180025AE */  sw         $a1, 0x18($s1)
/* B72F4 800C6AF4 64B7C0AC */  sw         $zero, -0x489c($a2)
/* B72F8 800C6AF8 1400038E */  lw         $v1, 0x14($s0)
/* B72FC 800C6AFC 21282002 */  addu       $a1, $s1, $zero
/* B7300 800C6B00 040022AE */  sw         $v0, 4($s1)
/* B7304 800C6B04 080032AE */  sw         $s2, 8($s1)
/* B7308 800C6B08 01006324 */  addiu      $v1, $v1, 1
/* B730C 800C6B0C FF28030C */  jal        FUN_800ca3fc
/* B7310 800C6B10 140003AE */   sw        $v1, 0x14($s0)
/* B7314 800C6B14 1400028E */  lw         $v0, 0x14($s0)
/* B7318 800C6B18 0800238E */  lw         $v1, 8($s1)
/* B731C 800C6B1C FFFF4224 */  addiu      $v0, $v0, -1
/* B7320 800C6B20 08007214 */  bne        $v1, $s2, .L800C6B44
/* B7324 800C6B24 140002AE */   sw        $v0, 0x14($s0)
/* B7328 800C6B28 21804002 */  addu       $s0, $s2, $zero
.L800C6B2C:
/* B732C 800C6B2C 4270000C */  jal        FUN_8001c108
/* B7330 800C6B30 00000000 */   nop
/* B7334 800C6B34 0800228E */  lw         $v0, 8($s1)
/* B7338 800C6B38 00000000 */  nop
/* B733C 800C6B3C FBFF5010 */  beq        $v0, $s0, .L800C6B2C
/* B7340 800C6B40 00000000 */   nop
.L800C6B44:
/* B7344 800C6B44 0800238E */  lw         $v1, 8($s1)
.L800C6B48:
/* B7348 800C6B48 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B734C 800C6B4C 1800B28F */  lw         $s2, 0x18($sp)
/* B7350 800C6B50 1400B18F */  lw         $s1, 0x14($sp)
/* B7354 800C6B54 1000B08F */  lw         $s0, 0x10($sp)
/* B7358 800C6B58 21106000 */  addu       $v0, $v1, $zero
/* B735C 800C6B5C 0800E003 */  jr         $ra
/* B7360 800C6B60 2000BD27 */   addiu     $sp, $sp, 0x20

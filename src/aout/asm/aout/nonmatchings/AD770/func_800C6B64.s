.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6B64
/* B7364 800C6B64 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B7368 800C6B68 2080053C */  lui        $a1, %hi(D_801FB764)
/* B736C 800C6B6C 1400B1AF */  sw         $s1, 0x14($sp)
/* B7370 800C6B70 64B7B124 */  addiu      $s1, $a1, %lo(D_801FB764)
/* B7374 800C6B74 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B7378 800C6B78 1800B2AF */  sw         $s2, 0x18($sp)
/* B737C 800C6B7C 1000B0AF */  sw         $s0, 0x10($sp)
/* B7380 800C6B80 0800228E */  lw         $v0, 8($s1)
/* B7384 800C6B84 FEFF1224 */  addiu      $s2, $zero, -2
/* B7388 800C6B88 1A005210 */  beq        $v0, $s2, .L800C6BF4
/* B738C 800C6B8C FFFF0324 */   addiu     $v1, $zero, -1
/* B7390 800C6B90 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B7394 800C6B94 0B000224 */  addiu      $v0, $zero, 0xb
/* B7398 800C6B98 0C0024AE */  sw         $a0, 0xc($s1)
/* B739C 800C6B9C 1C002426 */  addiu      $a0, $s1, 0x1c
/* B73A0 800C6BA0 64B7A0AC */  sw         $zero, -0x489c($a1)
/* B73A4 800C6BA4 1400038E */  lw         $v1, 0x14($s0)
/* B73A8 800C6BA8 21282002 */  addu       $a1, $s1, $zero
/* B73AC 800C6BAC 040022AE */  sw         $v0, 4($s1)
/* B73B0 800C6BB0 080032AE */  sw         $s2, 8($s1)
/* B73B4 800C6BB4 01006324 */  addiu      $v1, $v1, 1
/* B73B8 800C6BB8 FF28030C */  jal        FUN_800ca3fc
/* B73BC 800C6BBC 140003AE */   sw        $v1, 0x14($s0)
/* B73C0 800C6BC0 1400028E */  lw         $v0, 0x14($s0)
/* B73C4 800C6BC4 0800238E */  lw         $v1, 8($s1)
/* B73C8 800C6BC8 FFFF4224 */  addiu      $v0, $v0, -1
/* B73CC 800C6BCC 08007214 */  bne        $v1, $s2, .L800C6BF0
/* B73D0 800C6BD0 140002AE */   sw        $v0, 0x14($s0)
/* B73D4 800C6BD4 21804002 */  addu       $s0, $s2, $zero
.L800C6BD8:
/* B73D8 800C6BD8 4270000C */  jal        FUN_8001c108
/* B73DC 800C6BDC 00000000 */   nop
/* B73E0 800C6BE0 0800228E */  lw         $v0, 8($s1)
/* B73E4 800C6BE4 00000000 */  nop
/* B73E8 800C6BE8 FBFF5010 */  beq        $v0, $s0, .L800C6BD8
/* B73EC 800C6BEC 00000000 */   nop
.L800C6BF0:
/* B73F0 800C6BF0 0800238E */  lw         $v1, 8($s1)
.L800C6BF4:
/* B73F4 800C6BF4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B73F8 800C6BF8 1800B28F */  lw         $s2, 0x18($sp)
/* B73FC 800C6BFC 1400B18F */  lw         $s1, 0x14($sp)
/* B7400 800C6C00 1000B08F */  lw         $s0, 0x10($sp)
/* B7404 800C6C04 21106000 */  addu       $v0, $v1, $zero
/* B7408 800C6C08 0800E003 */  jr         $ra
/* B740C 800C6C0C 2000BD27 */   addiu     $sp, $sp, 0x20

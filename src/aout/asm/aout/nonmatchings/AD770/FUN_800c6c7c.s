.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6c7c
/* B747C 800C6C7C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B7480 800C6C80 1400B1AF */  sw         $s1, 0x14($sp)
/* B7484 800C6C84 21888000 */  addu       $s1, $a0, $zero
/* B7488 800C6C88 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B748C 800C6C8C 2000BFAF */  sw         $ra, 0x20($sp)
/* B7490 800C6C90 1800B2AF */  sw         $s2, 0x18($sp)
/* B7494 800C6C94 1000B0AF */  sw         $s0, 0x10($sp)
/* B7498 800C6C98 0800228E */  lw         $v0, 8($s1)
/* B749C 800C6C9C FEFF1224 */  addiu      $s2, $zero, -2
/* B74A0 800C6CA0 03005214 */  bne        $v0, $s2, .L800C6CB0
/* B74A4 800C6CA4 2198C000 */   addu      $s3, $a2, $zero
/* B74A8 800C6CA8 491B0308 */  j          .L800C6D24
/* B74AC 800C6CAC FFFF0224 */   addiu     $v0, $zero, -1
.L800C6CB0:
/* B74B0 800C6CB0 1F80103C */  lui        $s0, %hi(D_801F7418)
/* B74B4 800C6CB4 18741026 */  addiu      $s0, $s0, %lo(D_801F7418)
/* B74B8 800C6CB8 1400028E */  lw         $v0, 0x14($s0)
/* B74BC 800C6CBC 68430426 */  addiu      $a0, $s0, 0x4368
/* B74C0 800C6CC0 01004224 */  addiu      $v0, $v0, 1
/* B74C4 800C6CC4 140002AE */  sw         $v0, 0x14($s0)
/* B74C8 800C6CC8 040025AE */  sw         $a1, 4($s1)
/* B74CC 800C6CCC 21282002 */  addu       $a1, $s1, $zero
/* B74D0 800C6CD0 000020AE */  sw         $zero, ($s1)
/* B74D4 800C6CD4 FF28030C */  jal        FUN_800ca3fc
/* B74D8 800C6CD8 080032AE */   sw        $s2, 8($s1)
/* B74DC 800C6CDC 1400028E */  lw         $v0, 0x14($s0)
/* B74E0 800C6CE0 21180000 */  addu       $v1, $zero, $zero
/* B74E4 800C6CE4 FFFF4224 */  addiu      $v0, $v0, -1
/* B74E8 800C6CE8 0C006012 */  beqz       $s3, .L800C6D1C
/* B74EC 800C6CEC 140002AE */   sw        $v0, 0x14($s0)
/* B74F0 800C6CF0 0800228E */  lw         $v0, 8($s1)
/* B74F4 800C6CF4 00000000 */  nop
/* B74F8 800C6CF8 07005214 */  bne        $v0, $s2, .L800C6D18
/* B74FC 800C6CFC FEFF1024 */   addiu     $s0, $zero, -2
.L800C6D00:
/* B7500 800C6D00 4270000C */  jal        FUN_8001c108
/* B7504 800C6D04 00000000 */   nop
/* B7508 800C6D08 0800228E */  lw         $v0, 8($s1)
/* B750C 800C6D0C 00000000 */  nop
/* B7510 800C6D10 FBFF5010 */  beq        $v0, $s0, .L800C6D00
/* B7514 800C6D14 00000000 */   nop
.L800C6D18:
/* B7518 800C6D18 0800238E */  lw         $v1, 8($s1)
.L800C6D1C:
/* B751C 800C6D1C 00000000 */  nop
/* B7520 800C6D20 21106000 */  addu       $v0, $v1, $zero
.L800C6D24:
/* B7524 800C6D24 2000BF8F */  lw         $ra, 0x20($sp)
/* B7528 800C6D28 1C00B38F */  lw         $s3, 0x1c($sp)
/* B752C 800C6D2C 1800B28F */  lw         $s2, 0x18($sp)
/* B7530 800C6D30 1400B18F */  lw         $s1, 0x14($sp)
/* B7534 800C6D34 1000B08F */  lw         $s0, 0x10($sp)
/* B7538 800C6D38 0800E003 */  jr         $ra
/* B753C 800C6D3C 2800BD27 */   addiu     $sp, $sp, 0x28

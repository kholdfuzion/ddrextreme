.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6c10
/* B7410 800C6C10 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B7414 800C6C14 1800B2AF */  sw         $s2, 0x18($sp)
/* B7418 800C6C18 21908000 */  addu       $s2, $a0, $zero
/* B741C 800C6C1C 1400B1AF */  sw         $s1, 0x14($sp)
/* B7420 800C6C20 2188A000 */  addu       $s1, $a1, $zero
/* B7424 800C6C24 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B7428 800C6C28 2198C000 */  addu       $s3, $a2, $zero
/* B742C 800C6C2C 1000B0AF */  sw         $s0, 0x10($sp)
/* B7430 800C6C30 FFFF1024 */  addiu      $s0, $zero, -1
/* B7434 800C6C34 2000BFAF */  sw         $ra, 0x20($sp)
/* B7438 800C6C38 2A1C030C */  jal        FUN_800c70a8
/* B743C 800C6C3C 21202002 */   addu      $a0, $s1, $zero
/* B7440 800C6C40 06004010 */  beqz       $v0, .L800C6C5C
/* B7444 800C6C44 21204002 */   addu      $a0, $s2, $zero
/* B7448 800C6C48 0C0051AE */  sw         $s1, 0xc($s2)
/* B744C 800C6C4C 04000524 */  addiu      $a1, $zero, 4
/* B7450 800C6C50 1F1B030C */  jal        FUN_800c6c7c
/* B7454 800C6C54 21306002 */   addu      $a2, $s3, $zero
/* B7458 800C6C58 21804000 */  addu       $s0, $v0, $zero
.L800C6C5C:
/* B745C 800C6C5C 21100002 */  addu       $v0, $s0, $zero
/* B7460 800C6C60 2000BF8F */  lw         $ra, 0x20($sp)
/* B7464 800C6C64 1C00B38F */  lw         $s3, 0x1c($sp)
/* B7468 800C6C68 1800B28F */  lw         $s2, 0x18($sp)
/* B746C 800C6C6C 1400B18F */  lw         $s1, 0x14($sp)
/* B7470 800C6C70 1000B08F */  lw         $s0, 0x10($sp)
/* B7474 800C6C74 0800E003 */  jr         $ra
/* B7478 800C6C78 2800BD27 */   addiu     $sp, $sp, 0x28

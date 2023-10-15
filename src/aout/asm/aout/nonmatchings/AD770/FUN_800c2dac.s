.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2dac
/* B35AC 800C2DAC 1F80023C */  lui        $v0, %hi(D_801F72D8)
/* B35B0 800C2DB0 D872438C */  lw         $v1, %lo(D_801F72D8)($v0)
/* B35B4 800C2DB4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B35B8 800C2DB8 2800B6AF */  sw         $s6, 0x28($sp)
/* B35BC 800C2DBC 21B08000 */  addu       $s6, $a0, $zero
/* B35C0 800C2DC0 1800B2AF */  sw         $s2, 0x18($sp)
/* B35C4 800C2DC4 2190A000 */  addu       $s2, $a1, $zero
/* B35C8 800C2DC8 2C00B7AF */  sw         $s7, 0x2c($sp)
/* B35CC 800C2DCC 21B8C000 */  addu       $s7, $a2, $zero
/* B35D0 800C2DD0 2000B4AF */  sw         $s4, 0x20($sp)
/* B35D4 800C2DD4 D8725424 */  addiu      $s4, $v0, 0x72d8
/* B35D8 800C2DD8 3000BFAF */  sw         $ra, 0x30($sp)
/* B35DC 800C2DDC 2400B5AF */  sw         $s5, 0x24($sp)
/* B35E0 800C2DE0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B35E4 800C2DE4 1400B1AF */  sw         $s1, 0x14($sp)
/* B35E8 800C2DE8 1000B0AF */  sw         $s0, 0x10($sp)
/* B35EC 800C2DEC 55006010 */  beqz       $v1, .L800C2F44
/* B35F0 800C2DF0 21100000 */   addu      $v0, $zero, $zero
/* B35F4 800C2DF4 0000C28E */  lw         $v0, ($s6)
/* B35F8 800C2DF8 00000000 */  nop
/* B35FC 800C2DFC 0C004014 */  bnez       $v0, .L800C2E30
/* B3600 800C2E00 00000000 */   nop
/* B3604 800C2E04 0800828E */  lw         $v0, 8($s4)
/* B3608 800C2E08 0C00838E */  lw         $v1, 0xc($s4)
/* B360C 800C2E0C 06004010 */  beqz       $v0, .L800C2E28
/* B3610 800C2E10 00000000 */   nop
/* B3614 800C2E14 0400828E */  lw         $v0, 4($s4)
/* B3618 800C2E18 00000000 */  nop
/* B361C 800C2E1C 27100200 */  nor        $v0, $zero, $v0
/* B3620 800C2E20 80100200 */  sll        $v0, $v0, 2
/* B3624 800C2E24 21186200 */  addu       $v1, $v1, $v0
.L800C2E28:
/* B3628 800C2E28 0000C3AE */  sw         $v1, ($s6)
/* B362C 800C2E2C 080080AE */  sw         $zero, 8($s4)
.L800C2E30:
/* B3630 800C2E30 7E81000C */  jal        strlen
/* B3634 800C2E34 2120E002 */   addu      $a0, $s7, $zero
/* B3638 800C2E38 0000D18E */  lw         $s1, ($s6)
/* B363C 800C2E3C 0000838E */  lw         $v1, ($s4)
/* B3640 800C2E40 0C00848E */  lw         $a0, 0xc($s4)
/* B3644 800C2E44 80180300 */  sll        $v1, $v1, 2
/* B3648 800C2E48 21188300 */  addu       $v1, $a0, $v1
/* B364C 800C2E4C 2B182302 */  sltu       $v1, $s1, $v1
/* B3650 800C2E50 3A006010 */  beqz       $v1, .L800C2F3C
/* B3654 800C2E54 21984000 */   addu      $s3, $v0, $zero
/* B3658 800C2E58 3D001524 */  addiu      $s5, $zero, 0x3d
/* B365C 800C2E5C FCFF8224 */  addiu      $v0, $a0, -4
.L800C2E60:
/* B3660 800C2E60 2E002212 */  beq        $s1, $v0, .L800C2F1C
/* B3664 800C2E64 2128E002 */   addu      $a1, $s7, $zero
/* B3668 800C2E68 0000308E */  lw         $s0, ($s1)
/* B366C 800C2E6C 21306002 */  addu       $a2, $s3, $zero
/* B3670 800C2E70 35BB000C */  jal        strncmp
/* B3674 800C2E74 21200002 */   addu      $a0, $s0, $zero
/* B3678 800C2E78 28004014 */  bnez       $v0, .L800C2F1C
/* B367C 800C2E7C 21101302 */   addu      $v0, $s0, $s3
/* B3680 800C2E80 00004390 */  lbu        $v1, ($v0)
/* B3684 800C2E84 00000000 */  nop
/* B3688 800C2E88 03007510 */  beq        $v1, $s5, .L800C2E98
/* B368C 800C2E8C 2E000224 */   addiu     $v0, $zero, 0x2e
/* B3690 800C2E90 22006214 */  bne        $v1, $v0, .L800C2F1C
/* B3694 800C2E94 00000000 */   nop
.L800C2E98:
/* B3698 800C2E98 00000292 */  lbu        $v0, ($s0)
/* B369C 800C2E9C 00000000 */  nop
/* B36A0 800C2EA0 09004010 */  beqz       $v0, .L800C2EC8
/* B36A4 800C2EA4 00000000 */   nop
.L800C2EA8:
/* B36A8 800C2EA8 07005510 */  beq        $v0, $s5, .L800C2EC8
/* B36AC 800C2EAC 00000000 */   nop
/* B36B0 800C2EB0 01001026 */  addiu      $s0, $s0, 1
/* B36B4 800C2EB4 000042A2 */  sb         $v0, ($s2)
/* B36B8 800C2EB8 00000292 */  lbu        $v0, ($s0)
/* B36BC 800C2EBC 00000000 */  nop
/* B36C0 800C2EC0 F9FF4014 */  bnez       $v0, .L800C2EA8
/* B36C4 800C2EC4 01005226 */   addiu     $s2, $s2, 1
.L800C2EC8:
/* B36C8 800C2EC8 000040A2 */  sb         $zero, ($s2)
/* B36CC 800C2ECC 00000292 */  lbu        $v0, ($s0)
/* B36D0 800C2ED0 00000000 */  nop
/* B36D4 800C2ED4 0D004010 */  beqz       $v0, .L800C2F0C
/* B36D8 800C2ED8 00000000 */   nop
.L800C2EDC:
/* B36DC 800C2EDC 06005510 */  beq        $v0, $s5, .L800C2EF8
/* B36E0 800C2EE0 00000000 */   nop
/* B36E4 800C2EE4 01001026 */  addiu      $s0, $s0, 1
/* B36E8 800C2EE8 00000292 */  lbu        $v0, ($s0)
/* B36EC 800C2EEC 00000000 */  nop
/* B36F0 800C2EF0 FAFF4014 */  bnez       $v0, .L800C2EDC
/* B36F4 800C2EF4 00000000 */   nop
.L800C2EF8:
/* B36F8 800C2EF8 00000292 */  lbu        $v0, ($s0)
/* B36FC 800C2EFC 00000000 */  nop
/* B3700 800C2F00 02004010 */  beqz       $v0, .L800C2F0C
/* B3704 800C2F04 00000000 */   nop
/* B3708 800C2F08 01001026 */  addiu      $s0, $s0, 1
.L800C2F0C:
/* B370C 800C2F0C 04002226 */  addiu      $v0, $s1, 4
/* B3710 800C2F10 0000C2AE */  sw         $v0, ($s6)
/* B3714 800C2F14 D10B0308 */  j          .L800C2F44
/* B3718 800C2F18 21100002 */   addu      $v0, $s0, $zero
.L800C2F1C:
/* B371C 800C2F1C 04003126 */  addiu      $s1, $s1, 4
/* B3720 800C2F20 0000828E */  lw         $v0, ($s4)
/* B3724 800C2F24 0C00848E */  lw         $a0, 0xc($s4)
/* B3728 800C2F28 80100200 */  sll        $v0, $v0, 2
/* B372C 800C2F2C 21108200 */  addu       $v0, $a0, $v0
/* B3730 800C2F30 2B102202 */  sltu       $v0, $s1, $v0
/* B3734 800C2F34 CAFF4014 */  bnez       $v0, .L800C2E60
/* B3738 800C2F38 FCFF8224 */   addiu     $v0, $a0, -4
.L800C2F3C:
/* B373C 800C2F3C 0000D1AE */  sw         $s1, ($s6)
/* B3740 800C2F40 21100000 */  addu       $v0, $zero, $zero
.L800C2F44:
/* B3744 800C2F44 3000BF8F */  lw         $ra, 0x30($sp)
/* B3748 800C2F48 2C00B78F */  lw         $s7, 0x2c($sp)
/* B374C 800C2F4C 2800B68F */  lw         $s6, 0x28($sp)
/* B3750 800C2F50 2400B58F */  lw         $s5, 0x24($sp)
/* B3754 800C2F54 2000B48F */  lw         $s4, 0x20($sp)
/* B3758 800C2F58 1C00B38F */  lw         $s3, 0x1c($sp)
/* B375C 800C2F5C 1800B28F */  lw         $s2, 0x18($sp)
/* B3760 800C2F60 1400B18F */  lw         $s1, 0x14($sp)
/* B3764 800C2F64 1000B08F */  lw         $s0, 0x10($sp)
/* B3768 800C2F68 0800E003 */  jr         $ra
/* B376C 800C2F6C 3800BD27 */   addiu     $sp, $sp, 0x38

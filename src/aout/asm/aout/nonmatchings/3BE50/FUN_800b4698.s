.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b4698
/* A4E98 800B4698 1E80023C */  lui        $v0, %hi(D_801E09E0)
/* A4E9C 800B469C 1E80043C */  lui        $a0, %hi(D_801E09E4)
/* A4EA0 800B46A0 E009458C */  lw         $a1, %lo(D_801E09E0)($v0)
/* A4EA4 800B46A4 E409838C */  lw         $v1, %lo(D_801E09E4)($a0)
/* A4EA8 800B46A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A4EAC 800B46AC 1800B2AF */  sw         $s2, 0x18($sp)
/* A4EB0 800B46B0 21904000 */  addu       $s2, $v0, $zero
/* A4EB4 800B46B4 2800B6AF */  sw         $s6, 0x28($sp)
/* A4EB8 800B46B8 21B08000 */  addu       $s6, $a0, $zero
/* A4EBC 800B46BC 2C00BFAF */  sw         $ra, 0x2c($sp)
/* A4EC0 800B46C0 2400B5AF */  sw         $s5, 0x24($sp)
/* A4EC4 800B46C4 2000B4AF */  sw         $s4, 0x20($sp)
/* A4EC8 800B46C8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A4ECC 800B46CC 1400B1AF */  sw         $s1, 0x14($sp)
/* A4ED0 800B46D0 5200A310 */  beq        $a1, $v1, .L800B481C
/* A4ED4 800B46D4 1000B0AF */   sw        $s0, 0x10($sp)
/* A4ED8 800B46D8 1E80023C */  lui        $v0, %hi(D_801E0788)
/* A4EDC 800B46DC 88074390 */  lbu        $v1, %lo(D_801E0788)($v0)
/* A4EE0 800B46E0 00000000 */  nop
/* A4EE4 800B46E4 4D006014 */  bnez       $v1, .L800B481C
/* A4EE8 800B46E8 21A84000 */   addu      $s5, $v0, $zero
/* A4EEC 800B46EC 21884002 */  addu       $s1, $s2, $zero
/* A4EF0 800B46F0 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A4EF4 800B46F4 D80B5424 */  addiu      $s4, $v0, %lo(D_801E0BD8)
/* A4EF8 800B46F8 1E80133C */  lui        $s3, 0x801e
.L800B46FC:
/* A4EFC 800B46FC E009248E */  lw         $a0, 0x9e0($s1)
/* A4F00 800B4700 00000000 */  nop
/* A4F04 800B4704 00190400 */  sll        $v1, $a0, 4
/* A4F08 800B4708 01008424 */  addiu      $a0, $a0, 1
/* A4F0C 800B470C 3000822C */  sltiu      $v0, $a0, 0x30
/* A4F10 800B4710 02004014 */  bnez       $v0, .L800B471C
/* A4F14 800B4714 21807400 */   addu      $s0, $v1, $s4
/* A4F18 800B4718 21200000 */  addu       $a0, $zero, $zero
.L800B471C:
/* A4F1C 800B471C 03000292 */  lbu        $v0, 3($s0)
/* A4F20 800B4720 E00944AE */  sw         $a0, 0x9e0($s2)
/* A4F24 800B4724 34004010 */  beqz       $v0, .L800B47F8
/* A4F28 800B4728 00000000 */   nop
/* A4F2C 800B472C D807628E */  lw         $v0, 0x7d8($s3)
/* A4F30 800B4730 04000796 */  lhu        $a3, 4($s0)
/* A4F34 800B4734 030000A2 */  sb         $zero, 3($s0)
/* A4F38 800B4738 00004394 */  lhu        $v1, ($v0)
/* A4F3C 800B473C 0800448C */  lw         $a0, 8($v0)
/* A4F40 800B4740 40190300 */  sll        $v1, $v1, 5
/* A4F44 800B4744 21288300 */  addu       $a1, $a0, $v1
/* A4F48 800B4748 2B108500 */  sltu       $v0, $a0, $a1
/* A4F4C 800B474C 07000392 */  lbu        $v1, 7($s0)
/* A4F50 800B4750 15004010 */  beqz       $v0, .L800B47A8
/* A4F54 800B4754 00000000 */   nop
/* A4F58 800B4758 21306000 */  addu       $a2, $v1, $zero
/* A4F5C 800B475C 2118A000 */  addu       $v1, $a1, $zero
.L800B4760:
/* A4F60 800B4760 00008294 */  lhu        $v0, ($a0)
/* A4F64 800B4764 00000000 */  nop
/* A4F68 800B4768 FEFF4224 */  addiu      $v0, $v0, -2
/* A4F6C 800B476C 0200422C */  sltiu      $v0, $v0, 2
/* A4F70 800B4770 09004010 */  beqz       $v0, .L800B4798
/* A4F74 800B4774 00000000 */   nop
/* A4F78 800B4778 02008294 */  lhu        $v0, 2($a0)
/* A4F7C 800B477C 00000000 */  nop
/* A4F80 800B4780 05004714 */  bne        $v0, $a3, .L800B4798
/* A4F84 800B4784 00000000 */   nop
/* A4F88 800B4788 06008284 */  lh         $v0, 6($a0)
/* A4F8C 800B478C 00000000 */  nop
/* A4F90 800B4790 06004610 */  beq        $v0, $a2, .L800B47AC
/* A4F94 800B4794 00000000 */   nop
.L800B4798:
/* A4F98 800B4798 20008424 */  addiu      $a0, $a0, 0x20
/* A4F9C 800B479C 2B108300 */  sltu       $v0, $a0, $v1
/* A4FA0 800B47A0 EFFF4014 */  bnez       $v0, .L800B4760
/* A4FA4 800B47A4 00000000 */   nop
.L800B47A8:
/* A4FA8 800B47A8 21200000 */  addu       $a0, $zero, $zero
.L800B47AC:
/* A4FAC 800B47AC 0C008014 */  bnez       $a0, .L800B47E0
/* A4FB0 800B47B0 00000000 */   nop
/* A4FB4 800B47B4 07000492 */  lbu        $a0, 7($s0)
/* A4FB8 800B47B8 04000596 */  lhu        $a1, 4($s0)
/* A4FBC 800B47BC 3FCC020C */  jal        FUN_800b30fc
/* A4FC0 800B47C0 00000000 */   nop
/* A4FC4 800B47C4 21204000 */  addu       $a0, $v0, $zero
/* A4FC8 800B47C8 14008010 */  beqz       $a0, .L800B481C
/* A4FCC 800B47CC 00000000 */   nop
/* A4FD0 800B47D0 65D0020C */  jal        FUN_800b4194
/* A4FD4 800B47D4 21280002 */   addu      $a1, $s0, $zero
/* A4FD8 800B47D8 07D20208 */  j          .L800B481C
/* A4FDC 800B47DC 00000000 */   nop
.L800B47E0:
/* A4FE0 800B47E0 00000292 */  lbu        $v0, ($s0)
/* A4FE4 800B47E4 00000000 */  nop
/* A4FE8 800B47E8 03004014 */  bnez       $v0, .L800B47F8
/* A4FEC 800B47EC 00000000 */   nop
/* A4FF0 800B47F0 2CCD020C */  jal        FUN_800b34b0
/* A4FF4 800B47F4 21280002 */   addu      $a1, $s0, $zero
.L800B47F8:
/* A4FF8 800B47F8 E009238E */  lw         $v1, 0x9e0($s1)
/* A4FFC 800B47FC E409C28E */  lw         $v0, 0x9e4($s6)
/* A5000 800B4800 00000000 */  nop
/* A5004 800B4804 05006210 */  beq        $v1, $v0, .L800B481C
/* A5008 800B4808 00000000 */   nop
/* A500C 800B480C 8807A292 */  lbu        $v0, 0x788($s5)
/* A5010 800B4810 00000000 */  nop
/* A5014 800B4814 B9FF4010 */  beqz       $v0, .L800B46FC
/* A5018 800B4818 00000000 */   nop
.L800B481C:
/* A501C 800B481C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* A5020 800B4820 2800B68F */  lw         $s6, 0x28($sp)
/* A5024 800B4824 2400B58F */  lw         $s5, 0x24($sp)
/* A5028 800B4828 2000B48F */  lw         $s4, 0x20($sp)
/* A502C 800B482C 1C00B38F */  lw         $s3, 0x1c($sp)
/* A5030 800B4830 1800B28F */  lw         $s2, 0x18($sp)
/* A5034 800B4834 1400B18F */  lw         $s1, 0x14($sp)
/* A5038 800B4838 1000B08F */  lw         $s0, 0x10($sp)
/* A503C 800B483C 0800E003 */  jr         $ra
/* A5040 800B4840 3000BD27 */   addiu     $sp, $sp, 0x30

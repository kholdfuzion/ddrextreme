.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c4e50
/* B5650 800C4E50 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B5654 800C4E54 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B5658 800C4E58 18744424 */  addiu      $a0, $v0, %lo(D_801F7418)
/* B565C 800C4E5C 2000BFAF */  sw         $ra, 0x20($sp)
/* B5660 800C4E60 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B5664 800C4E64 1800B2AF */  sw         $s2, 0x18($sp)
/* B5668 800C4E68 1400B1AF */  sw         $s1, 0x14($sp)
/* B566C 800C4E6C 1000B0AF */  sw         $s0, 0x10($sp)
/* B5670 800C4E70 7043908C */  lw         $s0, 0x4370($a0)
/* B5674 800C4E74 00000000 */  nop
/* B5678 800C4E78 0C00038E */  lw         $v1, 0xc($s0)
/* B567C 800C4E7C 1874538C */  lw         $s3, 0x7418($v0)
/* B5680 800C4E80 80110300 */  sll        $v0, $v1, 6
/* B5684 800C4E84 21104300 */  addu       $v0, $v0, $v1
/* B5688 800C4E88 40110200 */  sll        $v0, $v0, 5
/* B568C 800C4E8C 21104300 */  addu       $v0, $v0, $v1
/* B5690 800C4E90 80100200 */  sll        $v0, $v0, 2
/* B5694 800C4E94 20008324 */  addiu      $v1, $a0, 0x20
/* B5698 800C4E98 0400848C */  lw         $a0, 4($a0)
/* B569C 800C4E9C 21884300 */  addu       $s1, $v0, $v1
/* B56A0 800C4EA0 0500822C */  sltiu      $v0, $a0, 5
/* B56A4 800C4EA4 57004010 */  beqz       $v0, .L800C5004
/* B56A8 800C4EA8 21900000 */   addu      $s2, $zero, $zero
/* B56AC 800C4EAC 0180023C */  lui        $v0, %hi(D_800178D8)
/* B56B0 800C4EB0 D8784224 */  addiu      $v0, $v0, %lo(D_800178D8)
/* B56B4 800C4EB4 80180400 */  sll        $v1, $a0, 2
/* B56B8 800C4EB8 21186200 */  addu       $v1, $v1, $v0
/* B56BC 800C4EBC 0000628C */  lw         $v0, ($v1)
/* B56C0 800C4EC0 00000000 */  nop
/* B56C4 800C4EC4 08004000 */  jr         $v0
/* B56C8 800C4EC8 00000000 */   nop
.L800C4ECC:
/* B56CC 800C4ECC 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B56D0 800C4ED0 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B56D4 800C4ED4 0400628C */  lw         $v0, 4($v1)
/* B56D8 800C4ED8 00000000 */  nop
/* B56DC 800C4EDC 01004224 */  addiu      $v0, $v0, 1
/* B56E0 800C4EE0 CF130308 */  j          .L800C4F3C
/* B56E4 800C4EE4 040062AC */   sw        $v0, 4($v1)
/* B56E8 800C4EE8 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B56EC 800C4EEC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B56F0 800C4EF0 100000AE */  sw         $zero, 0x10($s0)
/* B56F4 800C4EF4 0400628C */  lw         $v0, 4($v1)
/* B56F8 800C4EF8 00000000 */  nop
/* B56FC 800C4EFC 01004224 */  addiu      $v0, $v0, 1
/* B5700 800C4F00 040062AC */  sw         $v0, 4($v1)
/* B5704 800C4F04 1000038E */  lw         $v1, 0x10($s0)
/* B5708 800C4F08 00000000 */  nop
/* B570C 800C4F0C 40006228 */  slti       $v0, $v1, 0x40
/* B5710 800C4F10 0F004010 */  beqz       $v0, .L800C4F50
/* B5714 800C4F14 21102302 */   addu      $v0, $s1, $v1
.L800C4F18:
/* B5718 800C4F18 40204290 */  lbu        $v0, 0x2040($v0)
/* B571C 800C4F1C 00000000 */  nop
/* B5720 800C4F20 EAFF4014 */  bnez       $v0, .L800C4ECC
/* B5724 800C4F24 01006224 */   addiu     $v0, $v1, 1
/* B5728 800C4F28 100002AE */  sw         $v0, 0x10($s0)
/* B572C 800C4F2C 21184000 */  addu       $v1, $v0, $zero
/* B5730 800C4F30 40006228 */  slti       $v0, $v1, 0x40
/* B5734 800C4F34 F8FF4014 */  bnez       $v0, .L800C4F18
/* B5738 800C4F38 21102302 */   addu      $v0, $s1, $v1
.L800C4F3C:
/* B573C 800C4F3C 1000028E */  lw         $v0, 0x10($s0)
/* B5740 800C4F40 00000000 */  nop
/* B5744 800C4F44 40004228 */  slti       $v0, $v0, 0x40
/* B5748 800C4F48 09004014 */  bnez       $v0, .L800C4F70
/* B574C 800C4F4C 01000624 */   addiu     $a2, $zero, 1
.L800C4F50:
/* B5750 800C4F50 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B5754 800C4F54 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5758 800C4F58 0400628C */  lw         $v0, 4($v1)
/* B575C 800C4F5C 00000000 */  nop
/* B5760 800C4F60 03004224 */  addiu      $v0, $v0, 3
/* B5764 800C4F64 01140308 */  j          .L800C5004
/* B5768 800C4F68 040062AC */   sw        $v0, 4($v1)
/* B576C 800C4F6C 01000624 */  addiu      $a2, $zero, 1
.L800C4F70:
/* B5770 800C4F70 1000058E */  lw         $a1, 0x10($s0)
/* B5774 800C4F74 0C00048E */  lw         $a0, 0xc($s0)
/* B5778 800C4F78 C0390500 */  sll        $a3, $a1, 7
/* B577C 800C4F7C BA1B030C */  jal        FUN_800c6ee8
/* B5780 800C4F80 21382702 */   addu      $a3, $s1, $a3
/* B5784 800C4F84 0F004004 */  bltz       $v0, .L800C4FC4
/* B5788 800C4F88 1F80033C */   lui       $v1, %hi(D_801F7418)
/* B578C 800C4F8C 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B5790 800C4F90 0400628C */  lw         $v0, 4($v1)
/* B5794 800C4F94 00000000 */  nop
/* B5798 800C4F98 01004224 */  addiu      $v0, $v0, 1
/* B579C 800C4F9C 01140308 */  j          .L800C5004
/* B57A0 800C4FA0 040062AC */   sw        $v0, 4($v1)
/* B57A4 800C4FA4 F224030C */  jal        FUN_800c93c8
/* B57A8 800C4FA8 00000000 */   nop
/* B57AC 800C4FAC 21184000 */  addu       $v1, $v0, $zero
/* B57B0 800C4FB0 FEFF0224 */  addiu      $v0, $zero, -2
/* B57B4 800C4FB4 13006210 */  beq        $v1, $v0, .L800C5004
/* B57B8 800C4FB8 00000000 */   nop
/* B57BC 800C4FBC 03006010 */  beqz       $v1, .L800C4FCC
/* B57C0 800C4FC0 1F80033C */   lui       $v1, %hi(D_801F7418)
.L800C4FC4:
/* B57C4 800C4FC4 01140308 */  j          .L800C5004
/* B57C8 800C4FC8 01001224 */   addiu     $s2, $zero, 1
.L800C4FCC:
/* B57CC 800C4FCC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B57D0 800C4FD0 0400628C */  lw         $v0, 4($v1)
/* B57D4 800C4FD4 00000000 */  nop
/* B57D8 800C4FD8 FEFF4224 */  addiu      $v0, $v0, -2
/* B57DC 800C4FDC 040062AC */  sw         $v0, 4($v1)
/* B57E0 800C4FE0 1000028E */  lw         $v0, 0x10($s0)
/* B57E4 800C4FE4 00000000 */  nop
/* B57E8 800C4FE8 21182202 */  addu       $v1, $s1, $v0
/* B57EC 800C4FEC 01004224 */  addiu      $v0, $v0, 1
/* B57F0 800C4FF0 402060A0 */  sb         $zero, 0x2040($v1)
/* B57F4 800C4FF4 01140308 */  j          .L800C5004
/* B57F8 800C4FF8 100002AE */   sw        $v0, 0x10($s0)
/* B57FC 800C4FFC 21980000 */  addu       $s3, $zero, $zero
/* B5800 800C5000 080000AE */  sw         $zero, 8($s0)
.L800C5004:
/* B5804 800C5004 05004012 */  beqz       $s2, .L800C501C
/* B5808 800C5008 FFFF0224 */   addiu     $v0, $zero, -1
/* B580C 800C500C 21980000 */  addu       $s3, $zero, $zero
/* B5810 800C5010 0C00048E */  lw         $a0, 0xc($s0)
/* B5814 800C5014 1D1C030C */  jal        FUN_800c7074
/* B5818 800C5018 080002AE */   sw        $v0, 8($s0)
.L800C501C:
/* B581C 800C501C 21106002 */  addu       $v0, $s3, $zero
/* B5820 800C5020 2000BF8F */  lw         $ra, 0x20($sp)
/* B5824 800C5024 1C00B38F */  lw         $s3, 0x1c($sp)
/* B5828 800C5028 1800B28F */  lw         $s2, 0x18($sp)
/* B582C 800C502C 1400B18F */  lw         $s1, 0x14($sp)
/* B5830 800C5030 1000B08F */  lw         $s0, 0x10($sp)
/* B5834 800C5034 0800E003 */  jr         $ra
/* B5838 800C5038 2800BD27 */   addiu     $sp, $sp, 0x28

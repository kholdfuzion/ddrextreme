.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b54ec
/* A5CEC 800B54EC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* A5CF0 800B54F0 1E80033C */  lui        $v1, %hi(D_801E07A8)
/* A5CF4 800B54F4 A8076490 */  lbu        $a0, %lo(D_801E07A8)($v1)
/* A5CF8 800B54F8 1E80023C */  lui        $v0, %hi(D_801E09E8)
/* A5CFC 800B54FC 3000B2AF */  sw         $s2, 0x30($sp)
/* A5D00 800B5500 E8095224 */  addiu      $s2, $v0, %lo(D_801E09E8)
/* A5D04 800B5504 3400B3AF */  sw         $s3, 0x34($sp)
/* A5D08 800B5508 21984000 */  addu       $s3, $v0, $zero
/* A5D0C 800B550C 3800BFAF */  sw         $ra, 0x38($sp)
/* A5D10 800B5510 2C00B1AF */  sw         $s1, 0x2c($sp)
/* A5D14 800B5514 69008010 */  beqz       $a0, .L800B56BC
/* A5D18 800B5518 2800B0AF */   sw        $s0, 0x28($sp)
/* A5D1C 800B551C 1E80113C */  lui        $s1, %hi(D_801E0768)
/* A5D20 800B5520 68072492 */  lbu        $a0, %lo(D_801E0768)($s1)
/* A5D24 800B5524 00000000 */  nop
/* A5D28 800B5528 FF008330 */  andi       $v1, $a0, 0xff
/* A5D2C 800B552C 1C006010 */  beqz       $v1, .L800B55A0
/* A5D30 800B5530 68073026 */   addiu     $s0, $s1, 0x768
/* A5D34 800B5534 01000224 */  addiu      $v0, $zero, 1
/* A5D38 800B5538 0D006214 */  bne        $v1, $v0, .L800B5570
/* A5D3C 800B553C 06000224 */   addiu     $v0, $zero, 6
/* A5D40 800B5540 1000A427 */  addiu      $a0, $sp, 0x10
/* A5D44 800B5544 1000A2AF */  sw         $v0, 0x10($sp)
/* A5D48 800B5548 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* A5D4C 800B554C 45E1020C */  jal        SpuSetReverbDepth
/* A5D50 800B5550 1800A0A7 */   sh        $zero, 0x18($sp)
/* A5D54 800B5554 C5DE020C */  jal        SpuSetReverbModeParam
/* A5D58 800B5558 04000426 */   addiu     $a0, $s0, 4
/* A5D5C 800B555C 68072392 */  lbu        $v1, 0x768($s1)
/* A5D60 800B5560 00000000 */  nop
/* A5D64 800B5564 01006324 */  addiu      $v1, $v1, 1
/* A5D68 800B5568 68D50208 */  j          .L800B55A0
/* A5D6C 800B556C 680723A2 */   sb        $v1, 0x768($s1)
.L800B5570:
/* A5D70 800B5570 02000292 */  lbu        $v0, 2($s0)
/* A5D74 800B5574 00000000 */  nop
/* A5D78 800B5578 2B106200 */  sltu       $v0, $v1, $v0
/* A5D7C 800B557C 03004010 */  beqz       $v0, .L800B558C
/* A5D80 800B5580 01008224 */   addiu     $v0, $a0, 1
/* A5D84 800B5584 68D50208 */  j          .L800B55A0
/* A5D88 800B5588 680722A2 */   sb        $v0, 0x768($s1)
.L800B558C:
/* A5D8C 800B558C 04000426 */  addiu      $a0, $s0, 4
/* A5D90 800B5590 06000224 */  addiu      $v0, $zero, 6
/* A5D94 800B5594 45E1020C */  jal        SpuSetReverbDepth
/* A5D98 800B5598 040002AE */   sw        $v0, 4($s0)
/* A5D9C 800B559C 680720A2 */  sb         $zero, 0x768($s1)
.L800B55A0:
/* A5DA0 800B55A0 1E80103C */  lui        $s0, %hi(D_801E07D8)
/* A5DA4 800B55A4 D807028E */  lw         $v0, %lo(D_801E07D8)($s0)
/* A5DA8 800B55A8 00000000 */  nop
/* A5DAC 800B55AC 1800438C */  lw         $v1, 0x18($v0)
/* A5DB0 800B55B0 00000000 */  nop
/* A5DB4 800B55B4 09F86000 */  jalr       $v1
/* A5DB8 800B55B8 00000000 */   nop
/* A5DBC 800B55BC 1E80043C */  lui        $a0, %hi(D_801E0788)
/* A5DC0 800B55C0 88078290 */  lbu        $v0, %lo(D_801E0788)($a0)
/* A5DC4 800B55C4 02000324 */  addiu      $v1, $zero, 2
/* A5DC8 800B55C8 03004314 */  bne        $v0, $v1, .L800B55D8
/* A5DCC 800B55CC 01000224 */   addiu     $v0, $zero, 1
/* A5DD0 800B55D0 CBCF020C */  jal        FUN_800b3f2c
/* A5DD4 800B55D4 880782A0 */   sb        $v0, 0x788($a0)
.L800B55D8:
/* A5DD8 800B55D8 A6D1020C */  jal        FUN_800b4698
/* A5DDC 800B55DC 00000000 */   nop
/* A5DE0 800B55E0 11D2020C */  jal        FUN_800b4844
/* A5DE4 800B55E4 00000000 */   nop
/* A5DE8 800B55E8 E8096726 */  addiu      $a3, $s3, 0x9e8
/* A5DEC 800B55EC 0400E38C */  lw         $v1, 4($a3)
/* A5DF0 800B55F0 0800E68C */  lw         $a2, 8($a3)
/* A5DF4 800B55F4 01000424 */  addiu      $a0, $zero, 1
/* A5DF8 800B55F8 24106600 */  and        $v0, $v1, $a2
/* A5DFC 800B55FC 27100200 */  nor        $v0, $zero, $v0
/* A5E00 800B5600 24186200 */  and        $v1, $v1, $v0
/* A5E04 800B5604 0400E3AC */  sw         $v1, 4($a3)
/* A5E08 800B5608 0400458E */  lw         $a1, 4($s2)
/* A5E0C 800B560C 2430C200 */  and        $a2, $a2, $v0
/* A5E10 800B5610 8DE2020C */  jal        SpuSetKey
/* A5E14 800B5614 0800E6AC */   sw        $a2, 8($a3)
/* A5E18 800B5618 0800458E */  lw         $a1, 8($s2)
/* A5E1C 800B561C 0000428E */  lw         $v0, ($s2)
/* A5E20 800B5620 0400438E */  lw         $v1, 4($s2)
/* A5E24 800B5624 21200000 */  addu       $a0, $zero, $zero
/* A5E28 800B5628 040040AE */  sw         $zero, 4($s2)
/* A5E2C 800B562C 25104300 */  or         $v0, $v0, $v1
/* A5E30 800B5630 8DE2020C */  jal        SpuSetKey
/* A5E34 800B5634 000042AE */   sw        $v0, ($s2)
/* A5E38 800B5638 0800438E */  lw         $v1, 8($s2)
/* A5E3C 800B563C 0000428E */  lw         $v0, ($s2)
/* A5E40 800B5640 27180300 */  nor        $v1, $zero, $v1
/* A5E44 800B5644 24104300 */  and        $v0, $v0, $v1
/* A5E48 800B5648 D807038E */  lw         $v1, 0x7d8($s0)
/* A5E4C 800B564C 0F80053C */  lui        $a1, %hi(D_800EC76C)
/* A5E50 800B5650 080040AE */  sw         $zero, 8($s2)
/* A5E54 800B5654 000042AE */  sw         $v0, ($s2)
/* A5E58 800B5658 6CC7A294 */  lhu        $v0, %lo(D_800EC76C)($a1)
/* A5E5C 800B565C 0800648C */  lw         $a0, 8($v1)
/* A5E60 800B5660 40110200 */  sll        $v0, $v0, 5
/* A5E64 800B5664 21204400 */  addu       $a0, $v0, $a0
/* A5E68 800B5668 00008394 */  lhu        $v1, ($a0)
/* A5E6C 800B566C 00000000 */  nop
/* A5E70 800B5670 0200632C */  sltiu      $v1, $v1, 2
/* A5E74 800B5674 07006014 */  bnez       $v1, .L800B5694
/* A5E78 800B5678 2130A000 */   addu      $a2, $a1, $zero
/* A5E7C 800B567C 04008394 */  lhu        $v1, 4($a0)
/* A5E80 800B5680 FEFF0234 */  ori        $v0, $zero, 0xfffe
/* A5E84 800B5684 2B104300 */  sltu       $v0, $v0, $v1
/* A5E88 800B5688 02004014 */  bnez       $v0, .L800B5694
/* A5E8C 800B568C 01006224 */   addiu     $v0, $v1, 1
/* A5E90 800B5690 040082A4 */  sh         $v0, 4($a0)
.L800B5694:
/* A5E94 800B5694 6CC7C494 */  lhu        $a0, -0x3894($a2)
/* A5E98 800B5698 D807058E */  lw         $a1, 0x7d8($s0)
/* A5E9C 800B569C 01008324 */  addiu      $v1, $a0, 1
/* A5EA0 800B56A0 0000A294 */  lhu        $v0, ($a1)
/* A5EA4 800B56A4 FFFF8430 */  andi       $a0, $a0, 0xffff
/* A5EA8 800B56A8 FFFF4224 */  addiu      $v0, $v0, -1
/* A5EAC 800B56AC 2A208200 */  slt        $a0, $a0, $v0
/* A5EB0 800B56B0 02008014 */  bnez       $a0, .L800B56BC
/* A5EB4 800B56B4 6CC7C3A4 */   sh        $v1, -0x3894($a2)
/* A5EB8 800B56B8 6CC7C0A4 */  sh         $zero, -0x3894($a2)
.L800B56BC:
/* A5EBC 800B56BC 3800BF8F */  lw         $ra, 0x38($sp)
/* A5EC0 800B56C0 3400B38F */  lw         $s3, 0x34($sp)
/* A5EC4 800B56C4 3000B28F */  lw         $s2, 0x30($sp)
/* A5EC8 800B56C8 2C00B18F */  lw         $s1, 0x2c($sp)
/* A5ECC 800B56CC 2800B08F */  lw         $s0, 0x28($sp)
/* A5ED0 800B56D0 0800E003 */  jr         $ra
/* A5ED4 800B56D4 4000BD27 */   addiu     $sp, $sp, 0x40

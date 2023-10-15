.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b56d8
/* A5ED8 800B56D8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A5EDC 800B56DC 21488000 */  addu       $t1, $a0, $zero
/* A5EE0 800B56E0 1000222D */  sltiu      $v0, $t1, 0x10
/* A5EE4 800B56E4 0E004010 */  beqz       $v0, .L800B5720
/* A5EE8 800B56E8 2000BFAF */   sw        $ra, 0x20($sp)
/* A5EEC 800B56EC 1E80023C */  lui        $v0, %hi(D_801E07E0)
/* A5EF0 800B56F0 E0074624 */  addiu      $a2, $v0, %lo(D_801E07E0)
/* A5EF4 800B56F4 40210900 */  sll        $a0, $t1, 5
/* A5EF8 800B56F8 2110C400 */  addu       $v0, $a2, $a0
/* A5EFC 800B56FC 1C00438C */  lw         $v1, 0x1c($v0)
/* A5F00 800B5700 00000000 */  nop
/* A5F04 800B5704 06006010 */  beqz       $v1, .L800B5720
/* A5F08 800B5708 FFFFA330 */   andi      $v1, $a1, 0xffff
/* A5F0C 800B570C 1800448C */  lw         $a0, 0x18($v0)
/* A5F10 800B5710 00000000 */  nop
/* A5F14 800B5714 2B186400 */  sltu       $v1, $v1, $a0
/* A5F18 800B5718 03006014 */  bnez       $v1, .L800B5728
/* A5F1C 800B571C 1E80023C */   lui       $v0, %hi(D_801E07D8)
.L800B5720:
/* A5F20 800B5720 FAD50208 */  j          .L800B57E8
/* A5F24 800B5724 FEFF0224 */   addiu     $v0, $zero, -2
.L800B5728:
/* A5F28 800B5728 D807438C */  lw         $v1, %lo(D_801E07D8)($v0)
/* A5F2C 800B572C 00000000 */  nop
/* A5F30 800B5730 00006294 */  lhu        $v0, ($v1)
/* A5F34 800B5734 0800648C */  lw         $a0, 8($v1)
/* A5F38 800B5738 40110200 */  sll        $v0, $v0, 5
/* A5F3C 800B573C 21308200 */  addu       $a2, $a0, $v0
/* A5F40 800B5740 2B188600 */  sltu       $v1, $a0, $a2
/* A5F44 800B5744 16006010 */  beqz       $v1, .L800B57A0
/* A5F48 800B5748 FFFFA830 */   andi      $t0, $a1, 0xffff
/* A5F4C 800B574C 00140900 */  sll        $v0, $t1, 0x10
/* A5F50 800B5750 033C0200 */  sra        $a3, $v0, 0x10
/* A5F54 800B5754 2118C000 */  addu       $v1, $a2, $zero
.L800B5758:
/* A5F58 800B5758 00008294 */  lhu        $v0, ($a0)
/* A5F5C 800B575C 00000000 */  nop
/* A5F60 800B5760 FEFF4224 */  addiu      $v0, $v0, -2
/* A5F64 800B5764 0200422C */  sltiu      $v0, $v0, 2
/* A5F68 800B5768 09004010 */  beqz       $v0, .L800B5790
/* A5F6C 800B576C 00000000 */   nop
/* A5F70 800B5770 02008294 */  lhu        $v0, 2($a0)
/* A5F74 800B5774 00000000 */  nop
/* A5F78 800B5778 05004814 */  bne        $v0, $t0, .L800B5790
/* A5F7C 800B577C 00000000 */   nop
/* A5F80 800B5780 06008284 */  lh         $v0, 6($a0)
/* A5F84 800B5784 00000000 */  nop
/* A5F88 800B5788 06004710 */  beq        $v0, $a3, .L800B57A4
/* A5F8C 800B578C 21108000 */   addu      $v0, $a0, $zero
.L800B5790:
/* A5F90 800B5790 20008424 */  addiu      $a0, $a0, 0x20
/* A5F94 800B5794 2B108300 */  sltu       $v0, $a0, $v1
/* A5F98 800B5798 EFFF4014 */  bnez       $v0, .L800B5758
/* A5F9C 800B579C 00000000 */   nop
.L800B57A0:
/* A5FA0 800B57A0 21100000 */  addu       $v0, $zero, $zero
.L800B57A4:
/* A5FA4 800B57A4 0E004014 */  bnez       $v0, .L800B57E0
/* A5FA8 800B57A8 021E0500 */   srl       $v1, $a1, 0x18
/* A5FAC 800B57AC 01000224 */  addiu      $v0, $zero, 1
/* A5FB0 800B57B0 1000A2A3 */  sb         $v0, 0x10($sp)
/* A5FB4 800B57B4 02140500 */  srl        $v0, $a1, 0x10
/* A5FB8 800B57B8 7F004230 */  andi       $v0, $v0, 0x7f
/* A5FBC 800B57BC 01006330 */  andi       $v1, $v1, 1
/* A5FC0 800B57C0 1000A427 */  addiu      $a0, $sp, 0x10
/* A5FC4 800B57C4 1400A5A7 */  sh         $a1, 0x14($sp)
/* A5FC8 800B57C8 1100A2A3 */  sb         $v0, 0x11($sp)
/* A5FCC 800B57CC 1200A3A3 */  sb         $v1, 0x12($sp)
/* A5FD0 800B57D0 0CCC020C */  jal        FUN_800b3030
/* A5FD4 800B57D4 1700A9A3 */   sb        $t1, 0x17($sp)
/* A5FD8 800B57D8 FAD50208 */  j          .L800B57E8
/* A5FDC 800B57DC 00000000 */   nop
.L800B57E0:
/* A5FE0 800B57E0 040040A4 */  sh         $zero, 4($v0)
/* A5FE4 800B57E4 21100000 */  addu       $v0, $zero, $zero
.L800B57E8:
/* A5FE8 800B57E8 2000BF8F */  lw         $ra, 0x20($sp)
/* A5FEC 800B57EC 00000000 */  nop
/* A5FF0 800B57F0 0800E003 */  jr         $ra
/* A5FF4 800B57F4 2800BD27 */   addiu     $sp, $sp, 0x28

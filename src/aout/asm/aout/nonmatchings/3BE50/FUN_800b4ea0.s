.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b4ea0
/* A56A0 800B4EA0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* A56A4 800B4EA4 3800B0AF */  sw         $s0, 0x38($sp)
/* A56A8 800B4EA8 1E80103C */  lui        $s0, %hi(D_801E07D8)
/* A56AC 800B4EAC 4000BFAF */  sw         $ra, 0x40($sp)
/* A56B0 800B4EB0 3C00B1AF */  sw         $s1, 0x3c($sp)
/* A56B4 800B4EB4 CDDA020C */  jal        SsUtReverbOff
/* A56B8 800B4EB8 D80704AE */   sw        $a0, %lo(D_801E07D8)($s0)
/* A56BC 800B4EBC 3CD3020C */  jal        FUN_800b4cf0
/* A56C0 800B4EC0 1E80113C */   lui       $s1, 0x801e
/* A56C4 800B4EC4 0B80043C */  lui        $a0, %hi(FUN_800b3f2c)
/* A56C8 800B4EC8 51E3020C */  jal        FUN_800b8d44
/* A56CC 800B4ECC 2C3F8424 */   addiu     $a0, $a0, %lo(FUN_800b3f2c)
/* A56D0 800B4ED0 1E80073C */  lui        $a3, 0x801e
/* A56D4 800B4ED4 17000624 */  addiu      $a2, $zero, 0x17
/* A56D8 800B4ED8 1E80023C */  lui        $v0, %hi(D_801E09F8)
/* A56DC 800B4EDC F8094224 */  addiu      $v0, $v0, %lo(D_801E09F8)
/* A56E0 800B4EE0 CC014524 */  addiu      $a1, $v0, 0x1cc
/* A56E4 800B4EE4 1E80043C */  lui        $a0, %hi(D_801E07AC)
/* A56E8 800B4EE8 1E80033C */  lui        $v1, %hi(D_801E0788)
/* A56EC 800B4EEC 880760A0 */  sb         $zero, %lo(D_801E0788)($v1)
/* A56F0 800B4EF0 88076324 */  addiu      $v1, $v1, 0x788
/* A56F4 800B4EF4 01000224 */  addiu      $v0, $zero, 1
/* A56F8 800B4EF8 AC0780AC */  sw         $zero, %lo(D_801E07AC)($a0)
/* A56FC 800B4EFC 010062A0 */  sb         $v0, 1($v1)
/* A5700 800B4F00 FFFF0224 */  addiu      $v0, $zero, -1
/* A5704 800B4F04 180062AC */  sw         $v0, 0x18($v1)
/* A5708 800B4F08 7F000224 */  addiu      $v0, $zero, 0x7f
/* A570C 800B4F0C 050062A0 */  sb         $v0, 5($v1)
/* A5710 800B4F10 1E80023C */  lui        $v0, %hi(D_801E09E8)
/* A5714 800B4F14 1C0060AC */  sw         $zero, 0x1c($v1)
/* A5718 800B4F18 140060AC */  sw         $zero, 0x14($v1)
/* A571C 800B4F1C 060060A4 */  sh         $zero, 6($v1)
/* A5720 800B4F20 080060A4 */  sh         $zero, 8($v1)
/* A5724 800B4F24 E80940AC */  sw         $zero, %lo(D_801E09E8)($v0)
/* A5728 800B4F28 E8094224 */  addiu      $v0, $v0, 0x9e8
/* A572C 800B4F2C 040040AC */  sw         $zero, 4($v0)
/* A5730 800B4F30 080040AC */  sw         $zero, 8($v0)
.L800B4F34:
/* A5734 800B4F34 0000A0A0 */  sb         $zero, ($a1)
/* A5738 800B4F38 FFFFC624 */  addiu      $a2, $a2, -1
/* A573C 800B4F3C FDFFC104 */  bgez       $a2, .L800B4F34
/* A5740 800B4F40 ECFFA524 */   addiu     $a1, $a1, -0x14
/* A5744 800B4F44 D807038E */  lw         $v1, 0x7d8($s0)
/* A5748 800B4F48 00000000 */  nop
/* A574C 800B4F4C 00006294 */  lhu        $v0, ($v1)
/* A5750 800B4F50 00000000 */  nop
/* A5754 800B4F54 1F004010 */  beqz       $v0, .L800B4FD4
/* A5758 800B4F58 21300000 */   addu      $a2, $zero, $zero
/* A575C 800B4F5C 21286000 */  addu       $a1, $v1, $zero
.L800B4F60:
/* A5760 800B4F60 0800A38C */  lw         $v1, 8($a1)
/* A5764 800B4F64 40210600 */  sll        $a0, $a2, 5
/* A5768 800B4F68 21188300 */  addu       $v1, $a0, $v1
/* A576C 800B4F6C 000060A4 */  sh         $zero, ($v1)
/* A5770 800B4F70 0800A28C */  lw         $v0, 8($a1)
/* A5774 800B4F74 00000000 */  nop
/* A5778 800B4F78 21108200 */  addu       $v0, $a0, $v0
/* A577C 800B4F7C 040040A4 */  sh         $zero, 4($v0)
/* A5780 800B4F80 0800A38C */  lw         $v1, 8($a1)
/* A5784 800B4F84 00000000 */  nop
/* A5788 800B4F88 21188300 */  addu       $v1, $a0, $v1
/* A578C 800B4F8C 020060A4 */  sh         $zero, 2($v1)
/* A5790 800B4F90 0800A28C */  lw         $v0, 8($a1)
/* A5794 800B4F94 00000000 */  nop
/* A5798 800B4F98 21108200 */  addu       $v0, $a0, $v0
/* A579C 800B4F9C 080040AC */  sw         $zero, 8($v0)
/* A57A0 800B4FA0 0800A38C */  lw         $v1, 8($a1)
/* A57A4 800B4FA4 00000000 */  nop
/* A57A8 800B4FA8 21188300 */  addu       $v1, $a0, $v1
/* A57AC 800B4FAC 0C0060AC */  sw         $zero, 0xc($v1)
/* A57B0 800B4FB0 0800A28C */  lw         $v0, 8($a1)
/* A57B4 800B4FB4 00000000 */  nop
/* A57B8 800B4FB8 21208200 */  addu       $a0, $a0, $v0
/* A57BC 800B4FBC 100080AC */  sw         $zero, 0x10($a0)
/* A57C0 800B4FC0 0000A294 */  lhu        $v0, ($a1)
/* A57C4 800B4FC4 0100C624 */  addiu      $a2, $a2, 1
/* A57C8 800B4FC8 2A10C200 */  slt        $v0, $a2, $v0
/* A57CC 800B4FCC E4FF4014 */  bnez       $v0, .L800B4F60
/* A57D0 800B4FD0 00000000 */   nop
.L800B4FD4:
/* A57D4 800B4FD4 21300000 */  addu       $a2, $zero, $zero
/* A57D8 800B4FD8 1E80023C */  lui        $v0, %hi(D_801E07E0)
/* A57DC 800B4FDC E0074524 */  addiu      $a1, $v0, %lo(D_801E07E0)
/* A57E0 800B4FE0 E409E0AC */  sw         $zero, 0x9e4($a3)
/* A57E4 800B4FE4 E409E48C */  lw         $a0, 0x9e4($a3)
/* A57E8 800B4FE8 1E80033C */  lui        $v1, %hi(D_801E09E0)
/* A57EC 800B4FEC E00964AC */  sw         $a0, %lo(D_801E09E0)($v1)
.L800B4FF0:
/* A57F0 800B4FF0 0000A0AC */  sw         $zero, ($a1)
/* A57F4 800B4FF4 0400A0AC */  sw         $zero, 4($a1)
/* A57F8 800B4FF8 0800A0AC */  sw         $zero, 8($a1)
/* A57FC 800B4FFC 0C00A0AC */  sw         $zero, 0xc($a1)
/* A5800 800B5000 1000A0AC */  sw         $zero, 0x10($a1)
/* A5804 800B5004 1400A0AC */  sw         $zero, 0x14($a1)
/* A5808 800B5008 1800A0AC */  sw         $zero, 0x18($a1)
/* A580C 800B500C 1C00A0AC */  sw         $zero, 0x1c($a1)
/* A5810 800B5010 0100C624 */  addiu      $a2, $a2, 1
/* A5814 800B5014 1000C22C */  sltiu      $v0, $a2, 0x10
/* A5818 800B5018 F5FF4014 */  bnez       $v0, .L800B4FF0
/* A581C 800B501C 2000A524 */   addiu     $a1, $a1, 0x20
/* A5820 800B5020 1000A427 */  addiu      $a0, $sp, 0x10
/* A5824 800B5024 0F000224 */  addiu      $v0, $zero, 0xf
/* A5828 800B5028 1000A2AF */  sw         $v0, 0x10($sp)
/* A582C 800B502C 1600A0A7 */  sh         $zero, 0x16($sp)
/* A5830 800B5030 1400A0A7 */  sh         $zero, 0x14($sp)
/* A5834 800B5034 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* A5838 800B5038 B5E5020C */  jal        SpuSetCommonAttr
/* A583C 800B503C 1800A0A7 */   sh        $zero, 0x18($sp)
/* A5840 800B5040 01000424 */  addiu      $a0, $zero, 1
/* A5844 800B5044 1E80053C */  lui        $a1, %hi(D_801E07C8)
/* A5848 800B5048 C807A524 */  addiu      $a1, $a1, %lo(D_801E07C8)
/* A584C 800B504C D807068E */  lw         $a2, 0x7d8($s0)
/* A5850 800B5050 0180023C */  lui        $v0, %hi(D_800172F0)
/* A5854 800B5054 680720A2 */  sb         $zero, 0x768($s1)
/* A5858 800B5058 0200C394 */  lhu        $v1, 2($a2)
/* A585C 800B505C F0724224 */  addiu      $v0, $v0, %lo(D_800172F0)
/* A5860 800B5060 21186200 */  addu       $v1, $v1, $v0
/* A5864 800B5064 00006690 */  lbu        $a2, ($v1)
/* A5868 800B5068 68072226 */  addiu      $v0, $s1, 0x768
/* A586C 800B506C 2DDE020C */  jal        SpuInitMalloc
/* A5870 800B5070 010046A0 */   sb        $a2, 1($v0)
/* A5874 800B5074 31E1020C */  jal        SpuReserveReverbWorkArea
/* A5878 800B5078 01000424 */   addiu     $a0, $zero, 1
/* A587C 800B507C D807038E */  lw         $v1, 0x7d8($s0)
/* A5880 800B5080 00000000 */  nop
/* A5884 800B5084 02006494 */  lhu        $a0, 2($v1)
/* A5888 800B5088 21E2020C */  jal        SpuClearReverbWorkArea
/* A588C 800B508C 00000000 */   nop
/* A5890 800B5090 45DE020C */  jal        SpuSetReverb
/* A5894 800B5094 01000424 */   addiu     $a0, $zero, 1
/* A5898 800B5098 21200000 */  addu       $a0, $zero, $zero
/* A589C 800B509C 21280000 */  addu       $a1, $zero, $zero
/* A58A0 800B50A0 21300000 */  addu       $a2, $zero, $zero
/* A58A4 800B50A4 55DA020C */  jal        FUN_800b6954
/* A58A8 800B50A8 21380000 */   addu      $a3, $zero, $zero
/* A58AC 800B50AC 1E80033C */  lui        $v1, 0x801e
/* A58B0 800B50B0 01000424 */  addiu      $a0, $zero, 1
/* A58B4 800B50B4 4000BF8F */  lw         $ra, 0x40($sp)
/* A58B8 800B50B8 3C00B18F */  lw         $s1, 0x3c($sp)
/* A58BC 800B50BC 3800B08F */  lw         $s0, 0x38($sp)
/* A58C0 800B50C0 1E80023C */  lui        $v0, %hi(D_801E07A8)
/* A58C4 800B50C4 B00760A0 */  sb         $zero, 0x7b0($v1)
/* A58C8 800B50C8 A80744A0 */  sb         $a0, %lo(D_801E07A8)($v0)
/* A58CC 800B50CC 0800E003 */  jr         $ra
/* A58D0 800B50D0 4800BD27 */   addiu     $sp, $sp, 0x48

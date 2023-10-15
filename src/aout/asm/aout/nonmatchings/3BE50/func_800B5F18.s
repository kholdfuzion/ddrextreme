.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B5F18
/* A6718 800B5F18 21480000 */  addu       $t1, $zero, $zero
/* A671C 800B5F1C 1E80033C */  lui        $v1, %hi(D_801E09F8)
/* A6720 800B5F20 F8096624 */  addiu      $a2, $v1, %lo(D_801E09F8)
/* A6724 800B5F24 21408000 */  addu       $t0, $a0, $zero
/* A6728 800B5F28 FFFFA730 */  andi       $a3, $a1, 0xffff
/* A672C 800B5F2C E001C424 */  addiu      $a0, $a2, 0x1e0
/* A6730 800B5F30 2B10C400 */  sltu       $v0, $a2, $a0
/* A6734 800B5F34 0D004010 */  beqz       $v0, .L800B5F6C
/* A6738 800B5F38 21286000 */   addu      $a1, $v1, $zero
.L800B5F3C:
/* A673C 800B5F3C 0000C290 */  lbu        $v0, ($a2)
/* A6740 800B5F40 00000000 */  nop
/* A6744 800B5F44 05004010 */  beqz       $v0, .L800B5F5C
/* A6748 800B5F48 00000000 */   nop
/* A674C 800B5F4C 0C00C28C */  lw         $v0, 0xc($a2)
/* A6750 800B5F50 00000000 */  nop
/* A6754 800B5F54 32004810 */  beq        $v0, $t0, .L800B6020
/* A6758 800B5F58 00000000 */   nop
.L800B5F5C:
/* A675C 800B5F5C 1400C624 */  addiu      $a2, $a2, 0x14
/* A6760 800B5F60 2B10C400 */  sltu       $v0, $a2, $a0
/* A6764 800B5F64 F5FF4014 */  bnez       $v0, .L800B5F3C
/* A6768 800B5F68 00000000 */   nop
.L800B5F6C:
/* A676C 800B5F6C FFFF0324 */  addiu      $v1, $zero, -1
/* A6770 800B5F70 FFFF0224 */  addiu      $v0, $zero, -1
.L800B5F74:
/* A6774 800B5F74 02006214 */  bne        $v1, $v0, .L800B5F80
/* A6778 800B5F78 00000000 */   nop
/* A677C 800B5F7C FFFF0924 */  addiu      $t1, $zero, -1
.L800B5F80:
/* A6780 800B5F80 2A002105 */  bgez       $t1, .L800B602C
/* A6784 800B5F84 1800622C */   sltiu     $v0, $v1, 0x18
/* A6788 800B5F88 1E80023C */  lui        $v0, %hi(D_801E0788)
/* A678C 800B5F8C 88074424 */  addiu      $a0, $v0, %lo(D_801E0788)
/* A6790 800B5F90 02008390 */  lbu        $v1, 2($a0)
/* A6794 800B5F94 00000000 */  nop
/* A6798 800B5F98 06006014 */  bnez       $v1, .L800B5FB4
/* A679C 800B5F9C 1E80033C */   lui       $v1, 0x801e
/* A67A0 800B5FA0 1800828C */  lw         $v0, 0x18($a0)
/* A67A4 800B5FA4 00000000 */  nop
/* A67A8 800B5FA8 02004814 */  bne        $v0, $t0, .L800B5FB4
/* A67AC 800B5FAC 00000000 */   nop
/* A67B0 800B5FB0 080087A4 */  sh         $a3, 8($a0)
.L800B5FB4:
/* A67B4 800B5FB4 1E80043C */  lui        $a0, %hi(D_801E09E4)
/* A67B8 800B5FB8 E009658C */  lw         $a1, 0x9e0($v1)
/* A67BC 800B5FBC E409828C */  lw         $v0, %lo(D_801E09E4)($a0)
/* A67C0 800B5FC0 00000000 */  nop
/* A67C4 800B5FC4 1B00A210 */  beq        $a1, $v0, .L800B6034
/* A67C8 800B5FC8 21280000 */   addu      $a1, $zero, $zero
/* A67CC 800B5FCC 01000624 */  addiu      $a2, $zero, 1
/* A67D0 800B5FD0 1E80023C */  lui        $v0, %hi(D_801E0BD8)
/* A67D4 800B5FD4 D80B4424 */  addiu      $a0, $v0, %lo(D_801E0BD8)
.L800B5FD8:
/* A67D8 800B5FD8 0C00828C */  lw         $v0, 0xc($a0)
/* A67DC 800B5FDC 00000000 */  nop
/* A67E0 800B5FE0 09004814 */  bne        $v0, $t0, .L800B6008
/* A67E4 800B5FE4 21188000 */   addu      $v1, $a0, $zero
/* A67E8 800B5FE8 03006290 */  lbu        $v0, 3($v1)
/* A67EC 800B5FEC 00000000 */  nop
/* A67F0 800B5FF0 05004614 */  bne        $v0, $a2, .L800B6008
/* A67F4 800B5FF4 00000000 */   nop
/* A67F8 800B5FF8 00006290 */  lbu        $v0, ($v1)
/* A67FC 800B5FFC 00000000 */  nop
/* A6800 800B6000 2D004010 */  beqz       $v0, .L800B60B8
/* A6804 800B6004 00000000 */   nop
.L800B6008:
/* A6808 800B6008 0100A524 */  addiu      $a1, $a1, 1
/* A680C 800B600C 3000A228 */  slti       $v0, $a1, 0x30
/* A6810 800B6010 F1FF4014 */  bnez       $v0, .L800B5FD8
/* A6814 800B6014 10008424 */   addiu     $a0, $a0, 0x10
/* A6818 800B6018 0800E003 */  jr         $ra
/* A681C 800B601C FFFF0224 */   addiu     $v0, $zero, -1
.L800B6020:
/* A6820 800B6020 0300C390 */  lbu        $v1, 3($a2)
/* A6824 800B6024 DDD70208 */  j          .L800B5F74
/* A6828 800B6028 FFFF0224 */   addiu     $v0, $zero, -1
.L800B602C:
/* A682C 800B602C 03004014 */  bnez       $v0, .L800B603C
/* A6830 800B6030 80100300 */   sll       $v0, $v1, 2
.L800B6034:
/* A6834 800B6034 0800E003 */  jr         $ra
/* A6838 800B6038 FFFF0224 */   addiu     $v0, $zero, -1
.L800B603C:
/* A683C 800B603C 21104300 */  addu       $v0, $v0, $v1
/* A6840 800B6040 80100200 */  sll        $v0, $v0, 2
/* A6844 800B6044 F809A324 */  addiu      $v1, $a1, 0x9f8
/* A6848 800B6048 21204300 */  addu       $a0, $v0, $v1
/* A684C 800B604C 00008390 */  lbu        $v1, ($a0)
/* A6850 800B6050 00000000 */  nop
/* A6854 800B6054 1B006010 */  beqz       $v1, .L800B60C4
/* A6858 800B6058 04000224 */   addiu     $v0, $zero, 4
/* A685C 800B605C 19006210 */  beq        $v1, $v0, .L800B60C4
/* A6860 800B6060 02000224 */   addiu     $v0, $zero, 2
/* A6864 800B6064 18006210 */  beq        $v1, $v0, .L800B60C8
/* A6868 800B6068 FFFF0224 */   addiu     $v0, $zero, -1
/* A686C 800B606C 06008284 */  lh         $v0, 6($a0)
/* A6870 800B6070 00000000 */  nop
/* A6874 800B6074 C0110200 */  sll        $v0, $v0, 7
/* A6878 800B6078 1A004700 */  div        $zero, $v0, $a3
/* A687C 800B607C 12100000 */  mflo       $v0
/* A6880 800B6080 0200E014 */  bnez       $a3, .L800B608C
/* A6884 800B6084 00000000 */   nop
/* A6888 800B6088 CD010000 */  break      0, 7
.L800B608C:
/* A688C 800B608C 05004010 */   beqz      $v0, .L800B60A4
/* A6890 800B6090 01000324 */   addiu     $v1, $zero, 1
/* A6894 800B6094 0200E014 */  bnez       $a3, .L800B60A0
/* A6898 800B6098 00000000 */   nop
/* A689C 800B609C CD010000 */  break      0, 7
.L800B60A0:
/* A68A0 800B60A0 21184000 */   addu      $v1, $v0, $zero
.L800B60A4:
/* A68A4 800B60A4 21100000 */  addu       $v0, $zero, $zero
/* A68A8 800B60A8 0A0083A4 */  sh         $v1, 0xa($a0)
/* A68AC 800B60AC 04000324 */  addiu      $v1, $zero, 4
/* A68B0 800B60B0 0800E003 */  jr         $ra
/* A68B4 800B60B4 000083A0 */   sb        $v1, ($a0)
.L800B60B8:
/* A68B8 800B60B8 0A0087A4 */  sh         $a3, 0xa($a0)
/* A68BC 800B60BC 0800E003 */  jr         $ra
/* A68C0 800B60C0 21100000 */   addu      $v0, $zero, $zero
.L800B60C4:
/* A68C4 800B60C4 FFFF0224 */  addiu      $v0, $zero, -1
.L800B60C8:
/* A68C8 800B60C8 0800E003 */  jr         $ra
/* A68CC 800B60CC 00000000 */   nop

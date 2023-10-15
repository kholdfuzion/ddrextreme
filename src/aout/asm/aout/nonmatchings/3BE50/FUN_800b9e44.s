.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b9e44
/* AA644 800B9E44 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* AA648 800B9E48 3C00B1AF */  sw         $s1, 0x3c($sp)
/* AA64C 800B9E4C 21880000 */  addu       $s1, $zero, $zero
/* AA650 800B9E50 4000B2AF */  sw         $s2, 0x40($sp)
/* AA654 800B9E54 01001224 */  addiu      $s2, $zero, 1
/* AA658 800B9E58 1000A427 */  addiu      $a0, $sp, 0x10
/* AA65C 800B9E5C 4400BFAF */  sw         $ra, 0x44($sp)
/* AA660 800B9E60 8CF0020C */  jal        FUN_800bc230
/* AA664 800B9E64 3800B0AF */   sw        $s0, 0x38($sp)
/* AA668 800B9E68 2400A38F */  lw         $v1, 0x24($sp)
/* AA66C 800B9E6C 00000000 */  nop
/* AA670 800B9E70 6C076324 */  addiu      $v1, $v1, 0x76c
/* AA674 800B9E74 D0076228 */  slti       $v0, $v1, 0x7d0
/* AA678 800B9E78 12004014 */  bnez       $v0, .L800B9EC4
/* AA67C 800B9E7C FFFF1024 */   addiu     $s0, $zero, -1
/* AA680 800B9E80 00240300 */  sll        $a0, $v1, 0x10
/* AA684 800B9E84 2000A587 */  lh         $a1, 0x20($sp)
/* AA688 800B9E88 1C00A687 */  lh         $a2, 0x1c($sp)
/* AA68C 800B9E8C 44B2000C */  jal        FUN_8002c910
/* AA690 800B9E90 03240400 */   sra       $a0, $a0, 0x10
/* AA694 800B9E94 40180200 */  sll        $v1, $v0, 1
/* AA698 800B9E98 21186200 */  addu       $v1, $v1, $v0
/* AA69C 800B9E9C 00210300 */  sll        $a0, $v1, 4
/* AA6A0 800B9EA0 23208300 */  subu       $a0, $a0, $v1
/* AA6A4 800B9EA4 40210400 */  sll        $a0, $a0, 5
/* AA6A8 800B9EA8 1800A58F */  lw         $a1, 0x18($sp)
/* AA6AC 800B9EAC 1400A38F */  lw         $v1, 0x14($sp)
/* AA6B0 800B9EB0 00110500 */  sll        $v0, $a1, 4
/* AA6B4 800B9EB4 23104500 */  subu       $v0, $v0, $a1
/* AA6B8 800B9EB8 80100200 */  sll        $v0, $v0, 2
/* AA6BC 800B9EBC 21208200 */  addu       $a0, $a0, $v0
/* AA6C0 800B9EC0 21808300 */  addu       $s0, $a0, $v1
.L800B9EC4:
/* AA6C4 800B9EC4 21500002 */  addu       $t2, $s0, $zero
/* AA6C8 800B9EC8 0E004005 */  bltz       $t2, .L800B9F04
/* AA6CC 800B9ECC 1580033C */   lui       $v1, %hi(D_8014BA9C)
/* AA6D0 800B9ED0 9CBA6224 */  addiu      $v0, $v1, %lo(D_8014BA9C)
/* AA6D4 800B9ED4 0800448C */  lw         $a0, 8($v0)
/* AA6D8 800B9ED8 21586000 */  addu       $t3, $v1, $zero
/* AA6DC 800B9EDC 23184401 */  subu       $v1, $t2, $a0
/* AA6E0 800B9EE0 E010622C */  sltiu      $v0, $v1, 0x10e0
/* AA6E4 800B9EE4 03004010 */  beqz       $v0, .L800B9EF4
/* AA6E8 800B9EE8 60276228 */   slti      $v0, $v1, 0x2760
/* AA6EC 800B9EEC C3E70208 */  j          .L800B9F0C
/* AA6F0 800B9EF0 01001124 */   addiu     $s1, $zero, 1
.L800B9EF4:
/* AA6F4 800B9EF4 05004014 */  bnez       $v0, .L800B9F0C
/* AA6F8 800B9EF8 00000000 */   nop
/* AA6FC 800B9EFC C3E70208 */  j          .L800B9F0C
/* AA700 800B9F00 02001224 */   addiu     $s2, $zero, 2
.L800B9F04:
/* AA704 800B9F04 21500000 */  addu       $t2, $zero, $zero
/* AA708 800B9F08 15800B3C */  lui        $t3, %hi(D_8014BA9C)
.L800B9F0C:
/* AA70C 800B9F0C 9CBA658D */  lw         $a1, %lo(D_8014BA9C)($t3)
/* AA710 800B9F10 FFFF0424 */  addiu      $a0, $zero, -1
/* AA714 800B9F14 21180000 */  addu       $v1, $zero, $zero
/* AA718 800B9F18 01000624 */  addiu      $a2, $zero, 1
/* AA71C 800B9F1C 04106600 */  sllv       $v0, $a2, $v1
.L800B9F20:
/* AA720 800B9F20 2410A200 */  and        $v0, $a1, $v0
/* AA724 800B9F24 02004010 */  beqz       $v0, .L800B9F30
/* AA728 800B9F28 00000000 */   nop
/* AA72C 800B9F2C 21206000 */  addu       $a0, $v1, $zero
.L800B9F30:
/* AA730 800B9F30 01006324 */  addiu      $v1, $v1, 1
/* AA734 800B9F34 1E006228 */  slti       $v0, $v1, 0x1e
/* AA738 800B9F38 F9FF4014 */  bnez       $v0, .L800B9F20
/* AA73C 800B9F3C 04106600 */   sllv      $v0, $a2, $v1
/* AA740 800B9F40 FFFF0724 */  addiu      $a3, $zero, -1
/* AA744 800B9F44 1E000324 */  addiu      $v1, $zero, 0x1e
/* AA748 800B9F48 01008224 */  addiu      $v0, $a0, 1
/* AA74C 800B9F4C 19004314 */  bne        $v0, $v1, .L800B9FB4
/* AA750 800B9F50 21480000 */   addu      $t1, $zero, $zero
/* AA754 800B9F54 FFFF0524 */  addiu      $a1, $zero, -1
/* AA758 800B9F58 9CBA648D */  lw         $a0, -0x4564($t3)
/* AA75C 800B9F5C 00000000 */  nop
/* AA760 800B9F60 01008230 */  andi       $v0, $a0, 1
/* AA764 800B9F64 03004014 */  bnez       $v0, .L800B9F74
/* AA768 800B9F68 21180000 */   addu      $v1, $zero, $zero
/* AA76C 800B9F6C E7E70208 */  j          .L800B9F9C
/* AA770 800B9F70 21280000 */   addu      $a1, $zero, $zero
.L800B9F74:
/* AA774 800B9F74 01006324 */  addiu      $v1, $v1, 1
.L800B9F78:
/* AA778 800B9F78 1E006228 */  slti       $v0, $v1, 0x1e
/* AA77C 800B9F7C 07004010 */  beqz       $v0, .L800B9F9C
/* AA780 800B9F80 01000224 */   addiu     $v0, $zero, 1
/* AA784 800B9F84 04106200 */  sllv       $v0, $v0, $v1
/* AA788 800B9F88 24108200 */  and        $v0, $a0, $v0
/* AA78C 800B9F8C FAFF4014 */  bnez       $v0, .L800B9F78
/* AA790 800B9F90 01006324 */   addiu     $v1, $v1, 1
/* AA794 800B9F94 FFFF6324 */  addiu      $v1, $v1, -1
/* AA798 800B9F98 21286000 */  addu       $a1, $v1, $zero
.L800B9F9C:
/* AA79C 800B9F9C FFFF0224 */  addiu      $v0, $zero, -1
/* AA7A0 800B9FA0 1300A210 */  beq        $a1, $v0, .L800B9FF0
/* AA7A4 800B9FA4 21880000 */   addu      $s1, $zero, $zero
/* AA7A8 800B9FA8 2138A000 */  addu       $a3, $a1, $zero
/* AA7AC 800B9FAC FCE70208 */  j          .L800B9FF0
/* AA7B0 800B9FB0 E8030924 */   addiu     $t1, $zero, 0x3e8
.L800B9FB4:
/* AA7B4 800B9FB4 21109100 */  addu       $v0, $a0, $s1
/* AA7B8 800B9FB8 01004724 */  addiu      $a3, $v0, 1
/* AA7BC 800B9FBC 1E00E328 */  slti       $v1, $a3, 0x1e
/* AA7C0 800B9FC0 03006014 */  bnez       $v1, .L800B9FD0
/* AA7C4 800B9FC4 1E00E22C */   sltiu     $v0, $a3, 0x1e
/* AA7C8 800B9FC8 1D000724 */  addiu      $a3, $zero, 0x1d
/* AA7CC 800B9FCC 1E00E22C */  sltiu      $v0, $a3, 0x1e
.L800B9FD0:
/* AA7D0 800B9FD0 02004014 */  bnez       $v0, .L800B9FDC
/* AA7D4 800B9FD4 2120E000 */   addu      $a0, $a3, $zero
/* AA7D8 800B9FD8 21200000 */  addu       $a0, $zero, $zero
.L800B9FDC:
/* AA7DC 800B9FDC 0180033C */  lui        $v1, %hi(D_800173E0)
/* AA7E0 800B9FE0 E0736324 */  addiu      $v1, $v1, %lo(D_800173E0)
/* AA7E4 800B9FE4 80100400 */  sll        $v0, $a0, 2
/* AA7E8 800B9FE8 21104300 */  addu       $v0, $v0, $v1
/* AA7EC 800B9FEC 0000498C */  lw         $t1, ($v0)
.L800B9FF0:
/* AA7F0 800B9FF0 02000224 */  addiu      $v0, $zero, 2
/* AA7F4 800B9FF4 05004216 */  bne        $s2, $v0, .L800BA00C
/* AA7F8 800B9FF8 FFFF0224 */   addiu     $v0, $zero, -1
/* AA7FC 800B9FFC C2170900 */  srl        $v0, $t1, 0x1f
/* AA800 800BA000 21102201 */  addu       $v0, $t1, $v0
/* AA804 800BA004 43480200 */  sra        $t1, $v0, 1
/* AA808 800BA008 FFFF0224 */  addiu      $v0, $zero, -1
.L800BA00C:
/* AA80C 800BA00C 2800E210 */  beq        $a3, $v0, .L800BA0B0
/* AA810 800BA010 1E00E228 */   slti      $v0, $a3, 0x1e
/* AA814 800BA014 26004010 */  beqz       $v0, .L800BA0B0
/* AA818 800BA018 FFFF0824 */   addiu     $t0, $zero, -1
/* AA81C 800BA01C 21300000 */  addu       $a2, $zero, $zero
/* AA820 800BA020 9CBA6525 */  addiu      $a1, $t3, -0x4564
/* AA824 800BA024 01000224 */  addiu      $v0, $zero, 1
/* AA828 800BA028 0410E200 */  sllv       $v0, $v0, $a3
/* AA82C 800BA02C 0800AAAC */  sw         $t2, 8($a1)
/* AA830 800BA030 9CBA648D */  lw         $a0, -0x4564($t3)
/* AA834 800BA034 0400A38C */  lw         $v1, 4($a1)
/* AA838 800BA038 25208200 */  or         $a0, $a0, $v0
/* AA83C 800BA03C 21187100 */  addu       $v1, $v1, $s1
/* AA840 800BA040 01008230 */  andi       $v0, $a0, 1
/* AA844 800BA044 9CBA64AD */  sw         $a0, -0x4564($t3)
/* AA848 800BA048 03004014 */  bnez       $v0, .L800BA058
/* AA84C 800BA04C 0400A3AC */   sw        $v1, 4($a1)
/* AA850 800BA050 20E80208 */  j          .L800BA080
/* AA854 800BA054 21400000 */   addu      $t0, $zero, $zero
.L800BA058:
/* AA858 800BA058 0100C624 */  addiu      $a2, $a2, 1
.L800BA05C:
/* AA85C 800BA05C 1E00C228 */  slti       $v0, $a2, 0x1e
/* AA860 800BA060 07004010 */  beqz       $v0, .L800BA080
/* AA864 800BA064 01000224 */   addiu     $v0, $zero, 1
/* AA868 800BA068 0410C200 */  sllv       $v0, $v0, $a2
/* AA86C 800BA06C 24108200 */  and        $v0, $a0, $v0
/* AA870 800BA070 FAFF4014 */  bnez       $v0, .L800BA05C
/* AA874 800BA074 0100C624 */   addiu     $a2, $a2, 1
/* AA878 800BA078 FFFFC624 */  addiu      $a2, $a2, -1
/* AA87C 800BA07C 2140C000 */  addu       $t0, $a2, $zero
.L800BA080:
/* AA880 800BA080 FFFF0224 */  addiu      $v0, $zero, -1
/* AA884 800BA084 0A000215 */  bne        $t0, $v0, .L800BA0B0
/* AA888 800BA088 9CBA6325 */   addiu     $v1, $t3, -0x4564
/* AA88C 800BA08C 0400628C */  lw         $v0, 4($v1)
/* AA890 800BA090 00000000 */  nop
/* AA894 800BA094 0700422C */  sltiu      $v0, $v0, 7
/* AA898 800BA098 05004014 */  bnez       $v0, .L800BA0B0
/* AA89C 800BA09C 21480000 */   addu      $t1, $zero, $zero
/* AA8A0 800BA0A0 9CBA628D */  lw         $v0, -0x4564($t3)
/* AA8A4 800BA0A4 0040033C */  lui        $v1, 0x4000
/* AA8A8 800BA0A8 25104300 */  or         $v0, $v0, $v1
/* AA8AC 800BA0AC 9CBA62AD */  sw         $v0, -0x4564($t3)
.L800BA0B0:
/* AA8B0 800BA0B0 4400BF8F */  lw         $ra, 0x44($sp)
/* AA8B4 800BA0B4 4000B28F */  lw         $s2, 0x40($sp)
/* AA8B8 800BA0B8 3C00B18F */  lw         $s1, 0x3c($sp)
/* AA8BC 800BA0BC 3800B08F */  lw         $s0, 0x38($sp)
/* AA8C0 800BA0C0 9CBA6225 */  addiu      $v0, $t3, -0x4564
/* AA8C4 800BA0C4 0C0049AC */  sw         $t1, 0xc($v0)
/* AA8C8 800BA0C8 0800E003 */  jr         $ra
/* AA8CC 800BA0CC 4800BD27 */   addiu     $sp, $sp, 0x48

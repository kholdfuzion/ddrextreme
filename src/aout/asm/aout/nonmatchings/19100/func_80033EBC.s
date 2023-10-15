.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80033EBC
/* 246BC 80033EBC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 246C0 80033EC0 5000BFAF */  sw         $ra, 0x50($sp)
/* 246C4 80033EC4 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 246C8 80033EC8 7DC4000C */  jal        get_astruct_800311f4
/* 246CC 80033ECC 4800B0AF */   sw        $s0, 0x48($sp)
/* 246D0 80033ED0 00084384 */  lh         $v1, 0x800($v0)
/* 246D4 80033ED4 01000224 */  addiu      $v0, $zero, 1
/* 246D8 80033ED8 05006210 */  beq        $v1, $v0, .L80033EF0
/* 246DC 80033EDC 00000000 */   nop
/* 246E0 80033EE0 8CF0020C */  jal        FUN_800bc230
/* 246E4 80033EE4 2000A427 */   addiu     $a0, $sp, 0x20
/* 246E8 80033EE8 BECF0008 */  j          .L80033EF8
/* 246EC 80033EEC 00000000 */   nop
.L80033EF0:
/* 246F0 80033EF0 5EB1000C */  jal        FUN_8002c578
/* 246F4 80033EF4 2000A427 */   addiu     $a0, $sp, 0x20
.L80033EF8:
/* 246F8 80033EF8 7CAA000C */  jal        vsync_8002a9f0
/* 246FC 80033EFC 00101124 */   addiu     $s1, $zero, 0x1000
/* 24700 80033F00 21200000 */  addu       $a0, $zero, $zero
/* 24704 80033F04 9CFF0524 */  addiu      $a1, $zero, -0x64
/* 24708 80033F08 22000624 */  addiu      $a2, $zero, 0x22
/* 2470C 80033F0C 00100724 */  addiu      $a3, $zero, 0x1000
/* 24710 80033F10 0180023C */  lui        $v0, %hi(D_800115AC)
/* 24714 80033F14 AC154224 */  addiu      $v0, $v0, %lo(D_800115AC)
/* 24718 80033F18 1000B1AF */  sw         $s1, 0x10($sp)
/* 2471C 80033F1C 290A010C */  jal        PrintText_800428a4
/* 24720 80033F20 1400A2AF */   sw        $v0, 0x14($sp)
/* 24724 80033F24 21200000 */  addu       $a0, $zero, $zero
/* 24728 80033F28 D4FF0524 */  addiu      $a1, $zero, -0x2c
/* 2472C 80033F2C 22000624 */  addiu      $a2, $zero, 0x22
/* 24730 80033F30 00100724 */  addiu      $a3, $zero, 0x1000
/* 24734 80033F34 0180103C */  lui        $s0, %hi(D_800115BC)
/* 24738 80033F38 2800A28F */  lw         $v0, 0x28($sp)
/* 2473C 80033F3C BC151026 */  addiu      $s0, $s0, %lo(D_800115BC)
/* 24740 80033F40 1000B1AF */  sw         $s1, 0x10($sp)
/* 24744 80033F44 1400B0AF */  sw         $s0, 0x14($sp)
/* 24748 80033F48 290A010C */  jal        PrintText_800428a4
/* 2474C 80033F4C 1800A2AF */   sw        $v0, 0x18($sp)
/* 24750 80033F50 21200000 */  addu       $a0, $zero, $zero
/* 24754 80033F54 ECFF0524 */  addiu      $a1, $zero, -0x14
/* 24758 80033F58 22000624 */  addiu      $a2, $zero, 0x22
/* 2475C 80033F5C 2400A28F */  lw         $v0, 0x24($sp)
/* 24760 80033F60 00100724 */  addiu      $a3, $zero, 0x1000
/* 24764 80033F64 1000B1AF */  sw         $s1, 0x10($sp)
/* 24768 80033F68 1400B0AF */  sw         $s0, 0x14($sp)
/* 2476C 80033F6C 290A010C */  jal        PrintText_800428a4
/* 24770 80033F70 1800A2AF */   sw        $v0, 0x18($sp)
/* 24774 80033F74 21200000 */  addu       $a0, $zero, $zero
/* 24778 80033F78 04000524 */  addiu      $a1, $zero, 4
/* 2477C 80033F7C 22000624 */  addiu      $a2, $zero, 0x22
/* 24780 80033F80 2000A28F */  lw         $v0, 0x20($sp)
/* 24784 80033F84 00100724 */  addiu      $a3, $zero, 0x1000
/* 24788 80033F88 1000B1AF */  sw         $s1, 0x10($sp)
/* 2478C 80033F8C 1400B0AF */  sw         $s0, 0x14($sp)
/* 24790 80033F90 290A010C */  jal        PrintText_800428a4
/* 24794 80033F94 1800A2AF */   sw        $v0, 0x18($sp)
/* 24798 80033F98 7CAA000C */  jal        vsync_8002a9f0
/* 2479C 80033F9C 00000000 */   nop
/* 247A0 80033FA0 5000BF8F */  lw         $ra, 0x50($sp)
/* 247A4 80033FA4 4C00B18F */  lw         $s1, 0x4c($sp)
/* 247A8 80033FA8 4800B08F */  lw         $s0, 0x48($sp)
/* 247AC 80033FAC 0800E003 */  jr         $ra
/* 247B0 80033FB0 5800BD27 */   addiu     $sp, $sp, 0x58

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003a5f4
/* 2ADF4 8003A5F4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2ADF8 8003A5F8 3400BFAF */  sw         $ra, 0x34($sp)
/* 2ADFC 8003A5FC 3000B2AF */  sw         $s2, 0x30($sp)
/* 2AE00 8003A600 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 2AE04 8003A604 7DC4000C */  jal        get_astruct_800311f4
/* 2AE08 8003A608 2800B0AF */   sw        $s0, 0x28($sp)
/* 2AE0C 8003A60C 21200000 */  addu       $a0, $zero, $zero
/* 2AE10 8003A610 C8FF0524 */  addiu      $a1, $zero, -0x38
/* 2AE14 8003A614 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2AE18 8003A618 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AE1C 8003A61C 00101124 */  addiu      $s1, $zero, 0x1000
/* 2AE20 8003A620 0180033C */  lui        $v1, %hi(D_8001287C)
/* 2AE24 8003A624 7C286324 */  addiu      $v1, $v1, %lo(D_8001287C)
/* 2AE28 8003A628 21904000 */  addu       $s2, $v0, $zero
/* 2AE2C 8003A62C 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AE30 8003A630 290A010C */  jal        PrintText_800428a4
/* 2AE34 8003A634 1400A3AF */   sw        $v1, 0x14($sp)
/* 2AE38 8003A638 21200000 */  addu       $a0, $zero, $zero
/* 2AE3C 8003A63C 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2AE40 8003A640 B8FF0624 */  addiu      $a2, $zero, -0x48
/* 2AE44 8003A644 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AE48 8003A648 0180023C */  lui        $v0, %hi(D_8001288C)
/* 2AE4C 8003A64C 8C284224 */  addiu      $v0, $v0, %lo(D_8001288C)
/* 2AE50 8003A650 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AE54 8003A654 290A010C */  jal        PrintText_800428a4
/* 2AE58 8003A658 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AE5C 8003A65C 21200000 */  addu       $a0, $zero, $zero
/* 2AE60 8003A660 40000524 */  addiu      $a1, $zero, 0x40
/* 2AE64 8003A664 B8FF0624 */  addiu      $a2, $zero, -0x48
/* 2AE68 8003A668 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AE6C 8003A66C 0180023C */  lui        $v0, %hi(D_800128A0)
/* 2AE70 8003A670 A0284224 */  addiu      $v0, $v0, %lo(D_800128A0)
/* 2AE74 8003A674 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AE78 8003A678 290A010C */  jal        PrintText_800428a4
/* 2AE7C 8003A67C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AE80 8003A680 21200000 */  addu       $a0, $zero, $zero
/* 2AE84 8003A684 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2AE88 8003A688 C2FF0624 */  addiu      $a2, $zero, -0x3e
/* 2AE8C 8003A68C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AE90 8003A690 0180023C */  lui        $v0, %hi(D_800128A4)
/* 2AE94 8003A694 A4284224 */  addiu      $v0, $v0, %lo(D_800128A4)
/* 2AE98 8003A698 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AE9C 8003A69C 290A010C */  jal        PrintText_800428a4
/* 2AEA0 8003A6A0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AEA4 8003A6A4 21200000 */  addu       $a0, $zero, $zero
/* 2AEA8 8003A6A8 20000524 */  addiu      $a1, $zero, 0x20
/* 2AEAC 8003A6AC C2FF0624 */  addiu      $a2, $zero, -0x3e
/* 2AEB0 8003A6B0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AEB4 8003A6B4 0180103C */  lui        $s0, %hi(D_800128B4)
/* 2AEB8 8003A6B8 B4281026 */  addiu      $s0, $s0, %lo(D_800128B4)
/* 2AEBC 8003A6BC 0180023C */  lui        $v0, %hi(D_800128B8)
/* 2AEC0 8003A6C0 B8284224 */  addiu      $v0, $v0, %lo(D_800128B8)
/* 2AEC4 8003A6C4 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AEC8 8003A6C8 1400B0AF */  sw         $s0, 0x14($sp)
/* 2AECC 8003A6CC 290A010C */  jal        PrintText_800428a4
/* 2AED0 8003A6D0 1800A2AF */   sw        $v0, 0x18($sp)
/* 2AED4 8003A6D4 21200000 */  addu       $a0, $zero, $zero
/* 2AED8 8003A6D8 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2AEDC 8003A6DC CCFF0624 */  addiu      $a2, $zero, -0x34
/* 2AEE0 8003A6E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AEE4 8003A6E4 0180023C */  lui        $v0, %hi(D_800128C0)
/* 2AEE8 8003A6E8 C0284224 */  addiu      $v0, $v0, %lo(D_800128C0)
/* 2AEEC 8003A6EC 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AEF0 8003A6F0 290A010C */  jal        PrintText_800428a4
/* 2AEF4 8003A6F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AEF8 8003A6F8 21200000 */  addu       $a0, $zero, $zero
/* 2AEFC 8003A6FC 20000524 */  addiu      $a1, $zero, 0x20
/* 2AF00 8003A700 CCFF0624 */  addiu      $a2, $zero, -0x34
/* 2AF04 8003A704 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AF08 8003A708 0180023C */  lui        $v0, %hi(D_800128D8)
/* 2AF0C 8003A70C D828488C */  lw         $t0, %lo(D_800128D8)($v0)
/* 2AF10 8003A710 D8284324 */  addiu      $v1, $v0, 0x28d8
/* 2AF14 8003A714 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AF18 8003A718 1400B0AF */  sw         $s0, 0x14($sp)
/* 2AF1C 8003A71C 04006994 */  lhu        $t1, 4($v1)
/* 2AF20 8003A720 06006A90 */  lbu        $t2, 6($v1)
/* 2AF24 8003A724 2000A227 */  addiu      $v0, $sp, 0x20
/* 2AF28 8003A728 1800A2AF */  sw         $v0, 0x18($sp)
/* 2AF2C 8003A72C 2000A8AF */  sw         $t0, 0x20($sp)
/* 2AF30 8003A730 2400A9A7 */  sh         $t1, 0x24($sp)
/* 2AF34 8003A734 290A010C */  jal        PrintText_800428a4
/* 2AF38 8003A738 2600AAA3 */   sb        $t2, 0x26($sp)
/* 2AF3C 8003A73C 21200000 */  addu       $a0, $zero, $zero
/* 2AF40 8003A740 70FF0524 */  addiu      $a1, $zero, -0x90
/* 2AF44 8003A744 D6FF0624 */  addiu      $a2, $zero, -0x2a
/* 2AF48 8003A748 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AF4C 8003A74C 0180023C */  lui        $v0, %hi(D_800128E0)
/* 2AF50 8003A750 E0284224 */  addiu      $v0, $v0, %lo(D_800128E0)
/* 2AF54 8003A754 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AF58 8003A758 290A010C */  jal        PrintText_800428a4
/* 2AF5C 8003A75C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AF60 8003A760 21200000 */  addu       $a0, $zero, $zero
/* 2AF64 8003A764 50000524 */  addiu      $a1, $zero, 0x50
/* 2AF68 8003A768 D6FF0624 */  addiu      $a2, $zero, -0x2a
/* 2AF6C 8003A76C 0180023C */  lui        $v0, %hi(D_800128E8)
/* 2AF70 8003A770 E8284224 */  addiu      $v0, $v0, %lo(D_800128E8)
/* 2AF74 8003A774 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AF78 8003A778 1400A2AF */  sw         $v0, 0x14($sp)
/* 2AF7C 8003A77C 12004386 */  lh         $v1, 0x12($s2)
/* 2AF80 8003A780 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AF84 8003A784 290A010C */  jal        PrintText_800428a4
/* 2AF88 8003A788 1800A3AF */   sw        $v1, 0x18($sp)
/* 2AF8C 8003A78C 21200000 */  addu       $a0, $zero, $zero
/* 2AF90 8003A790 98FF0524 */  addiu      $a1, $zero, -0x68
/* 2AF94 8003A794 5E000624 */  addiu      $a2, $zero, 0x5e
/* 2AF98 8003A798 00100724 */  addiu      $a3, $zero, 0x1000
/* 2AF9C 8003A79C 0180023C */  lui        $v0, %hi(D_800128EC)
/* 2AFA0 8003A7A0 EC284224 */  addiu      $v0, $v0, %lo(D_800128EC)
/* 2AFA4 8003A7A4 1000B1AF */  sw         $s1, 0x10($sp)
/* 2AFA8 8003A7A8 290A010C */  jal        PrintText_800428a4
/* 2AFAC 8003A7AC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2AFB0 8003A7B0 7CAA000C */  jal        vsync_8002a9f0
/* 2AFB4 8003A7B4 00000000 */   nop
/* 2AFB8 8003A7B8 3400BF8F */  lw         $ra, 0x34($sp)
/* 2AFBC 8003A7BC 3000B28F */  lw         $s2, 0x30($sp)
/* 2AFC0 8003A7C0 2C00B18F */  lw         $s1, 0x2c($sp)
/* 2AFC4 8003A7C4 2800B08F */  lw         $s0, 0x28($sp)
/* 2AFC8 8003A7C8 0800E003 */  jr         $ra
/* 2AFCC 8003A7CC 3800BD27 */   addiu     $sp, $sp, 0x38

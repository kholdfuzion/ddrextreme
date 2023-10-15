.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003ed64
/* 2F564 8003ED64 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 2F568 8003ED68 3800B6AF */  sw         $s6, 0x38($sp)
/* 2F56C 8003ED6C 21B0A000 */  addu       $s6, $a1, $zero
/* 2F570 8003ED70 4000BFAF */  sw         $ra, 0x40($sp)
/* 2F574 8003ED74 3C00B7AF */  sw         $s7, 0x3c($sp)
/* 2F578 8003ED78 3400B5AF */  sw         $s5, 0x34($sp)
/* 2F57C 8003ED7C 3000B4AF */  sw         $s4, 0x30($sp)
/* 2F580 8003ED80 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 2F584 8003ED84 2800B2AF */  sw         $s2, 0x28($sp)
/* 2F588 8003ED88 2400B1AF */  sw         $s1, 0x24($sp)
/* 2F58C 8003ED8C 7DC4000C */  jal        get_astruct_800311f4
/* 2F590 8003ED90 2000B0AF */   sw        $s0, 0x20($sp)
/* 2F594 8003ED94 21200000 */  addu       $a0, $zero, $zero
/* 2F598 8003ED98 BCFF0524 */  addiu      $a1, $zero, -0x44
/* 2F59C 8003ED9C A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2F5A0 8003EDA0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F5A4 8003EDA4 00101024 */  addiu      $s0, $zero, 0x1000
/* 2F5A8 8003EDA8 0180033C */  lui        $v1, %hi(D_800131DC)
/* 2F5AC 8003EDAC DC316324 */  addiu      $v1, $v1, %lo(D_800131DC)
/* 2F5B0 8003EDB0 21984000 */  addu       $s3, $v0, $zero
/* 2F5B4 8003EDB4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F5B8 8003EDB8 290A010C */  jal        PrintText_800428a4
/* 2F5BC 8003EDBC 1400A3AF */   sw        $v1, 0x14($sp)
/* 2F5C0 8003EDC0 08006386 */  lh         $v1, 8($s3)
/* 2F5C4 8003EDC4 02000224 */  addiu      $v0, $zero, 2
/* 2F5C8 8003EDC8 08006210 */  beq        $v1, $v0, .L8003EDEC
/* 2F5CC 8003EDCC 03006228 */   slti      $v0, $v1, 3
/* 2F5D0 8003EDD0 89004014 */  bnez       $v0, .L8003EFF8
/* 2F5D4 8003EDD4 0180173C */   lui       $s7, 0x8001
/* 2F5D8 8003EDD8 03000224 */  addiu      $v0, $zero, 3
/* 2F5DC 8003EDDC 4C006210 */  beq        $v1, $v0, .L8003EF10
/* 2F5E0 8003EDE0 21200000 */   addu      $a0, $zero, $zero
/* 2F5E4 8003EDE4 00FC0008 */  j          .L8003F000
/* 2F5E8 8003EDE8 98FF0524 */   addiu     $a1, $zero, -0x68
.L8003EDEC:
/* 2F5EC 8003EDEC 04000424 */  addiu      $a0, $zero, 4
/* 2F5F0 8003EDF0 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F5F4 8003EDF4 30000624 */  addiu      $a2, $zero, 0x30
/* 2F5F8 8003EDF8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F5FC 8003EDFC 0180023C */  lui        $v0, %hi(D_800131F0)
/* 2F600 8003EE00 F0314224 */  addiu      $v0, $v0, %lo(D_800131F0)
/* 2F604 8003EE04 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F608 8003EE08 290A010C */  jal        PrintText_800428a4
/* 2F60C 8003EE0C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F610 8003EE10 7470000C */  jal        getcoinslot1_8001c1d0
/* 2F614 8003EE14 00000000 */   nop
/* 2F618 8003EE18 03004010 */  beqz       $v0, .L8003EE28
/* 2F61C 8003EE1C 0180023C */   lui       $v0, %hi(D_8001320C)
/* 2F620 8003EE20 8CFB0008 */  j          .L8003EE30
/* 2F624 8003EE24 0C324224 */   addiu     $v0, $v0, %lo(D_8001320C)
.L8003EE28:
/* 2F628 8003EE28 0180023C */  lui        $v0, %hi(D_80013224)
/* 2F62C 8003EE2C 24324224 */  addiu      $v0, $v0, %lo(D_80013224)
.L8003EE30:
/* 2F630 8003EE30 04000424 */  addiu      $a0, $zero, 4
/* 2F634 8003EE34 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F638 8003EE38 38000624 */  addiu      $a2, $zero, 0x38
/* 2F63C 8003EE3C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F640 8003EE40 00101024 */  addiu      $s0, $zero, 0x1000
/* 2F644 8003EE44 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F648 8003EE48 290A010C */  jal        PrintText_800428a4
/* 2F64C 8003EE4C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F650 8003EE50 04000424 */  addiu      $a0, $zero, 4
/* 2F654 8003EE54 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F658 8003EE58 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F65C 8003EE5C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F660 8003EE60 0180023C */  lui        $v0, %hi(D_8001323C)
/* 2F664 8003EE64 3C324224 */  addiu      $v0, $v0, %lo(D_8001323C)
/* 2F668 8003EE68 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F66C 8003EE6C 290A010C */  jal        PrintText_800428a4
/* 2F670 8003EE70 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F674 8003EE74 18006286 */  lh         $v0, 0x18($s3)
/* 2F678 8003EE78 00000000 */  nop
/* 2F67C 8003EE7C 11004014 */  bnez       $v0, .L8003EEC4
/* 2F680 8003EE80 21200000 */   addu      $a0, $zero, $zero
/* 2F684 8003EE84 02000424 */  addiu      $a0, $zero, 2
/* 2F688 8003EE88 34000524 */  addiu      $a1, $zero, 0x34
/* 2F68C 8003EE8C 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F690 8003EE90 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F694 8003EE94 0180023C */  lui        $v0, %hi(D_80013254)
/* 2F698 8003EE98 54324224 */  addiu      $v0, $v0, %lo(D_80013254)
/* 2F69C 8003EE9C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F6A0 8003EEA0 290A010C */  jal        PrintText_800428a4
/* 2F6A4 8003EEA4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F6A8 8003EEA8 21200000 */  addu       $a0, $zero, $zero
/* 2F6AC 8003EEAC 4C000524 */  addiu      $a1, $zero, 0x4c
/* 2F6B0 8003EEB0 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F6B4 8003EEB4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F6B8 8003EEB8 0180023C */  lui        $v0, %hi(D_80013258)
/* 2F6BC 8003EEBC BFFB0008 */  j          .L8003EEFC
/* 2F6C0 8003EEC0 58324224 */   addiu     $v0, $v0, %lo(D_80013258)
.L8003EEC4:
/* 2F6C4 8003EEC4 34000524 */  addiu      $a1, $zero, 0x34
/* 2F6C8 8003EEC8 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F6CC 8003EECC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F6D0 8003EED0 0180023C */  lui        $v0, %hi(D_8001325C)
/* 2F6D4 8003EED4 5C324224 */  addiu      $v0, $v0, %lo(D_8001325C)
/* 2F6D8 8003EED8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F6DC 8003EEDC 290A010C */  jal        PrintText_800428a4
/* 2F6E0 8003EEE0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F6E4 8003EEE4 02000424 */  addiu      $a0, $zero, 2
/* 2F6E8 8003EEE8 54000524 */  addiu      $a1, $zero, 0x54
/* 2F6EC 8003EEEC 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F6F0 8003EEF0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F6F4 8003EEF4 0180023C */  lui        $v0, %hi(D_80013264)
/* 2F6F8 8003EEF8 64324224 */  addiu      $v0, $v0, %lo(D_80013264)
.L8003EEFC:
/* 2F6FC 8003EEFC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F700 8003EF00 290A010C */  jal        PrintText_800428a4
/* 2F704 8003EF04 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F708 8003EF08 FEFB0008 */  j          .L8003EFF8
/* 2F70C 8003EF0C 0180173C */   lui       $s7, 0x8001
.L8003EF10:
/* 2F710 8003EF10 C00E628E */  lw         $v0, 0xec0($s3)
/* 2F714 8003EF14 00000000 */  nop
/* 2F718 8003EF18 16004018 */  blez       $v0, .L8003EF74
/* 2F71C 8003EF1C 21800000 */   addu      $s0, $zero, $zero
/* 2F720 8003EF20 00101524 */  addiu      $s5, $zero, 0x1000
/* 2F724 8003EF24 0180023C */  lui        $v0, %hi(D_80013268)
/* 2F728 8003EF28 68325424 */  addiu      $s4, $v0, %lo(D_80013268)
/* 2F72C 8003EF2C 1580033C */  lui        $v1, %hi(D_80157238)
/* 2F730 8003EF30 38727224 */  addiu      $s2, $v1, %lo(D_80157238)
/* 2F734 8003EF34 B0FF1124 */  addiu      $s1, $zero, -0x50
.L8003EF38:
/* 2F738 8003EF38 21200000 */  addu       $a0, $zero, $zero
/* 2F73C 8003EF3C 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F740 8003EF40 21302002 */  addu       $a2, $s1, $zero
/* 2F744 8003EF44 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F748 8003EF48 1000B5AF */  sw         $s5, 0x10($sp)
/* 2F74C 8003EF4C 1400B4AF */  sw         $s4, 0x14($sp)
/* 2F750 8003EF50 290A010C */  jal        PrintText_800428a4
/* 2F754 8003EF54 1800B2AF */   sw        $s2, 0x18($sp)
/* 2F758 8003EF58 10005226 */  addiu      $s2, $s2, 0x10
/* 2F75C 8003EF5C C00E628E */  lw         $v0, 0xec0($s3)
/* 2F760 8003EF60 01001026 */  addiu      $s0, $s0, 1
/* 2F764 8003EF64 2A100202 */  slt        $v0, $s0, $v0
/* 2F768 8003EF68 F3FF4014 */  bnez       $v0, .L8003EF38
/* 2F76C 8003EF6C 08003126 */   addiu     $s1, $s1, 8
/* 2F770 8003EF70 C00E628E */  lw         $v0, 0xec0($s3)
.L8003EF74:
/* 2F774 8003EF74 00000000 */  nop
/* 2F778 8003EF78 0C004014 */  bnez       $v0, .L8003EFAC
/* 2F77C 8003EF7C 04000424 */   addiu     $a0, $zero, 4
/* 2F780 8003EF80 21200000 */  addu       $a0, $zero, $zero
/* 2F784 8003EF84 84FF0524 */  addiu      $a1, $zero, -0x7c
/* 2F788 8003EF88 B0FF0624 */  addiu      $a2, $zero, -0x50
/* 2F78C 8003EF8C 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F790 8003EF90 00100324 */  addiu      $v1, $zero, 0x1000
/* 2F794 8003EF94 0180023C */  lui        $v0, %hi(D_80013270)
/* 2F798 8003EF98 70324224 */  addiu      $v0, $v0, %lo(D_80013270)
/* 2F79C 8003EF9C 1000A3AF */  sw         $v1, 0x10($sp)
/* 2F7A0 8003EFA0 290A010C */  jal        PrintText_800428a4
/* 2F7A4 8003EFA4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F7A8 8003EFA8 04000424 */  addiu      $a0, $zero, 4
.L8003EFAC:
/* 2F7AC 8003EFAC 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2F7B0 8003EFB0 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F7B4 8003EFB4 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F7B8 8003EFB8 00101024 */  addiu      $s0, $zero, 0x1000
/* 2F7BC 8003EFBC 0180023C */  lui        $v0, %hi(D_80013278)
/* 2F7C0 8003EFC0 78324224 */  addiu      $v0, $v0, %lo(D_80013278)
/* 2F7C4 8003EFC4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F7C8 8003EFC8 290A010C */  jal        PrintText_800428a4
/* 2F7CC 8003EFCC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2F7D0 8003EFD0 04000424 */  addiu      $a0, $zero, 4
/* 2F7D4 8003EFD4 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2F7D8 8003EFD8 4A000624 */  addiu      $a2, $zero, 0x4a
/* 2F7DC 8003EFDC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F7E0 8003EFE0 0180023C */  lui        $v0, %hi(D_80013298)
/* 2F7E4 8003EFE4 98324224 */  addiu      $v0, $v0, %lo(D_80013298)
/* 2F7E8 8003EFE8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F7EC 8003EFEC 1400A2AF */  sw         $v0, 0x14($sp)
/* 2F7F0 8003EFF0 290A010C */  jal        PrintText_800428a4
/* 2F7F4 8003EFF4 1800B6AF */   sw        $s6, 0x18($sp)
.L8003EFF8:
/* 2F7F8 8003EFF8 21200000 */  addu       $a0, $zero, $zero
/* 2F7FC 8003EFFC 98FF0524 */  addiu      $a1, $zero, -0x68
.L8003F000:
/* 2F800 8003F000 5E000624 */  addiu      $a2, $zero, 0x5e
/* 2F804 8003F004 00100724 */  addiu      $a3, $zero, 0x1000
/* 2F808 8003F008 00100224 */  addiu      $v0, $zero, 0x1000
/* 2F80C 8003F00C B832E326 */  addiu      $v1, $s7, 0x32b8
/* 2F810 8003F010 1000A2AF */  sw         $v0, 0x10($sp)
/* 2F814 8003F014 290A010C */  jal        PrintText_800428a4
/* 2F818 8003F018 1400A3AF */   sw        $v1, 0x14($sp)
/* 2F81C 8003F01C 7CAA000C */  jal        vsync_8002a9f0
/* 2F820 8003F020 00000000 */   nop
/* 2F824 8003F024 4000BF8F */  lw         $ra, 0x40($sp)
/* 2F828 8003F028 3C00B78F */  lw         $s7, 0x3c($sp)
/* 2F82C 8003F02C 3800B68F */  lw         $s6, 0x38($sp)
/* 2F830 8003F030 3400B58F */  lw         $s5, 0x34($sp)
/* 2F834 8003F034 3000B48F */  lw         $s4, 0x30($sp)
/* 2F838 8003F038 2C00B38F */  lw         $s3, 0x2c($sp)
/* 2F83C 8003F03C 2800B28F */  lw         $s2, 0x28($sp)
/* 2F840 8003F040 2400B18F */  lw         $s1, 0x24($sp)
/* 2F844 8003F044 2000B08F */  lw         $s0, 0x20($sp)
/* 2F848 8003F048 0800E003 */  jr         $ra
/* 2F84C 8003F04C 4800BD27 */   addiu     $sp, $sp, 0x48

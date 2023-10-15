.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004c504
/* 3CD04 8004C504 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 3CD08 8004C508 3400B3AF */  sw         $s3, 0x34($sp)
/* 3CD0C 8004C50C 21988000 */  addu       $s3, $a0, $zero
/* 3CD10 8004C510 6000A88F */  lw         $t0, 0x60($sp)
/* 3CD14 8004C514 6400A48F */  lw         $a0, 0x64($sp)
/* 3CD18 8004C518 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 3CD1C 8004C51C 6C00B58F */  lw         $s5, 0x6c($sp)
/* 3CD20 8004C520 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 3CD24 8004C524 2188A000 */  addu       $s1, $a1, $zero
/* 3CD28 8004C528 4000B6AF */  sw         $s6, 0x40($sp)
/* 3CD2C 8004C52C 21B0E000 */  addu       $s6, $a3, $zero
/* 3CD30 8004C530 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 3CD34 8004C534 4800BEAF */  sw         $fp, 0x48($sp)
/* 3CD38 8004C538 4400B7AF */  sw         $s7, 0x44($sp)
/* 3CD3C 8004C53C 3800B4AF */  sw         $s4, 0x38($sp)
/* 3CD40 8004C540 3000B2AF */  sw         $s2, 0x30($sp)
/* 3CD44 8004C544 2800B0AF */  sw         $s0, 0x28($sp)
/* 3CD48 8004C548 F0FF0225 */  addiu      $v0, $t0, -0x10
/* 3CD4C 8004C54C 02004104 */  bgez       $v0, .L8004C558
/* 3CD50 8004C550 5800A6AF */   sw        $a2, 0x58($sp)
/* 3CD54 8004C554 6F000225 */  addiu      $v0, $t0, 0x6f
.L8004C558:
/* 3CD58 8004C558 A1FF1E24 */  addiu      $fp, $zero, -0x5f
/* 3CD5C 8004C55C 51001724 */  addiu      $s7, $zero, 0x51
/* 3CD60 8004C560 C3A10200 */  sra        $s4, $v0, 7
/* 3CD64 8004C564 C0111400 */  sll        $v0, $s4, 7
/* 3CD68 8004C568 10004224 */  addiu      $v0, $v0, 0x10
/* 3CD6C 8004C56C 23100201 */  subu       $v0, $t0, $v0
/* 3CD70 8004C570 01000324 */  addiu      $v1, $zero, 1
/* 3CD74 8004C574 03008314 */  bne        $a0, $v1, .L8004C584
/* 3CD78 8004C578 2000A2AF */   sw        $v0, 0x20($sp)
/* 3CD7C 8004C57C B8310108 */  j          .L8004C6E0
/* 3CD80 8004C580 21F00000 */   addu      $fp, $zero, $zero
.L8004C584:
/* 3CD84 8004C584 02000224 */  addiu      $v0, $zero, 2
/* 3CD88 8004C588 03008214 */  bne        $a0, $v0, .L8004C598
/* 3CD8C 8004C58C 00000000 */   nop
/* 3CD90 8004C590 B8310108 */  j          .L8004C6E0
/* 3CD94 8004C594 D0FF1724 */   addiu     $s7, $zero, -0x30
.L8004C598:
/* 3CD98 8004C598 51008010 */  beqz       $a0, .L8004C6E0
/* 3CD9C 8004C59C 03000224 */   addiu     $v0, $zero, 3
/* 3CDA0 8004C5A0 2A008214 */  bne        $a0, $v0, .L8004C64C
/* 3CDA4 8004C5A4 31001224 */   addiu     $s2, $zero, 0x31
/* 3CDA8 8004C5A8 2118C802 */  addu       $v1, $s6, $t0
/* 3CDAC 8004C5AC A2FF6228 */  slti       $v0, $v1, -0x5e
/* 3CDB0 8004C5B0 03004014 */  bnez       $v0, .L8004C5C0
/* 3CDB4 8004C5B4 A2FF0224 */   addiu     $v0, $zero, -0x5e
/* 3CDB8 8004C5B8 73310108 */  j          .L8004C5CC
/* 3CDBC 8004C5BC 10000224 */   addiu     $v0, $zero, 0x10
.L8004C5C0:
/* 3CDC0 8004C5C0 23104300 */  subu       $v0, $v0, $v1
/* 3CDC4 8004C5C4 10000324 */  addiu      $v1, $zero, 0x10
/* 3CDC8 8004C5C8 23106200 */  subu       $v0, $v1, $v0
.L8004C5CC:
/* 3CDCC 8004C5CC 1D004018 */  blez       $v0, .L8004C644
/* 3CDD0 8004C5D0 21206002 */   addu      $a0, $s3, $zero
/* 3CDD4 8004C5D4 21282002 */  addu       $a1, $s1, $zero
/* 3CDD8 8004C5D8 20FF4724 */  addiu      $a3, $v0, -0xe0
/* 3CDDC 8004C5DC 2338A702 */  subu       $a3, $s5, $a3
/* 3CDE0 8004C5E0 6800A68F */  lw         $a2, 0x68($sp)
/* 3CDE4 8004C5E4 20000324 */  addiu      $v1, $zero, 0x20
/* 3CDE8 8004C5E8 1400A2AF */  sw         $v0, 0x14($sp)
/* 3CDEC 8004C5EC FFFF0224 */  addiu      $v0, $zero, -1
/* 3CDF0 8004C5F0 1000A3AF */  sw         $v1, 0x10($sp)
/* 3CDF4 8004C5F4 1800A0AF */  sw         $zero, 0x18($sp)
/* 3CDF8 8004C5F8 25B2010C */  jal        FUN_8006c894
/* 3CDFC 8004C5FC 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 3CE00 8004C600 21206002 */  addu       $a0, $s3, $zero
/* 3CE04 8004C604 7000A68F */  lw         $a2, 0x70($sp)
/* 3CE08 8004C608 7400A78F */  lw         $a3, 0x74($sp)
/* 3CE0C 8004C60C FBB2010C */  jal        FUN_8006cbec
/* 3CE10 8004C610 21282002 */   addu      $a1, $s1, $zero
/* 3CE14 8004C614 21206002 */  addu       $a0, $s3, $zero
/* 3CE18 8004C618 21282002 */  addu       $a1, $s1, $zero
/* 3CE1C 8004C61C 21300000 */  addu       $a2, $zero, $zero
/* 3CE20 8004C620 21380000 */  addu       $a3, $zero, $zero
/* 3CE24 8004C624 79B2010C */  jal        FUN_8006c9e4
/* 3CE28 8004C628 1000A0AF */   sw        $zero, 0x10($sp)
/* 3CE2C 8004C62C 21206002 */  addu       $a0, $s3, $zero
/* 3CE30 8004C630 21282002 */  addu       $a1, $s1, $zero
/* 3CE34 8004C634 5800A68F */  lw         $a2, 0x58($sp)
/* 3CE38 8004C638 9BB2010C */  jal        FUN_8006ca6c
/* 3CE3C 8004C63C B2FF0724 */   addiu     $a3, $zero, -0x4e
/* 3CE40 8004C640 01003126 */  addiu      $s1, $s1, 1
.L8004C644:
/* 3CE44 8004C644 B8310108 */  j          .L8004C6E0
/* 3CE48 8004C648 B2FF1724 */   addiu     $s7, $zero, -0x4e
.L8004C64C:
/* 3CE4C 8004C64C 2A105602 */  slt        $v0, $s2, $s6
/* 3CE50 8004C650 03004014 */  bnez       $v0, .L8004C660
/* 3CE54 8004C654 F0FFC226 */   addiu     $v0, $s6, -0x10
/* 3CE58 8004C658 99310108 */  j          .L8004C664
/* 3CE5C 8004C65C 10001024 */   addiu     $s0, $zero, 0x10
.L8004C660:
/* 3CE60 8004C660 23804202 */  subu       $s0, $s2, $v0
.L8004C664:
/* 3CE64 8004C664 1D00001A */  blez       $s0, .L8004C6DC
/* 3CE68 8004C668 21206002 */   addu      $a0, $s3, $zero
/* 3CE6C 8004C66C 21282002 */  addu       $a1, $s1, $zero
/* 3CE70 8004C670 2000A726 */  addiu      $a3, $s5, 0x20
/* 3CE74 8004C674 6800A68F */  lw         $a2, 0x68($sp)
/* 3CE78 8004C678 20000224 */  addiu      $v0, $zero, 0x20
/* 3CE7C 8004C67C 1000A2AF */  sw         $v0, 0x10($sp)
/* 3CE80 8004C680 FFFF0224 */  addiu      $v0, $zero, -1
/* 3CE84 8004C684 1400B0AF */  sw         $s0, 0x14($sp)
/* 3CE88 8004C688 1800A0AF */  sw         $zero, 0x18($sp)
/* 3CE8C 8004C68C 25B2010C */  jal        FUN_8006c894
/* 3CE90 8004C690 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 3CE94 8004C694 21206002 */  addu       $a0, $s3, $zero
/* 3CE98 8004C698 7000A68F */  lw         $a2, 0x70($sp)
/* 3CE9C 8004C69C 7400A78F */  lw         $a3, 0x74($sp)
/* 3CEA0 8004C6A0 FBB2010C */  jal        FUN_8006cbec
/* 3CEA4 8004C6A4 21282002 */   addu      $a1, $s1, $zero
/* 3CEA8 8004C6A8 21206002 */  addu       $a0, $s3, $zero
/* 3CEAC 8004C6AC 21282002 */  addu       $a1, $s1, $zero
/* 3CEB0 8004C6B0 21300000 */  addu       $a2, $zero, $zero
/* 3CEB4 8004C6B4 21380000 */  addu       $a3, $zero, $zero
/* 3CEB8 8004C6B8 79B2010C */  jal        FUN_8006c9e4
/* 3CEBC 8004C6BC 1000A0AF */   sw        $zero, 0x10($sp)
/* 3CEC0 8004C6C0 21206002 */  addu       $a0, $s3, $zero
/* 3CEC4 8004C6C4 21282002 */  addu       $a1, $s1, $zero
/* 3CEC8 8004C6C8 F0FF0726 */  addiu      $a3, $s0, -0x10
/* 3CECC 8004C6CC 5800A68F */  lw         $a2, 0x58($sp)
/* 3CED0 8004C6D0 9BB2010C */  jal        FUN_8006ca6c
/* 3CED4 8004C6D4 23384702 */   subu      $a3, $s2, $a3
/* 3CED8 8004C6D8 01003126 */  addiu      $s1, $s1, 1
.L8004C6DC:
/* 3CEDC 8004C6DC 41001E24 */  addiu      $fp, $zero, 0x41
.L8004C6E0:
/* 3CEE0 8004C6E0 FEFF1224 */  addiu      $s2, $zero, -2
/* 3CEE4 8004C6E4 2A105402 */  slt        $v0, $s2, $s4
/* 3CEE8 8004C6E8 58004010 */  beqz       $v0, .L8004C84C
/* 3CEEC 8004C6EC 6000222A */   slti      $v0, $s1, 0x60
/* 3CEF0 8004C6F0 57004010 */  beqz       $v0, .L8004C850
/* 3CEF4 8004C6F4 21102002 */   addu      $v0, $s1, $zero
/* 3CEF8 8004C6F8 2000A38F */  lw         $v1, 0x20($sp)
/* 3CEFC 8004C6FC 00000000 */  nop
/* 3CF00 8004C700 10006224 */  addiu      $v0, $v1, 0x10
/* 3CF04 8004C704 2110C202 */  addu       $v0, $s6, $v0
/* 3CF08 8004C708 2400A2AF */  sw         $v0, 0x24($sp)
/* 3CF0C 8004C70C FEFF0224 */  addiu      $v0, $zero, -2
.L8004C710:
/* 3CF10 8004C710 05004216 */  bne        $s2, $v0, .L8004C728
/* 3CF14 8004C714 FFFF0224 */   addiu     $v0, $zero, -1
/* 3CF18 8004C718 2180C002 */  addu       $s0, $s6, $zero
/* 3CF1C 8004C71C 20000824 */  addiu      $t0, $zero, 0x20
/* 3CF20 8004C720 D5310108 */  j          .L8004C754
/* 3CF24 8004C724 2138A002 */   addu      $a3, $s5, $zero
.L8004C728:
/* 3CF28 8004C728 06004216 */  bne        $s2, $v0, .L8004C744
/* 3CF2C 8004C72C C0111200 */   sll       $v0, $s2, 7
/* 3CF30 8004C730 2000A88F */  lw         $t0, 0x20($sp)
/* 3CF34 8004C734 1000D026 */  addiu      $s0, $s6, 0x10
/* 3CF38 8004C738 40FF0225 */  addiu      $v0, $t0, -0xc0
/* 3CF3C 8004C73C D5310108 */  j          .L8004C754
/* 3CF40 8004C740 2338A202 */   subu      $a3, $s5, $v0
.L8004C744:
/* 3CF44 8004C744 2400A38F */  lw         $v1, 0x24($sp)
/* 3CF48 8004C748 80000824 */  addiu      $t0, $zero, 0x80
/* 3CF4C 8004C74C 4000A726 */  addiu      $a3, $s5, 0x40
/* 3CF50 8004C750 21806200 */  addu       $s0, $v1, $v0
.L8004C754:
/* 3CF54 8004C754 FFFF8226 */  addiu      $v0, $s4, -1
/* 3CF58 8004C758 03004216 */  bne        $s2, $v0, .L8004C768
/* 3CF5C 8004C75C 21180802 */   addu      $v1, $s0, $t0
/* 3CF60 8004C760 20000825 */  addiu      $t0, $t0, 0x20
/* 3CF64 8004C764 21180802 */  addu       $v1, $s0, $t0
.L8004C768:
/* 3CF68 8004C768 2A10C303 */  slt        $v0, $fp, $v1
/* 3CF6C 8004C76C 31004010 */  beqz       $v0, .L8004C834
/* 3CF70 8004C770 2A101702 */   slt       $v0, $s0, $s7
/* 3CF74 8004C774 36004010 */  beqz       $v0, .L8004C850
/* 3CF78 8004C778 21102002 */   addu      $v0, $s1, $zero
/* 3CF7C 8004C77C 2D000019 */  blez       $t0, .L8004C834
/* 3CF80 8004C780 23207700 */   subu      $a0, $v1, $s7
/* 3CF84 8004C784 2A108800 */  slt        $v0, $a0, $t0
/* 3CF88 8004C788 2A004010 */  beqz       $v0, .L8004C834
/* 3CF8C 8004C78C 2318D003 */   subu      $v1, $fp, $s0
/* 3CF90 8004C790 2A106800 */  slt        $v0, $v1, $t0
/* 3CF94 8004C794 27004010 */  beqz       $v0, .L8004C834
/* 3CF98 8004C798 00000000 */   nop
/* 3CF9C 8004C79C 02006104 */  bgez       $v1, .L8004C7A8
/* 3CFA0 8004C7A0 00000000 */   nop
/* 3CFA4 8004C7A4 21180000 */  addu       $v1, $zero, $zero
.L8004C7A8:
/* 3CFA8 8004C7A8 02008104 */  bgez       $a0, .L8004C7B4
/* 3CFAC 8004C7AC 00000000 */   nop
/* 3CFB0 8004C7B0 21200000 */  addu       $a0, $zero, $zero
.L8004C7B4:
/* 3CFB4 8004C7B4 21800302 */  addu       $s0, $s0, $v1
/* 3CFB8 8004C7B8 23400301 */  subu       $t0, $t0, $v1
/* 3CFBC 8004C7BC 23400401 */  subu       $t0, $t0, $a0
/* 3CFC0 8004C7C0 21206002 */  addu       $a0, $s3, $zero
/* 3CFC4 8004C7C4 21282002 */  addu       $a1, $s1, $zero
/* 3CFC8 8004C7C8 2138E300 */  addu       $a3, $a3, $v1
/* 3CFCC 8004C7CC 6800A68F */  lw         $a2, 0x68($sp)
/* 3CFD0 8004C7D0 7800A38F */  lw         $v1, 0x78($sp)
/* 3CFD4 8004C7D4 20000224 */  addiu      $v0, $zero, 0x20
/* 3CFD8 8004C7D8 1000A2AF */  sw         $v0, 0x10($sp)
/* 3CFDC 8004C7DC 1400A8AF */  sw         $t0, 0x14($sp)
/* 3CFE0 8004C7E0 1800A0AF */  sw         $zero, 0x18($sp)
/* 3CFE4 8004C7E4 25B2010C */  jal        FUN_8006c894
/* 3CFE8 8004C7E8 1C00A3AF */   sw        $v1, 0x1c($sp)
/* 3CFEC 8004C7EC 21206002 */  addu       $a0, $s3, $zero
/* 3CFF0 8004C7F0 7000A68F */  lw         $a2, 0x70($sp)
/* 3CFF4 8004C7F4 7400A78F */  lw         $a3, 0x74($sp)
/* 3CFF8 8004C7F8 FBB2010C */  jal        FUN_8006cbec
/* 3CFFC 8004C7FC 21282002 */   addu      $a1, $s1, $zero
/* 3D000 8004C800 21206002 */  addu       $a0, $s3, $zero
/* 3D004 8004C804 21282002 */  addu       $a1, $s1, $zero
/* 3D008 8004C808 80000624 */  addiu      $a2, $zero, 0x80
/* 3D00C 8004C80C 80000724 */  addiu      $a3, $zero, 0x80
/* 3D010 8004C810 80000224 */  addiu      $v0, $zero, 0x80
/* 3D014 8004C814 79B2010C */  jal        FUN_8006c9e4
/* 3D018 8004C818 1000A2AF */   sw        $v0, 0x10($sp)
/* 3D01C 8004C81C 21206002 */  addu       $a0, $s3, $zero
/* 3D020 8004C820 21282002 */  addu       $a1, $s1, $zero
/* 3D024 8004C824 5800A68F */  lw         $a2, 0x58($sp)
/* 3D028 8004C828 9BB2010C */  jal        FUN_8006ca6c
/* 3D02C 8004C82C 21380002 */   addu      $a3, $s0, $zero
/* 3D030 8004C830 01003126 */  addiu      $s1, $s1, 1
.L8004C834:
/* 3D034 8004C834 01005226 */  addiu      $s2, $s2, 1
/* 3D038 8004C838 2A105402 */  slt        $v0, $s2, $s4
/* 3D03C 8004C83C 03004010 */  beqz       $v0, .L8004C84C
/* 3D040 8004C840 6000222A */   slti      $v0, $s1, 0x60
/* 3D044 8004C844 B2FF4014 */  bnez       $v0, .L8004C710
/* 3D048 8004C848 FEFF0224 */   addiu     $v0, $zero, -2
.L8004C84C:
/* 3D04C 8004C84C 21102002 */  addu       $v0, $s1, $zero
.L8004C850:
/* 3D050 8004C850 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 3D054 8004C854 4800BE8F */  lw         $fp, 0x48($sp)
/* 3D058 8004C858 4400B78F */  lw         $s7, 0x44($sp)
/* 3D05C 8004C85C 4000B68F */  lw         $s6, 0x40($sp)
/* 3D060 8004C860 3C00B58F */  lw         $s5, 0x3c($sp)
/* 3D064 8004C864 3800B48F */  lw         $s4, 0x38($sp)
/* 3D068 8004C868 3400B38F */  lw         $s3, 0x34($sp)
/* 3D06C 8004C86C 3000B28F */  lw         $s2, 0x30($sp)
/* 3D070 8004C870 2C00B18F */  lw         $s1, 0x2c($sp)
/* 3D074 8004C874 2800B08F */  lw         $s0, 0x28($sp)
/* 3D078 8004C878 0800E003 */  jr         $ra
/* 3D07C 8004C87C 5000BD27 */   addiu     $sp, $sp, 0x50

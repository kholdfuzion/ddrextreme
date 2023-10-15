.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005c4f8
/* 4CCF8 8005C4F8 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4CCFC 8005C4FC 5400B3AF */  sw         $s3, 0x54($sp)
/* 4CD00 8005C500 2198A000 */  addu       $s3, $a1, $zero
/* 4CD04 8005C504 6800BEAF */  sw         $fp, 0x68($sp)
/* 4CD08 8005C508 21F0E000 */  addu       $fp, $a3, $zero
/* 4CD0C 8005C50C 0180093C */  lui        $t1, %hi(D_80014278)
/* 4CD10 8005C510 78422925 */  addiu      $t1, $t1, %lo(D_80014278)
/* 4CD14 8005C514 0180033C */  lui        $v1, %hi(D_800141F8)
/* 4CD18 8005C518 F8416324 */  addiu      $v1, $v1, %lo(D_800141F8)
/* 4CD1C 8005C51C 0180023C */  lui        $v0, %hi(D_80014238)
/* 4CD20 8005C520 38424224 */  addiu      $v0, $v0, %lo(D_80014238)
/* 4CD24 8005C524 1A80073C */  lui        $a3, %hi(D_801A09B0)
/* 4CD28 8005C528 B009E724 */  addiu      $a3, $a3, %lo(D_801A09B0)
/* 4CD2C 8005C52C 7000A4AF */  sw         $a0, 0x70($sp)
/* 4CD30 8005C530 1380043C */  lui        $a0, %hi(D_801280E0)
/* 4CD34 8005C534 8400A88F */  lw         $t0, 0x84($sp)
/* 4CD38 8005C538 E0808424 */  addiu      $a0, $a0, %lo(D_801280E0)
/* 4CD3C 8005C53C 6C00BFAF */  sw         $ra, 0x6c($sp)
/* 4CD40 8005C540 6400B7AF */  sw         $s7, 0x64($sp)
/* 4CD44 8005C544 6000B6AF */  sw         $s6, 0x60($sp)
/* 4CD48 8005C548 5C00B5AF */  sw         $s5, 0x5c($sp)
/* 4CD4C 8005C54C 5800B4AF */  sw         $s4, 0x58($sp)
/* 4CD50 8005C550 5000B2AF */  sw         $s2, 0x50($sp)
/* 4CD54 8005C554 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 4CD58 8005C558 4800B0AF */  sw         $s0, 0x48($sp)
/* 4CD5C 8005C55C 7800A6AF */  sw         $a2, 0x78($sp)
/* 4CD60 8005C560 028A0800 */  srl        $s1, $t0, 8
/* 4CD64 8005C564 0F000531 */  andi       $a1, $t0, 0xf
/* 4CD68 8005C568 80280500 */  sll        $a1, $a1, 2
/* 4CD6C 8005C56C 2118A300 */  addu       $v1, $a1, $v1
/* 4CD70 8005C570 2110A200 */  addu       $v0, $a1, $v0
/* 4CD74 8005C574 00FF2A32 */  andi       $t2, $s1, 0xff00
/* 4CD78 8005C578 00004B8C */  lw         $t3, ($v0)
/* 4CD7C 8005C57C 2148A900 */  addu       $t1, $a1, $t1
/* 4CD80 8005C580 1A004B01 */  div        $zero, $t2, $t3
/* 4CD84 8005C584 0000628C */  lw         $v0, ($v1)
/* 4CD88 8005C588 0000298D */  lw         $t1, ($t1)
/* 4CD8C 8005C58C 40300200 */  sll        $a2, $v0, 1
/* 4CD90 8005C590 2130C200 */  addu       $a2, $a2, $v0
/* 4CD94 8005C594 00320600 */  sll        $a2, $a2, 8
/* 4CD98 8005C598 0180023C */  lui        $v0, %hi(D_800141B8)
/* 4CD9C 8005C59C B8414224 */  addiu      $v0, $v0, %lo(D_800141B8)
/* 4CDA0 8005C5A0 2128A200 */  addu       $a1, $a1, $v0
/* 4CDA4 8005C5A4 0000A38C */  lw         $v1, ($a1)
/* 4CDA8 8005C5A8 2130C700 */  addu       $a2, $a2, $a3
/* 4CDAC 8005C5AC 21186400 */  addu       $v1, $v1, $a0
/* 4CDB0 8005C5B0 00006290 */  lbu        $v0, ($v1)
/* 4CDB4 8005C5B4 02190800 */  srl        $v1, $t0, 4
/* 4CDB8 8005C5B8 03006330 */  andi       $v1, $v1, 3
/* 4CDBC 8005C5BC FFFF6324 */  addiu      $v1, $v1, -1
/* 4CDC0 8005C5C0 02450800 */  srl        $t0, $t0, 0x14
/* 4CDC4 8005C5C4 F0000831 */  andi       $t0, $t0, 0xf0
/* 4CDC8 8005C5C8 3C00A6AF */  sw         $a2, 0x3c($sp)
/* 4CDCC 8005C5CC 3000A3AF */  sw         $v1, 0x30($sp)
/* 4CDD0 8005C5D0 2400A9AF */  sw         $t1, 0x24($sp)
/* 4CDD4 8005C5D4 C0200200 */  sll        $a0, $v0, 3
/* 4CDD8 8005C5D8 23208200 */  subu       $a0, $a0, $v0
/* 4CDDC 8005C5DC 80200400 */  sll        $a0, $a0, 2
/* 4CDE0 8005C5E0 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4CDE4 8005C5E4 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4CDE8 8005C5E8 21208200 */  addu       $a0, $a0, $v0
/* 4CDEC 8005C5EC 2000A4AF */  sw         $a0, 0x20($sp)
/* 4CDF0 8005C5F0 2000A38F */  lw         $v1, 0x20($sp)
/* 4CDF4 8005C5F4 8000A48F */  lw         $a0, 0x80($sp)
/* 4CDF8 8005C5F8 16006284 */  lh         $v0, 0x16($v1)
/* 4CDFC 8005C5FC 18006584 */  lh         $a1, 0x18($v1)
/* 4CE00 8005C600 21104800 */  addu       $v0, $v0, $t0
/* 4CE04 8005C604 2C00A5AF */  sw         $a1, 0x2c($sp)
/* 4CE08 8005C608 2800A2AF */  sw         $v0, 0x28($sp)
/* 4CE0C 8005C60C 12500000 */  mflo       $t2
/* 4CE10 8005C610 02006015 */  bnez       $t3, .L8005C61C
/* 4CE14 8005C614 00000000 */   nop
/* 4CE18 8005C618 CD010000 */  break      0, 7
.L8005C61C:
/* 4CE1C 8005C61C 21B84001 */   addu      $s7, $t2, $zero
/* 4CE20 8005C620 04006884 */  lh         $t0, 4($v1)
/* 4CE24 8005C624 2188E002 */  addu       $s1, $s7, $zero
/* 4CE28 8005C628 3400A8AF */  sw         $t0, 0x34($sp)
/* 4CE2C 8005C62C 00008290 */  lbu        $v0, ($a0)
/* 4CE30 8005C630 06006384 */  lh         $v1, 6($v1)
/* 4CE34 8005C634 21A86002 */  addu       $s5, $s3, $zero
/* 4CE38 8005C638 81004010 */  beqz       $v0, .L8005C840
/* 4CE3C 8005C63C 3800A3AF */   sw        $v1, 0x38($sp)
/* 4CE40 8005C640 21A08000 */  addu       $s4, $a0, $zero
/* 4CE44 8005C644 8C00A58F */  lw         $a1, 0x8c($sp)
/* 4CE48 8005C648 9000A88F */  lw         $t0, 0x90($sp)
/* 4CE4C 8005C64C 2318BE00 */  subu       $v1, $a1, $fp
/* 4CE50 8005C650 001A0300 */  sll        $v1, $v1, 8
/* 4CE54 8005C654 23101E01 */  subu       $v0, $t0, $fp
/* 4CE58 8005C658 01004224 */  addiu      $v0, $v0, 1
/* 4CE5C 8005C65C 00120200 */  sll        $v0, $v0, 8
/* 4CE60 8005C660 4000A3AF */  sw         $v1, 0x40($sp)
/* 4CE64 8005C664 4400A2AF */  sw         $v0, 0x44($sp)
.L8005C668:
/* 4CE68 8005C668 00008292 */  lbu        $v0, ($s4)
/* 4CE6C 8005C66C 00000000 */  nop
/* 4CE70 8005C670 E0FF4424 */  addiu      $a0, $v0, -0x20
/* 4CE74 8005C674 3C00A28F */  lw         $v0, 0x3c($sp)
/* 4CE78 8005C678 C0180400 */  sll        $v1, $a0, 3
/* 4CE7C 8005C67C 21904300 */  addu       $s2, $v0, $v1
/* 4CE80 8005C680 06004296 */  lhu        $v0, 6($s2)
/* 4CE84 8005C684 00000000 */  nop
/* 4CE88 8005C688 18005100 */  mult       $v0, $s1
/* 4CE8C 8005C68C 8C00A58F */  lw         $a1, 0x8c($sp)
/* 4CE90 8005C690 21804000 */  addu       $s0, $v0, $zero
/* 4CE94 8005C694 12180000 */  mflo       $v1
/* 4CE98 8005C698 031A0300 */  sra        $v1, $v1, 8
/* 4CE9C 8005C69C 2310A300 */  subu       $v0, $a1, $v1
/* 4CEA0 8005C6A0 2A10C203 */  slt        $v0, $fp, $v0
/* 4CEA4 8005C6A4 69004014 */  bnez       $v0, .L8005C84C
/* 4CEA8 8005C6A8 21B00000 */   addu      $s6, $zero, $zero
/* 4CEAC 8005C6AC 8C00A88F */  lw         $t0, 0x8c($sp)
/* 4CEB0 8005C6B0 00000000 */  nop
/* 4CEB4 8005C6B4 2A10C803 */  slt        $v0, $fp, $t0
/* 4CEB8 8005C6B8 0A004010 */  beqz       $v0, .L8005C6E4
/* 4CEBC 8005C6BC 00000000 */   nop
/* 4CEC0 8005C6C0 4000A58F */  lw         $a1, 0x40($sp)
/* 4CEC4 8005C6C4 00000000 */  nop
/* 4CEC8 8005C6C8 1A00B100 */  div        $zero, $a1, $s1
/* 4CECC 8005C6CC 12100000 */  mflo       $v0
/* 4CED0 8005C6D0 02002016 */  bnez       $s1, .L8005C6DC
/* 4CED4 8005C6D4 00000000 */   nop
/* 4CED8 8005C6D8 CD010000 */  break      0, 7
.L8005C6DC:
/* 4CEDC 8005C6DC 21B04000 */   addu      $s6, $v0, $zero
/* 4CEE0 8005C6E0 23800202 */  subu       $s0, $s0, $v0
.L8005C6E4:
/* 4CEE4 8005C6E4 9000A88F */  lw         $t0, 0x90($sp)
/* 4CEE8 8005C6E8 00000000 */  nop
/* 4CEEC 8005C6EC 2A101E01 */  slt        $v0, $t0, $fp
/* 4CEF0 8005C6F0 57004014 */  bnez       $v0, .L8005C850
/* 4CEF4 8005C6F4 21106002 */   addu      $v0, $s3, $zero
/* 4CEF8 8005C6F8 9000A58F */  lw         $a1, 0x90($sp)
/* 4CEFC 8005C6FC 00000000 */  nop
/* 4CF00 8005C700 2310A300 */  subu       $v0, $a1, $v1
/* 4CF04 8005C704 2A105E00 */  slt        $v0, $v0, $fp
/* 4CF08 8005C708 09004010 */  beqz       $v0, .L8005C730
/* 4CF0C 8005C70C 00000000 */   nop
/* 4CF10 8005C710 4400A38F */  lw         $v1, 0x44($sp)
/* 4CF14 8005C714 00000000 */  nop
/* 4CF18 8005C718 1A007100 */  div        $zero, $v1, $s1
/* 4CF1C 8005C71C 12100000 */  mflo       $v0
/* 4CF20 8005C720 02002016 */  bnez       $s1, .L8005C72C
/* 4CF24 8005C724 00000000 */   nop
/* 4CF28 8005C728 CD010000 */  break      0, 7
.L8005C72C:
/* 4CF2C 8005C72C 21804000 */   addu      $s0, $v0, $zero
.L8005C730:
/* 4CF30 8005C730 27008010 */  beqz       $a0, .L8005C7D0
/* 4CF34 8005C734 1800D702 */   mult      $s6, $s7
/* 4CF38 8005C738 12380000 */  mflo       $a3
/* 4CF3C 8005C73C 00000000 */  nop
/* 4CF40 8005C740 00000000 */  nop
/* 4CF44 8005C744 18001102 */  mult       $s0, $s1
/* 4CF48 8005C748 12180000 */  mflo       $v1
/* 4CF4C 8005C74C 04004296 */  lhu        $v0, 4($s2)
/* 4CF50 8005C750 00000000 */  nop
/* 4CF54 8005C754 18005700 */  mult       $v0, $s7
/* 4CF58 8005C758 21286002 */  addu       $a1, $s3, $zero
/* 4CF5C 8005C75C 7000A48F */  lw         $a0, 0x70($sp)
/* 4CF60 8005C760 7800A68F */  lw         $a2, 0x78($sp)
/* 4CF64 8005C764 033A0700 */  sra        $a3, $a3, 8
/* 4CF68 8005C768 2138C703 */  addu       $a3, $fp, $a3
/* 4CF6C 8005C76C 031A0300 */  sra        $v1, $v1, 8
/* 4CF70 8005C770 1400A3AF */  sw         $v1, 0x14($sp)
/* 4CF74 8005C774 12100000 */  mflo       $v0
/* 4CF78 8005C778 03120200 */  sra        $v0, $v0, 8
/* 4CF7C 8005C77C 976D010C */  jal        FUN_8005b65c
/* 4CF80 8005C780 1000A2AF */   sw        $v0, 0x10($sp)
/* 4CF84 8005C784 7000A48F */  lw         $a0, 0x70($sp)
/* 4CF88 8005C788 3000A28F */  lw         $v0, 0x30($sp)
/* 4CF8C 8005C78C 3400A38F */  lw         $v1, 0x34($sp)
/* 4CF90 8005C790 3800A88F */  lw         $t0, 0x38($sp)
/* 4CF94 8005C794 21286002 */  addu       $a1, $s3, $zero
/* 4CF98 8005C798 1400B0AF */  sw         $s0, 0x14($sp)
/* 4CF9C 8005C79C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4CFA0 8005C7A0 00004696 */  lhu        $a2, ($s2)
/* 4CFA4 8005C7A4 02004796 */  lhu        $a3, 2($s2)
/* 4CFA8 8005C7A8 04004296 */  lhu        $v0, 4($s2)
/* 4CFAC 8005C7AC 21380701 */  addu       $a3, $t0, $a3
/* 4CFB0 8005C7B0 2000A88F */  lw         $t0, 0x20($sp)
/* 4CFB4 8005C7B4 21306600 */  addu       $a2, $v1, $a2
/* 4CFB8 8005C7B8 0C000385 */  lh         $v1, 0xc($t0)
/* 4CFBC 8005C7BC 2138F600 */  addu       $a3, $a3, $s6
/* 4CFC0 8005C7C0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4CFC4 8005C7C4 1769010C */  jal        FUN_8005a45c
/* 4CFC8 8005C7C8 1800A3AF */   sw        $v1, 0x18($sp)
/* 4CFCC 8005C7CC 01007326 */  addiu      $s3, $s3, 1
.L8005C7D0:
/* 4CFD0 8005C7D0 04004296 */  lhu        $v0, 4($s2)
/* 4CFD4 8005C7D4 00000000 */  nop
/* 4CFD8 8005C7D8 18005700 */  mult       $v0, $s7
/* 4CFDC 8005C7DC 01009426 */  addiu      $s4, $s4, 1
/* 4CFE0 8005C7E0 2400A38F */  lw         $v1, 0x24($sp)
/* 4CFE4 8005C7E4 7800A48F */  lw         $a0, 0x78($sp)
/* 4CFE8 8005C7E8 12100000 */  mflo       $v0
/* 4CFEC 8005C7EC 03120200 */  sra        $v0, $v0, 8
/* 4CFF0 8005C7F0 21104300 */  addu       $v0, $v0, $v1
/* 4CFF4 8005C7F4 00008392 */  lbu        $v1, ($s4)
/* 4CFF8 8005C7F8 21208200 */  addu       $a0, $a0, $v0
/* 4CFFC 8005C7FC 9AFF6014 */  bnez       $v1, .L8005C668
/* 4D000 8005C800 7800A4AF */   sw        $a0, 0x78($sp)
/* 4D004 8005C804 11720108 */  j          .L8005C844
/* 4D008 8005C808 2A10B302 */   slt       $v0, $s5, $s3
.L8005C80C:
/* 4D00C 8005C80C 7000A48F */  lw         $a0, 0x70($sp)
/* 4D010 8005C810 2800A68F */  lw         $a2, 0x28($sp)
/* 4D014 8005C814 2C00A78F */  lw         $a3, 0x2c($sp)
/* 4D018 8005C818 396D010C */  jal        FUN_8005b4e4
/* 4D01C 8005C81C 2128A002 */   addu      $a1, $s5, $zero
/* 4D020 8005C820 8800A58F */  lw         $a1, 0x88($sp)
/* 4D024 8005C824 7000A48F */  lw         $a0, 0x70($sp)
/* 4D028 8005C828 8800A68F */  lw         $a2, 0x88($sp)
/* 4D02C 8005C82C 1000A5AF */  sw         $a1, 0x10($sp)
/* 4D030 8005C830 2128A002 */  addu       $a1, $s5, $zero
/* 4D034 8005C834 EB6C010C */  jal        FUN_8005b3ac
/* 4D038 8005C838 2138C000 */   addu      $a3, $a2, $zero
/* 4D03C 8005C83C 0100B526 */  addiu      $s5, $s5, 1
.L8005C840:
/* 4D040 8005C840 2A10B302 */  slt        $v0, $s5, $s3
.L8005C844:
/* 4D044 8005C844 F1FF4014 */  bnez       $v0, .L8005C80C
/* 4D048 8005C848 00000000 */   nop
.L8005C84C:
/* 4D04C 8005C84C 21106002 */  addu       $v0, $s3, $zero
.L8005C850:
/* 4D050 8005C850 6C00BF8F */  lw         $ra, 0x6c($sp)
/* 4D054 8005C854 6800BE8F */  lw         $fp, 0x68($sp)
/* 4D058 8005C858 6400B78F */  lw         $s7, 0x64($sp)
/* 4D05C 8005C85C 6000B68F */  lw         $s6, 0x60($sp)
/* 4D060 8005C860 5C00B58F */  lw         $s5, 0x5c($sp)
/* 4D064 8005C864 5800B48F */  lw         $s4, 0x58($sp)
/* 4D068 8005C868 5400B38F */  lw         $s3, 0x54($sp)
/* 4D06C 8005C86C 5000B28F */  lw         $s2, 0x50($sp)
/* 4D070 8005C870 4C00B18F */  lw         $s1, 0x4c($sp)
/* 4D074 8005C874 4800B08F */  lw         $s0, 0x48($sp)
/* 4D078 8005C878 0800E003 */  jr         $ra
/* 4D07C 8005C87C 7000BD27 */   addiu     $sp, $sp, 0x70

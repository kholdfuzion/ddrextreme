.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005bea8
/* 4C6A8 8005BEA8 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 4C6AC 8005BEAC 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 4C6B0 8005BEB0 2198A000 */  addu       $s3, $a1, $zero
/* 4C6B4 8005BEB4 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 4C6B8 8005BEB8 21B8C000 */  addu       $s7, $a2, $zero
/* 4C6BC 8005BEBC 6000BEAF */  sw         $fp, 0x60($sp)
/* 4C6C0 8005BEC0 21F08000 */  addu       $fp, $a0, $zero
/* 4C6C4 8005BEC4 0180093C */  lui        $t1, %hi(D_80014278)
/* 4C6C8 8005BEC8 78422925 */  addiu      $t1, $t1, %lo(D_80014278)
/* 4C6CC 8005BECC 0180033C */  lui        $v1, %hi(D_800141F8)
/* 4C6D0 8005BED0 F8416324 */  addiu      $v1, $v1, %lo(D_800141F8)
/* 4C6D4 8005BED4 0180023C */  lui        $v0, %hi(D_80014238)
/* 4C6D8 8005BED8 38424224 */  addiu      $v0, $v0, %lo(D_80014238)
/* 4C6DC 8005BEDC 7400A7AF */  sw         $a3, 0x74($sp)
/* 4C6E0 8005BEE0 1A80073C */  lui        $a3, %hi(D_801A09B0)
/* 4C6E4 8005BEE4 B009E724 */  addiu      $a3, $a3, %lo(D_801A09B0)
/* 4C6E8 8005BEE8 1380043C */  lui        $a0, %hi(D_801280E0)
/* 4C6EC 8005BEEC 7C00A88F */  lw         $t0, 0x7c($sp)
/* 4C6F0 8005BEF0 E0808424 */  addiu      $a0, $a0, %lo(D_801280E0)
/* 4C6F4 8005BEF4 6400BFAF */  sw         $ra, 0x64($sp)
/* 4C6F8 8005BEF8 5800B6AF */  sw         $s6, 0x58($sp)
/* 4C6FC 8005BEFC 5400B5AF */  sw         $s5, 0x54($sp)
/* 4C700 8005BF00 5000B4AF */  sw         $s4, 0x50($sp)
/* 4C704 8005BF04 4800B2AF */  sw         $s2, 0x48($sp)
/* 4C708 8005BF08 4400B1AF */  sw         $s1, 0x44($sp)
/* 4C70C 8005BF0C 4000B0AF */  sw         $s0, 0x40($sp)
/* 4C710 8005BF10 02B20800 */  srl        $s6, $t0, 8
/* 4C714 8005BF14 0F000531 */  andi       $a1, $t0, 0xf
/* 4C718 8005BF18 80280500 */  sll        $a1, $a1, 2
/* 4C71C 8005BF1C 2110A200 */  addu       $v0, $a1, $v0
/* 4C720 8005BF20 00004B8C */  lw         $t3, ($v0)
/* 4C724 8005BF24 00FFCA32 */  andi       $t2, $s6, 0xff00
/* 4C728 8005BF28 1A004B01 */  div        $zero, $t2, $t3
/* 4C72C 8005BF2C 2118A300 */  addu       $v1, $a1, $v1
/* 4C730 8005BF30 2148A900 */  addu       $t1, $a1, $t1
/* 4C734 8005BF34 0000628C */  lw         $v0, ($v1)
/* 4C738 8005BF38 0000298D */  lw         $t1, ($t1)
/* 4C73C 8005BF3C 40300200 */  sll        $a2, $v0, 1
/* 4C740 8005BF40 2130C200 */  addu       $a2, $a2, $v0
/* 4C744 8005BF44 00320600 */  sll        $a2, $a2, 8
/* 4C748 8005BF48 0180023C */  lui        $v0, %hi(D_800141B8)
/* 4C74C 8005BF4C B8414224 */  addiu      $v0, $v0, %lo(D_800141B8)
/* 4C750 8005BF50 2128A200 */  addu       $a1, $a1, $v0
/* 4C754 8005BF54 0000A38C */  lw         $v1, ($a1)
/* 4C758 8005BF58 2130C700 */  addu       $a2, $a2, $a3
/* 4C75C 8005BF5C 21186400 */  addu       $v1, $v1, $a0
/* 4C760 8005BF60 00006290 */  lbu        $v0, ($v1)
/* 4C764 8005BF64 02190800 */  srl        $v1, $t0, 4
/* 4C768 8005BF68 03006330 */  andi       $v1, $v1, 3
/* 4C76C 8005BF6C FFFF6324 */  addiu      $v1, $v1, -1
/* 4C770 8005BF70 02450800 */  srl        $t0, $t0, 0x14
/* 4C774 8005BF74 2C00A3AF */  sw         $v1, 0x2c($sp)
/* 4C778 8005BF78 7800A38F */  lw         $v1, 0x78($sp)
/* 4C77C 8005BF7C F0000831 */  andi       $t0, $t0, 0xf0
/* 4C780 8005BF80 3800A6AF */  sw         $a2, 0x38($sp)
/* 4C784 8005BF84 2000A9AF */  sw         $t1, 0x20($sp)
/* 4C788 8005BF88 C0200200 */  sll        $a0, $v0, 3
/* 4C78C 8005BF8C 23208200 */  subu       $a0, $a0, $v0
/* 4C790 8005BF90 80200400 */  sll        $a0, $a0, 2
/* 4C794 8005BF94 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4C798 8005BF98 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4C79C 8005BF9C 21A88200 */  addu       $s5, $a0, $v0
/* 4C7A0 8005BFA0 1600A286 */  lh         $v0, 0x16($s5)
/* 4C7A4 8005BFA4 1800A486 */  lh         $a0, 0x18($s5)
/* 4C7A8 8005BFA8 21104800 */  addu       $v0, $v0, $t0
/* 4C7AC 8005BFAC 2800A4AF */  sw         $a0, 0x28($sp)
/* 4C7B0 8005BFB0 2400A2AF */  sw         $v0, 0x24($sp)
/* 4C7B4 8005BFB4 12500000 */  mflo       $t2
/* 4C7B8 8005BFB8 02006015 */  bnez       $t3, .L8005BFC4
/* 4C7BC 8005BFBC 00000000 */   nop
/* 4C7C0 8005BFC0 CD010000 */  break      0, 7
.L8005BFC4:
/* 4C7C4 8005BFC4 21A04001 */   addu      $s4, $t2, $zero
/* 4C7C8 8005BFC8 0400A986 */  lh         $t1, 4($s5)
/* 4C7CC 8005BFCC 21B08002 */  addu       $s6, $s4, $zero
/* 4C7D0 8005BFD0 3000A9AF */  sw         $t1, 0x30($sp)
/* 4C7D4 8005BFD4 00006290 */  lbu        $v0, ($v1)
/* 4C7D8 8005BFD8 0600A486 */  lh         $a0, 6($s5)
/* 4C7DC 8005BFDC 21906002 */  addu       $s2, $s3, $zero
/* 4C7E0 8005BFE0 45004010 */  beqz       $v0, .L8005C0F8
/* 4C7E4 8005BFE4 3400A4AF */   sw        $a0, 0x34($sp)
/* 4C7E8 8005BFE8 21886000 */  addu       $s1, $v1, $zero
/* 4C7EC 8005BFEC 00002392 */  lbu        $v1, ($s1)
.L8005BFF0:
/* 4C7F0 8005BFF0 3800A98F */  lw         $t1, 0x38($sp)
/* 4C7F4 8005BFF4 E0FF6324 */  addiu      $v1, $v1, -0x20
/* 4C7F8 8005BFF8 C0100300 */  sll        $v0, $v1, 3
/* 4C7FC 8005BFFC 24006010 */  beqz       $v1, .L8005C090
/* 4C800 8005C000 21802201 */   addu      $s0, $t1, $v0
/* 4C804 8005C004 04000296 */  lhu        $v0, 4($s0)
/* 4C808 8005C008 00000000 */  nop
/* 4C80C 8005C00C 18005400 */  mult       $v0, $s4
/* 4C810 8005C010 12100000 */  mflo       $v0
/* 4C814 8005C014 06000396 */  lhu        $v1, 6($s0)
/* 4C818 8005C018 00000000 */  nop
/* 4C81C 8005C01C 18007600 */  mult       $v1, $s6
/* 4C820 8005C020 2120C003 */  addu       $a0, $fp, $zero
/* 4C824 8005C024 21286002 */  addu       $a1, $s3, $zero
/* 4C828 8005C028 2130E002 */  addu       $a2, $s7, $zero
/* 4C82C 8005C02C 7400A78F */  lw         $a3, 0x74($sp)
/* 4C830 8005C030 03120200 */  sra        $v0, $v0, 8
/* 4C834 8005C034 1000A2AF */  sw         $v0, 0x10($sp)
/* 4C838 8005C038 12180000 */  mflo       $v1
/* 4C83C 8005C03C 031A0300 */  sra        $v1, $v1, 8
/* 4C840 8005C040 976D010C */  jal        FUN_8005b65c
/* 4C844 8005C044 1400A3AF */   sw        $v1, 0x14($sp)
/* 4C848 8005C048 2120C003 */  addu       $a0, $fp, $zero
/* 4C84C 8005C04C 21286002 */  addu       $a1, $s3, $zero
/* 4C850 8005C050 00000696 */  lhu        $a2, ($s0)
/* 4C854 8005C054 2C00A28F */  lw         $v0, 0x2c($sp)
/* 4C858 8005C058 3000A38F */  lw         $v1, 0x30($sp)
/* 4C85C 8005C05C 3400A98F */  lw         $t1, 0x34($sp)
/* 4C860 8005C060 21306600 */  addu       $a2, $v1, $a2
/* 4C864 8005C064 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4C868 8005C068 02000796 */  lhu        $a3, 2($s0)
/* 4C86C 8005C06C 04000296 */  lhu        $v0, 4($s0)
/* 4C870 8005C070 06000396 */  lhu        $v1, 6($s0)
/* 4C874 8005C074 0C00A886 */  lh         $t0, 0xc($s5)
/* 4C878 8005C078 21382701 */  addu       $a3, $t1, $a3
/* 4C87C 8005C07C 1000A2AF */  sw         $v0, 0x10($sp)
/* 4C880 8005C080 1400A3AF */  sw         $v1, 0x14($sp)
/* 4C884 8005C084 1769010C */  jal        FUN_8005a45c
/* 4C888 8005C088 1800A8AF */   sw        $t0, 0x18($sp)
/* 4C88C 8005C08C 01007326 */  addiu      $s3, $s3, 1
.L8005C090:
/* 4C890 8005C090 04000296 */  lhu        $v0, 4($s0)
/* 4C894 8005C094 00000000 */  nop
/* 4C898 8005C098 18005400 */  mult       $v0, $s4
/* 4C89C 8005C09C 01003126 */  addiu      $s1, $s1, 1
/* 4C8A0 8005C0A0 2000A38F */  lw         $v1, 0x20($sp)
/* 4C8A4 8005C0A4 12100000 */  mflo       $v0
/* 4C8A8 8005C0A8 03120200 */  sra        $v0, $v0, 8
/* 4C8AC 8005C0AC 21104300 */  addu       $v0, $v0, $v1
/* 4C8B0 8005C0B0 00002392 */  lbu        $v1, ($s1)
/* 4C8B4 8005C0B4 00000000 */  nop
/* 4C8B8 8005C0B8 CDFF6014 */  bnez       $v1, .L8005BFF0
/* 4C8BC 8005C0BC 21B8E202 */   addu      $s7, $s7, $v0
/* 4C8C0 8005C0C0 3F700108 */  j          .L8005C0FC
/* 4C8C4 8005C0C4 2A105302 */   slt       $v0, $s2, $s3
.L8005C0C8:
/* 4C8C8 8005C0C8 2400A68F */  lw         $a2, 0x24($sp)
/* 4C8CC 8005C0CC 2800A78F */  lw         $a3, 0x28($sp)
/* 4C8D0 8005C0D0 396D010C */  jal        FUN_8005b4e4
/* 4C8D4 8005C0D4 21284002 */   addu      $a1, $s2, $zero
/* 4C8D8 8005C0D8 8000A48F */  lw         $a0, 0x80($sp)
/* 4C8DC 8005C0DC 8000A68F */  lw         $a2, 0x80($sp)
/* 4C8E0 8005C0E0 21284002 */  addu       $a1, $s2, $zero
/* 4C8E4 8005C0E4 1000A4AF */  sw         $a0, 0x10($sp)
/* 4C8E8 8005C0E8 2120C003 */  addu       $a0, $fp, $zero
/* 4C8EC 8005C0EC EB6C010C */  jal        FUN_8005b3ac
/* 4C8F0 8005C0F0 2138C000 */   addu      $a3, $a2, $zero
/* 4C8F4 8005C0F4 01005226 */  addiu      $s2, $s2, 1
.L8005C0F8:
/* 4C8F8 8005C0F8 2A105302 */  slt        $v0, $s2, $s3
.L8005C0FC:
/* 4C8FC 8005C0FC F2FF4014 */  bnez       $v0, .L8005C0C8
/* 4C900 8005C100 2120C003 */   addu      $a0, $fp, $zero
/* 4C904 8005C104 21106002 */  addu       $v0, $s3, $zero
/* 4C908 8005C108 6400BF8F */  lw         $ra, 0x64($sp)
/* 4C90C 8005C10C 6000BE8F */  lw         $fp, 0x60($sp)
/* 4C910 8005C110 5C00B78F */  lw         $s7, 0x5c($sp)
/* 4C914 8005C114 5800B68F */  lw         $s6, 0x58($sp)
/* 4C918 8005C118 5400B58F */  lw         $s5, 0x54($sp)
/* 4C91C 8005C11C 5000B48F */  lw         $s4, 0x50($sp)
/* 4C920 8005C120 4C00B38F */  lw         $s3, 0x4c($sp)
/* 4C924 8005C124 4800B28F */  lw         $s2, 0x48($sp)
/* 4C928 8005C128 4400B18F */  lw         $s1, 0x44($sp)
/* 4C92C 8005C12C 4000B08F */  lw         $s0, 0x40($sp)
/* 4C930 8005C130 0800E003 */  jr         $ra
/* 4C934 8005C134 6800BD27 */   addiu     $sp, $sp, 0x68

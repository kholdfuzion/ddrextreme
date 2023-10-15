.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008c6ec
/* 7CEEC 8008C6EC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 7CEF0 8008C6F0 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 7CEF4 8008C6F4 21888000 */  addu       $s1, $a0, $zero
/* 7CEF8 8008C6F8 3400B3AF */  sw         $s3, 0x34($sp)
/* 7CEFC 8008C6FC 2198A000 */  addu       $s3, $a1, $zero
/* 7CF00 8008C700 2800B0AF */  sw         $s0, 0x28($sp)
/* 7CF04 8008C704 2180E000 */  addu       $s0, $a3, $zero
/* 7CF08 8008C708 02000424 */  addiu      $a0, $zero, 2
/* 7CF0C 8008C70C 3000B2AF */  sw         $s2, 0x30($sp)
/* 7CF10 8008C710 5000B28F */  lw         $s2, 0x50($sp)
/* 7CF14 8008C714 01000524 */  addiu      $a1, $zero, 1
/* 7CF18 8008C718 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 7CF1C 8008C71C 3800B4AF */  sw         $s4, 0x38($sp)
/* 7CF20 8008C720 4800A6AF */  sw         $a2, 0x48($sp)
/* 7CF24 8008C724 C3B0010C */  jal        FUN_8006c30c
/* 7CF28 8008C728 2000A0AF */   sw        $zero, 0x20($sp)
/* 7CF2C 8008C72C 02000424 */  addiu      $a0, $zero, 2
/* 7CF30 8008C730 0BB2010C */  jal        FUN_8006c82c
/* 7CF34 8008C734 FD000524 */   addiu     $a1, $zero, 0xfd
/* 7CF38 8008C738 02000424 */  addiu      $a0, $zero, 2
/* 7CF3C 8008C73C FFFF0524 */  addiu      $a1, $zero, -1
/* 7CF40 8008C740 2130A000 */  addu       $a2, $a1, $zero
/* 7CF44 8008C744 2138A000 */  addu       $a3, $a1, $zero
/* 7CF48 8008C748 2110A000 */  addu       $v0, $a1, $zero
/* 7CF4C 8008C74C 9CAE010C */  jal        FUN_8006ba70
/* 7CF50 8008C750 1000A2AF */   sw        $v0, 0x10($sp)
/* 7CF54 8008C754 02000424 */  addiu      $a0, $zero, 2
/* 7CF58 8008C758 33B1010C */  jal        FUN_8006c4cc
/* 7CF5C 8008C75C 21280000 */   addu      $a1, $zero, $zero
/* 7CF60 8008C760 02000424 */  addiu      $a0, $zero, 2
/* 7CF64 8008C764 81B1010C */  jal        FUN_8006c604
/* 7CF68 8008C768 FFFF0524 */   addiu     $a1, $zero, -1
/* 7CF6C 8008C76C AC482392 */  lbu        $v1, 0x48ac($s1)
/* 7CF70 8008C770 01000224 */  addiu      $v0, $zero, 1
/* 7CF74 8008C774 10006214 */  bne        $v1, $v0, .L8008C7B8
/* 7CF78 8008C778 02001424 */   addiu     $s4, $zero, 2
/* 7CF7C 8008C77C 21202002 */  addu       $a0, $s1, $zero
/* 7CF80 8008C780 21286002 */  addu       $a1, $s3, $zero
/* 7CF84 8008C784 1000B2AF */  sw         $s2, 0x10($sp)
/* 7CF88 8008C788 4800A68F */  lw         $a2, 0x48($sp)
/* 7CF8C 8008C78C 9E1D020C */  jal        FUN_80087678
/* 7CF90 8008C790 21380002 */   addu      $a3, $s0, $zero
/* 7CF94 8008C794 21202002 */  addu       $a0, $s1, $zero
/* 7CF98 8008C798 21286002 */  addu       $a1, $s3, $zero
/* 7CF9C 8008C79C 21304000 */  addu       $a2, $v0, $zero
/* 7CFA0 8008C7A0 21380002 */  addu       $a3, $s0, $zero
/* 7CFA4 8008C7A4 4800A6AF */  sw         $a2, 0x48($sp)
/* 7CFA8 8008C7A8 D329020C */  jal        FUN_8008a74c
/* 7CFAC 8008C7AC 1000B2AF */   sw        $s2, 0x10($sp)
/* 7CFB0 8008C7B0 08320208 */  j          .L8008C820
/* 7CFB4 8008C7B4 4800A2AF */   sw        $v0, 0x48($sp)
.L8008C7B8:
/* 7CFB8 8008C7B8 21202002 */  addu       $a0, $s1, $zero
/* 7CFBC 8008C7BC 21286002 */  addu       $a1, $s3, $zero
/* 7CFC0 8008C7C0 4800A627 */  addiu      $a2, $sp, 0x48
/* 7CFC4 8008C7C4 02000724 */  addiu      $a3, $zero, 2
/* 7CFC8 8008C7C8 2000A227 */  addiu      $v0, $sp, 0x20
/* 7CFCC 8008C7CC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7CFD0 8008C7D0 1400B0AF */  sw         $s0, 0x14($sp)
/* 7CFD4 8008C7D4 C708020C */  jal        FUN_8008231c
/* 7CFD8 8008C7D8 1800B2AF */   sw        $s2, 0x18($sp)
/* 7CFDC 8008C7DC 21202002 */  addu       $a0, $s1, $zero
/* 7CFE0 8008C7E0 21286002 */  addu       $a1, $s3, $zero
/* 7CFE4 8008C7E4 4800A68F */  lw         $a2, 0x48($sp)
/* 7CFE8 8008C7E8 21380002 */  addu       $a3, $s0, $zero
/* 7CFEC 8008C7EC 8027020C */  jal        FUN_80089e00
/* 7CFF0 8008C7F0 1000B2AF */   sw        $s2, 0x10($sp)
/* 7CFF4 8008C7F4 21304000 */  addu       $a2, $v0, $zero
/* 7CFF8 8008C7F8 4800A6AF */  sw         $a2, 0x48($sp)
/* 7CFFC 8008C7FC 9C0B2282 */  lb         $v0, 0xb9c($s1)
/* 7D000 8008C800 00000000 */  nop
/* 7D004 8008C804 06004010 */  beqz       $v0, .L8008C820
/* 7D008 8008C808 21202002 */   addu      $a0, $s1, $zero
/* 7D00C 8008C80C 21286002 */  addu       $a1, $s3, $zero
/* 7D010 8008C810 21380002 */  addu       $a3, $s0, $zero
/* 7D014 8008C814 4805020C */  jal        FUN_80081520
/* 7D018 8008C818 1000B2AF */   sw        $s2, 0x10($sp)
/* 7D01C 8008C81C 4800A2AF */  sw         $v0, 0x48($sp)
.L8008C820:
/* 7D020 8008C820 E048228E */  lw         $v0, 0x48e0($s1)
/* 7D024 8008C824 00000000 */  nop
/* 7D028 8008C828 0B004010 */  beqz       $v0, .L8008C858
/* 7D02C 8008C82C 0F80023C */   lui       $v0, %hi(D_800F0048)
/* 7D030 8008C830 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 7D034 8008C834 01000224 */  addiu      $v0, $zero, 1
/* 7D038 8008C838 07006210 */  beq        $v1, $v0, .L8008C858
/* 7D03C 8008C83C 21202002 */   addu      $a0, $s1, $zero
/* 7D040 8008C840 21286002 */  addu       $a1, $s3, $zero
/* 7D044 8008C844 4800A68F */  lw         $a2, 0x48($sp)
/* 7D048 8008C848 21380002 */  addu       $a3, $s0, $zero
/* 7D04C 8008C84C D304020C */  jal        FUN_8008134c
/* 7D050 8008C850 1000B2AF */   sw        $s2, 0x10($sp)
/* 7D054 8008C854 4800A2AF */  sw         $v0, 0x48($sp)
.L8008C858:
/* 7D058 8008C858 E40A238E */  lw         $v1, 0xae4($s1)
/* 7D05C 8008C85C 10000224 */  addiu      $v0, $zero, 0x10
/* 7D060 8008C860 06006210 */  beq        $v1, $v0, .L8008C87C
/* 7D064 8008C864 18004302 */   mult      $s2, $v1
/* 7D068 8008C868 12380000 */  mflo       $a3
/* 7D06C 8008C86C 0300E104 */  bgez       $a3, .L8008C87C
/* 7D070 8008C870 03810700 */   sra       $s0, $a3, 4
/* 7D074 8008C874 0F00E724 */  addiu      $a3, $a3, 0xf
/* 7D078 8008C878 03810700 */  sra        $s0, $a3, 4
.L8008C87C:
/* 7D07C 8008C87C 21202002 */  addu       $a0, $s1, $zero
/* 7D080 8008C880 21286002 */  addu       $a1, $s3, $zero
/* 7D084 8008C884 4800A68F */  lw         $a2, 0x48($sp)
/* 7D088 8008C888 21380002 */  addu       $a3, $s0, $zero
/* 7D08C 8008C88C 8912020C */  jal        FUN_80084a24
/* 7D090 8008C890 1000B2AF */   sw        $s2, 0x10($sp)
/* 7D094 8008C894 21202002 */  addu       $a0, $s1, $zero
/* 7D098 8008C898 21286002 */  addu       $a1, $s3, $zero
/* 7D09C 8008C89C 21304000 */  addu       $a2, $v0, $zero
/* 7D0A0 8008C8A0 21380002 */  addu       $a3, $s0, $zero
/* 7D0A4 8008C8A4 4800A6AF */  sw         $a2, 0x48($sp)
/* 7D0A8 8008C8A8 AD25020C */  jal        FUN_800896b4
/* 7D0AC 8008C8AC 1000B2AF */   sw        $s2, 0x10($sp)
/* 7D0B0 8008C8B0 21202002 */  addu       $a0, $s1, $zero
/* 7D0B4 8008C8B4 21286002 */  addu       $a1, $s3, $zero
/* 7D0B8 8008C8B8 4800A627 */  addiu      $a2, $sp, 0x48
/* 7D0BC 8008C8BC 21388002 */  addu       $a3, $s4, $zero
/* 7D0C0 8008C8C0 4800A2AF */  sw         $v0, 0x48($sp)
/* 7D0C4 8008C8C4 2000A227 */  addiu      $v0, $sp, 0x20
/* 7D0C8 8008C8C8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D0CC 8008C8CC 1400B0AF */  sw         $s0, 0x14($sp)
/* 7D0D0 8008C8D0 2317020C */  jal        FUN_80085c8c
/* 7D0D4 8008C8D4 1800B2AF */   sw        $s2, 0x18($sp)
/* 7D0D8 8008C8D8 2000A58F */  lw         $a1, 0x20($sp)
/* 7D0DC 8008C8DC 15B1010C */  jal        FUN_8006c454
/* 7D0E0 8008C8E0 21208002 */   addu      $a0, $s4, $zero
/* 7D0E4 8008C8E4 EAAE010C */  jal        FUN_8006bba8
/* 7D0E8 8008C8E8 21208002 */   addu      $a0, $s4, $zero
/* 7D0EC 8008C8EC 4800A28F */  lw         $v0, 0x48($sp)
/* 7D0F0 8008C8F0 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 7D0F4 8008C8F4 3800B48F */  lw         $s4, 0x38($sp)
/* 7D0F8 8008C8F8 3400B38F */  lw         $s3, 0x34($sp)
/* 7D0FC 8008C8FC 3000B28F */  lw         $s2, 0x30($sp)
/* 7D100 8008C900 2C00B18F */  lw         $s1, 0x2c($sp)
/* 7D104 8008C904 2800B08F */  lw         $s0, 0x28($sp)
/* 7D108 8008C908 0800E003 */  jr         $ra
/* 7D10C 8008C90C 4000BD27 */   addiu     $sp, $sp, 0x40

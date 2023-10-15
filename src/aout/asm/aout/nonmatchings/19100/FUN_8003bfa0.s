.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003bfa0
/* 2C7A0 8003BFA0 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 2C7A4 8003BFA4 4400B1AF */  sw         $s1, 0x44($sp)
/* 2C7A8 8003BFA8 2188A000 */  addu       $s1, $a1, $zero
/* 2C7AC 8003BFAC 1380023C */  lui        $v0, %hi(D_801280E0)
/* 2C7B0 8003BFB0 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 2C7B4 8003BFB4 2110C200 */  addu       $v0, $a2, $v0
/* 2C7B8 8003BFB8 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 2C7BC 8003BFBC 21988000 */  addu       $s3, $a0, $zero
/* 2C7C0 8003BFC0 6000BFAF */  sw         $ra, 0x60($sp)
/* 2C7C4 8003BFC4 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 2C7C8 8003BFC8 5800B6AF */  sw         $s6, 0x58($sp)
/* 2C7CC 8003BFCC 5400B5AF */  sw         $s5, 0x54($sp)
/* 2C7D0 8003BFD0 5000B4AF */  sw         $s4, 0x50($sp)
/* 2C7D4 8003BFD4 4800B2AF */  sw         $s2, 0x48($sp)
/* 2C7D8 8003BFD8 4000B0AF */  sw         $s0, 0x40($sp)
/* 2C7DC 8003BFDC 00004590 */  lbu        $a1, ($v0)
/* 2C7E0 8003BFE0 1380023C */  lui        $v0, %hi(D_801282E0)
/* 2C7E4 8003BFE4 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 2C7E8 8003BFE8 1E000424 */  addiu      $a0, $zero, 0x1e
/* 2C7EC 8003BFEC C0180500 */  sll        $v1, $a1, 3
/* 2C7F0 8003BFF0 23186500 */  subu       $v1, $v1, $a1
/* 2C7F4 8003BFF4 80180300 */  sll        $v1, $v1, 2
/* 2C7F8 8003BFF8 0400C414 */  bne        $a2, $a0, .L8003C00C
/* 2C7FC 8003BFFC 21806200 */   addu      $s0, $v1, $v0
/* 2C800 8003C000 FFFF1724 */  addiu      $s7, $zero, -1
/* 2C804 8003C004 05F00008 */  j          .L8003C014
/* 2C808 8003C008 01001624 */   addiu     $s6, $zero, 1
.L8003C00C:
/* 2C80C 8003C00C 21B80000 */  addu       $s7, $zero, $zero
/* 2C810 8003C010 21B00000 */  addu       $s6, $zero, $zero
.L8003C014:
/* 2C814 8003C014 21900000 */  addu       $s2, $zero, $zero
/* 2C818 8003C018 3000B427 */  addiu      $s4, $sp, 0x30
/* 2C81C 8003C01C 21A88002 */  addu       $s5, $s4, $zero
/* 2C820 8003C020 2000A427 */  addiu      $a0, $sp, 0x20
.L8003C024:
/* 2C824 8003C024 2128A002 */  addu       $a1, $s5, $zero
/* 2C828 8003C028 21304002 */  addu       $a2, $s2, $zero
/* 2C82C 8003C02C F6F0000C */  jal        FUN_8003c3d8
/* 2C830 8003C030 2138C002 */   addu      $a3, $s6, $zero
/* 2C834 8003C034 2000A427 */  addiu      $a0, $sp, 0x20
/* 2C838 8003C038 17F1000C */  jal        FUN_8003c45c
/* 2C83C 8003C03C 2128A002 */   addu      $a1, $s5, $zero
/* 2C840 8003C040 20004014 */  bnez       $v0, .L8003C0C4
/* 2C844 8003C044 21206002 */   addu      $a0, $s3, $zero
/* 2C848 8003C048 04000686 */  lh         $a2, 4($s0)
/* 2C84C 8003C04C 21282002 */  addu       $a1, $s1, $zero
/* 2C850 8003C050 1C00B7AF */  sw         $s7, 0x1c($sp)
/* 2C854 8003C054 08000286 */  lh         $v0, 8($s0)
/* 2C858 8003C058 06000786 */  lh         $a3, 6($s0)
/* 2C85C 8003C05C FFFF4224 */  addiu      $v0, $v0, -1
/* 2C860 8003C060 1000A2AF */  sw         $v0, 0x10($sp)
/* 2C864 8003C064 0A000386 */  lh         $v1, 0xa($s0)
/* 2C868 8003C068 0C000286 */  lh         $v0, 0xc($s0)
/* 2C86C 8003C06C FFFF6324 */  addiu      $v1, $v1, -1
/* 2C870 8003C070 1400A3AF */  sw         $v1, 0x14($sp)
/* 2C874 8003C074 1769010C */  jal        FUN_8005a45c
/* 2C878 8003C078 1800A2AF */   sw        $v0, 0x18($sp)
/* 2C87C 8003C07C 21206002 */  addu       $a0, $s3, $zero
/* 2C880 8003C080 16000686 */  lh         $a2, 0x16($s0)
/* 2C884 8003C084 18000786 */  lh         $a3, 0x18($s0)
/* 2C888 8003C088 396D010C */  jal        FUN_8005b4e4
/* 2C88C 8003C08C 21282002 */   addu      $a1, $s1, $zero
/* 2C890 8003C090 21206002 */  addu       $a0, $s3, $zero
/* 2C894 8003C094 21282002 */  addu       $a1, $s1, $zero
/* 2C898 8003C098 80000624 */  addiu      $a2, $zero, 0x80
/* 2C89C 8003C09C 80000724 */  addiu      $a3, $zero, 0x80
/* 2C8A0 8003C0A0 80000224 */  addiu      $v0, $zero, 0x80
/* 2C8A4 8003C0A4 EB6C010C */  jal        FUN_8005b3ac
/* 2C8A8 8003C0A8 1000A2AF */   sw        $v0, 0x10($sp)
/* 2C8AC 8003C0AC 21206002 */  addu       $a0, $s3, $zero
/* 2C8B0 8003C0B0 21282002 */  addu       $a1, $s1, $zero
/* 2C8B4 8003C0B4 2000A627 */  addiu      $a2, $sp, 0x20
/* 2C8B8 8003C0B8 C16D010C */  jal        FUN_8005b704
/* 2C8BC 8003C0BC 21388002 */   addu      $a3, $s4, $zero
/* 2C8C0 8003C0C0 01003126 */  addiu      $s1, $s1, 1
.L8003C0C4:
/* 2C8C4 8003C0C4 01005226 */  addiu      $s2, $s2, 1
/* 2C8C8 8003C0C8 0600422A */  slti       $v0, $s2, 6
/* 2C8CC 8003C0CC D5FF4014 */  bnez       $v0, .L8003C024
/* 2C8D0 8003C0D0 2000A427 */   addiu     $a0, $sp, 0x20
/* 2C8D4 8003C0D4 21102002 */  addu       $v0, $s1, $zero
/* 2C8D8 8003C0D8 6000BF8F */  lw         $ra, 0x60($sp)
/* 2C8DC 8003C0DC 5C00B78F */  lw         $s7, 0x5c($sp)
/* 2C8E0 8003C0E0 5800B68F */  lw         $s6, 0x58($sp)
/* 2C8E4 8003C0E4 5400B58F */  lw         $s5, 0x54($sp)
/* 2C8E8 8003C0E8 5000B48F */  lw         $s4, 0x50($sp)
/* 2C8EC 8003C0EC 4C00B38F */  lw         $s3, 0x4c($sp)
/* 2C8F0 8003C0F0 4800B28F */  lw         $s2, 0x48($sp)
/* 2C8F4 8003C0F4 4400B18F */  lw         $s1, 0x44($sp)
/* 2C8F8 8003C0F8 4000B08F */  lw         $s0, 0x40($sp)
/* 2C8FC 8003C0FC 0800E003 */  jr         $ra
/* 2C900 8003C100 6800BD27 */   addiu     $sp, $sp, 0x68

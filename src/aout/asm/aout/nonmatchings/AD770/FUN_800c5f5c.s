.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5f5c
/* B675C 800C5F5C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6760 800C5F60 1400B1AF */  sw         $s1, 0x14($sp)
/* B6764 800C5F64 21880000 */  addu       $s1, $zero, $zero
/* B6768 800C5F68 2000B4AF */  sw         $s4, 0x20($sp)
/* B676C 800C5F6C 2080023C */  lui        $v0, %hi(D_801FB764)
/* B6770 800C5F70 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6774 800C5F74 64B75324 */  addiu      $s3, $v0, %lo(D_801FB764)
/* B6778 800C5F78 1000B0AF */  sw         $s0, 0x10($sp)
/* B677C 800C5F7C B4BC7026 */  addiu      $s0, $s3, -0x434c
/* B6780 800C5F80 01000424 */  addiu      $a0, $zero, 1
/* B6784 800C5F84 2400BFAF */  sw         $ra, 0x24($sp)
/* B6788 800C5F88 1800B2AF */  sw         $s2, 0x18($sp)
/* B678C 800C5F8C 0400038E */  lw         $v1, 4($s0)
/* B6790 800C5F90 B4BC728E */  lw         $s2, -0x434c($s3)
/* B6794 800C5F94 10006410 */  beq        $v1, $a0, .L800C5FD8
/* B6798 800C5F98 21A02002 */   addu      $s4, $s1, $zero
/* B679C 800C5F9C 02006228 */  slti       $v0, $v1, 2
/* B67A0 800C5FA0 05004010 */  beqz       $v0, .L800C5FB8
/* B67A4 800C5FA4 00000000 */   nop
/* B67A8 800C5FA8 0A006010 */  beqz       $v1, .L800C5FD4
/* B67AC 800C5FAC 00000000 */   nop
/* B67B0 800C5FB0 11180308 */  j          .L800C6044
/* B67B4 800C5FB4 00000000 */   nop
.L800C5FB8:
/* B67B8 800C5FB8 02000224 */  addiu      $v0, $zero, 2
/* B67BC 800C5FBC 11006210 */  beq        $v1, $v0, .L800C6004
/* B67C0 800C5FC0 03000224 */   addiu     $v0, $zero, 3
/* B67C4 800C5FC4 1D006210 */  beq        $v1, $v0, .L800C603C
/* B67C8 800C5FC8 00000000 */   nop
/* B67CC 800C5FCC 11180308 */  j          .L800C6044
/* B67D0 800C5FD0 00000000 */   nop
.L800C5FD4:
/* B67D4 800C5FD4 040004AE */  sw         $a0, 4($s0)
.L800C5FD8:
/* B67D8 800C5FD8 0C00648E */  lw         $a0, 0xc($s3)
/* B67DC 800C5FDC 1800658E */  lw         $a1, 0x18($s3)
/* B67E0 800C5FE0 9A25030C */  jal        FUN_800c9668
/* B67E4 800C5FE4 00000000 */   nop
/* B67E8 800C5FE8 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B67EC 800C5FEC 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B67F0 800C5FF0 0400628C */  lw         $v0, 4($v1)
/* B67F4 800C5FF4 00000000 */  nop
/* B67F8 800C5FF8 01004224 */  addiu      $v0, $v0, 1
/* B67FC 800C5FFC 11180308 */  j          .L800C6044
/* B6800 800C6000 040062AC */   sw        $v0, 4($v1)
.L800C6004:
/* B6804 800C6004 F224030C */  jal        FUN_800c93c8
/* B6808 800C6008 00000000 */   nop
/* B680C 800C600C 21884000 */  addu       $s1, $v0, $zero
/* B6810 800C6010 FEFF0224 */  addiu      $v0, $zero, -2
/* B6814 800C6014 0B002212 */  beq        $s1, $v0, .L800C6044
/* B6818 800C6018 00000000 */   nop
/* B681C 800C601C 03002012 */  beqz       $s1, .L800C602C
/* B6820 800C6020 00000000 */   nop
/* B6824 800C6024 11180308 */  j          .L800C6044
/* B6828 800C6028 01001424 */   addiu     $s4, $zero, 1
.L800C602C:
/* B682C 800C602C 0400028E */  lw         $v0, 4($s0)
/* B6830 800C6030 00000000 */  nop
/* B6834 800C6034 01004224 */  addiu      $v0, $v0, 1
/* B6838 800C6038 040002AE */  sw         $v0, 4($s0)
.L800C603C:
/* B683C 800C603C 21900000 */  addu       $s2, $zero, $zero
/* B6840 800C6040 080060AE */  sw         $zero, 8($s3)
.L800C6044:
/* B6844 800C6044 04008012 */  beqz       $s4, .L800C6058
/* B6848 800C6048 21104002 */   addu      $v0, $s2, $zero
/* B684C 800C604C 21900000 */  addu       $s2, $zero, $zero
/* B6850 800C6050 080071AE */  sw         $s1, 8($s3)
/* B6854 800C6054 21104002 */  addu       $v0, $s2, $zero
.L800C6058:
/* B6858 800C6058 2400BF8F */  lw         $ra, 0x24($sp)
/* B685C 800C605C 2000B48F */  lw         $s4, 0x20($sp)
/* B6860 800C6060 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6864 800C6064 1800B28F */  lw         $s2, 0x18($sp)
/* B6868 800C6068 1400B18F */  lw         $s1, 0x14($sp)
/* B686C 800C606C 1000B08F */  lw         $s0, 0x10($sp)
/* B6870 800C6070 0800E003 */  jr         $ra
/* B6874 800C6074 2800BD27 */   addiu     $sp, $sp, 0x28

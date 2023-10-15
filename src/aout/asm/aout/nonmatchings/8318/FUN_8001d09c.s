.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001d09c
/* D89C 8001D09C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* D8A0 8001D0A0 1000B0AF */  sw         $s0, 0x10($sp)
/* D8A4 8001D0A4 21808000 */  addu       $s0, $a0, $zero
/* D8A8 8001D0A8 1400B1AF */  sw         $s1, 0x14($sp)
/* D8AC 8001D0AC 1800BFAF */  sw         $ra, 0x18($sp)
/* D8B0 8001D0B0 0C00A384 */  lh         $v1, 0xc($a1)
/* D8B4 8001D0B4 02000224 */  addiu      $v0, $zero, 2
/* D8B8 8001D0B8 4F006210 */  beq        $v1, $v0, .L8001D1F8
/* D8BC 8001D0BC 2188C000 */   addu      $s1, $a2, $zero
/* D8C0 8001D0C0 E7030224 */  addiu      $v0, $zero, 0x3e7
/* D8C4 8001D0C4 4C006210 */  beq        $v1, $v0, .L8001D1F8
/* D8C8 8001D0C8 64000224 */   addiu     $v0, $zero, 0x64
/* D8CC 8001D0CC 4A006210 */  beq        $v1, $v0, .L8001D1F8
/* D8D0 8001D0D0 2580073C */   lui       $a3, 0x8025
/* D8D4 8001D0D4 10000224 */  addiu      $v0, $zero, 0x10
/* D8D8 8001D0D8 06000386 */  lh         $v1, 6($s0)
/* D8DC 8001D0DC 06000496 */  lhu        $a0, 6($s0)
/* D8E0 8001D0E0 0F006214 */  bne        $v1, $v0, .L8001D120
/* D8E4 8001D0E4 007EE734 */   ori       $a3, $a3, 0x7e00
/* D8E8 8001D0E8 04000286 */  lh         $v0, 4($s0)
/* D8EC 8001D0EC 00000000 */  nop
/* D8F0 8001D0F0 0C004314 */  bne        $v0, $v1, .L8001D124
/* D8F4 8001D0F4 00140400 */   sll       $v0, $a0, 0x10
/* D8F8 8001D0F8 00010224 */  addiu      $v0, $zero, 0x100
/* D8FC 8001D0FC 01000324 */  addiu      $v1, $zero, 1
/* D900 8001D100 040002A6 */  sh         $v0, 4($s0)
/* D904 8001D104 7CAA000C */  jal        vsync_8002a9f0
/* D908 8001D108 060003A6 */   sh        $v1, 6($s0)
/* D90C 8001D10C 21200002 */  addu       $a0, $s0, $zero
/* D910 8001D110 8361000C */  jal        LoadImage
/* D914 8001D114 21282002 */   addu      $a1, $s1, $zero
/* D918 8001D118 7C740008 */  j          .L8001D1F0
/* D91C 8001D11C 00000000 */   nop
.L8001D120:
/* D920 8001D120 00140400 */  sll        $v0, $a0, 0x10
.L8001D124:
/* D924 8001D124 03140200 */  sra        $v0, $v0, 0x10
/* D928 8001D128 08000324 */  addiu      $v1, $zero, 8
/* D92C 8001D12C 05004314 */  bne        $v0, $v1, .L8001D144
/* D930 8001D130 10000224 */   addiu     $v0, $zero, 0x10
/* D934 8001D134 04000386 */  lh         $v1, 4($s0)
/* D938 8001D138 00000000 */  nop
/* D93C 8001D13C 2C006210 */  beq        $v1, $v0, .L8001D1F0
/* D940 8001D140 00000000 */   nop
.L8001D144:
/* D944 8001D144 0C00A294 */  lhu        $v0, 0xc($a1)
/* D948 8001D148 00000000 */  nop
/* D94C 8001D14C FDFF4224 */  addiu      $v0, $v0, -3
/* D950 8001D150 0200422C */  sltiu      $v0, $v0, 2
/* D954 8001D154 21004010 */  beqz       $v0, .L8001D1DC
/* D958 8001D158 21300000 */   addu      $a2, $zero, $zero
/* D95C 8001D15C 03000924 */  addiu      $t1, $zero, 3
/* D960 8001D160 04000824 */  addiu      $t0, $zero, 4
/* D964 8001D164 2120E000 */  addu       $a0, $a3, $zero
.L8001D168:
/* D968 8001D168 0C00A284 */  lh         $v0, 0xc($a1)
/* D96C 8001D16C 00000000 */  nop
/* D970 8001D170 04004914 */  bne        $v0, $t1, .L8001D184
/* D974 8001D174 00000000 */   nop
/* D978 8001D178 0F00C230 */  andi       $v0, $a2, 0xf
/* D97C 8001D17C 64740008 */  j          .L8001D190
/* D980 8001D180 40100200 */   sll       $v0, $v0, 1
.L8001D184:
/* D984 8001D184 06004814 */  bne        $v0, $t0, .L8001D1A0
/* D988 8001D188 C3100600 */   sra       $v0, $a2, 3
/* D98C 8001D18C 1E004230 */  andi       $v0, $v0, 0x1e
.L8001D190:
/* D990 8001D190 21105100 */  addu       $v0, $v0, $s1
/* D994 8001D194 00004394 */  lhu        $v1, ($v0)
/* D998 8001D198 00000000 */  nop
/* D99C 8001D19C 000083A4 */  sh         $v1, ($a0)
.L8001D1A0:
/* D9A0 8001D1A0 0100C624 */  addiu      $a2, $a2, 1
/* D9A4 8001D1A4 0001C228 */  slti       $v0, $a2, 0x100
/* D9A8 8001D1A8 EFFF4014 */  bnez       $v0, .L8001D168
/* D9AC 8001D1AC 02008424 */   addiu     $a0, $a0, 2
/* D9B0 8001D1B0 00010224 */  addiu      $v0, $zero, 0x100
/* D9B4 8001D1B4 01000324 */  addiu      $v1, $zero, 1
/* D9B8 8001D1B8 040002A6 */  sh         $v0, 4($s0)
/* D9BC 8001D1BC 7CAA000C */  jal        vsync_8002a9f0
/* D9C0 8001D1C0 060003A6 */   sh        $v1, 6($s0)
/* D9C4 8001D1C4 21200002 */  addu       $a0, $s0, $zero
/* D9C8 8001D1C8 2580053C */  lui        $a1, 0x8025
/* D9CC 8001D1CC 8361000C */  jal        LoadImage
/* D9D0 8001D1D0 007EA534 */   ori       $a1, $a1, 0x7e00
/* D9D4 8001D1D4 7C740008 */  j          .L8001D1F0
/* D9D8 8001D1D8 00000000 */   nop
.L8001D1DC:
/* D9DC 8001D1DC 7CAA000C */  jal        vsync_8002a9f0
/* D9E0 8001D1E0 00000000 */   nop
/* D9E4 8001D1E4 21200002 */  addu       $a0, $s0, $zero
/* D9E8 8001D1E8 8361000C */  jal        LoadImage
/* D9EC 8001D1EC 21282002 */   addu      $a1, $s1, $zero
.L8001D1F0:
/* D9F0 8001D1F0 D860000C */  jal        DrawSync
/* D9F4 8001D1F4 21200000 */   addu      $a0, $zero, $zero
.L8001D1F8:
/* D9F8 8001D1F8 1800BF8F */  lw         $ra, 0x18($sp)
/* D9FC 8001D1FC 1400B18F */  lw         $s1, 0x14($sp)
/* DA00 8001D200 1000B08F */  lw         $s0, 0x10($sp)
/* DA04 8001D204 0800E003 */  jr         $ra
/* DA08 8001D208 2000BD27 */   addiu     $sp, $sp, 0x20

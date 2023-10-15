.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d114
/* 1D914 8002D114 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1D918 8002D118 21180000 */  addu       $v1, $zero, $zero
/* 1D91C 8002D11C 1800B2AF */  sw         $s2, 0x18($sp)
/* 1D920 8002D120 04001224 */  addiu      $s2, $zero, 4
/* 1D924 8002D124 2400BFAF */  sw         $ra, 0x24($sp)
/* 1D928 8002D128 2000B4AF */  sw         $s4, 0x20($sp)
/* 1D92C 8002D12C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1D930 8002D130 1400B1AF */  sw         $s1, 0x14($sp)
/* 1D934 8002D134 1000B0AF */  sw         $s0, 0x10($sp)
/* 1D938 8002D138 21800000 */  addu       $s0, $zero, $zero
.L8002D13C:
/* 1D93C 8002D13C 52B40008 */  j          .L8002D148
/* 1D940 8002D140 01007424 */   addiu     $s4, $v1, 1
.L8002D144:
/* 1D944 8002D144 01001026 */  addiu      $s0, $s0, 1
.L8002D148:
/* 1D948 8002D148 0400022A */  slti       $v0, $s0, 4
/* 1D94C 8002D14C 09004010 */  beqz       $v0, .L8002D174
/* 1D950 8002D150 00000000 */   nop
/* 1D954 8002D154 CD6B000C */  jal        VSync
/* 1D958 8002D158 21200000 */   addu      $a0, $zero, $zero
/* 1D95C 8002D15C 7CAA000C */  jal        vsync_8002a9f0
/* 1D960 8002D160 00000000 */   nop
/* 1D964 8002D164 1F05030C */  jal        FUN_800c147c
/* 1D968 8002D168 00000000 */   nop
/* 1D96C 8002D16C F5FF4014 */  bnez       $v0, .L8002D144
/* 1D970 8002D170 00000000 */   nop
.L8002D174:
/* 1D974 8002D174 CD6B000C */  jal        VSync
/* 1D978 8002D178 21200000 */   addu      $a0, $zero, $zero
/* 1D97C 8002D17C 7CAA000C */  jal        vsync_8002a9f0
/* 1D980 8002D180 00000000 */   nop
/* 1D984 8002D184 04001216 */  bne        $s0, $s2, .L8002D198
/* 1D988 8002D188 21880000 */   addu      $s1, $zero, $zero
/* 1D98C 8002D18C DFB9000C */  jal        FUN_8002e77c
/* 1D990 8002D190 01000424 */   addiu     $a0, $zero, 1
/* 1D994 8002D194 21880000 */  addu       $s1, $zero, $zero
.L8002D198:
/* 1D998 8002D198 7EB40008 */  j          .L8002D1F8
/* 1D99C 8002D19C 0E80133C */   lui       $s3, 0x800e
.L8002D1A0:
/* 1D9A0 8002D1A0 6BB40008 */  j          .L8002D1AC
/* 1D9A4 8002D1A4 01003126 */   addiu     $s1, $s1, 1
.L8002D1A8:
/* 1D9A8 8002D1A8 01001026 */  addiu      $s0, $s0, 1
.L8002D1AC:
/* 1D9AC 8002D1AC 0400022A */  slti       $v0, $s0, 4
/* 1D9B0 8002D1B0 09004010 */  beqz       $v0, .L8002D1D8
/* 1D9B4 8002D1B4 00000000 */   nop
/* 1D9B8 8002D1B8 CD6B000C */  jal        VSync
/* 1D9BC 8002D1BC 21200000 */   addu      $a0, $zero, $zero
/* 1D9C0 8002D1C0 7CAA000C */  jal        vsync_8002a9f0
/* 1D9C4 8002D1C4 00000000 */   nop
/* 1D9C8 8002D1C8 1F05030C */  jal        FUN_800c147c
/* 1D9CC 8002D1CC 00000000 */   nop
/* 1D9D0 8002D1D0 F5FF4014 */  bnez       $v0, .L8002D1A8
/* 1D9D4 8002D1D4 00000000 */   nop
.L8002D1D8:
/* 1D9D8 8002D1D8 CD6B000C */  jal        VSync
/* 1D9DC 8002D1DC 21200000 */   addu      $a0, $zero, $zero
/* 1D9E0 8002D1E0 7CAA000C */  jal        vsync_8002a9f0
/* 1D9E4 8002D1E4 00000000 */   nop
/* 1D9E8 8002D1E8 04001216 */  bne        $s0, $s2, .L8002D1FC
/* 1D9EC 8002D1EC 0400222A */   slti      $v0, $s1, 4
/* 1D9F0 8002D1F0 DFB9000C */  jal        FUN_8002e77c
/* 1D9F4 8002D1F4 01000424 */   addiu     $a0, $zero, 1
.L8002D1F8:
/* 1D9F8 8002D1F8 0400222A */  slti       $v0, $s1, 4
.L8002D1FC:
/* 1D9FC 8002D1FC 06004010 */  beqz       $v0, .L8002D218
/* 1DA00 8002D200 FF000424 */   addiu     $a0, $zero, 0xff
/* 1DA04 8002D204 448D6526 */  addiu      $a1, $s3, -0x72bc
/* 1DA08 8002D208 E905030C */  jal        FUN_800c17a4
/* 1DA0C 8002D20C 02000624 */   addiu     $a2, $zero, 2
/* 1DA10 8002D210 E3FF4014 */  bnez       $v0, .L8002D1A0
/* 1DA14 8002D214 21800000 */   addu      $s0, $zero, $zero
.L8002D218:
/* 1DA18 8002D218 03003216 */  bne        $s1, $s2, .L8002D228
/* 1DA1C 8002D21C 00000000 */   nop
/* 1DA20 8002D220 DFB9000C */  jal        FUN_8002e77c
/* 1DA24 8002D224 02000424 */   addiu     $a0, $zero, 2
.L8002D228:
/* 1DA28 8002D228 CD6B000C */  jal        VSync
/* 1DA2C 8002D22C 01000424 */   addiu     $a0, $zero, 1
/* 1DA30 8002D230 90B40008 */  j          .L8002D240
/* 1DA34 8002D234 FFFF5030 */   andi      $s0, $v0, 0xffff
.L8002D238:
/* 1DA38 8002D238 7CAA000C */  jal        vsync_8002a9f0
/* 1DA3C 8002D23C 00000000 */   nop
.L8002D240:
/* 1DA40 8002D240 CD6B000C */  jal        VSync
/* 1DA44 8002D244 01000424 */   addiu     $a0, $zero, 1
/* 1DA48 8002D248 23105000 */  subu       $v0, $v0, $s0
/* 1DA4C 8002D24C FFFF4230 */  andi       $v0, $v0, 0xffff
/* 1DA50 8002D250 0701422C */  sltiu      $v0, $v0, 0x107
/* 1DA54 8002D254 F8FF4014 */  bnez       $v0, .L8002D238
/* 1DA58 8002D258 21188002 */   addu      $v1, $s4, $zero
/* 1DA5C 8002D25C 02006228 */  slti       $v0, $v1, 2
/* 1DA60 8002D260 B6FF4014 */  bnez       $v0, .L8002D13C
/* 1DA64 8002D264 21800000 */   addu      $s0, $zero, $zero
/* 1DA68 8002D268 9EB40008 */  j          .L8002D278
/* 1DA6C 8002D26C 0400022A */   slti      $v0, $s0, 4
.L8002D270:
/* 1DA70 8002D270 01001026 */  addiu      $s0, $s0, 1
/* 1DA74 8002D274 0400022A */  slti       $v0, $s0, 4
.L8002D278:
/* 1DA78 8002D278 09004010 */  beqz       $v0, .L8002D2A0
/* 1DA7C 8002D27C 00000000 */   nop
/* 1DA80 8002D280 CD6B000C */  jal        VSync
/* 1DA84 8002D284 21200000 */   addu      $a0, $zero, $zero
/* 1DA88 8002D288 7CAA000C */  jal        vsync_8002a9f0
/* 1DA8C 8002D28C 00000000 */   nop
/* 1DA90 8002D290 1F05030C */  jal        FUN_800c147c
/* 1DA94 8002D294 00000000 */   nop
/* 1DA98 8002D298 F5FF4014 */  bnez       $v0, .L8002D270
/* 1DA9C 8002D29C 00000000 */   nop
.L8002D2A0:
/* 1DAA0 8002D2A0 CD6B000C */  jal        VSync
/* 1DAA4 8002D2A4 21200000 */   addu      $a0, $zero, $zero
/* 1DAA8 8002D2A8 7CAA000C */  jal        vsync_8002a9f0
/* 1DAAC 8002D2AC 00000000 */   nop
/* 1DAB0 8002D2B0 04000224 */  addiu      $v0, $zero, 4
/* 1DAB4 8002D2B4 03000216 */  bne        $s0, $v0, .L8002D2C4
/* 1DAB8 8002D2B8 00000000 */   nop
/* 1DABC 8002D2BC DFB9000C */  jal        FUN_8002e77c
/* 1DAC0 8002D2C0 01000424 */   addiu     $a0, $zero, 1
.L8002D2C4:
/* 1DAC4 8002D2C4 2400BF8F */  lw         $ra, 0x24($sp)
/* 1DAC8 8002D2C8 2000B48F */  lw         $s4, 0x20($sp)
/* 1DACC 8002D2CC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1DAD0 8002D2D0 1800B28F */  lw         $s2, 0x18($sp)
/* 1DAD4 8002D2D4 1400B18F */  lw         $s1, 0x14($sp)
/* 1DAD8 8002D2D8 1000B08F */  lw         $s0, 0x10($sp)
/* 1DADC 8002D2DC 21100000 */  addu       $v0, $zero, $zero
/* 1DAE0 8002D2E0 0800E003 */  jr         $ra
/* 1DAE4 8002D2E4 2800BD27 */   addiu     $sp, $sp, 0x28

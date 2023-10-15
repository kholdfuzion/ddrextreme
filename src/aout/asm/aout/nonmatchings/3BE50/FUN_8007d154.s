.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007d154
/* 6D954 8007D154 1380023C */  lui        $v0, %hi(D_8012813B)
/* 6D958 8007D158 3B814290 */  lbu        $v0, %lo(D_8012813B)($v0)
/* 6D95C 8007D15C 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 6D960 8007D160 6000BEAF */  sw         $fp, 0x60($sp)
/* 6D964 8007D164 21F0C000 */  addu       $fp, $a2, $zero
/* 6D968 8007D168 6400BFAF */  sw         $ra, 0x64($sp)
/* 6D96C 8007D16C 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 6D970 8007D170 5800B6AF */  sw         $s6, 0x58($sp)
/* 6D974 8007D174 5400B5AF */  sw         $s5, 0x54($sp)
/* 6D978 8007D178 5000B4AF */  sw         $s4, 0x50($sp)
/* 6D97C 8007D17C 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 6D980 8007D180 4800B2AF */  sw         $s2, 0x48($sp)
/* 6D984 8007D184 4400B1AF */  sw         $s1, 0x44($sp)
/* 6D988 8007D188 C0180200 */  sll        $v1, $v0, 3
/* 6D98C 8007D18C 23186200 */  subu       $v1, $v1, $v0
/* 6D990 8007D190 80180300 */  sll        $v1, $v1, 2
/* 6D994 8007D194 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6D998 8007D198 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6D99C 8007D19C 21B86200 */  addu       $s7, $v1, $v0
/* 6D9A0 8007D1A0 0110E228 */  slti       $v0, $a3, 0x1001
/* 6D9A4 8007D1A4 04004014 */  bnez       $v0, .L8007D1B8
/* 6D9A8 8007D1A8 4000B0AF */   sw        $s0, 0x40($sp)
/* 6D9AC 8007D1AC 00200224 */  addiu      $v0, $zero, 0x2000
/* 6D9B0 8007D1B0 6FF40108 */  j          .L8007D1BC
/* 6D9B4 8007D1B4 23804700 */   subu      $s0, $v0, $a3
.L8007D1B8:
/* 6D9B8 8007D1B8 2180E000 */  addu       $s0, $a3, $zero
.L8007D1BC:
/* 6D9BC 8007D1BC 7800A88F */  lw         $t0, 0x78($sp)
/* 6D9C0 8007D1C0 00000000 */  nop
/* 6D9C4 8007D1C4 05000011 */  beqz       $t0, .L8007D1DC
/* 6D9C8 8007D1C8 04000224 */   addiu     $v0, $zero, 4
/* 6D9CC 8007D1CC 03000211 */  beq        $t0, $v0, .L8007D1DC
/* 6D9D0 8007D1D0 06000224 */   addiu     $v0, $zero, 6
/* 6D9D4 8007D1D4 12000215 */  bne        $t0, $v0, .L8007D220
/* 6D9D8 8007D1D8 21A80000 */   addu      $s5, $zero, $zero
.L8007D1DC:
/* 6D9DC 8007D1DC 0006E228 */  slti       $v0, $a3, 0x600
/* 6D9E0 8007D1E0 0E004010 */  beqz       $v0, .L8007D21C
/* 6D9E4 8007D1E4 AA2A033C */   lui       $v1, 0x2aaa
/* 6D9E8 8007D1E8 ABAA6334 */  ori        $v1, $v1, 0xaaab
/* 6D9EC 8007D1EC 00111000 */  sll        $v0, $s0, 4
/* 6D9F0 8007D1F0 21105000 */  addu       $v0, $v0, $s0
/* 6D9F4 8007D1F4 C0100200 */  sll        $v0, $v0, 3
/* 6D9F8 8007D1F8 21105000 */  addu       $v0, $v0, $s0
/* 6D9FC 8007D1FC 80100200 */  sll        $v0, $v0, 2
/* 6DA00 8007D200 18004300 */  mult       $v0, $v1
/* 6DA04 8007D204 C3170200 */  sra        $v0, $v0, 0x1f
/* 6DA08 8007D208 10400000 */  mfhi       $t0
/* 6DA0C 8007D20C 031A0800 */  sra        $v1, $t0, 8
/* 6DA10 8007D210 23186200 */  subu       $v1, $v1, $v0
/* 6DA14 8007D214 88F40108 */  j          .L8007D220
/* 6DA18 8007D218 DCFD7524 */   addiu     $s5, $v1, -0x224
.L8007D21C:
/* 6DA1C 8007D21C 21A80000 */  addu       $s5, $zero, $zero
.L8007D220:
/* 6DA20 8007D220 F0001624 */  addiu      $s6, $zero, 0xf0
/* 6DA24 8007D224 C0001424 */  addiu      $s4, $zero, 0xc0
/* 6DA28 8007D228 18000324 */  addiu      $v1, $zero, 0x18
/* 6DA2C 8007D22C 1D001224 */  addiu      $s2, $zero, 0x1d
/* 6DA30 8007D230 CC00B126 */  addiu      $s1, $s5, 0xcc
/* 6DA34 8007D234 18FF1324 */  addiu      $s3, $zero, -0xe8
/* 6DA38 8007D238 21280000 */  addu       $a1, $zero, $zero
/* 6DA3C 8007D23C FFFF0624 */  addiu      $a2, $zero, -1
/* 6DA40 8007D240 2138C003 */  addu       $a3, $fp, $zero
/* 6DA44 8007D244 1000BEAF */  sw         $fp, 0x10($sp)
/* 6DA48 8007D248 1400BEAF */  sw         $fp, 0x14($sp)
/* 6DA4C 8007D24C 1800B1AF */  sw         $s1, 0x18($sp)
/* 6DA50 8007D250 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 6DA54 8007D254 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DA58 8007D258 2400B2AF */  sw         $s2, 0x24($sp)
/* 6DA5C 8007D25C 2800B7AF */  sw         $s7, 0x28($sp)
/* 6DA60 8007D260 2C00B6AF */  sw         $s6, 0x2c($sp)
/* 6DA64 8007D264 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DA68 8007D268 3400A3AF */  sw         $v1, 0x34($sp)
/* 6DA6C 8007D26C 1FAC010C */  jal        FUN_8006b07c
/* 6DA70 8007D270 3800B2AF */   sw        $s2, 0x38($sp)
/* 6DA74 8007D274 21204000 */  addu       $a0, $v0, $zero
/* 6DA78 8007D278 0007022A */  slti       $v0, $s0, 0x700
/* 6DA7C 8007D27C 11004014 */  bnez       $v0, .L8007D2C4
/* 6DA80 8007D280 0C021524 */   addiu     $s5, $zero, 0x20c
/* 6DA84 8007D284 000F022A */  slti       $v0, $s0, 0xf00
/* 6DA88 8007D288 0D004010 */  beqz       $v0, .L8007D2C0
/* 6DA8C 8007D28C 00F90326 */   addiu     $v1, $s0, -0x700
/* 6DA90 8007D290 40110300 */  sll        $v0, $v1, 5
/* 6DA94 8007D294 21104300 */  addu       $v0, $v0, $v1
/* 6DA98 8007D298 80100200 */  sll        $v0, $v0, 2
/* 6DA9C 8007D29C 23104300 */  subu       $v0, $v0, $v1
/* 6DAA0 8007D2A0 80100200 */  sll        $v0, $v0, 2
/* 6DAA4 8007D2A4 03004104 */  bgez       $v0, .L8007D2B4
/* 6DAA8 8007D2A8 C31A0200 */   sra       $v1, $v0, 0xb
/* 6DAAC 8007D2AC FF074224 */  addiu      $v0, $v0, 0x7ff
/* 6DAB0 8007D2B0 C31A0200 */  sra        $v1, $v0, 0xb
.L8007D2B4:
/* 6DAB4 8007D2B4 0C020224 */  addiu      $v0, $zero, 0x20c
/* 6DAB8 8007D2B8 B1F40108 */  j          .L8007D2C4
/* 6DABC 8007D2BC 23A84300 */   subu      $s5, $v0, $v1
.L8007D2C0:
/* 6DAC0 8007D2C0 21A80000 */  addu       $s5, $zero, $zero
.L8007D2C4:
/* 6DAC4 8007D2C4 40001624 */  addiu      $s6, $zero, 0x40
/* 6DAC8 8007D2C8 7800A88F */  lw         $t0, 0x78($sp)
/* 6DACC 8007D2CC 06000224 */  addiu      $v0, $zero, 6
/* 6DAD0 8007D2D0 0A000215 */  bne        $t0, $v0, .L8007D2FC
/* 6DAD4 8007D2D4 40A10800 */   sll       $s4, $t0, 5
/* 6DAD8 8007D2D8 1380023C */  lui        $v0, %hi(D_80128125)
/* 6DADC 8007D2DC 25814290 */  lbu        $v0, %lo(D_80128125)($v0)
/* 6DAE0 8007D2E0 50001424 */  addiu      $s4, $zero, 0x50
/* 6DAE4 8007D2E4 C0180200 */  sll        $v1, $v0, 3
/* 6DAE8 8007D2E8 23186200 */  subu       $v1, $v1, $v0
/* 6DAEC 8007D2EC 80180300 */  sll        $v1, $v1, 2
/* 6DAF0 8007D2F0 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6DAF4 8007D2F4 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6DAF8 8007D2F8 21B86200 */  addu       $s7, $v1, $v0
.L8007D2FC:
/* 6DAFC 8007D2FC 44FFB126 */  addiu      $s1, $s5, -0xbc
/* 6DB00 8007D300 CC000224 */  addiu      $v0, $zero, 0xcc
/* 6DB04 8007D304 23185100 */  subu       $v1, $v0, $s1
/* 6DB08 8007D308 01016228 */  slti       $v0, $v1, 0x101
/* 6DB0C 8007D30C 05004010 */  beqz       $v0, .L8007D324
/* 6DB10 8007D310 18FF1324 */   addiu     $s3, $zero, -0xe8
/* 6DB14 8007D314 04006104 */  bgez       $v1, .L8007D328
/* 6DB18 8007D318 21106000 */   addu      $v0, $v1, $zero
/* 6DB1C 8007D31C CAF40108 */  j          .L8007D328
/* 6DB20 8007D320 21100000 */   addu      $v0, $zero, $zero
.L8007D324:
/* 6DB24 8007D324 00010224 */  addiu      $v0, $zero, 0x100
.L8007D328:
/* 6DB28 8007D328 21184000 */  addu       $v1, $v0, $zero
/* 6DB2C 8007D32C 20001224 */  addiu      $s2, $zero, 0x20
/* 6DB30 8007D330 21280000 */  addu       $a1, $zero, $zero
/* 6DB34 8007D334 FFFF0624 */  addiu      $a2, $zero, -1
/* 6DB38 8007D338 2138C003 */  addu       $a3, $fp, $zero
/* 6DB3C 8007D33C 1000BEAF */  sw         $fp, 0x10($sp)
/* 6DB40 8007D340 1400BEAF */  sw         $fp, 0x14($sp)
/* 6DB44 8007D344 1800B1AF */  sw         $s1, 0x18($sp)
/* 6DB48 8007D348 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 6DB4C 8007D34C 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DB50 8007D350 2400B2AF */  sw         $s2, 0x24($sp)
/* 6DB54 8007D354 2800B7AF */  sw         $s7, 0x28($sp)
/* 6DB58 8007D358 2C00B6AF */  sw         $s6, 0x2c($sp)
/* 6DB5C 8007D35C 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DB60 8007D360 3400A3AF */  sw         $v1, 0x34($sp)
/* 6DB64 8007D364 1FAC010C */  jal        FUN_8006b07c
/* 6DB68 8007D368 3800B2AF */   sw        $s2, 0x38($sp)
/* 6DB6C 8007D36C 21204000 */  addu       $a0, $v0, $zero
/* 6DB70 8007D370 7800A88F */  lw         $t0, 0x78($sp)
/* 6DB74 8007D374 06000224 */  addiu      $v0, $zero, 6
/* 6DB78 8007D378 0A000215 */  bne        $t0, $v0, .L8007D3A4
/* 6DB7C 8007D37C F0001624 */   addiu     $s6, $zero, 0xf0
/* 6DB80 8007D380 1380023C */  lui        $v0, %hi(D_8012813B)
/* 6DB84 8007D384 3B814290 */  lbu        $v0, %lo(D_8012813B)($v0)
/* 6DB88 8007D388 00000000 */  nop
/* 6DB8C 8007D38C C0180200 */  sll        $v1, $v0, 3
/* 6DB90 8007D390 23186200 */  subu       $v1, $v1, $v0
/* 6DB94 8007D394 80180300 */  sll        $v1, $v1, 2
/* 6DB98 8007D398 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6DB9C 8007D39C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6DBA0 8007D3A0 21B86200 */  addu       $s7, $v1, $v0
.L8007D3A4:
/* 6DBA4 8007D3A4 C0001424 */  addiu      $s4, $zero, 0xc0
/* 6DBA8 8007D3A8 18FFB126 */  addiu      $s1, $s5, -0xe8
/* 6DBAC 8007D3AC CC000224 */  addiu      $v0, $zero, 0xcc
/* 6DBB0 8007D3B0 23185100 */  subu       $v1, $v0, $s1
/* 6DBB4 8007D3B4 19006228 */  slti       $v0, $v1, 0x19
/* 6DBB8 8007D3B8 05004010 */  beqz       $v0, .L8007D3D0
/* 6DBBC 8007D3BC 18FF1324 */   addiu     $s3, $zero, -0xe8
/* 6DBC0 8007D3C0 04006104 */  bgez       $v1, .L8007D3D4
/* 6DBC4 8007D3C4 21106000 */   addu      $v0, $v1, $zero
/* 6DBC8 8007D3C8 F5F40108 */  j          .L8007D3D4
/* 6DBCC 8007D3CC 21100000 */   addu      $v0, $zero, $zero
.L8007D3D0:
/* 6DBD0 8007D3D0 18000224 */  addiu      $v0, $zero, 0x18
.L8007D3D4:
/* 6DBD4 8007D3D4 21184000 */  addu       $v1, $v0, $zero
/* 6DBD8 8007D3D8 1D001224 */  addiu      $s2, $zero, 0x1d
/* 6DBDC 8007D3DC 21280000 */  addu       $a1, $zero, $zero
/* 6DBE0 8007D3E0 FFFF0624 */  addiu      $a2, $zero, -1
/* 6DBE4 8007D3E4 2138C003 */  addu       $a3, $fp, $zero
/* 6DBE8 8007D3E8 1000BEAF */  sw         $fp, 0x10($sp)
/* 6DBEC 8007D3EC 1400BEAF */  sw         $fp, 0x14($sp)
/* 6DBF0 8007D3F0 1800B1AF */  sw         $s1, 0x18($sp)
/* 6DBF4 8007D3F4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 6DBF8 8007D3F8 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DBFC 8007D3FC 2400B2AF */  sw         $s2, 0x24($sp)
/* 6DC00 8007D400 2800B7AF */  sw         $s7, 0x28($sp)
/* 6DC04 8007D404 2C00B6AF */  sw         $s6, 0x2c($sp)
/* 6DC08 8007D408 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DC0C 8007D40C 3400A3AF */  sw         $v1, 0x34($sp)
/* 6DC10 8007D410 1FAC010C */  jal        FUN_8006b07c
/* 6DC14 8007D414 3800B2AF */   sw        $s2, 0x38($sp)
/* 6DC18 8007D418 21204000 */  addu       $a0, $v0, $zero
/* 6DC1C 8007D41C 10003126 */  addiu      $s1, $s1, 0x10
/* 6DC20 8007D420 CC000224 */  addiu      $v0, $zero, 0xcc
/* 6DC24 8007D424 23185100 */  subu       $v1, $v0, $s1
/* 6DC28 8007D428 19006228 */  slti       $v0, $v1, 0x19
/* 6DC2C 8007D42C 04004010 */  beqz       $v0, .L8007D440
/* 6DC30 8007D430 18000224 */   addiu     $v0, $zero, 0x18
/* 6DC34 8007D434 02006104 */  bgez       $v1, .L8007D440
/* 6DC38 8007D438 21106000 */   addu      $v0, $v1, $zero
/* 6DC3C 8007D43C 21100000 */  addu       $v0, $zero, $zero
.L8007D440:
/* 6DC40 8007D440 21184000 */  addu       $v1, $v0, $zero
/* 6DC44 8007D444 21280000 */  addu       $a1, $zero, $zero
/* 6DC48 8007D448 FFFF0624 */  addiu      $a2, $zero, -1
/* 6DC4C 8007D44C 2138C003 */  addu       $a3, $fp, $zero
/* 6DC50 8007D450 1D000224 */  addiu      $v0, $zero, 0x1d
/* 6DC54 8007D454 1000BEAF */  sw         $fp, 0x10($sp)
/* 6DC58 8007D458 1400BEAF */  sw         $fp, 0x14($sp)
/* 6DC5C 8007D45C 1800B1AF */  sw         $s1, 0x18($sp)
/* 6DC60 8007D460 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 6DC64 8007D464 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DC68 8007D468 2400A2AF */  sw         $v0, 0x24($sp)
/* 6DC6C 8007D46C 2800B7AF */  sw         $s7, 0x28($sp)
/* 6DC70 8007D470 2C00B6AF */  sw         $s6, 0x2c($sp)
/* 6DC74 8007D474 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DC78 8007D478 3400A3AF */  sw         $v1, 0x34($sp)
/* 6DC7C 8007D47C 1FAC010C */  jal        FUN_8006b07c
/* 6DC80 8007D480 3800B2AF */   sw        $s2, 0x38($sp)
/* 6DC84 8007D484 21204000 */  addu       $a0, $v0, $zero
/* 6DC88 8007D488 21B00000 */  addu       $s6, $zero, $zero
/* 6DC8C 8007D48C 7800A88F */  lw         $t0, 0x78($sp)
/* 6DC90 8007D490 06000224 */  addiu      $v0, $zero, 6
/* 6DC94 8007D494 02000215 */  bne        $t0, $v0, .L8007D4A0
/* 6DC98 8007D498 40A10800 */   sll       $s4, $t0, 5
/* 6DC9C 8007D49C 21A0C002 */  addu       $s4, $s6, $zero
.L8007D4A0:
/* 6DCA0 8007D4A0 D0FEB126 */  addiu      $s1, $s5, -0x130
/* 6DCA4 8007D4A4 CC000224 */  addiu      $v0, $zero, 0xcc
/* 6DCA8 8007D4A8 23185100 */  subu       $v1, $v0, $s1
/* 6DCAC 8007D4AC 41006228 */  slti       $v0, $v1, 0x41
/* 6DCB0 8007D4B0 05004010 */  beqz       $v0, .L8007D4C8
/* 6DCB4 8007D4B4 18FF1324 */   addiu     $s3, $zero, -0xe8
/* 6DCB8 8007D4B8 04006104 */  bgez       $v1, .L8007D4CC
/* 6DCBC 8007D4BC 21106000 */   addu      $v0, $v1, $zero
/* 6DCC0 8007D4C0 33F50108 */  j          .L8007D4CC
/* 6DCC4 8007D4C4 21100000 */   addu      $v0, $zero, $zero
.L8007D4C8:
/* 6DCC8 8007D4C8 40000224 */  addiu      $v0, $zero, 0x40
.L8007D4CC:
/* 6DCCC 8007D4CC 21184000 */  addu       $v1, $v0, $zero
/* 6DCD0 8007D4D0 20001224 */  addiu      $s2, $zero, 0x20
/* 6DCD4 8007D4D4 21280000 */  addu       $a1, $zero, $zero
/* 6DCD8 8007D4D8 FFFF0624 */  addiu      $a2, $zero, -1
/* 6DCDC 8007D4DC 2138C003 */  addu       $a3, $fp, $zero
/* 6DCE0 8007D4E0 1000A7AF */  sw         $a3, 0x10($sp)
/* 6DCE4 8007D4E4 1400A7AF */  sw         $a3, 0x14($sp)
/* 6DCE8 8007D4E8 1800B1AF */  sw         $s1, 0x18($sp)
/* 6DCEC 8007D4EC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 6DCF0 8007D4F0 2000A3AF */  sw         $v1, 0x20($sp)
/* 6DCF4 8007D4F4 2400B2AF */  sw         $s2, 0x24($sp)
/* 6DCF8 8007D4F8 2800B7AF */  sw         $s7, 0x28($sp)
/* 6DCFC 8007D4FC 2C00B6AF */  sw         $s6, 0x2c($sp)
/* 6DD00 8007D500 3000B4AF */  sw         $s4, 0x30($sp)
/* 6DD04 8007D504 3400A3AF */  sw         $v1, 0x34($sp)
/* 6DD08 8007D508 1FAC010C */  jal        FUN_8006b07c
/* 6DD0C 8007D50C 3800B2AF */   sw        $s2, 0x38($sp)
/* 6DD10 8007D510 6400BF8F */  lw         $ra, 0x64($sp)
/* 6DD14 8007D514 6000BE8F */  lw         $fp, 0x60($sp)
/* 6DD18 8007D518 5C00B78F */  lw         $s7, 0x5c($sp)
/* 6DD1C 8007D51C 5800B68F */  lw         $s6, 0x58($sp)
/* 6DD20 8007D520 5400B58F */  lw         $s5, 0x54($sp)
/* 6DD24 8007D524 5000B48F */  lw         $s4, 0x50($sp)
/* 6DD28 8007D528 4C00B38F */  lw         $s3, 0x4c($sp)
/* 6DD2C 8007D52C 4800B28F */  lw         $s2, 0x48($sp)
/* 6DD30 8007D530 4400B18F */  lw         $s1, 0x44($sp)
/* 6DD34 8007D534 4000B08F */  lw         $s0, 0x40($sp)
/* 6DD38 8007D538 0800E003 */  jr         $ra
/* 6DD3C 8007D53C 6800BD27 */   addiu     $sp, $sp, 0x68

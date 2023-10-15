.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006cffc
/* 5D7FC 8006CFFC 50FEBD27 */  addiu      $sp, $sp, -0x1b0
/* 5D800 8006D000 0BB6063C */  lui        $a2, 0xb60b
/* 5D804 8006D004 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 5D808 8006D008 B760C634 */  ori        $a2, $a2, 0x60b7
/* 5D80C 8006D00C 2000458C */  lw         $a1, %lo(D_800F0020)($v0)
/* 5D810 8006D010 80000224 */  addiu      $v0, $zero, 0x80
/* 5D814 8006D014 AC01BFAF */  sw         $ra, 0x1ac($sp)
/* 5D818 8006D018 A801BEAF */  sw         $fp, 0x1a8($sp)
/* 5D81C 8006D01C A401B7AF */  sw         $s7, 0x1a4($sp)
/* 5D820 8006D020 1800A600 */  mult       $a1, $a2
/* 5D824 8006D024 A001B6AF */  sw         $s6, 0x1a0($sp)
/* 5D828 8006D028 9C01B5AF */  sw         $s5, 0x19c($sp)
/* 5D82C 8006D02C 9801B4AF */  sw         $s4, 0x198($sp)
/* 5D830 8006D030 9401B3AF */  sw         $s3, 0x194($sp)
/* 5D834 8006D034 9001B2AF */  sw         $s2, 0x190($sp)
/* 5D838 8006D038 8C01B1AF */  sw         $s1, 0x18c($sp)
/* 5D83C 8006D03C 8801B0AF */  sw         $s0, 0x188($sp)
/* 5D840 8006D040 AC00A0AF */  sw         $zero, 0xac($sp)
/* 5D844 8006D044 B400A2AF */  sw         $v0, 0xb4($sp)
/* 5D848 8006D048 C33F0500 */  sra        $a3, $a1, 0x1f
/* 5D84C 8006D04C 10180000 */  mfhi       $v1
/* 5D850 8006D050 21406500 */  addu       $t0, $v1, $a1
/* 5D854 8006D054 03120800 */  sra        $v0, $t0, 8
/* 5D858 8006D058 23B84700 */  subu       $s7, $v0, $a3
/* 5D85C 8006D05C 40181700 */  sll        $v1, $s7, 1
/* 5D860 8006D060 21187700 */  addu       $v1, $v1, $s7
/* 5D864 8006D064 00110300 */  sll        $v0, $v1, 4
/* 5D868 8006D068 23104300 */  subu       $v0, $v0, $v1
/* 5D86C 8006D06C C0100200 */  sll        $v0, $v0, 3
/* 5D870 8006D070 23B8A200 */  subu       $s7, $a1, $v0
/* 5D874 8006D074 2000A228 */  slti       $v0, $a1, 0x20
/* 5D878 8006D078 03004010 */  beqz       $v0, .L8006D088
/* 5D87C 8006D07C A800A4AF */   sw        $a0, 0xa8($sp)
/* 5D880 8006D080 80180500 */  sll        $v1, $a1, 2
/* 5D884 8006D084 B400A3AF */  sw         $v1, 0xb4($sp)
.L8006D088:
/* 5D888 8006D088 C31A0800 */  sra        $v1, $t0, 0xb
/* 5D88C 8006D08C 23186700 */  subu       $v1, $v1, $a3
/* 5D890 8006D090 40200300 */  sll        $a0, $v1, 1
/* 5D894 8006D094 21208300 */  addu       $a0, $a0, $v1
/* 5D898 8006D098 00110400 */  sll        $v0, $a0, 4
/* 5D89C 8006D09C 23104400 */  subu       $v0, $v0, $a0
/* 5D8A0 8006D0A0 80110200 */  sll        $v0, $v0, 6
/* 5D8A4 8006D0A4 2310A200 */  subu       $v0, $a1, $v0
/* 5D8A8 8006D0A8 18004600 */  mult       $v0, $a2
/* 5D8AC 8006D0AC 10180000 */  mfhi       $v1
/* 5D8B0 8006D0B0 21186200 */  addu       $v1, $v1, $v0
/* 5D8B4 8006D0B4 031A0300 */  sra        $v1, $v1, 8
/* 5D8B8 8006D0B8 C3170200 */  sra        $v0, $v0, 0x1f
/* 5D8BC 8006D0BC 23186200 */  subu       $v1, $v1, $v0
/* 5D8C0 8006D0C0 08006428 */  slti       $a0, $v1, 8
/* 5D8C4 8006D0C4 05008014 */  bnez       $a0, .L8006D0DC
/* 5D8C8 8006D0C8 B000A3AF */   sw        $v1, 0xb0($sp)
/* 5D8CC 8006D0CC 4800A227 */  addiu      $v0, $sp, 0x48
/* 5D8D0 8006D0D0 B000A0AF */  sw         $zero, 0xb0($sp)
/* 5D8D4 8006D0D4 51B40108 */  j          .L8006D144
/* 5D8D8 8006D0D8 0001A2AF */   sw        $v0, 0x100($sp)
.L8006D0DC:
/* 5D8DC 8006D0DC 0180033C */  lui        $v1, %hi(D_8001477C)
/* 5D8E0 8006D0E0 7C476224 */  addiu      $v0, $v1, %lo(D_8001477C)
/* 5D8E4 8006D0E4 7C47658C */  lw         $a1, 0x477c($v1)
/* 5D8E8 8006D0E8 0800438C */  lw         $v1, 8($v0)
/* 5D8EC 8006D0EC 0400468C */  lw         $a2, 4($v0)
/* 5D8F0 8006D0F0 0C00478C */  lw         $a3, 0xc($v0)
/* 5D8F4 8006D0F4 1000488C */  lw         $t0, 0x10($v0)
/* 5D8F8 8006D0F8 1400498C */  lw         $t1, 0x14($v0)
/* 5D8FC 8006D0FC 18004A8C */  lw         $t2, 0x18($v0)
/* 5D900 8006D100 1C004B8C */  lw         $t3, 0x1c($v0)
/* 5D904 8006D104 5000A3AF */  sw         $v1, 0x50($sp)
/* 5D908 8006D108 B000A38F */  lw         $v1, 0xb0($sp)
/* 5D90C 8006D10C 4800A427 */  addiu      $a0, $sp, 0x48
/* 5D910 8006D110 0001A4AF */  sw         $a0, 0x100($sp)
/* 5D914 8006D114 4800A5AF */  sw         $a1, 0x48($sp)
/* 5D918 8006D118 4C00A6AF */  sw         $a2, 0x4c($sp)
/* 5D91C 8006D11C 5400A7AF */  sw         $a3, 0x54($sp)
/* 5D920 8006D120 5800A8AF */  sw         $t0, 0x58($sp)
/* 5D924 8006D124 5C00A9AF */  sw         $t1, 0x5c($sp)
/* 5D928 8006D128 6000AAAF */  sw         $t2, 0x60($sp)
/* 5D92C 8006D12C 6400ABAF */  sw         $t3, 0x64($sp)
/* 5D930 8006D130 80100300 */  sll        $v0, $v1, 2
/* 5D934 8006D134 21208200 */  addu       $a0, $a0, $v0
/* 5D938 8006D138 0000848C */  lw         $a0, ($a0)
/* 5D93C 8006D13C 00000000 */  nop
/* 5D940 8006D140 B000A4AF */  sw         $a0, 0xb0($sp)
.L8006D144:
/* 5D944 8006D144 E338133C */  lui        $s3, 0x38e3
/* 5D948 8006D148 398E7336 */  ori        $s3, $s3, 0x8e39
/* 5D94C 8006D14C 1800F302 */  mult       $s7, $s3
/* 5D950 8006D150 21200000 */  addu       $a0, $zero, $zero
/* 5D954 8006D154 0F000524 */  addiu      $a1, $zero, 0xf
/* 5D958 8006D158 E0000224 */  addiu      $v0, $zero, 0xe0
/* 5D95C 8006D15C 18000324 */  addiu      $v1, $zero, 0x18
/* 5D960 8006D160 18001524 */  addiu      $s5, $zero, 0x18
/* 5D964 8006D164 C3871700 */  sra        $s0, $s7, 0x1f
/* 5D968 8006D168 1380123C */  lui        $s2, 0x8013
/* 5D96C 8006D16C 1380113C */  lui        $s1, 0x8013
/* 5D970 8006D170 BC00A2AF */  sw         $v0, 0xbc($sp)
/* 5D974 8006D174 C000A3AF */  sw         $v1, 0xc0($sp)
/* 5D978 8006D178 C400A2AF */  sw         $v0, 0xc4($sp)
/* 5D97C 8006D17C 10300000 */  mfhi       $a2
/* 5D980 8006D180 C3180600 */  sra        $v1, $a2, 3
/* 5D984 8006D184 23F07000 */  subu       $fp, $v1, $s0
/* 5D988 8006D188 C0101E00 */  sll        $v0, $fp, 3
/* 5D98C 8006D18C 21105E00 */  addu       $v0, $v0, $fp
/* 5D990 8006D190 80100200 */  sll        $v0, $v0, 2
/* 5D994 8006D194 23F0E202 */  subu       $fp, $s7, $v0
/* 5D998 8006D198 83300600 */  sra        $a2, $a2, 2
/* 5D99C 8006D19C 23A0D000 */  subu       $s4, $a2, $s0
/* 5D9A0 8006D1A0 C0101400 */  sll        $v0, $s4, 3
/* 5D9A4 8006D1A4 21105400 */  addu       $v0, $v0, $s4
/* 5D9A8 8006D1A8 40100200 */  sll        $v0, $v0, 1
/* 5D9AC 8006D1AC 23A0E202 */  subu       $s4, $s7, $v0
/* 5D9B0 8006D1B0 B000A68F */  lw         $a2, 0xb0($sp)
/* 5D9B4 8006D1B4 E0804226 */  addiu      $v0, $s2, -0x7f20
/* 5D9B8 8006D1B8 43180600 */  sra        $v1, $a2, 1
/* 5D9BC 8006D1BC 01006330 */  andi       $v1, $v1, 1
/* 5D9C0 8006D1C0 2D004690 */  lbu        $a2, 0x2d($v0)
/* 5D9C4 8006D1C4 0100632C */  sltiu      $v1, $v1, 1
/* 5D9C8 8006D1C8 B800A3AF */  sw         $v1, 0xb8($sp)
/* 5D9CC 8006D1CC E0822326 */  addiu      $v1, $s1, -0x7d20
/* 5D9D0 8006D1D0 C0100600 */  sll        $v0, $a2, 3
/* 5D9D4 8006D1D4 23104600 */  subu       $v0, $v0, $a2
/* 5D9D8 8006D1D8 80100200 */  sll        $v0, $v0, 2
/* 5D9DC 8006D1DC 21104300 */  addu       $v0, $v0, $v1
/* 5D9E0 8006D1E0 FA56010C */  jal        FUN_80055be8
/* 5D9E4 8006D1E4 C800A2AF */   sw        $v0, 0xc8($sp)
/* 5D9E8 8006D1E8 21200000 */  addu       $a0, $zero, $zero
/* 5D9EC 8006D1EC 946B010C */  jal        FUN_8005ae50
/* 5D9F0 8006D1F0 21280000 */   addu      $a1, $zero, $zero
/* 5D9F4 8006D1F4 21200000 */  addu       $a0, $zero, $zero
/* 5D9F8 8006D1F8 376C010C */  jal        FUN_8005b0dc
/* 5D9FC 8006D1FC FB000524 */   addiu     $a1, $zero, 0xfb
/* 5DA00 8006D200 B400A58F */  lw         $a1, 0xb4($sp)
/* 5DA04 8006D204 21200000 */  addu       $a0, $zero, $zero
/* 5DA08 8006D208 2130A000 */  addu       $a2, $a1, $zero
/* 5DA0C 8006D20C 646B010C */  jal        FUN_8005ad90
/* 5DA10 8006D210 2138A000 */   addu      $a3, $a1, $zero
/* 5DA14 8006D214 01000424 */  addiu      $a0, $zero, 1
/* 5DA18 8006D218 FA56010C */  jal        FUN_80055be8
/* 5DA1C 8006D21C 0F000524 */   addiu     $a1, $zero, 0xf
/* 5DA20 8006D220 01000424 */  addiu      $a0, $zero, 1
/* 5DA24 8006D224 946B010C */  jal        FUN_8005ae50
/* 5DA28 8006D228 21280000 */   addu      $a1, $zero, $zero
/* 5DA2C 8006D22C 01000424 */  addiu      $a0, $zero, 1
/* 5DA30 8006D230 376C010C */  jal        FUN_8005b0dc
/* 5DA34 8006D234 FD000524 */   addiu     $a1, $zero, 0xfd
/* 5DA38 8006D238 B400A58F */  lw         $a1, 0xb4($sp)
/* 5DA3C 8006D23C 01000424 */  addiu      $a0, $zero, 1
/* 5DA40 8006D240 2130A000 */  addu       $a2, $a1, $zero
/* 5DA44 8006D244 646B010C */  jal        FUN_8005ad90
/* 5DA48 8006D248 2138A000 */   addu      $a3, $a1, $zero
/* 5DA4C 8006D24C 02000424 */  addiu      $a0, $zero, 2
/* 5DA50 8006D250 FA56010C */  jal        FUN_80055be8
/* 5DA54 8006D254 0F000524 */   addiu     $a1, $zero, 0xf
/* 5DA58 8006D258 02000424 */  addiu      $a0, $zero, 2
/* 5DA5C 8006D25C 946B010C */  jal        FUN_8005ae50
/* 5DA60 8006D260 21280000 */   addu      $a1, $zero, $zero
/* 5DA64 8006D264 02000424 */  addiu      $a0, $zero, 2
/* 5DA68 8006D268 376C010C */  jal        FUN_8005b0dc
/* 5DA6C 8006D26C FE000524 */   addiu     $a1, $zero, 0xfe
/* 5DA70 8006D270 B400A58F */  lw         $a1, 0xb4($sp)
/* 5DA74 8006D274 02000424 */  addiu      $a0, $zero, 2
/* 5DA78 8006D278 2130A000 */  addu       $a2, $a1, $zero
/* 5DA7C 8006D27C 646B010C */  jal        FUN_8005ad90
/* 5DA80 8006D280 2138A000 */   addu      $a3, $a1, $zero
/* 5DA84 8006D284 2400E22A */  slti       $v0, $s7, 0x24
/* 5DA88 8006D288 03004010 */  beqz       $v0, .L8006D298
/* 5DA8C 8006D28C 2C01B0AF */   sw        $s0, 0x12c($sp)
/* 5DA90 8006D290 BBB40108 */  j          .L8006D2EC
/* 5DA94 8006D294 4A011324 */   addiu     $s3, $zero, 0x14a
.L8006D298:
/* 5DA98 8006D298 3600E22A */  slti       $v0, $s7, 0x36
/* 5DA9C 8006D29C 0F004010 */  beqz       $v0, .L8006D2DC
/* 5DAA0 8006D2A0 80121400 */   sll       $v0, $s4, 0xa
/* 5DAA4 8006D2A4 18005300 */  mult       $v0, $s3
/* 5DAA8 8006D2A8 C3170200 */  sra        $v0, $v0, 0x1f
/* 5DAAC 8006D2AC 10200000 */  mfhi       $a0
/* 5DAB0 8006D2B0 83200400 */  sra        $a0, $a0, 2
/* 5DAB4 8006D2B4 28F2000C */  jal        rcos
/* 5DAB8 8006D2B8 23208200 */   subu      $a0, $a0, $v0
/* 5DABC 8006D2BC C0200200 */  sll        $a0, $v0, 3
/* 5DAC0 8006D2C0 23208200 */  subu       $a0, $a0, $v0
/* 5DAC4 8006D2C4 40190400 */  sll        $v1, $a0, 5
/* 5DAC8 8006D2C8 23186400 */  subu       $v1, $v1, $a0
/* 5DACC 8006D2CC 21186200 */  addu       $v1, $v1, $v0
/* 5DAD0 8006D2D0 031B0300 */  sra        $v1, $v1, 0xc
/* 5DAD4 8006D2D4 BBB40108 */  j          .L8006D2EC
/* 5DAD8 8006D2D8 70007324 */   addiu     $s3, $v1, 0x70
.L8006D2DC:
/* 5DADC 8006D2DC 6801E22A */  slti       $v0, $s7, 0x168
/* 5DAE0 8006D2E0 02004010 */  beqz       $v0, .L8006D2EC
/* 5DAE4 8006D2E4 4A011324 */   addiu     $s3, $zero, 0x14a
/* 5DAE8 8006D2E8 70001324 */  addiu      $s3, $zero, 0x70
.L8006D2EC:
/* 5DAEC 8006D2EC 7000622A */  slti       $v0, $s3, 0x70
/* 5DAF0 8006D2F0 03004010 */  beqz       $v0, .L8006D300
/* 5DAF4 8006D2F4 4B01622A */   slti      $v0, $s3, 0x14b
/* 5DAF8 8006D2F8 70001324 */  addiu      $s3, $zero, 0x70
/* 5DAFC 8006D2FC 4B01622A */  slti       $v0, $s3, 0x14b
.L8006D300:
/* 5DB00 8006D300 02004014 */  bnez       $v0, .L8006D30C
/* 5DB04 8006D304 00000000 */   nop
/* 5DB08 8006D308 4A011324 */  addiu      $s3, $zero, 0x14a
.L8006D30C:
/* 5DB0C 8006D30C B000A38F */  lw         $v1, 0xb0($sp)
/* 5DB10 8006D310 29FF1624 */  addiu      $s6, $zero, -0xd7
/* 5DB14 8006D314 C2170300 */  srl        $v0, $v1, 0x1f
/* 5DB18 8006D318 21106200 */  addu       $v0, $v1, $v0
/* 5DB1C 8006D31C 43100200 */  sra        $v0, $v0, 1
/* 5DB20 8006D320 40180200 */  sll        $v1, $v0, 1
/* 5DB24 8006D324 21186200 */  addu       $v1, $v1, $v0
/* 5DB28 8006D328 C0180300 */  sll        $v1, $v1, 3
/* 5DB2C 8006D32C 70000224 */  addiu      $v0, $zero, 0x70
/* 5DB30 8006D330 1D006216 */  bne        $s3, $v0, .L8006D3A8
/* 5DB34 8006D334 28006924 */   addiu     $t1, $v1, 0x28
/* 5DB38 8006D338 3600E22A */  slti       $v0, $s7, 0x36
/* 5DB3C 8006D33C 03004010 */  beqz       $v0, .L8006D34C
/* 5DB40 8006D340 E0000424 */   addiu     $a0, $zero, 0xe0
/* 5DB44 8006D344 EAB40108 */  j          .L8006D3A8
/* 5DB48 8006D348 C400A4AF */   sw        $a0, 0xc4($sp)
.L8006D34C:
/* 5DB4C 8006D34C 4800E22A */  slti       $v0, $s7, 0x48
/* 5DB50 8006D350 13004010 */  beqz       $v0, .L8006D3A0
/* 5DB54 8006D354 E338043C */   lui       $a0, 0x38e3
/* 5DB58 8006D358 398E8434 */  ori        $a0, $a0, 0x8e39
/* 5DB5C 8006D35C 00131400 */  sll        $v0, $s4, 0xc
/* 5DB60 8006D360 18004400 */  mult       $v0, $a0
/* 5DB64 8006D364 C3170200 */  sra        $v0, $v0, 0x1f
/* 5DB68 8006D368 7001A9AF */  sw         $t1, 0x170($sp)
/* 5DB6C 8006D36C 10200000 */  mfhi       $a0
/* 5DB70 8006D370 83200400 */  sra        $a0, $a0, 2
/* 5DB74 8006D374 23208200 */  subu       $a0, $a0, $v0
/* 5DB78 8006D378 F4F1000C */  jal        rsin
/* 5DB7C 8006D37C 00088424 */   addiu     $a0, $a0, 0x800
/* 5DB80 8006D380 80180200 */  sll        $v1, $v0, 2
/* 5DB84 8006D384 21186200 */  addu       $v1, $v1, $v0
/* 5DB88 8006D388 40180300 */  sll        $v1, $v1, 1
/* 5DB8C 8006D38C 031B0300 */  sra        $v1, $v1, 0xc
/* 5DB90 8006D390 7001A98F */  lw         $t1, 0x170($sp)
/* 5DB94 8006D394 E0006324 */  addiu      $v1, $v1, 0xe0
/* 5DB98 8006D398 EAB40108 */  j          .L8006D3A8
/* 5DB9C 8006D39C C400A3AF */   sw        $v1, 0xc4($sp)
.L8006D3A0:
/* 5DBA0 8006D3A0 E0000224 */  addiu      $v0, $zero, 0xe0
/* 5DBA4 8006D3A4 C400A2AF */  sw         $v0, 0xc4($sp)
.L8006D3A8:
/* 5DBA8 8006D3A8 4401F12A */  slti       $s1, $s7, 0x144
/* 5DBAC 8006D3AC 28002016 */  bnez       $s1, .L8006D450
/* 5DBB0 8006D3B0 21200000 */   addu      $a0, $zero, $zero
/* 5DBB4 8006D3B4 1800DE03 */  mult       $fp, $fp
/* 5DBB8 8006D3B8 12280000 */  mflo       $a1
/* 5DBBC 8006D3BC E338043C */  lui        $a0, 0x38e3
/* 5DBC0 8006D3C0 398E8434 */  ori        $a0, $a0, 0x8e39
/* 5DBC4 8006D3C4 1800A400 */  mult       $a1, $a0
/* 5DBC8 8006D3C8 5555033C */  lui        $v1, 0x5555
/* 5DBCC 8006D3CC 10200000 */  mfhi       $a0
/* 5DBD0 8006D3D0 56556334 */  ori        $v1, $v1, 0x5556
/* 5DBD4 8006D3D4 80101E00 */  sll        $v0, $fp, 2
/* 5DBD8 8006D3D8 18004300 */  mult       $v0, $v1
/* 5DBDC 8006D3DC 18000624 */  addiu      $a2, $zero, 0x18
/* 5DBE0 8006D3E0 C32F0500 */  sra        $a1, $a1, 0x1f
/* 5DBE4 8006D3E4 43200400 */  sra        $a0, $a0, 1
/* 5DBE8 8006D3E8 23208500 */  subu       $a0, $a0, $a1
/* 5DBEC 8006D3EC C3170200 */  sra        $v0, $v0, 0x1f
/* 5DBF0 8006D3F0 10180000 */  mfhi       $v1
/* 5DBF4 8006D3F4 23186200 */  subu       $v1, $v1, $v0
/* 5DBF8 8006D3F8 D7006324 */  addiu      $v1, $v1, 0xd7
/* 5DBFC 8006D3FC 23B08300 */  subu       $s6, $a0, $v1
/* 5DC00 8006D400 1800C226 */  addiu      $v0, $s6, 0x18
/* 5DC04 8006D404 50FF4228 */  slti       $v0, $v0, -0xb0
/* 5DC08 8006D408 04004014 */  bnez       $v0, .L8006D41C
/* 5DC0C 8006D40C C000A6AF */   sw        $a2, 0xc0($sp)
/* 5DC10 8006D410 50FF0224 */  addiu      $v0, $zero, -0xb0
/* 5DC14 8006D414 23105600 */  subu       $v0, $v0, $s6
/* 5DC18 8006D418 C000A2AF */  sw         $v0, 0xc0($sp)
.L8006D41C:
/* 5DC1C 8006D41C C000A78F */  lw         $a3, 0xc0($sp)
/* 5DC20 8006D420 00000000 */  nop
/* 5DC24 8006D424 0200E01C */  bgtz       $a3, .L8006D430
/* 5DC28 8006D428 00000000 */   nop
/* 5DC2C 8006D42C C000A0AF */  sw         $zero, 0xc0($sp)
.L8006D430:
/* 5DC30 8006D430 C000A88F */  lw         $t0, 0xc0($sp)
/* 5DC34 8006D434 00000000 */  nop
/* 5DC38 8006D438 19000229 */  slti       $v0, $t0, 0x19
/* 5DC3C 8006D43C 02004014 */  bnez       $v0, .L8006D448
/* 5DC40 8006D440 18000224 */   addiu     $v0, $zero, 0x18
/* 5DC44 8006D444 C000A2AF */  sw         $v0, 0xc0($sp)
.L8006D448:
/* 5DC48 8006D448 C000B58F */  lw         $s5, 0xc0($sp)
/* 5DC4C 8006D44C 21200000 */  addu       $a0, $zero, $zero
.L8006D450:
/* 5DC50 8006D450 BC00A38F */  lw         $v1, 0xbc($sp)
/* 5DC54 8006D454 C000A68F */  lw         $a2, 0xc0($sp)
/* 5DC58 8006D458 C800A78F */  lw         $a3, 0xc8($sp)
/* 5DC5C 8006D45C C800A88F */  lw         $t0, 0xc8($sp)
/* 5DC60 8006D460 21280000 */  addu       $a1, $zero, $zero
/* 5DC64 8006D464 1000A3AF */  sw         $v1, 0x10($sp)
/* 5DC68 8006D468 1400A6AF */  sw         $a2, 0x14($sp)
/* 5DC6C 8006D46C 0400E684 */  lh         $a2, 4($a3)
/* 5DC70 8006D470 FFFF0224 */  addiu      $v0, $zero, -1
/* 5DC74 8006D474 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5DC78 8006D478 0600E784 */  lh         $a3, 6($a3)
/* 5DC7C 8006D47C 0C000285 */  lh         $v0, 0xc($t0)
/* 5DC80 8006D480 2138E900 */  addu       $a3, $a3, $t1
/* 5DC84 8006D484 1769010C */  jal        FUN_8005a45c
/* 5DC88 8006D488 1800A2AF */   sw        $v0, 0x18($sp)
/* 5DC8C 8006D48C C800A28F */  lw         $v0, 0xc8($sp)
/* 5DC90 8006D490 21200000 */  addu       $a0, $zero, $zero
/* 5DC94 8006D494 16004684 */  lh         $a2, 0x16($v0)
/* 5DC98 8006D498 18004784 */  lh         $a3, 0x18($v0)
/* 5DC9C 8006D49C 396D010C */  jal        FUN_8005b4e4
/* 5DCA0 8006D4A0 21280000 */   addu      $a1, $zero, $zero
/* 5DCA4 8006D4A4 21200000 */  addu       $a0, $zero, $zero
/* 5DCA8 8006D4A8 21280000 */  addu       $a1, $zero, $zero
/* 5DCAC 8006D4AC 21306002 */  addu       $a2, $s3, $zero
/* 5DCB0 8006D4B0 C400A38F */  lw         $v1, 0xc4($sp)
/* 5DCB4 8006D4B4 2138C002 */  addu       $a3, $s6, $zero
/* 5DCB8 8006D4B8 1400B5AF */  sw         $s5, 0x14($sp)
/* 5DCBC 8006D4BC 976D010C */  jal        FUN_8005b65c
/* 5DCC0 8006D4C0 1000A3AF */   sw        $v1, 0x10($sp)
/* 5DCC4 8006D4C4 21200000 */  addu       $a0, $zero, $zero
/* 5DCC8 8006D4C8 B400A68F */  lw         $a2, 0xb4($sp)
/* 5DCCC 8006D4CC 21280000 */  addu       $a1, $zero, $zero
/* 5DCD0 8006D4D0 2138C000 */  addu       $a3, $a2, $zero
/* 5DCD4 8006D4D4 EB6C010C */  jal        FUN_8005b3ac
/* 5DCD8 8006D4D8 1000A7AF */   sw        $a3, 0x10($sp)
/* 5DCDC 8006D4DC B000A38F */  lw         $v1, 0xb0($sp)
/* 5DCE0 8006D4E0 00000000 */  nop
/* 5DCE4 8006D4E4 02006104 */  bgez       $v1, .L8006D4F0
/* 5DCE8 8006D4E8 00000000 */   nop
/* 5DCEC 8006D4EC 03006324 */  addiu      $v1, $v1, 3
.L8006D4F0:
/* 5DCF0 8006D4F0 83180300 */  sra        $v1, $v1, 2
/* 5DCF4 8006D4F4 80180300 */  sll        $v1, $v1, 2
/* 5DCF8 8006D4F8 0F000524 */  addiu      $a1, $zero, 0xf
/* 5DCFC 8006D4FC 0F001524 */  addiu      $s5, $zero, 0xf
/* 5DD00 8006D500 B000A48F */  lw         $a0, 0xb0($sp)
/* 5DD04 8006D504 1800D626 */  addiu      $s6, $s6, 0x18
/* 5DD08 8006D508 C000A5AF */  sw         $a1, 0xc0($sp)
/* 5DD0C 8006D50C 23188300 */  subu       $v1, $a0, $v1
/* 5DD10 8006D510 00110300 */  sll        $v0, $v1, 4
/* 5DD14 8006D514 23104300 */  subu       $v0, $v0, $v1
/* 5DD18 8006D518 14002016 */  bnez       $s1, .L8006D56C
/* 5DD1C 8006D51C 88004924 */   addiu     $t1, $v0, 0x88
/* 5DD20 8006D520 0F00C226 */  addiu      $v0, $s6, 0xf
/* 5DD24 8006D524 50FF4228 */  slti       $v0, $v0, -0xb0
/* 5DD28 8006D528 04004014 */  bnez       $v0, .L8006D53C
/* 5DD2C 8006D52C C000B5AF */   sw        $s5, 0xc0($sp)
/* 5DD30 8006D530 50FF0224 */  addiu      $v0, $zero, -0xb0
/* 5DD34 8006D534 23105600 */  subu       $v0, $v0, $s6
/* 5DD38 8006D538 C000A2AF */  sw         $v0, 0xc0($sp)
.L8006D53C:
/* 5DD3C 8006D53C C000A68F */  lw         $a2, 0xc0($sp)
/* 5DD40 8006D540 00000000 */  nop
/* 5DD44 8006D544 0200C01C */  bgtz       $a2, .L8006D550
/* 5DD48 8006D548 00000000 */   nop
/* 5DD4C 8006D54C C000A0AF */  sw         $zero, 0xc0($sp)
.L8006D550:
/* 5DD50 8006D550 C000A78F */  lw         $a3, 0xc0($sp)
/* 5DD54 8006D554 00000000 */  nop
/* 5DD58 8006D558 1000E228 */  slti       $v0, $a3, 0x10
/* 5DD5C 8006D55C 02004014 */  bnez       $v0, .L8006D568
/* 5DD60 8006D560 0F000824 */   addiu     $t0, $zero, 0xf
/* 5DD64 8006D564 C000A8AF */  sw         $t0, 0xc0($sp)
.L8006D568:
/* 5DD68 8006D568 C000B58F */  lw         $s5, 0xc0($sp)
.L8006D56C:
/* 5DD6C 8006D56C 21200000 */  addu       $a0, $zero, $zero
/* 5DD70 8006D570 01000524 */  addiu      $a1, $zero, 1
/* 5DD74 8006D574 B000A28F */  lw         $v0, 0xb0($sp)
/* 5DD78 8006D578 B000A38F */  lw         $v1, 0xb0($sp)
/* 5DD7C 8006D57C A800A68F */  lw         $a2, 0xa8($sp)
/* 5DD80 8006D580 BC00A78F */  lw         $a3, 0xbc($sp)
/* 5DD84 8006D584 C000A88F */  lw         $t0, 0xc0($sp)
/* 5DD88 8006D588 04004228 */  slti       $v0, $v0, 4
/* 5DD8C 8006D58C 2401A2AF */  sw         $v0, 0x124($sp)
/* 5DD90 8006D590 C800A28F */  lw         $v0, 0xc8($sp)
/* 5DD94 8006D594 40180300 */  sll        $v1, $v1, 1
/* 5DD98 8006D598 1401A3AF */  sw         $v1, 0x114($sp)
/* 5DD9C 8006D59C C800A38F */  lw         $v1, 0xc8($sp)
/* 5DDA0 8006D5A0 1C00C624 */  addiu      $a2, $a2, 0x1c
/* 5DDA4 8006D5A4 1C01A6AF */  sw         $a2, 0x11c($sp)
/* 5DDA8 8006D5A8 1000A7AF */  sw         $a3, 0x10($sp)
/* 5DDAC 8006D5AC 1400A8AF */  sw         $t0, 0x14($sp)
/* 5DDB0 8006D5B0 04004684 */  lh         $a2, 4($v0)
/* 5DDB4 8006D5B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 5DDB8 8006D5B8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5DDBC 8006D5BC 06006784 */  lh         $a3, 6($v1)
/* 5DDC0 8006D5C0 0C006284 */  lh         $v0, 0xc($v1)
/* 5DDC4 8006D5C4 2138E900 */  addu       $a3, $a3, $t1
/* 5DDC8 8006D5C8 1769010C */  jal        FUN_8005a45c
/* 5DDCC 8006D5CC 1800A2AF */   sw        $v0, 0x18($sp)
/* 5DDD0 8006D5D0 C800A58F */  lw         $a1, 0xc8($sp)
/* 5DDD4 8006D5D4 21200000 */  addu       $a0, $zero, $zero
/* 5DDD8 8006D5D8 1600A684 */  lh         $a2, 0x16($a1)
/* 5DDDC 8006D5DC 1800A784 */  lh         $a3, 0x18($a1)
/* 5DDE0 8006D5E0 396D010C */  jal        FUN_8005b4e4
/* 5DDE4 8006D5E4 01000524 */   addiu     $a1, $zero, 1
/* 5DDE8 8006D5E8 21200000 */  addu       $a0, $zero, $zero
/* 5DDEC 8006D5EC 01000524 */  addiu      $a1, $zero, 1
/* 5DDF0 8006D5F0 21306002 */  addu       $a2, $s3, $zero
/* 5DDF4 8006D5F4 C400A88F */  lw         $t0, 0xc4($sp)
/* 5DDF8 8006D5F8 2138C002 */  addu       $a3, $s6, $zero
/* 5DDFC 8006D5FC 1400B5AF */  sw         $s5, 0x14($sp)
/* 5DE00 8006D600 976D010C */  jal        FUN_8005b65c
/* 5DE04 8006D604 1000A8AF */   sw        $t0, 0x10($sp)
/* 5DE08 8006D608 21200000 */  addu       $a0, $zero, $zero
/* 5DE0C 8006D60C B400A68F */  lw         $a2, 0xb4($sp)
/* 5DE10 8006D610 01000524 */  addiu      $a1, $zero, 1
/* 5DE14 8006D614 2138C000 */  addu       $a3, $a2, $zero
/* 5DE18 8006D618 EB6C010C */  jal        FUN_8005b3ac
/* 5DE1C 8006D61C 1000A7AF */   sw        $a3, 0x10($sp)
/* 5DE20 8006D620 21680000 */  addu       $t5, $zero, $zero
/* 5DE24 8006D624 3000A227 */  addiu      $v0, $sp, 0x30
/* 5DE28 8006D628 6000A327 */  addiu      $v1, $sp, 0x60
/* 5DE2C 8006D62C 6100A427 */  addiu      $a0, $sp, 0x61
/* 5DE30 8006D630 6800A527 */  addiu      $a1, $sp, 0x68
/* 5DE34 8006D634 7800A627 */  addiu      $a2, $sp, 0x78
/* 5DE38 8006D638 8800A727 */  addiu      $a3, $sp, 0x88
/* 5DE3C 8006D63C 9800A827 */  addiu      $t0, $sp, 0x98
/* 5DE40 8006D640 FFFF0C24 */  addiu      $t4, $zero, -1
/* 5DE44 8006D644 FC00A2AF */  sw         $v0, 0xfc($sp)
/* 5DE48 8006D648 5800A227 */  addiu      $v0, $sp, 0x58
/* 5DE4C 8006D64C 21484000 */  addu       $t1, $v0, $zero
/* 5DE50 8006D650 5000AA27 */  addiu      $t2, $sp, 0x50
/* 5DE54 8006D654 0401A2AF */  sw         $v0, 0x104($sp)
/* 5DE58 8006D658 1B80023C */  lui        $v0, %hi(D_801AF990)
/* 5DE5C 8006D65C 3001A8AF */  sw         $t0, 0x130($sp)
/* 5DE60 8006D660 0001A88F */  lw         $t0, 0x100($sp)
/* 5DE64 8006D664 90F94B24 */  addiu      $t3, $v0, %lo(D_801AF990)
/* 5DE68 8006D668 0C01A3AF */  sw         $v1, 0x10c($sp)
/* 5DE6C 8006D66C 1001A4AF */  sw         $a0, 0x110($sp)
/* 5DE70 8006D670 1801A5AF */  sw         $a1, 0x118($sp)
/* 5DE74 8006D674 2001A6AF */  sw         $a2, 0x120($sp)
/* 5DE78 8006D678 2801A7AF */  sw         $a3, 0x128($sp)
.L8006D67C:
/* 5DE7C 8006D67C 0000638D */  lw         $v1, ($t3)
/* 5DE80 8006D680 00000000 */  nop
/* 5DE84 8006D684 05006014 */  bnez       $v1, .L8006D69C
/* 5DE88 8006D688 03110300 */   sra       $v0, $v1, 4
/* 5DE8C 8006D68C 00000CAD */  sw         $t4, ($t0)
/* 5DE90 8006D690 00004CAD */  sw         $t4, ($t2)
/* 5DE94 8006D694 B7B50108 */  j          .L8006D6DC
/* 5DE98 8006D698 00002CAD */   sw        $t4, ($t1)
.L8006D69C:
/* 5DE9C 8006D69C FF004430 */  andi       $a0, $v0, 0xff
/* 5DEA0 8006D6A0 42380400 */  srl        $a3, $a0, 1
/* 5DEA4 8006D6A4 0200E524 */  addiu      $a1, $a3, 2
/* 5DEA8 8006D6A8 2130A000 */  addu       $a2, $a1, $zero
/* 5DEAC 8006D6AC 0F006330 */  andi       $v1, $v1, 0xf
/* 5DEB0 8006D6B0 FFFF6324 */  addiu      $v1, $v1, -1
/* 5DEB4 8006D6B4 01004230 */  andi       $v0, $v0, 1
/* 5DEB8 8006D6B8 000003AD */  sw         $v1, ($t0)
/* 5DEBC 8006D6BC 80180200 */  sll        $v1, $v0, 2
/* 5DEC0 8006D6C0 0200A104 */  bgez       $a1, .L8006D6CC
/* 5DEC4 8006D6C4 000024AD */   sw        $a0, ($t1)
/* 5DEC8 8006D6C8 0500E624 */  addiu      $a2, $a3, 5
.L8006D6CC:
/* 5DECC 8006D6CC FC01C230 */  andi       $v0, $a2, 0x1fc
/* 5DED0 8006D6D0 2310A200 */  subu       $v0, $a1, $v0
/* 5DED4 8006D6D4 21106200 */  addu       $v0, $v1, $v0
/* 5DED8 8006D6D8 000022AD */  sw         $v0, ($t1)
.L8006D6DC:
/* 5DEDC 8006D6DC 04002925 */  addiu      $t1, $t1, 4
/* 5DEE0 8006D6E0 04000825 */  addiu      $t0, $t0, 4
/* 5DEE4 8006D6E4 04004A25 */  addiu      $t2, $t2, 4
/* 5DEE8 8006D6E8 0100AD25 */  addiu      $t5, $t5, 1
/* 5DEEC 8006D6EC 0200A229 */  slti       $v0, $t5, 2
/* 5DEF0 8006D6F0 E2FF4014 */  bnez       $v0, .L8006D67C
/* 5DEF4 8006D6F4 04006B25 */   addiu     $t3, $t3, 4
/* 5DEF8 8006D6F8 3E000324 */  addiu      $v1, $zero, 0x3e
/* 5DEFC 8006D6FC 28000424 */  addiu      $a0, $zero, 0x28
/* 5DF00 8006D700 04001624 */  addiu      $s6, $zero, 4
/* 5DF04 8006D704 6666053C */  lui        $a1, 0x6666
/* 5DF08 8006D708 6766A534 */  ori        $a1, $a1, 0x6667
/* 5DF0C 8006D70C E3381E3C */  lui        $fp, 0x38e3
/* 5DF10 8006D710 398EDE37 */  ori        $fp, $fp, 0x8e39
/* 5DF14 8006D714 BC00A3AF */  sw         $v1, 0xbc($sp)
/* 5DF18 8006D718 C000A4AF */  sw         $a0, 0xc0($sp)
/* 5DF1C 8006D71C CC00A5AF */  sw         $a1, 0xcc($sp)
.L8006D720:
/* 5DF20 8006D720 21A00000 */  addu       $s4, $zero, $zero
/* 5DF24 8006D724 C39F1600 */  sra        $s3, $s6, 0x1f
/* 5DF28 8006D728 80301600 */  sll        $a2, $s6, 2
/* 5DF2C 8006D72C FFFFC826 */  addiu      $t0, $s6, -1
/* 5DF30 8006D730 AC00A78F */  lw         $a3, 0xac($sp)
/* 5DF34 8006D734 0401B08F */  lw         $s0, 0x104($sp)
/* 5DF38 8006D738 0001B18F */  lw         $s1, 0x100($sp)
/* 5DF3C 8006D73C 01001224 */  addiu      $s2, $zero, 1
/* 5DF40 8006D740 3801A6AF */  sw         $a2, 0x138($sp)
/* 5DF44 8006D744 3401A8AF */  sw         $t0, 0x134($sp)
/* 5DF48 8006D748 0100E724 */  addiu      $a3, $a3, 1
/* 5DF4C 8006D74C 0801A7AF */  sw         $a3, 0x108($sp)
.L8006D750:
/* 5DF50 8006D750 0000228E */  lw         $v0, ($s1)
/* 5DF54 8006D754 00000000 */  nop
/* 5DF58 8006D758 0B00C216 */  bne        $s6, $v0, .L8006D788
/* 5DF5C 8006D75C 00000000 */   nop
/* 5DF60 8006D760 0000028E */  lw         $v0, ($s0)
/* 5DF64 8006D764 B000A38F */  lw         $v1, 0xb0($sp)
/* 5DF68 8006D768 00000000 */  nop
/* 5DF6C 8006D76C 06006214 */  bne        $v1, $v0, .L8006D788
/* 5DF70 8006D770 00000000 */   nop
/* 5DF74 8006D774 5172000C */  jal        FUN_8001c944
/* 5DF78 8006D778 00000000 */   nop
/* 5DF7C 8006D77C 02004014 */  bnez       $v0, .L8006D788
/* 5DF80 8006D780 00000000 */   nop
/* 5DF84 8006D784 01001424 */  addiu      $s4, $zero, 1
.L8006D788:
/* 5DF88 8006D788 04001026 */  addiu      $s0, $s0, 4
/* 5DF8C 8006D78C FFFF5226 */  addiu      $s2, $s2, -1
/* 5DF90 8006D790 EFFF4106 */  bgez       $s2, .L8006D750
/* 5DF94 8006D794 04003126 */   addiu     $s1, $s1, 4
/* 5DF98 8006D798 05000324 */  addiu      $v1, $zero, 5
/* 5DF9C 8006D79C 23187600 */  subu       $v1, $v1, $s6
/* 5DFA0 8006D7A0 C0100300 */  sll        $v0, $v1, 3
/* 5DFA4 8006D7A4 21104300 */  addu       $v0, $v0, $v1
/* 5DFA8 8006D7A8 40100200 */  sll        $v0, $v0, 1
/* 5DFAC 8006D7AC 2A10E202 */  slt        $v0, $s7, $v0
/* 5DFB0 8006D7B0 08004010 */  beqz       $v0, .L8006D7D4
/* 5DFB4 8006D7B4 40010824 */   addiu     $t0, $zero, 0x140
/* 5DFB8 8006D7B8 CC00A38F */  lw         $v1, 0xcc($sp)
/* 5DFBC 8006D7BC 00000000 */  nop
/* 5DFC0 8006D7C0 1800C302 */  mult       $s6, $v1
/* 5DFC4 8006D7C4 3E000424 */  addiu      $a0, $zero, 0x3e
/* 5DFC8 8006D7C8 28001524 */  addiu      $s5, $zero, 0x28
/* 5DFCC 8006D7CC BDB60108 */  j          .L8006DAF4
/* 5DFD0 8006D7D0 C400A4AF */   sw        $a0, 0xc4($sp)
.L8006D7D4:
/* 5DFD4 8006D7D4 07000224 */  addiu      $v0, $zero, 7
/* 5DFD8 8006D7D8 23105600 */  subu       $v0, $v0, $s6
/* 5DFDC 8006D7DC C0180200 */  sll        $v1, $v0, 3
/* 5DFE0 8006D7E0 21186200 */  addu       $v1, $v1, $v0
/* 5DFE4 8006D7E4 40180300 */  sll        $v1, $v1, 1
/* 5DFE8 8006D7E8 2A10E302 */  slt        $v0, $s7, $v1
/* 5DFEC 8006D7EC 3E004010 */  beqz       $v0, .L8006D8E8
/* 5DFF0 8006D7F0 23287700 */   subu      $a1, $v1, $s7
/* 5DFF4 8006D7F4 80100500 */  sll        $v0, $a1, 2
/* 5DFF8 8006D7F8 21104500 */  addu       $v0, $v0, $a1
/* 5DFFC 8006D7FC 80110200 */  sll        $v0, $v0, 6
/* 5E000 8006D800 18005E00 */  mult       $v0, $fp
/* 5E004 8006D804 10180000 */  mfhi       $v1
/* 5E008 8006D808 BC00A48F */  lw         $a0, 0xbc($sp)
/* 5E00C 8006D80C 00000000 */  nop
/* 5E010 8006D810 18008500 */  mult       $a0, $a1
/* 5E014 8006D814 12380000 */  mflo       $a3
/* 5E018 8006D818 CC00A68F */  lw         $a2, 0xcc($sp)
/* 5E01C 8006D81C 00000000 */  nop
/* 5E020 8006D820 1800C602 */  mult       $s6, $a2
/* 5E024 8006D824 10200000 */  mfhi       $a0
/* 5E028 8006D828 00000000 */  nop
/* 5E02C 8006D82C 00000000 */  nop
/* 5E030 8006D830 1800FE00 */  mult       $a3, $fp
/* 5E034 8006D834 10300000 */  mfhi       $a2
/* 5E038 8006D838 C000A88F */  lw         $t0, 0xc0($sp)
/* 5E03C 8006D83C C3170200 */  sra        $v0, $v0, 0x1f
/* 5E040 8006D840 18000501 */  mult       $t0, $a1
/* 5E044 8006D844 83180300 */  sra        $v1, $v1, 2
/* 5E048 8006D848 23186200 */  subu       $v1, $v1, $v0
/* 5E04C 8006D84C 43200400 */  sra        $a0, $a0, 1
/* 5E050 8006D850 23209300 */  subu       $a0, $a0, $s3
/* 5E054 8006D854 C33F0700 */  sra        $a3, $a3, 0x1f
/* 5E058 8006D858 E8FE6824 */  addiu      $t0, $v1, -0x118
/* 5E05C 8006D85C 80180400 */  sll        $v1, $a0, 2
/* 5E060 8006D860 21186400 */  addu       $v1, $v1, $a0
/* 5E064 8006D864 2318C302 */  subu       $v1, $s6, $v1
/* 5E068 8006D868 40100300 */  sll        $v0, $v1, 1
/* 5E06C 8006D86C 21104300 */  addu       $v0, $v0, $v1
/* 5E070 8006D870 12280000 */  mflo       $a1
/* 5E074 8006D874 80100200 */  sll        $v0, $v0, 2
/* 5E078 8006D878 21104300 */  addu       $v0, $v0, $v1
/* 5E07C 8006D87C 1800BE00 */  mult       $a1, $fp
/* 5E080 8006D880 80100200 */  sll        $v0, $v0, 2
/* 5E084 8006D884 21104300 */  addu       $v0, $v0, $v1
/* 5E088 8006D888 88FF5124 */  addiu      $s1, $v0, -0x78
/* 5E08C 8006D88C C3300600 */  sra        $a2, $a2, 3
/* 5E090 8006D890 2330C700 */  subu       $a2, $a2, $a3
/* 5E094 8006D894 BC00A28F */  lw         $v0, 0xbc($sp)
/* 5E098 8006D898 C000A38F */  lw         $v1, 0xc0($sp)
/* 5E09C 8006D89C 23304600 */  subu       $a2, $v0, $a2
/* 5E0A0 8006D8A0 23104600 */  subu       $v0, $v0, $a2
/* 5E0A4 8006D8A4 C400A6AF */  sw         $a2, 0xc4($sp)
/* 5E0A8 8006D8A8 C32F0500 */  sra        $a1, $a1, 0x1f
/* 5E0AC 8006D8AC 10200000 */  mfhi       $a0
/* 5E0B0 8006D8B0 C3200400 */  sra        $a0, $a0, 3
/* 5E0B4 8006D8B4 23208500 */  subu       $a0, $a0, $a1
/* 5E0B8 8006D8B8 23A86400 */  subu       $s5, $v1, $a0
/* 5E0BC 8006D8BC C21F0200 */  srl        $v1, $v0, 0x1f
/* 5E0C0 8006D8C0 21104300 */  addu       $v0, $v0, $v1
/* 5E0C4 8006D8C4 43100200 */  sra        $v0, $v0, 1
/* 5E0C8 8006D8C8 C000A48F */  lw         $a0, 0xc0($sp)
/* 5E0CC 8006D8CC 21400201 */  addu       $t0, $t0, $v0
/* 5E0D0 8006D8D0 23189500 */  subu       $v1, $a0, $s5
/* 5E0D4 8006D8D4 C2170300 */  srl        $v0, $v1, 0x1f
/* 5E0D8 8006D8D8 21186200 */  addu       $v1, $v1, $v0
/* 5E0DC 8006D8DC 43180300 */  sra        $v1, $v1, 1
/* 5E0E0 8006D8E0 CAB60108 */  j          .L8006DB28
/* 5E0E4 8006D8E4 21882302 */   addu      $s1, $s1, $v1
.L8006D8E8:
/* 5E0E8 8006D8E8 11000224 */  addiu      $v0, $zero, 0x11
/* 5E0EC 8006D8EC 23105600 */  subu       $v0, $v0, $s6
/* 5E0F0 8006D8F0 C0180200 */  sll        $v1, $v0, 3
/* 5E0F4 8006D8F4 21186200 */  addu       $v1, $v1, $v0
/* 5E0F8 8006D8F8 40200300 */  sll        $a0, $v1, 1
/* 5E0FC 8006D8FC 2A10E402 */  slt        $v0, $s7, $a0
/* 5E100 8006D900 08004010 */  beqz       $v0, .L8006D924
/* 5E104 8006D904 E8FE0824 */   addiu     $t0, $zero, -0x118
/* 5E108 8006D908 CC00A38F */  lw         $v1, 0xcc($sp)
/* 5E10C 8006D90C 00000000 */  nop
/* 5E110 8006D910 1800C302 */  mult       $s6, $v1
/* 5E114 8006D914 3E000424 */  addiu      $a0, $zero, 0x3e
/* 5E118 8006D918 28001524 */  addiu      $s5, $zero, 0x28
/* 5E11C 8006D91C BDB60108 */  j          .L8006DAF4
/* 5E120 8006D920 C400A4AF */   sw        $a0, 0xc4($sp)
.L8006D924:
/* 5E124 8006D924 12000224 */  addiu      $v0, $zero, 0x12
/* 5E128 8006D928 23105600 */  subu       $v0, $v0, $s6
/* 5E12C 8006D92C C0180200 */  sll        $v1, $v0, 3
/* 5E130 8006D930 21186200 */  addu       $v1, $v1, $v0
/* 5E134 8006D934 40400300 */  sll        $t0, $v1, 1
/* 5E138 8006D938 2A10E802 */  slt        $v0, $s7, $t0
/* 5E13C 8006D93C 21004010 */  beqz       $v0, .L8006D9C4
/* 5E140 8006D940 13000224 */   addiu     $v0, $zero, 0x13
/* 5E144 8006D944 B800A58F */  lw         $a1, 0xb8($sp)
/* 5E148 8006D948 00000000 */  nop
/* 5E14C 8006D94C 0D00A010 */  beqz       $a1, .L8006D984
/* 5E150 8006D950 2318E402 */   subu      $v1, $s7, $a0
/* 5E154 8006D954 C0100300 */  sll        $v0, $v1, 3
/* 5E158 8006D958 21104300 */  addu       $v0, $v0, $v1
/* 5E15C 8006D95C C0100200 */  sll        $v0, $v0, 3
/* 5E160 8006D960 23104300 */  subu       $v0, $v0, $v1
/* 5E164 8006D964 80200200 */  sll        $a0, $v0, 2
/* 5E168 8006D968 23208200 */  subu       $a0, $a0, $v0
/* 5E16C 8006D96C 18009E00 */  mult       $a0, $fp
/* 5E170 8006D970 C3270400 */  sra        $a0, $a0, 0x1f
/* 5E174 8006D974 10180000 */  mfhi       $v1
/* 5E178 8006D978 83180300 */  sra        $v1, $v1, 2
/* 5E17C 8006D97C 69B60108 */  j          .L8006D9A4
/* 5E180 8006D980 23186400 */   subu      $v1, $v1, $a0
.L8006D984:
/* 5E184 8006D984 80100300 */  sll        $v0, $v1, 2
/* 5E188 8006D988 21104300 */  addu       $v0, $v0, $v1
/* 5E18C 8006D98C 80110200 */  sll        $v0, $v0, 6
/* 5E190 8006D990 18005E00 */  mult       $v0, $fp
/* 5E194 8006D994 C3170200 */  sra        $v0, $v0, 0x1f
/* 5E198 8006D998 10180000 */  mfhi       $v1
/* 5E19C 8006D99C 83180300 */  sra        $v1, $v1, 2
/* 5E1A0 8006D9A0 23186200 */  subu       $v1, $v1, $v0
.L8006D9A4:
/* 5E1A4 8006D9A4 E8FE6824 */  addiu      $t0, $v1, -0x118
/* 5E1A8 8006D9A8 CC00A38F */  lw         $v1, 0xcc($sp)
/* 5E1AC 8006D9AC 00000000 */  nop
/* 5E1B0 8006D9B0 1800C302 */  mult       $s6, $v1
/* 5E1B4 8006D9B4 3E000424 */  addiu      $a0, $zero, 0x3e
/* 5E1B8 8006D9B8 28001524 */  addiu      $s5, $zero, 0x28
/* 5E1BC 8006D9BC BDB60108 */  j          .L8006DAF4
/* 5E1C0 8006D9C0 C400A4AF */   sw        $a0, 0xc4($sp)
.L8006D9C4:
/* 5E1C4 8006D9C4 23105600 */  subu       $v0, $v0, $s6
/* 5E1C8 8006D9C8 C0180200 */  sll        $v1, $v0, 3
/* 5E1CC 8006D9CC 21186200 */  addu       $v1, $v1, $v0
/* 5E1D0 8006D9D0 40180300 */  sll        $v1, $v1, 1
/* 5E1D4 8006D9D4 2A10E302 */  slt        $v0, $s7, $v1
/* 5E1D8 8006D9D8 40004010 */  beqz       $v0, .L8006DADC
/* 5E1DC 8006D9DC 23207700 */   subu      $a0, $v1, $s7
/* 5E1E0 8006D9E0 BC00A28F */  lw         $v0, 0xbc($sp)
/* 5E1E4 8006D9E4 00000000 */  nop
/* 5E1E8 8006D9E8 18004400 */  mult       $v0, $a0
/* 5E1EC 8006D9EC 12280000 */  mflo       $a1
/* 5E1F0 8006D9F0 C000A28F */  lw         $v0, 0xc0($sp)
/* 5E1F4 8006D9F4 00000000 */  nop
/* 5E1F8 8006D9F8 18004400 */  mult       $v0, $a0
/* 5E1FC 8006D9FC 12200000 */  mflo       $a0
/* 5E200 8006DA00 00000000 */  nop
/* 5E204 8006DA04 00000000 */  nop
/* 5E208 8006DA08 1800BE00 */  mult       $a1, $fp
/* 5E20C 8006DA0C 10300000 */  mfhi       $a2
/* 5E210 8006DA10 00000000 */  nop
/* 5E214 8006DA14 00000000 */  nop
/* 5E218 8006DA18 18009E00 */  mult       $a0, $fp
/* 5E21C 8006DA1C 2318E802 */  subu       $v1, $s7, $t0
/* 5E220 8006DA20 C0100300 */  sll        $v0, $v1, 3
/* 5E224 8006DA24 21104300 */  addu       $v0, $v0, $v1
/* 5E228 8006DA28 80100200 */  sll        $v0, $v0, 2
/* 5E22C 8006DA2C 10380000 */  mfhi       $a3
/* 5E230 8006DA30 23104300 */  subu       $v0, $v0, $v1
/* 5E234 8006DA34 C0100200 */  sll        $v0, $v0, 3
/* 5E238 8006DA38 18005E00 */  mult       $v0, $fp
/* 5E23C 8006DA3C C32F0500 */  sra        $a1, $a1, 0x1f
/* 5E240 8006DA40 83300600 */  sra        $a2, $a2, 2
/* 5E244 8006DA44 2330C500 */  subu       $a2, $a2, $a1
/* 5E248 8006DA48 C3270400 */  sra        $a0, $a0, 0x1f
/* 5E24C 8006DA4C C400A6AF */  sw         $a2, 0xc4($sp)
/* 5E250 8006DA50 83380700 */  sra        $a3, $a3, 2
/* 5E254 8006DA54 C3170200 */  sra        $v0, $v0, 0x1f
/* 5E258 8006DA58 10180000 */  mfhi       $v1
/* 5E25C 8006DA5C 83180300 */  sra        $v1, $v1, 2
/* 5E260 8006DA60 23186200 */  subu       $v1, $v1, $v0
/* 5E264 8006DA64 B800A28F */  lw         $v0, 0xb8($sp)
/* 5E268 8006DA68 00000000 */  nop
/* 5E26C 8006DA6C 03004010 */  beqz       $v0, .L8006DA7C
/* 5E270 8006DA70 23A8E400 */   subu      $s5, $a3, $a0
/* 5E274 8006DA74 A0B60108 */  j          .L8006DA80
/* 5E278 8006DA78 BDFF0224 */   addiu     $v0, $zero, -0x43
.L8006DA7C:
/* 5E27C 8006DA7C 28000224 */  addiu      $v0, $zero, 0x28
.L8006DA80:
/* 5E280 8006DA80 23404300 */  subu       $t0, $v0, $v1
/* 5E284 8006DA84 CC00A38F */  lw         $v1, 0xcc($sp)
/* 5E288 8006DA88 00000000 */  nop
/* 5E28C 8006DA8C 1800C302 */  mult       $s6, $v1
/* 5E290 8006DA90 10100000 */  mfhi       $v0
/* 5E294 8006DA94 43100200 */  sra        $v0, $v0, 1
/* 5E298 8006DA98 23105300 */  subu       $v0, $v0, $s3
/* 5E29C 8006DA9C 80180200 */  sll        $v1, $v0, 2
/* 5E2A0 8006DAA0 21186200 */  addu       $v1, $v1, $v0
/* 5E2A4 8006DAA4 2318C302 */  subu       $v1, $s6, $v1
/* 5E2A8 8006DAA8 40200300 */  sll        $a0, $v1, 1
/* 5E2AC 8006DAAC 21208300 */  addu       $a0, $a0, $v1
/* 5E2B0 8006DAB0 80200400 */  sll        $a0, $a0, 2
/* 5E2B4 8006DAB4 21208300 */  addu       $a0, $a0, $v1
/* 5E2B8 8006DAB8 80200400 */  sll        $a0, $a0, 2
/* 5E2BC 8006DABC 21208300 */  addu       $a0, $a0, $v1
/* 5E2C0 8006DAC0 D8FFA226 */  addiu      $v0, $s5, -0x28
/* 5E2C4 8006DAC4 C21F0200 */  srl        $v1, $v0, 0x1f
/* 5E2C8 8006DAC8 21104300 */  addu       $v0, $v0, $v1
/* 5E2CC 8006DACC 43100200 */  sra        $v0, $v0, 1
/* 5E2D0 8006DAD0 78004224 */  addiu      $v0, $v0, 0x78
/* 5E2D4 8006DAD4 CAB60108 */  j          .L8006DB28
/* 5E2D8 8006DAD8 23888200 */   subu      $s1, $a0, $v0
.L8006DADC:
/* 5E2DC 8006DADC CC00A38F */  lw         $v1, 0xcc($sp)
/* 5E2E0 8006DAE0 00000000 */  nop
/* 5E2E4 8006DAE4 1800C302 */  mult       $s6, $v1
/* 5E2E8 8006DAE8 E8FE0824 */  addiu      $t0, $zero, -0x118
/* 5E2EC 8006DAEC 21A80000 */  addu       $s5, $zero, $zero
/* 5E2F0 8006DAF0 C400A0AF */  sw         $zero, 0xc4($sp)
.L8006DAF4:
/* 5E2F4 8006DAF4 10100000 */  mfhi       $v0
/* 5E2F8 8006DAF8 43100200 */  sra        $v0, $v0, 1
/* 5E2FC 8006DAFC 23105300 */  subu       $v0, $v0, $s3
/* 5E300 8006DB00 80180200 */  sll        $v1, $v0, 2
/* 5E304 8006DB04 21186200 */  addu       $v1, $v1, $v0
/* 5E308 8006DB08 2318C302 */  subu       $v1, $s6, $v1
/* 5E30C 8006DB0C 40100300 */  sll        $v0, $v1, 1
/* 5E310 8006DB10 21104300 */  addu       $v0, $v0, $v1
/* 5E314 8006DB14 80100200 */  sll        $v0, $v0, 2
/* 5E318 8006DB18 21104300 */  addu       $v0, $v0, $v1
/* 5E31C 8006DB1C 80100200 */  sll        $v0, $v0, 2
/* 5E320 8006DB20 21104300 */  addu       $v0, $v0, $v1
/* 5E324 8006DB24 88FF5124 */  addiu      $s1, $v0, -0x78
.L8006DB28:
/* 5E328 8006DB28 BC00A28F */  lw         $v0, 0xbc($sp)
/* 5E32C 8006DB2C 00000000 */  nop
/* 5E330 8006DB30 18005600 */  mult       $v0, $s6
/* 5E334 8006DB34 B800A38F */  lw         $v1, 0xb8($sp)
/* 5E338 8006DB38 12380000 */  mflo       $a3
/* 5E33C 8006DB3C 02006010 */  beqz       $v1, .L8006DB48
/* 5E340 8006DB40 21980001 */   addu      $s3, $t0, $zero
/* 5E344 8006DB44 3C007326 */  addiu      $s3, $s3, 0x3c
.L8006DB48:
/* 5E348 8006DB48 28008012 */  beqz       $s4, .L8006DBEC
/* 5E34C 8006DB4C 1800FE02 */   mult      $s7, $fp
/* 5E350 8006DB50 2C01A38F */  lw         $v1, 0x12c($sp)
/* 5E354 8006DB54 10100000 */  mfhi       $v0
/* 5E358 8006DB58 C3100200 */  sra        $v0, $v0, 3
/* 5E35C 8006DB5C 23104300 */  subu       $v0, $v0, $v1
/* 5E360 8006DB60 C0180200 */  sll        $v1, $v0, 3
/* 5E364 8006DB64 21186200 */  addu       $v1, $v1, $v0
/* 5E368 8006DB68 80180300 */  sll        $v1, $v1, 2
/* 5E36C 8006DB6C 2318E302 */  subu       $v1, $s7, $v1
/* 5E370 8006DB70 001B0300 */  sll        $v1, $v1, 0xc
/* 5E374 8006DB74 18007E00 */  mult       $v1, $fp
/* 5E378 8006DB78 6801A7AF */  sw         $a3, 0x168($sp)
/* 5E37C 8006DB7C C31F0300 */  sra        $v1, $v1, 0x1f
/* 5E380 8006DB80 10200000 */  mfhi       $a0
/* 5E384 8006DB84 C3200400 */  sra        $a0, $a0, 3
/* 5E388 8006DB88 23208300 */  subu       $a0, $a0, $v1
/* 5E38C 8006DB8C F4F1000C */  jal        rsin
/* 5E390 8006DB90 00088424 */   addiu     $a0, $a0, 0x800
/* 5E394 8006DB94 B400A58F */  lw         $a1, 0xb4($sp)
/* 5E398 8006DB98 80000424 */  addiu      $a0, $zero, 0x80
/* 5E39C 8006DB9C 18008500 */  mult       $a0, $a1
/* 5E3A0 8006DBA0 6801A78F */  lw         $a3, 0x168($sp)
/* 5E3A4 8006DBA4 21284000 */  addu       $a1, $v0, $zero
/* 5E3A8 8006DBA8 12180000 */  mflo       $v1
/* 5E3AC 8006DBAC 02006104 */  bgez       $v1, .L8006DBB8
/* 5E3B0 8006DBB0 21206000 */   addu      $a0, $v1, $zero
/* 5E3B4 8006DBB4 7F006424 */  addiu      $a0, $v1, 0x7f
.L8006DBB8:
/* 5E3B8 8006DBB8 C3310400 */  sra        $a2, $a0, 7
/* 5E3BC 8006DBBC 40100500 */  sll        $v0, $a1, 1
/* 5E3C0 8006DBC0 21104500 */  addu       $v0, $v0, $a1
/* 5E3C4 8006DBC4 40110200 */  sll        $v0, $v0, 5
/* 5E3C8 8006DBC8 03130200 */  sra        $v0, $v0, 0xc
/* 5E3CC 8006DBCC 18004600 */  mult       $v0, $a2
/* 5E3D0 8006DBD0 12100000 */  mflo       $v0
/* 5E3D4 8006DBD4 02004104 */  bgez       $v0, .L8006DBE0
/* 5E3D8 8006DBD8 00000000 */   nop
/* 5E3DC 8006DBDC 7F004224 */  addiu      $v0, $v0, 0x7f
.L8006DBE0:
/* 5E3E0 8006DBE0 C3110200 */  sra        $v0, $v0, 7
/* 5E3E4 8006DBE4 FCB60108 */  j          .L8006DBF0
/* 5E3E8 8006DBE8 21A0C200 */   addu      $s4, $a2, $v0
.L8006DBEC:
/* 5E3EC 8006DBEC 80001424 */  addiu      $s4, $zero, 0x80
.L8006DBF0:
/* 5E3F0 8006DBF0 AC00A58F */  lw         $a1, 0xac($sp)
/* 5E3F4 8006DBF4 FC00A38F */  lw         $v1, 0xfc($sp)
/* 5E3F8 8006DBF8 3801A68F */  lw         $a2, 0x138($sp)
/* 5E3FC 8006DBFC 3401B68F */  lw         $s6, 0x134($sp)
/* 5E400 8006DC00 21106600 */  addu       $v0, $v1, $a2
/* 5E404 8006DC04 000053AC */  sw         $s3, ($v0)
/* 5E408 8006DC08 BC00A88F */  lw         $t0, 0xbc($sp)
/* 5E40C 8006DC0C C000A28F */  lw         $v0, 0xc0($sp)
/* 5E410 8006DC10 C800A38F */  lw         $v1, 0xc8($sp)
/* 5E414 8006DC14 1000A8AF */  sw         $t0, 0x10($sp)
/* 5E418 8006DC18 1400A2AF */  sw         $v0, 0x14($sp)
/* 5E41C 8006DC1C 04006684 */  lh         $a2, 4($v1)
/* 5E420 8006DC20 FFFF0224 */  addiu      $v0, $zero, -1
/* 5E424 8006DC24 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5E428 8006DC28 0C006284 */  lh         $v0, 0xc($v1)
/* 5E42C 8006DC2C 2130C700 */  addu       $a2, $a2, $a3
/* 5E430 8006DC30 06006784 */  lh         $a3, 6($v1)
/* 5E434 8006DC34 02000424 */  addiu      $a0, $zero, 2
/* 5E438 8006DC38 1769010C */  jal        FUN_8005a45c
/* 5E43C 8006DC3C 1800A2AF */   sw        $v0, 0x18($sp)
/* 5E440 8006DC40 C800A58F */  lw         $a1, 0xc8($sp)
/* 5E444 8006DC44 00000000 */  nop
/* 5E448 8006DC48 1600A684 */  lh         $a2, 0x16($a1)
/* 5E44C 8006DC4C 1800A784 */  lh         $a3, 0x18($a1)
/* 5E450 8006DC50 AC00A58F */  lw         $a1, 0xac($sp)
/* 5E454 8006DC54 396D010C */  jal        FUN_8005b4e4
/* 5E458 8006DC58 02000424 */   addiu     $a0, $zero, 2
/* 5E45C 8006DC5C 02000424 */  addiu      $a0, $zero, 2
/* 5E460 8006DC60 21306002 */  addu       $a2, $s3, $zero
/* 5E464 8006DC64 AC00A58F */  lw         $a1, 0xac($sp)
/* 5E468 8006DC68 C400A88F */  lw         $t0, 0xc4($sp)
/* 5E46C 8006DC6C 21382002 */  addu       $a3, $s1, $zero
/* 5E470 8006DC70 1400B5AF */  sw         $s5, 0x14($sp)
/* 5E474 8006DC74 976D010C */  jal        FUN_8005b65c
/* 5E478 8006DC78 1000A8AF */   sw        $t0, 0x10($sp)
/* 5E47C 8006DC7C 02000424 */  addiu      $a0, $zero, 2
/* 5E480 8006DC80 21308002 */  addu       $a2, $s4, $zero
/* 5E484 8006DC84 AC00A58F */  lw         $a1, 0xac($sp)
/* 5E488 8006DC88 2138C000 */  addu       $a3, $a2, $zero
/* 5E48C 8006DC8C EB6C010C */  jal        FUN_8005b3ac
/* 5E490 8006DC90 1000B4AF */   sw        $s4, 0x10($sp)
/* 5E494 8006DC94 0801A28F */  lw         $v0, 0x108($sp)
/* 5E498 8006DC98 A1FEC106 */  bgez       $s6, .L8006D720
/* 5E49C 8006DC9C AC00A2AF */   sw        $v0, 0xac($sp)
/* 5E4A0 8006DCA0 E338053C */  lui        $a1, 0x38e3
/* 5E4A4 8006DCA4 398EA534 */  ori        $a1, $a1, 0x8e39
/* 5E4A8 8006DCA8 1800E502 */  mult       $s7, $a1
/* 5E4AC 8006DCAC 04000824 */  addiu      $t0, $zero, 4
/* 5E4B0 8006DCB0 1380043C */  lui        $a0, 0x8013
/* 5E4B4 8006DCB4 2C01A38F */  lw         $v1, 0x12c($sp)
/* 5E4B8 8006DCB8 1401A78F */  lw         $a3, 0x114($sp)
/* 5E4BC 8006DCBC 10100000 */  mfhi       $v0
/* 5E4C0 8006DCC0 C3100200 */  sra        $v0, $v0, 3
/* 5E4C4 8006DCC4 23104300 */  subu       $v0, $v0, $v1
/* 5E4C8 8006DCC8 C0180200 */  sll        $v1, $v0, 3
/* 5E4CC 8006DCCC 21186200 */  addu       $v1, $v1, $v0
/* 5E4D0 8006DCD0 80180300 */  sll        $v1, $v1, 2
/* 5E4D4 8006DCD4 2318E302 */  subu       $v1, $s7, $v1
/* 5E4D8 8006DCD8 001B0300 */  sll        $v1, $v1, 0xc
/* 5E4DC 8006DCDC E0808224 */  addiu      $v0, $a0, -0x7f20
/* 5E4E0 8006DCE0 8D004690 */  lbu        $a2, 0x8d($v0)
/* 5E4E4 8006DCE4 B000A28F */  lw         $v0, 0xb0($sp)
/* 5E4E8 8006DCE8 18006500 */  mult       $v1, $a1
/* 5E4EC 8006DCEC C31F0300 */  sra        $v1, $v1, 0x1f
/* 5E4F0 8006DCF0 2120E200 */  addu       $a0, $a3, $v0
/* 5E4F4 8006DCF4 00210400 */  sll        $a0, $a0, 4
/* 5E4F8 8006DCF8 C0100600 */  sll        $v0, $a2, 3
/* 5E4FC 8006DCFC 23104600 */  subu       $v0, $v0, $a2
/* 5E500 8006DD00 80100200 */  sll        $v0, $v0, 2
/* 5E504 8006DD04 1380063C */  lui        $a2, %hi(D_801282E0)
/* 5E508 8006DD08 D800A4AF */  sw         $a0, 0xd8($sp)
/* 5E50C 8006DD0C E082C424 */  addiu      $a0, $a2, %lo(D_801282E0)
/* 5E510 8006DD10 21104400 */  addu       $v0, $v0, $a0
/* 5E514 8006DD14 D000A2AF */  sw         $v0, 0xd0($sp)
/* 5E518 8006DD18 10280000 */  mfhi       $a1
/* 5E51C 8006DD1C C3280500 */  sra        $a1, $a1, 3
/* 5E520 8006DD20 2328A300 */  subu       $a1, $a1, $v1
/* 5E524 8006DD24 DC00A5AF */  sw         $a1, 0xdc($sp)
/* 5E528 8006DD28 80380800 */  sll        $a3, $t0, 2
.L8006DD2C:
/* 5E52C 8006DD2C C3170800 */  sra        $v0, $t0, 0x1f
/* 5E530 8006DD30 FFFF0325 */  addiu      $v1, $t0, -1
/* 5E534 8006DD34 0401B08F */  lw         $s0, 0x104($sp)
/* 5E538 8006DD38 0001B18F */  lw         $s1, 0x100($sp)
/* 5E53C 8006DD3C 01001224 */  addiu      $s2, $zero, 1
/* 5E540 8006DD40 D400A0AF */  sw         $zero, 0xd4($sp)
/* 5E544 8006DD44 F400A7AF */  sw         $a3, 0xf4($sp)
/* 5E548 8006DD48 F800A2AF */  sw         $v0, 0xf8($sp)
/* 5E54C 8006DD4C F000A3AF */  sw         $v1, 0xf0($sp)
.L8006DD50:
/* 5E550 8006DD50 0000228E */  lw         $v0, ($s1)
/* 5E554 8006DD54 00000000 */  nop
/* 5E558 8006DD58 0C000215 */  bne        $t0, $v0, .L8006DD8C
/* 5E55C 8006DD5C 00000000 */   nop
/* 5E560 8006DD60 0000028E */  lw         $v0, ($s0)
/* 5E564 8006DD64 B000A48F */  lw         $a0, 0xb0($sp)
/* 5E568 8006DD68 00000000 */  nop
/* 5E56C 8006DD6C 07008214 */  bne        $a0, $v0, .L8006DD8C
/* 5E570 8006DD70 00000000 */   nop
/* 5E574 8006DD74 5172000C */  jal        FUN_8001c944
/* 5E578 8006DD78 6C01A8AF */   sw        $t0, 0x16c($sp)
/* 5E57C 8006DD7C 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5E580 8006DD80 02004014 */  bnez       $v0, .L8006DD8C
/* 5E584 8006DD84 01000524 */   addiu     $a1, $zero, 1
/* 5E588 8006DD88 D400A5AF */  sw         $a1, 0xd4($sp)
.L8006DD8C:
/* 5E58C 8006DD8C 04001026 */  addiu      $s0, $s0, 4
/* 5E590 8006DD90 FFFF5226 */  addiu      $s2, $s2, -1
/* 5E594 8006DD94 EEFF4106 */  bgez       $s2, .L8006DD50
/* 5E598 8006DD98 04003126 */   addiu     $s1, $s1, 4
/* 5E59C 8006DD9C 1C021E3C */  lui        $fp, 0x21c
/* 5E5A0 8006DDA0 2401A68F */  lw         $a2, 0x124($sp)
/* 5E5A4 8006DDA4 00000000 */  nop
/* 5E5A8 8006DDA8 0300C010 */  beqz       $a2, .L8006DDB8
/* 5E5AC 8006DDAC CB0CDE37 */   ori       $fp, $fp, 0xccb
/* 5E5B0 8006DDB0 1C011E3C */  lui        $fp, 0x11c
/* 5E5B4 8006DDB4 CB0CDE37 */  ori        $fp, $fp, 0xccb
.L8006DDB8:
/* 5E5B8 8006DDB8 01000524 */  addiu      $a1, $zero, 1
/* 5E5BC 8006DDBC 21A80000 */  addu       $s5, $zero, $zero
/* 5E5C0 8006DDC0 6666043C */  lui        $a0, 0x6666
/* 5E5C4 8006DDC4 67668434 */  ori        $a0, $a0, 0x6667
/* 5E5C8 8006DDC8 21680000 */  addu       $t5, $zero, $zero
/* 5E5CC 8006DDCC 21600000 */  addu       $t4, $zero, $zero
/* 5E5D0 8006DDD0 05000224 */  addiu      $v0, $zero, 5
/* 5E5D4 8006DDD4 23504800 */  subu       $t2, $v0, $t0
/* 5E5D8 8006DDD8 00100B24 */  addiu      $t3, $zero, 0x1000
/* 5E5DC 8006DDDC 18000401 */  mult       $t0, $a0
/* 5E5E0 8006DDE0 3001B48F */  lw         $s4, 0x130($sp)
/* 5E5E4 8006DDE4 1801B68F */  lw         $s6, 0x118($sp)
/* 5E5E8 8006DDE8 2801B18F */  lw         $s1, 0x128($sp)
/* 5E5EC 8006DDEC 2001B38F */  lw         $s3, 0x120($sp)
/* 5E5F0 8006DDF0 0C01B28F */  lw         $s2, 0x10c($sp)
/* 5E5F4 8006DDF4 FC00A28F */  lw         $v0, 0xfc($sp)
/* 5E5F8 8006DDF8 F400A38F */  lw         $v1, 0xf4($sp)
/* 5E5FC 8006DDFC F800A68F */  lw         $a2, 0xf8($sp)
/* 5E600 8006DE00 21484300 */  addu       $t1, $v0, $v1
/* 5E604 8006DE04 12000324 */  addiu      $v1, $zero, 0x12
/* 5E608 8006DE08 23186800 */  subu       $v1, $v1, $t0
/* 5E60C 8006DE0C C0100300 */  sll        $v0, $v1, 3
/* 5E610 8006DE10 21104300 */  addu       $v0, $v0, $v1
/* 5E614 8006DE14 40100200 */  sll        $v0, $v0, 1
/* 5E618 8006DE18 2A38E202 */  slt        $a3, $s7, $v0
/* 5E61C 8006DE1C 10200000 */  mfhi       $a0
/* 5E620 8006DE20 43200400 */  sra        $a0, $a0, 1
/* 5E624 8006DE24 23208600 */  subu       $a0, $a0, $a2
/* 5E628 8006DE28 80180400 */  sll        $v1, $a0, 2
/* 5E62C 8006DE2C 21186400 */  addu       $v1, $v1, $a0
/* 5E630 8006DE30 23180301 */  subu       $v1, $t0, $v1
/* 5E634 8006DE34 40100300 */  sll        $v0, $v1, 1
/* 5E638 8006DE38 21104300 */  addu       $v0, $v0, $v1
/* 5E63C 8006DE3C 80100200 */  sll        $v0, $v0, 2
/* 5E640 8006DE40 21104300 */  addu       $v0, $v0, $v1
/* 5E644 8006DE44 80100200 */  sll        $v0, $v0, 2
/* 5E648 8006DE48 21104300 */  addu       $v0, $v0, $v1
/* 5E64C 8006DE4C 92FF5024 */  addiu      $s0, $v0, -0x6e
.L8006DE50:
/* 5E650 8006DE50 F400A38F */  lw         $v1, 0xf4($sp)
/* 5E654 8006DE54 D800A48F */  lw         $a0, 0xd8($sp)
/* 5E658 8006DE58 A800A68F */  lw         $a2, 0xa8($sp)
/* 5E65C 8006DE5C 21106800 */  addu       $v0, $v1, $t0
/* 5E660 8006DE60 2110A202 */  addu       $v0, $s5, $v0
/* 5E664 8006DE64 21104400 */  addu       $v0, $v0, $a0
/* 5E668 8006DE68 2110C200 */  addu       $v0, $a2, $v0
/* 5E66C 8006DE6C 00004390 */  lbu        $v1, ($v0)
/* 5E670 8006DE70 00000000 */  nop
/* 5E674 8006DE74 000043A2 */  sb         $v1, ($s2)
/* 5E678 8006DE78 1001A38F */  lw         $v1, 0x110($sp)
/* 5E67C 8006DE7C 00000000 */  nop
/* 5E680 8006DE80 21106C00 */  addu       $v0, $v1, $t4
/* 5E684 8006DE84 0A00A016 */  bnez       $s5, .L8006DEB0
/* 5E688 8006DE88 000040A0 */   sb        $zero, ($v0)
/* 5E68C 8006DE8C 2EFF0224 */  addiu      $v0, $zero, -0xd2
/* 5E690 8006DE90 B800A48F */  lw         $a0, 0xb8($sp)
/* 5E694 8006DE94 21300000 */  addu       $a2, $zero, $zero
/* 5E698 8006DE98 0F008010 */  beqz       $a0, .L8006DED8
/* 5E69C 8006DE9C 6800A2AF */   sw        $v0, 0x68($sp)
/* 5E6A0 8006DEA0 6AFF0224 */  addiu      $v0, $zero, -0x96
/* 5E6A4 8006DEA4 6800A2AF */  sw         $v0, 0x68($sp)
/* 5E6A8 8006DEA8 B6B70108 */  j          .L8006DED8
/* 5E6AC 8006DEAC 2130A002 */   addu      $a2, $s5, $zero
.L8006DEB0:
/* 5E6B0 8006DEB0 FFFFA226 */  addiu      $v0, $s5, -1
/* 5E6B4 8006DEB4 1801A38F */  lw         $v1, 0x118($sp)
/* 5E6B8 8006DEB8 80100200 */  sll        $v0, $v0, 2
/* 5E6BC 8006DEBC 21106200 */  addu       $v0, $v1, $v0
/* 5E6C0 8006DEC0 0000438C */  lw         $v1, ($v0)
/* 5E6C4 8006DEC4 1801A28F */  lw         $v0, 0x118($sp)
/* 5E6C8 8006DEC8 80301500 */  sll        $a2, $s5, 2
/* 5E6CC 8006DECC 21204D00 */  addu       $a0, $v0, $t5
/* 5E6D0 8006DED0 21186500 */  addu       $v1, $v1, $a1
/* 5E6D4 8006DED4 000083AC */  sw         $v1, ($a0)
.L8006DED8:
/* 5E6D8 8006DED8 C0100A00 */  sll        $v0, $t2, 3
/* 5E6DC 8006DEDC 21104A00 */  addu       $v0, $v0, $t2
/* 5E6E0 8006DEE0 40200200 */  sll        $a0, $v0, 1
/* 5E6E4 8006DEE4 23189500 */  subu       $v1, $a0, $s5
/* 5E6E8 8006DEE8 2A18E302 */  slt        $v1, $s7, $v1
/* 5E6EC 8006DEEC 06006010 */  beqz       $v1, .L8006DF08
/* 5E6F0 8006DEF0 06FF0224 */   addiu     $v0, $zero, -0xfa
/* 5E6F4 8006DEF4 C000A38F */  lw         $v1, 0xc0($sp)
/* 5E6F8 8006DEF8 00000000 */  nop
/* 5E6FC 8006DEFC 23104300 */  subu       $v0, $v0, $v1
/* 5E700 8006DF00 0BB80108 */  j          .L8006E02C
/* 5E704 8006DF04 000062AE */   sw        $v0, ($s3)
.L8006DF08:
/* 5E708 8006DF08 07000224 */  addiu      $v0, $zero, 7
/* 5E70C 8006DF0C 23104800 */  subu       $v0, $v0, $t0
/* 5E710 8006DF10 C0180200 */  sll        $v1, $v0, 3
/* 5E714 8006DF14 21186200 */  addu       $v1, $v1, $v0
/* 5E718 8006DF18 40180300 */  sll        $v1, $v1, 1
/* 5E71C 8006DF1C 23107500 */  subu       $v0, $v1, $s5
/* 5E720 8006DF20 2A10E202 */  slt        $v0, $s7, $v0
/* 5E724 8006DF24 23004010 */  beqz       $v0, .L8006DFB4
/* 5E728 8006DF28 2310E402 */   subu      $v0, $s7, $a0
/* 5E72C 8006DF2C 21105500 */  addu       $v0, $v0, $s5
/* 5E730 8006DF30 00130200 */  sll        $v0, $v0, 0xc
/* 5E734 8006DF34 23186400 */  subu       $v1, $v1, $a0
/* 5E738 8006DF38 1A004300 */  div        $zero, $v0, $v1
/* 5E73C 8006DF3C 000070AE */  sw         $s0, ($s3)
/* 5E740 8006DF40 12100000 */  mflo       $v0
/* 5E744 8006DF44 02006014 */  bnez       $v1, .L8006DF50
/* 5E748 8006DF48 00000000 */   nop
/* 5E74C 8006DF4C CD010000 */  break      0, 7
.L8006DF50:
/* 5E750 8006DF50 000022AE */   sw        $v0, ($s1)
/* 5E754 8006DF54 02006014 */  bnez       $v1, .L8006DF60
/* 5E758 8006DF58 00000000 */   nop
/* 5E75C 8006DF5C CD010000 */  break      0, 7
.L8006DF60:
/* 5E760 8006DF60 C0180200 */   sll       $v1, $v0, 3
/* 5E764 8006DF64 23186200 */  subu       $v1, $v1, $v0
/* 5E768 8006DF68 000082AE */  sw         $v0, ($s4)
/* 5E76C 8006DF6C 0000648E */  lw         $a0, ($s3)
/* 5E770 8006DF70 40100300 */  sll        $v0, $v1, 1
/* 5E774 8006DF74 02004104 */  bgez       $v0, .L8006DF80
/* 5E778 8006DF78 0E008424 */   addiu     $a0, $a0, 0xe
/* 5E77C 8006DF7C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8006DF80:
/* 5E780 8006DF80 03130200 */  sra        $v0, $v0, 0xc
/* 5E784 8006DF84 23108200 */  subu       $v0, $a0, $v0
/* 5E788 8006DF88 000062AE */  sw         $v0, ($s3)
/* 5E78C 8006DF8C 1801A28F */  lw         $v0, 0x118($sp)
/* 5E790 8006DF90 0000248D */  lw         $a0, ($t1)
/* 5E794 8006DF94 21184600 */  addu       $v1, $v0, $a2
/* 5E798 8006DF98 0000628C */  lw         $v0, ($v1)
/* 5E79C 8006DF9C 00000000 */  nop
/* 5E7A0 8006DFA0 2A104400 */  slt        $v0, $v0, $a0
/* 5E7A4 8006DFA4 23004010 */  beqz       $v0, .L8006E034
/* 5E7A8 8006DFA8 00000000 */   nop
/* 5E7AC 8006DFAC 0DB80108 */  j          .L8006E034
/* 5E7B0 8006DFB0 000020AE */   sw        $zero, ($s1)
.L8006DFB4:
/* 5E7B4 8006DFB4 11000224 */  addiu      $v0, $zero, 0x11
/* 5E7B8 8006DFB8 23104800 */  subu       $v0, $v0, $t0
/* 5E7BC 8006DFBC C0180200 */  sll        $v1, $v0, 3
/* 5E7C0 8006DFC0 21186200 */  addu       $v1, $v1, $v0
/* 5E7C4 8006DFC4 40180300 */  sll        $v1, $v1, 1
/* 5E7C8 8006DFC8 2A10E302 */  slt        $v0, $s7, $v1
/* 5E7CC 8006DFCC 05004010 */  beqz       $v0, .L8006DFE4
/* 5E7D0 8006DFD0 00000000 */   nop
/* 5E7D4 8006DFD4 000070AE */  sw         $s0, ($s3)
/* 5E7D8 8006DFD8 00002BAE */  sw         $t3, ($s1)
/* 5E7DC 8006DFDC 0DB80108 */  j          .L8006E034
/* 5E7E0 8006DFE0 00008BAE */   sw        $t3, ($s4)
.L8006DFE4:
/* 5E7E4 8006DFE4 1000E010 */  beqz       $a3, .L8006E028
/* 5E7E8 8006DFE8 2310E302 */   subu      $v0, $s7, $v1
/* 5E7EC 8006DFEC 00002BAE */  sw         $t3, ($s1)
/* 5E7F0 8006DFF0 00008BAE */  sw         $t3, ($s4)
/* 5E7F4 8006DFF4 0000C38E */  lw         $v1, ($s6)
/* 5E7F8 8006DFF8 00110200 */  sll        $v0, $v0, 4
/* 5E7FC 8006DFFC 23186200 */  subu       $v1, $v1, $v0
/* 5E800 8006E000 0000C3AE */  sw         $v1, ($s6)
/* 5E804 8006E004 000070AE */  sw         $s0, ($s3)
/* 5E808 8006E008 0000228D */  lw         $v0, ($t1)
/* 5E80C 8006E00C 0000C38E */  lw         $v1, ($s6)
/* 5E810 8006E010 08004224 */  addiu      $v0, $v0, 8
/* 5E814 8006E014 2A186200 */  slt        $v1, $v1, $v0
/* 5E818 8006E018 06006010 */  beqz       $v1, .L8006E034
/* 5E81C 8006E01C 00000000 */   nop
/* 5E820 8006E020 0DB80108 */  j          .L8006E034
/* 5E824 8006E024 000020AE */   sw        $zero, ($s1)
.L8006E028:
/* 5E828 8006E028 000070AE */  sw         $s0, ($s3)
.L8006E02C:
/* 5E82C 8006E02C 000020AE */  sw         $zero, ($s1)
/* 5E830 8006E030 000080AE */  sw         $zero, ($s4)
.L8006E034:
/* 5E834 8006E034 0C01A38F */  lw         $v1, 0x10c($sp)
/* 5E838 8006E038 2128C003 */  addu       $a1, $fp, $zero
/* 5E83C 8006E03C 6801A7AF */  sw         $a3, 0x168($sp)
/* 5E840 8006E040 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5E844 8006E044 7001A9AF */  sw         $t1, 0x170($sp)
/* 5E848 8006E048 7401AAAF */  sw         $t2, 0x174($sp)
/* 5E84C 8006E04C 7801ABAF */  sw         $t3, 0x178($sp)
/* 5E850 8006E050 7C01ACAF */  sw         $t4, 0x17c($sp)
/* 5E854 8006E054 8001ADAF */  sw         $t5, 0x180($sp)
/* 5E858 8006E058 9375010C */  jal        FUN_8005d64c
/* 5E85C 8006E05C 21206C00 */   addu      $a0, $v1, $t4
/* 5E860 8006E060 6801A78F */  lw         $a3, 0x168($sp)
/* 5E864 8006E064 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5E868 8006E068 7001A98F */  lw         $t1, 0x170($sp)
/* 5E86C 8006E06C 7401AA8F */  lw         $t2, 0x174($sp)
/* 5E870 8006E070 7801AB8F */  lw         $t3, 0x178($sp)
/* 5E874 8006E074 7C01AC8F */  lw         $t4, 0x17c($sp)
/* 5E878 8006E078 8001AD8F */  lw         $t5, 0x180($sp)
/* 5E87C 8006E07C 0900E010 */  beqz       $a3, .L8006E0A4
/* 5E880 8006E080 21284000 */   addu      $a1, $v0, $zero
/* 5E884 8006E084 0000228E */  lw         $v0, ($s1)
/* 5E888 8006E088 00000000 */  nop
/* 5E88C 8006E08C 1800A200 */  mult       $a1, $v0
/* 5E890 8006E090 12100000 */  mflo       $v0
/* 5E894 8006E094 03004104 */  bgez       $v0, .L8006E0A4
/* 5E898 8006E098 032B0200 */   sra       $a1, $v0, 0xc
/* 5E89C 8006E09C FF0F4224 */  addiu      $v0, $v0, 0xfff
/* 5E8A0 8006E0A0 032B0200 */  sra        $a1, $v0, 0xc
.L8006E0A4:
/* 5E8A4 8006E0A4 04009426 */  addiu      $s4, $s4, 4
/* 5E8A8 8006E0A8 0400AD25 */  addiu      $t5, $t5, 4
/* 5E8AC 8006E0AC 0400D626 */  addiu      $s6, $s6, 4
/* 5E8B0 8006E0B0 04003126 */  addiu      $s1, $s1, 4
/* 5E8B4 8006E0B4 04007326 */  addiu      $s3, $s3, 4
/* 5E8B8 8006E0B8 02005226 */  addiu      $s2, $s2, 2
/* 5E8BC 8006E0BC 0100B526 */  addiu      $s5, $s5, 1
/* 5E8C0 8006E0C0 0400A22A */  slti       $v0, $s5, 4
/* 5E8C4 8006E0C4 62FF4014 */  bnez       $v0, .L8006DE50
/* 5E8C8 8006E0C8 02008C25 */   addiu     $t4, $t4, 2
/* 5E8CC 8006E0CC D400A28F */  lw         $v0, 0xd4($sp)
/* 5E8D0 8006E0D0 00000000 */  nop
/* 5E8D4 8006E0D4 1B004010 */  beqz       $v0, .L8006E144
/* 5E8D8 8006E0D8 00000000 */   nop
/* 5E8DC 8006E0DC DC00A38F */  lw         $v1, 0xdc($sp)
/* 5E8E0 8006E0E0 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5E8E4 8006E0E4 F4F1000C */  jal        rsin
/* 5E8E8 8006E0E8 00086424 */   addiu     $a0, $v1, 0x800
/* 5E8EC 8006E0EC B400A58F */  lw         $a1, 0xb4($sp)
/* 5E8F0 8006E0F0 80000424 */  addiu      $a0, $zero, 0x80
/* 5E8F4 8006E0F4 18008500 */  mult       $a0, $a1
/* 5E8F8 8006E0F8 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5E8FC 8006E0FC 21284000 */  addu       $a1, $v0, $zero
/* 5E900 8006E100 12180000 */  mflo       $v1
/* 5E904 8006E104 02006104 */  bgez       $v1, .L8006E110
/* 5E908 8006E108 21206000 */   addu      $a0, $v1, $zero
/* 5E90C 8006E10C 7F006424 */  addiu      $a0, $v1, 0x7f
.L8006E110:
/* 5E910 8006E110 C3310400 */  sra        $a2, $a0, 7
/* 5E914 8006E114 40100500 */  sll        $v0, $a1, 1
/* 5E918 8006E118 21104500 */  addu       $v0, $v0, $a1
/* 5E91C 8006E11C 40110200 */  sll        $v0, $v0, 5
/* 5E920 8006E120 03130200 */  sra        $v0, $v0, 0xc
/* 5E924 8006E124 18004600 */  mult       $v0, $a2
/* 5E928 8006E128 12100000 */  mflo       $v0
/* 5E92C 8006E12C 02004104 */  bgez       $v0, .L8006E138
/* 5E930 8006E130 00000000 */   nop
/* 5E934 8006E134 7F004224 */  addiu      $v0, $v0, 0x7f
.L8006E138:
/* 5E938 8006E138 C3110200 */  sra        $v0, $v0, 7
/* 5E93C 8006E13C 52B80108 */  j          .L8006E148
/* 5E940 8006E140 2180C200 */   addu      $s0, $a2, $v0
.L8006E144:
/* 5E944 8006E144 80001024 */  addiu      $s0, $zero, 0x80
.L8006E148:
/* 5E948 8006E148 10FF0A24 */  addiu      $t2, $zero, -0xf0
/* 5E94C 8006E14C B2000924 */  addiu      $t1, $zero, 0xb2
/* 5E950 8006E150 03001624 */  addiu      $s6, $zero, 3
/* 5E954 8006E154 2001B58F */  lw         $s5, 0x120($sp)
/* 5E958 8006E158 1801B48F */  lw         $s4, 0x118($sp)
/* 5E95C 8006E15C 0C01B38F */  lw         $s3, 0x10c($sp)
/* 5E960 8006E160 3001B28F */  lw         $s2, 0x130($sp)
/* 5E964 8006E164 2801B18F */  lw         $s1, 0x128($sp)
.L8006E168:
/* 5E968 8006E168 02000424 */  addiu      $a0, $zero, 2
/* 5E96C 8006E16C 0000A78E */  lw         $a3, ($s5)
/* 5E970 8006E170 0400B526 */  addiu      $s5, $s5, 4
/* 5E974 8006E174 0000868E */  lw         $a2, ($s4)
/* 5E978 8006E178 04009426 */  addiu      $s4, $s4, 4
/* 5E97C 8006E17C 1800B3AF */  sw         $s3, 0x18($sp)
/* 5E980 8006E180 02007326 */  addiu      $s3, $s3, 2
/* 5E984 8006E184 0000438E */  lw         $v1, ($s2)
/* 5E988 8006E188 04005226 */  addiu      $s2, $s2, 4
/* 5E98C 8006E18C AC00A58F */  lw         $a1, 0xac($sp)
/* 5E990 8006E190 0000228E */  lw         $v0, ($s1)
/* 5E994 8006E194 04003126 */  addiu      $s1, $s1, 4
/* 5E998 8006E198 1C00BEAF */  sw         $fp, 0x1c($sp)
/* 5E99C 8006E19C 2000B0AF */  sw         $s0, 0x20($sp)
/* 5E9A0 8006E1A0 2400AAAF */  sw         $t2, 0x24($sp)
/* 5E9A4 8006E1A4 2800A9AF */  sw         $t1, 0x28($sp)
/* 5E9A8 8006E1A8 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5E9AC 8006E1AC 7001A9AF */  sw         $t1, 0x170($sp)
/* 5E9B0 8006E1B0 7401AAAF */  sw         $t2, 0x174($sp)
/* 5E9B4 8006E1B4 1000A2AF */  sw         $v0, 0x10($sp)
/* 5E9B8 8006E1B8 2E75010C */  jal        FUN_8005d4b8
/* 5E9BC 8006E1BC 1400A3AF */   sw        $v1, 0x14($sp)
/* 5E9C0 8006E1C0 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5E9C4 8006E1C4 7001A98F */  lw         $t1, 0x170($sp)
/* 5E9C8 8006E1C8 7401AA8F */  lw         $t2, 0x174($sp)
/* 5E9CC 8006E1CC FFFFD626 */  addiu      $s6, $s6, -1
/* 5E9D0 8006E1D0 E5FFC106 */  bgez       $s6, .L8006E168
/* 5E9D4 8006E1D4 AC00A2AF */   sw        $v0, 0xac($sp)
/* 5E9D8 8006E1D8 B800A28F */  lw         $v0, 0xb8($sp)
/* 5E9DC 8006E1DC 00000000 */  nop
/* 5E9E0 8006E1E0 F6004010 */  beqz       $v0, .L8006E5BC
/* 5E9E4 8006E1E4 6666043C */   lui       $a0, 0x6666
/* 5E9E8 8006E1E8 67668434 */  ori        $a0, $a0, 0x6667
/* 5E9EC 8006E1EC 08001E24 */  addiu      $fp, $zero, 8
/* 5E9F0 8006E1F0 18000724 */  addiu      $a3, $zero, 0x18
/* 5E9F4 8006E1F4 18000401 */  mult       $t0, $a0
/* 5E9F8 8006E1F8 F400A38F */  lw         $v1, 0xf4($sp)
/* 5E9FC 8006E1FC D800A58F */  lw         $a1, 0xd8($sp)
/* 5EA00 8006E200 1C01A68F */  lw         $a2, 0x11c($sp)
/* 5EA04 8006E204 21106500 */  addu       $v0, $v1, $a1
/* 5EA08 8006E208 2110C200 */  addu       $v0, $a2, $v0
/* 5EA0C 8006E20C 0000528C */  lw         $s2, ($v0)
/* 5EA10 8006E210 F800A38F */  lw         $v1, 0xf8($sp)
/* 5EA14 8006E214 C0000224 */  addiu      $v0, $zero, 0xc0
/* 5EA18 8006E218 C000A7AF */  sw         $a3, 0xc0($sp)
/* 5EA1C 8006E21C 5801A2AF */  sw         $v0, 0x158($sp)
/* 5EA20 8006E220 5C01A2AF */  sw         $v0, 0x15c($sp)
/* 5EA24 8006E224 6001A2AF */  sw         $v0, 0x160($sp)
/* 5EA28 8006E228 6401A2AF */  sw         $v0, 0x164($sp)
/* 5EA2C 8006E22C 10200000 */  mfhi       $a0
/* 5EA30 8006E230 43200400 */  sra        $a0, $a0, 1
/* 5EA34 8006E234 23208300 */  subu       $a0, $a0, $v1
/* 5EA38 8006E238 80180400 */  sll        $v1, $a0, 2
/* 5EA3C 8006E23C 21186400 */  addu       $v1, $v1, $a0
/* 5EA40 8006E240 23180301 */  subu       $v1, $t0, $v1
/* 5EA44 8006E244 40100300 */  sll        $v0, $v1, 1
/* 5EA48 8006E248 21104300 */  addu       $v0, $v0, $v1
/* 5EA4C 8006E24C 80100200 */  sll        $v0, $v0, 2
/* 5EA50 8006E250 21104300 */  addu       $v0, $v0, $v1
/* 5EA54 8006E254 80100200 */  sll        $v0, $v0, 2
/* 5EA58 8006E258 21A04300 */  addu       $s4, $v0, $v1
/* 5EA5C 8006E25C A0FF8426 */  addiu      $a0, $s4, -0x60
/* 5EA60 8006E260 E000A4AF */  sw         $a0, 0xe0($sp)
.L8006E264:
/* 5EA64 8006E264 CCCC033C */  lui        $v1, 0xcccc
/* 5EA68 8006E268 CDCC6334 */  ori        $v1, $v1, 0xcccd
/* 5EA6C 8006E26C 19004302 */  multu      $s2, $v1
/* 5EA70 8006E270 10180000 */  mfhi       $v1
/* 5EA74 8006E274 C2180300 */  srl        $v1, $v1, 3
/* 5EA78 8006E278 80100300 */  sll        $v0, $v1, 2
/* 5EA7C 8006E27C 21104300 */  addu       $v0, $v0, $v1
/* 5EA80 8006E280 40100200 */  sll        $v0, $v0, 1
/* 5EA84 8006E284 C000A38F */  lw         $v1, 0xc0($sp)
/* 5EA88 8006E288 23104202 */  subu       $v0, $s2, $v0
/* 5EA8C 8006E28C 18004300 */  mult       $v0, $v1
/* 5EA90 8006E290 05000324 */  addiu      $v1, $zero, 5
/* 5EA94 8006E294 23186800 */  subu       $v1, $v1, $t0
/* 5EA98 8006E298 C0100300 */  sll        $v0, $v1, 3
/* 5EA9C 8006E29C 21104300 */  addu       $v0, $v0, $v1
/* 5EAA0 8006E2A0 40280200 */  sll        $a1, $v0, 1
/* 5EAA4 8006E2A4 2318BE00 */  subu       $v1, $a1, $fp
/* 5EAA8 8006E2A8 2A18E302 */  slt        $v1, $s7, $v1
/* 5EAAC 8006E2AC 12480000 */  mflo       $t1
/* 5EAB0 8006E2B0 06006010 */  beqz       $v1, .L8006E2CC
/* 5EAB4 8006E2B4 94FF9626 */   addiu     $s6, $s4, -0x6c
/* 5EAB8 8006E2B8 6401A48F */  lw         $a0, 0x164($sp)
/* 5EABC 8006E2BC 18001524 */  addiu      $s5, $zero, 0x18
/* 5EAC0 8006E2C0 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5EAC4 8006E2C4 06B90108 */  j          .L8006E418
/* 5EAC8 8006E2C8 4A019324 */   addiu     $s3, $a0, 0x14a
.L8006E2CC:
/* 5EACC 8006E2CC 07000224 */  addiu      $v0, $zero, 7
/* 5EAD0 8006E2D0 23104800 */  subu       $v0, $v0, $t0
/* 5EAD4 8006E2D4 C0180200 */  sll        $v1, $v0, 3
/* 5EAD8 8006E2D8 21186200 */  addu       $v1, $v1, $v0
/* 5EADC 8006E2DC 40200300 */  sll        $a0, $v1, 1
/* 5EAE0 8006E2E0 23109E00 */  subu       $v0, $a0, $fp
/* 5EAE4 8006E2E4 2A10E202 */  slt        $v0, $s7, $v0
/* 5EAE8 8006E2E8 20004010 */  beqz       $v0, .L8006E36C
/* 5EAEC 8006E2EC 2318E502 */   subu      $v1, $s7, $a1
/* 5EAF0 8006E2F0 21187E00 */  addu       $v1, $v1, $fp
/* 5EAF4 8006E2F4 40100300 */  sll        $v0, $v1, 1
/* 5EAF8 8006E2F8 21104300 */  addu       $v0, $v0, $v1
/* 5EAFC 8006E2FC C0100200 */  sll        $v0, $v0, 3
/* 5EB00 8006E300 23188500 */  subu       $v1, $a0, $a1
/* 5EB04 8006E304 1A004300 */  div        $zero, $v0, $v1
/* 5EB08 8006E308 12100000 */  mflo       $v0
/* 5EB0C 8006E30C 02006014 */  bnez       $v1, .L8006E318
/* 5EB10 8006E310 00000000 */   nop
/* 5EB14 8006E314 CD010000 */  break      0, 7
.L8006E318:
/* 5EB18 8006E318 C400A2AF */   sw        $v0, 0xc4($sp)
/* 5EB1C 8006E31C 02006014 */  bnez       $v1, .L8006E328
/* 5EB20 8006E320 00000000 */   nop
/* 5EB24 8006E324 CD010000 */  break      0, 7
.L8006E328:
/* 5EB28 8006E328 21A84000 */   addu      $s5, $v0, $zero
/* 5EB2C 8006E32C 6001A28F */  lw         $v0, 0x160($sp)
/* 5EB30 8006E330 FC00A48F */  lw         $a0, 0xfc($sp)
/* 5EB34 8006E334 F400A58F */  lw         $a1, 0xf4($sp)
/* 5EB38 8006E338 E000A68F */  lw         $a2, 0xe0($sp)
/* 5EB3C 8006E33C ECFF5324 */  addiu      $s3, $v0, -0x14
/* 5EB40 8006E340 C2171500 */  srl        $v0, $s5, 0x1f
/* 5EB44 8006E344 2110A202 */  addu       $v0, $s5, $v0
/* 5EB48 8006E348 43100200 */  sra        $v0, $v0, 1
/* 5EB4C 8006E34C 21188500 */  addu       $v1, $a0, $a1
/* 5EB50 8006E350 0000648C */  lw         $a0, ($v1)
/* 5EB54 8006E354 00000000 */  nop
/* 5EB58 8006E358 2A206402 */  slt        $a0, $s3, $a0
/* 5EB5C 8006E35C 2E008010 */  beqz       $a0, .L8006E418
/* 5EB60 8006E360 23B0C200 */   subu      $s6, $a2, $v0
/* 5EB64 8006E364 06B90108 */  j          .L8006E418
/* 5EB68 8006E368 C400A0AF */   sw        $zero, 0xc4($sp)
.L8006E36C:
/* 5EB6C 8006E36C 11000224 */  addiu      $v0, $zero, 0x11
/* 5EB70 8006E370 23104800 */  subu       $v0, $v0, $t0
/* 5EB74 8006E374 C0180200 */  sll        $v1, $v0, 3
/* 5EB78 8006E378 21186200 */  addu       $v1, $v1, $v0
/* 5EB7C 8006E37C 40200300 */  sll        $a0, $v1, 1
/* 5EB80 8006E380 2A10E402 */  slt        $v0, $s7, $a0
/* 5EB84 8006E384 07004010 */  beqz       $v0, .L8006E3A4
/* 5EB88 8006E388 94FF9626 */   addiu     $s6, $s4, -0x6c
/* 5EB8C 8006E38C 18000224 */  addiu      $v0, $zero, 0x18
/* 5EB90 8006E390 5C01A78F */  lw         $a3, 0x15c($sp)
/* 5EB94 8006E394 18001524 */  addiu      $s5, $zero, 0x18
/* 5EB98 8006E398 C400A2AF */  sw         $v0, 0xc4($sp)
/* 5EB9C 8006E39C 06B90108 */  j          .L8006E418
/* 5EBA0 8006E3A0 ECFFF324 */   addiu     $s3, $a3, -0x14
.L8006E3A4:
/* 5EBA4 8006E3A4 12000324 */  addiu      $v1, $zero, 0x12
/* 5EBA8 8006E3A8 23186800 */  subu       $v1, $v1, $t0
/* 5EBAC 8006E3AC C0100300 */  sll        $v0, $v1, 3
/* 5EBB0 8006E3B0 21104300 */  addu       $v0, $v0, $v1
/* 5EBB4 8006E3B4 40100200 */  sll        $v0, $v0, 1
/* 5EBB8 8006E3B8 2A10E202 */  slt        $v0, $s7, $v0
/* 5EBBC 8006E3BC 12004010 */  beqz       $v0, .L8006E408
/* 5EBC0 8006E3C0 18001524 */   addiu     $s5, $zero, 0x18
/* 5EBC4 8006E3C4 1800D503 */  mult       $fp, $s5
/* 5EBC8 8006E3C8 2320E402 */  subu       $a0, $s7, $a0
/* 5EBCC 8006E3CC F400A58F */  lw         $a1, 0xf4($sp)
/* 5EBD0 8006E3D0 12100000 */  mflo       $v0
/* 5EBD4 8006E3D4 ECFF5324 */  addiu      $s3, $v0, -0x14
/* 5EBD8 8006E3D8 FC00A28F */  lw         $v0, 0xfc($sp)
/* 5EBDC 8006E3DC 00210400 */  sll        $a0, $a0, 4
/* 5EBE0 8006E3E0 C400B5AF */  sw         $s5, 0xc4($sp)
/* 5EBE4 8006E3E4 21184500 */  addu       $v1, $v0, $a1
/* 5EBE8 8006E3E8 0000628C */  lw         $v0, ($v1)
/* 5EBEC 8006E3EC 23986402 */  subu       $s3, $s3, $a0
/* 5EBF0 8006E3F0 08004224 */  addiu      $v0, $v0, 8
/* 5EBF4 8006E3F4 2A106202 */  slt        $v0, $s3, $v0
/* 5EBF8 8006E3F8 07004010 */  beqz       $v0, .L8006E418
/* 5EBFC 8006E3FC 94FF9626 */   addiu     $s6, $s4, -0x6c
/* 5EC00 8006E400 06B90108 */  j          .L8006E418
/* 5EC04 8006E404 C400A0AF */   sw        $zero, 0xc4($sp)
.L8006E408:
/* 5EC08 8006E408 94FF9626 */  addiu      $s6, $s4, -0x6c
/* 5EC0C 8006E40C 5801A68F */  lw         $a2, 0x158($sp)
/* 5EC10 8006E410 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5EC14 8006E414 ECFFD324 */  addiu      $s3, $a2, -0x14
.L8006E418:
/* 5EC18 8006E418 D400A78F */  lw         $a3, 0xd4($sp)
/* 5EC1C 8006E41C 00000000 */  nop
/* 5EC20 8006E420 2200E010 */  beqz       $a3, .L8006E4AC
/* 5EC24 8006E424 80001024 */   addiu     $s0, $zero, 0x80
/* 5EC28 8006E428 DC00A28F */  lw         $v0, 0xdc($sp)
/* 5EC2C 8006E42C 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5EC30 8006E430 7001A9AF */  sw         $t1, 0x170($sp)
/* 5EC34 8006E434 F4F1000C */  jal        rsin
/* 5EC38 8006E438 00084424 */   addiu     $a0, $v0, 0x800
/* 5EC3C 8006E43C B400A48F */  lw         $a0, 0xb4($sp)
/* 5EC40 8006E440 80000324 */  addiu      $v1, $zero, 0x80
/* 5EC44 8006E444 18006400 */  mult       $v1, $a0
/* 5EC48 8006E448 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5EC4C 8006E44C 7001A98F */  lw         $t1, 0x170($sp)
/* 5EC50 8006E450 21204000 */  addu       $a0, $v0, $zero
/* 5EC54 8006E454 12280000 */  mflo       $a1
/* 5EC58 8006E458 0200A104 */  bgez       $a1, .L8006E464
/* 5EC5C 8006E45C 2118A000 */   addu      $v1, $a1, $zero
/* 5EC60 8006E460 7F00A324 */  addiu      $v1, $a1, 0x7f
.L8006E464:
/* 5EC64 8006E464 C3310300 */  sra        $a2, $v1, 7
/* 5EC68 8006E468 40100400 */  sll        $v0, $a0, 1
/* 5EC6C 8006E46C 21104400 */  addu       $v0, $v0, $a0
/* 5EC70 8006E470 40110200 */  sll        $v0, $v0, 5
/* 5EC74 8006E474 03130200 */  sra        $v0, $v0, 0xc
/* 5EC78 8006E478 18004600 */  mult       $v0, $a2
/* 5EC7C 8006E47C 12100000 */  mflo       $v0
/* 5EC80 8006E480 02004104 */  bgez       $v0, .L8006E48C
/* 5EC84 8006E484 00000000 */   nop
/* 5EC88 8006E488 7F004224 */  addiu      $v0, $v0, 0x7f
.L8006E48C:
/* 5EC8C 8006E48C C3110200 */  sra        $v0, $v0, 7
/* 5EC90 8006E490 2180C200 */  addu       $s0, $a2, $v0
/* 5EC94 8006E494 2401A28F */  lw         $v0, 0x124($sp)
/* 5EC98 8006E498 00000000 */  nop
/* 5EC9C 8006E49C 08004014 */  bnez       $v0, .L8006E4C0
/* 5ECA0 8006E4A0 21880000 */   addu      $s1, $zero, $zero
/* 5ECA4 8006E4A4 30B90108 */  j          .L8006E4C0
/* 5ECA8 8006E4A8 05001124 */   addiu     $s1, $zero, 5
.L8006E4AC:
/* 5ECAC 8006E4AC 2401A38F */  lw         $v1, 0x124($sp)
/* 5ECB0 8006E4B0 00000000 */  nop
/* 5ECB4 8006E4B4 02006014 */  bnez       $v1, .L8006E4C0
/* 5ECB8 8006E4B8 21880000 */   addu      $s1, $zero, $zero
/* 5ECBC 8006E4BC 05001124 */  addiu      $s1, $zero, 5
.L8006E4C0:
/* 5ECC0 8006E4C0 AC00A58F */  lw         $a1, 0xac($sp)
/* 5ECC4 8006E4C4 D000A78F */  lw         $a3, 0xd0($sp)
/* 5ECC8 8006E4C8 D000A38F */  lw         $v1, 0xd0($sp)
/* 5ECCC 8006E4CC 17000224 */  addiu      $v0, $zero, 0x17
/* 5ECD0 8006E4D0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5ECD4 8006E4D4 1400A2AF */  sw         $v0, 0x14($sp)
/* 5ECD8 8006E4D8 0400E684 */  lh         $a2, 4($a3)
/* 5ECDC 8006E4DC FFFF0224 */  addiu      $v0, $zero, -1
/* 5ECE0 8006E4E0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5ECE4 8006E4E4 0600E784 */  lh         $a3, 6($a3)
/* 5ECE8 8006E4E8 0C006284 */  lh         $v0, 0xc($v1)
/* 5ECEC 8006E4EC 02000424 */  addiu      $a0, $zero, 2
/* 5ECF0 8006E4F0 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5ECF4 8006E4F4 2138E900 */  addu       $a3, $a3, $t1
/* 5ECF8 8006E4F8 1769010C */  jal        FUN_8005a45c
/* 5ECFC 8006E4FC 1800A2AF */   sw        $v0, 0x18($sp)
/* 5ED00 8006E500 02000424 */  addiu      $a0, $zero, 2
/* 5ED04 8006E504 D000A68F */  lw         $a2, 0xd0($sp)
/* 5ED08 8006E508 AC00A58F */  lw         $a1, 0xac($sp)
/* 5ED0C 8006E50C 1800C784 */  lh         $a3, 0x18($a2)
/* 5ED10 8006E510 1600C284 */  lh         $v0, 0x16($a2)
/* 5ED14 8006E514 00311100 */  sll        $a2, $s1, 4
/* 5ED18 8006E518 396D010C */  jal        FUN_8005b4e4
/* 5ED1C 8006E51C 21304600 */   addu      $a2, $v0, $a2
/* 5ED20 8006E520 02000424 */  addiu      $a0, $zero, 2
/* 5ED24 8006E524 21306002 */  addu       $a2, $s3, $zero
/* 5ED28 8006E528 AC00A58F */  lw         $a1, 0xac($sp)
/* 5ED2C 8006E52C C400A28F */  lw         $v0, 0xc4($sp)
/* 5ED30 8006E530 2138C002 */  addu       $a3, $s6, $zero
/* 5ED34 8006E534 1400B5AF */  sw         $s5, 0x14($sp)
/* 5ED38 8006E538 976D010C */  jal        FUN_8005b65c
/* 5ED3C 8006E53C 1000A2AF */   sw        $v0, 0x10($sp)
/* 5ED40 8006E540 02000424 */  addiu      $a0, $zero, 2
/* 5ED44 8006E544 21300002 */  addu       $a2, $s0, $zero
/* 5ED48 8006E548 AC00A58F */  lw         $a1, 0xac($sp)
/* 5ED4C 8006E54C 2138C000 */  addu       $a3, $a2, $zero
/* 5ED50 8006E550 EB6C010C */  jal        FUN_8005b3ac
/* 5ED54 8006E554 1000B0AF */   sw        $s0, 0x10($sp)
/* 5ED58 8006E558 CCCC023C */  lui        $v0, 0xcccc
/* 5ED5C 8006E55C CDCC4234 */  ori        $v0, $v0, 0xcccd
/* 5ED60 8006E560 FFFFDE27 */  addiu      $fp, $fp, -1
/* 5ED64 8006E564 19004202 */  multu      $s2, $v0
/* 5ED68 8006E568 5801A38F */  lw         $v1, 0x158($sp)
/* 5ED6C 8006E56C 5C01A48F */  lw         $a0, 0x15c($sp)
/* 5ED70 8006E570 6001A58F */  lw         $a1, 0x160($sp)
/* 5ED74 8006E574 6401A68F */  lw         $a2, 0x164($sp)
/* 5ED78 8006E578 AC00A78F */  lw         $a3, 0xac($sp)
/* 5ED7C 8006E57C 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5ED80 8006E580 E8FF6324 */  addiu      $v1, $v1, -0x18
/* 5ED84 8006E584 E8FF8424 */  addiu      $a0, $a0, -0x18
/* 5ED88 8006E588 E8FFA524 */  addiu      $a1, $a1, -0x18
/* 5ED8C 8006E58C E8FFC624 */  addiu      $a2, $a2, -0x18
/* 5ED90 8006E590 0100E724 */  addiu      $a3, $a3, 1
/* 5ED94 8006E594 5801A3AF */  sw         $v1, 0x158($sp)
/* 5ED98 8006E598 5C01A4AF */  sw         $a0, 0x15c($sp)
/* 5ED9C 8006E59C 6001A5AF */  sw         $a1, 0x160($sp)
/* 5EDA0 8006E5A0 6401A6AF */  sw         $a2, 0x164($sp)
/* 5EDA4 8006E5A4 AC00A7AF */  sw         $a3, 0xac($sp)
/* 5EDA8 8006E5A8 10100000 */  mfhi       $v0
/* 5EDAC 8006E5AC 2DFFC107 */  bgez       $fp, .L8006E264
/* 5EDB0 8006E5B0 C2900200 */   srl       $s2, $v0, 3
/* 5EDB4 8006E5B4 83BB0108 */  j          .L8006EE0C
/* 5EDB8 8006E5B8 00000000 */   nop
.L8006E5BC:
/* 5EDBC 8006E5BC 67668434 */  ori        $a0, $a0, 0x6667
/* 5EDC0 8006E5C0 04001E24 */  addiu      $fp, $zero, 4
/* 5EDC4 8006E5C4 18000724 */  addiu      $a3, $zero, 0x18
/* 5EDC8 8006E5C8 18000401 */  mult       $t0, $a0
/* 5EDCC 8006E5CC F400A38F */  lw         $v1, 0xf4($sp)
/* 5EDD0 8006E5D0 D800A58F */  lw         $a1, 0xd8($sp)
/* 5EDD4 8006E5D4 1C01A68F */  lw         $a2, 0x11c($sp)
/* 5EDD8 8006E5D8 21106500 */  addu       $v0, $v1, $a1
/* 5EDDC 8006E5DC 2110C200 */  addu       $v0, $a2, $v0
/* 5EDE0 8006E5E0 0000548C */  lw         $s4, ($v0)
/* 5EDE4 8006E5E4 F800A38F */  lw         $v1, 0xf8($sp)
/* 5EDE8 8006E5E8 60000224 */  addiu      $v0, $zero, 0x60
/* 5EDEC 8006E5EC C000A7AF */  sw         $a3, 0xc0($sp)
/* 5EDF0 8006E5F0 4801A2AF */  sw         $v0, 0x148($sp)
/* 5EDF4 8006E5F4 4C01A2AF */  sw         $v0, 0x14c($sp)
/* 5EDF8 8006E5F8 5001A2AF */  sw         $v0, 0x150($sp)
/* 5EDFC 8006E5FC 5401A2AF */  sw         $v0, 0x154($sp)
/* 5EE00 8006E600 FF3F9432 */  andi       $s4, $s4, 0x3fff
/* 5EE04 8006E604 10200000 */  mfhi       $a0
/* 5EE08 8006E608 43200400 */  sra        $a0, $a0, 1
/* 5EE0C 8006E60C 23208300 */  subu       $a0, $a0, $v1
/* 5EE10 8006E610 80180400 */  sll        $v1, $a0, 2
/* 5EE14 8006E614 21186400 */  addu       $v1, $v1, $a0
/* 5EE18 8006E618 23180301 */  subu       $v1, $t0, $v1
/* 5EE1C 8006E61C 40100300 */  sll        $v0, $v1, 1
/* 5EE20 8006E620 21104300 */  addu       $v0, $v0, $v1
/* 5EE24 8006E624 80100200 */  sll        $v0, $v0, 2
/* 5EE28 8006E628 21104300 */  addu       $v0, $v0, $v1
/* 5EE2C 8006E62C 80100200 */  sll        $v0, $v0, 2
/* 5EE30 8006E630 21904300 */  addu       $s2, $v0, $v1
/* 5EE34 8006E634 A0FF4426 */  addiu      $a0, $s2, -0x60
/* 5EE38 8006E638 E400A4AF */  sw         $a0, 0xe4($sp)
.L8006E63C:
/* 5EE3C 8006E63C CCCC033C */  lui        $v1, 0xcccc
/* 5EE40 8006E640 CDCC6334 */  ori        $v1, $v1, 0xcccd
/* 5EE44 8006E644 19008302 */  multu      $s4, $v1
/* 5EE48 8006E648 10180000 */  mfhi       $v1
/* 5EE4C 8006E64C C2180300 */  srl        $v1, $v1, 3
/* 5EE50 8006E650 80100300 */  sll        $v0, $v1, 2
/* 5EE54 8006E654 21104300 */  addu       $v0, $v0, $v1
/* 5EE58 8006E658 40100200 */  sll        $v0, $v0, 1
/* 5EE5C 8006E65C C000A38F */  lw         $v1, 0xc0($sp)
/* 5EE60 8006E660 23108202 */  subu       $v0, $s4, $v0
/* 5EE64 8006E664 18004300 */  mult       $v0, $v1
/* 5EE68 8006E668 05000324 */  addiu      $v1, $zero, 5
/* 5EE6C 8006E66C 23186800 */  subu       $v1, $v1, $t0
/* 5EE70 8006E670 C0100300 */  sll        $v0, $v1, 3
/* 5EE74 8006E674 21104300 */  addu       $v0, $v0, $v1
/* 5EE78 8006E678 40280200 */  sll        $a1, $v0, 1
/* 5EE7C 8006E67C 2318BE00 */  subu       $v1, $a1, $fp
/* 5EE80 8006E680 2A18E302 */  slt        $v1, $s7, $v1
/* 5EE84 8006E684 12480000 */  mflo       $t1
/* 5EE88 8006E688 06006010 */  beqz       $v1, .L8006E6A4
/* 5EE8C 8006E68C 94FF5626 */   addiu     $s6, $s2, -0x6c
/* 5EE90 8006E690 5401A48F */  lw         $a0, 0x154($sp)
/* 5EE94 8006E694 18001524 */  addiu      $s5, $zero, 0x18
/* 5EE98 8006E698 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5EE9C 8006E69C FCB90108 */  j          .L8006E7F0
/* 5EEA0 8006E6A0 4A019324 */   addiu     $s3, $a0, 0x14a
.L8006E6A4:
/* 5EEA4 8006E6A4 07000224 */  addiu      $v0, $zero, 7
/* 5EEA8 8006E6A8 23104800 */  subu       $v0, $v0, $t0
/* 5EEAC 8006E6AC C0180200 */  sll        $v1, $v0, 3
/* 5EEB0 8006E6B0 21186200 */  addu       $v1, $v1, $v0
/* 5EEB4 8006E6B4 40200300 */  sll        $a0, $v1, 1
/* 5EEB8 8006E6B8 23109E00 */  subu       $v0, $a0, $fp
/* 5EEBC 8006E6BC 2A10E202 */  slt        $v0, $s7, $v0
/* 5EEC0 8006E6C0 20004010 */  beqz       $v0, .L8006E744
/* 5EEC4 8006E6C4 2318E502 */   subu      $v1, $s7, $a1
/* 5EEC8 8006E6C8 21187E00 */  addu       $v1, $v1, $fp
/* 5EECC 8006E6CC 40100300 */  sll        $v0, $v1, 1
/* 5EED0 8006E6D0 21104300 */  addu       $v0, $v0, $v1
/* 5EED4 8006E6D4 C0100200 */  sll        $v0, $v0, 3
/* 5EED8 8006E6D8 23188500 */  subu       $v1, $a0, $a1
/* 5EEDC 8006E6DC 1A004300 */  div        $zero, $v0, $v1
/* 5EEE0 8006E6E0 12100000 */  mflo       $v0
/* 5EEE4 8006E6E4 02006014 */  bnez       $v1, .L8006E6F0
/* 5EEE8 8006E6E8 00000000 */   nop
/* 5EEEC 8006E6EC CD010000 */  break      0, 7
.L8006E6F0:
/* 5EEF0 8006E6F0 C400A2AF */   sw        $v0, 0xc4($sp)
/* 5EEF4 8006E6F4 02006014 */  bnez       $v1, .L8006E700
/* 5EEF8 8006E6F8 00000000 */   nop
/* 5EEFC 8006E6FC CD010000 */  break      0, 7
.L8006E700:
/* 5EF00 8006E700 21A84000 */   addu      $s5, $v0, $zero
/* 5EF04 8006E704 5001A28F */  lw         $v0, 0x150($sp)
/* 5EF08 8006E708 FC00A48F */  lw         $a0, 0xfc($sp)
/* 5EF0C 8006E70C F400A58F */  lw         $a1, 0xf4($sp)
/* 5EF10 8006E710 E400A68F */  lw         $a2, 0xe4($sp)
/* 5EF14 8006E714 B8FF5324 */  addiu      $s3, $v0, -0x48
/* 5EF18 8006E718 C2171500 */  srl        $v0, $s5, 0x1f
/* 5EF1C 8006E71C 2110A202 */  addu       $v0, $s5, $v0
/* 5EF20 8006E720 43100200 */  sra        $v0, $v0, 1
/* 5EF24 8006E724 21188500 */  addu       $v1, $a0, $a1
/* 5EF28 8006E728 0000648C */  lw         $a0, ($v1)
/* 5EF2C 8006E72C 00000000 */  nop
/* 5EF30 8006E730 2A206402 */  slt        $a0, $s3, $a0
/* 5EF34 8006E734 2E008010 */  beqz       $a0, .L8006E7F0
/* 5EF38 8006E738 23B0C200 */   subu      $s6, $a2, $v0
/* 5EF3C 8006E73C FCB90108 */  j          .L8006E7F0
/* 5EF40 8006E740 C400A0AF */   sw        $zero, 0xc4($sp)
.L8006E744:
/* 5EF44 8006E744 11000224 */  addiu      $v0, $zero, 0x11
/* 5EF48 8006E748 23104800 */  subu       $v0, $v0, $t0
/* 5EF4C 8006E74C C0180200 */  sll        $v1, $v0, 3
/* 5EF50 8006E750 21186200 */  addu       $v1, $v1, $v0
/* 5EF54 8006E754 40200300 */  sll        $a0, $v1, 1
/* 5EF58 8006E758 2A10E402 */  slt        $v0, $s7, $a0
/* 5EF5C 8006E75C 07004010 */  beqz       $v0, .L8006E77C
/* 5EF60 8006E760 94FF5626 */   addiu     $s6, $s2, -0x6c
/* 5EF64 8006E764 18000224 */  addiu      $v0, $zero, 0x18
/* 5EF68 8006E768 4C01A78F */  lw         $a3, 0x14c($sp)
/* 5EF6C 8006E76C 18001524 */  addiu      $s5, $zero, 0x18
/* 5EF70 8006E770 C400A2AF */  sw         $v0, 0xc4($sp)
/* 5EF74 8006E774 FCB90108 */  j          .L8006E7F0
/* 5EF78 8006E778 B8FFF324 */   addiu     $s3, $a3, -0x48
.L8006E77C:
/* 5EF7C 8006E77C 12000324 */  addiu      $v1, $zero, 0x12
/* 5EF80 8006E780 23186800 */  subu       $v1, $v1, $t0
/* 5EF84 8006E784 C0100300 */  sll        $v0, $v1, 3
/* 5EF88 8006E788 21104300 */  addu       $v0, $v0, $v1
/* 5EF8C 8006E78C 40100200 */  sll        $v0, $v0, 1
/* 5EF90 8006E790 2A10E202 */  slt        $v0, $s7, $v0
/* 5EF94 8006E794 12004010 */  beqz       $v0, .L8006E7E0
/* 5EF98 8006E798 18001524 */   addiu     $s5, $zero, 0x18
/* 5EF9C 8006E79C 1800D503 */  mult       $fp, $s5
/* 5EFA0 8006E7A0 2320E402 */  subu       $a0, $s7, $a0
/* 5EFA4 8006E7A4 F400A58F */  lw         $a1, 0xf4($sp)
/* 5EFA8 8006E7A8 12100000 */  mflo       $v0
/* 5EFAC 8006E7AC B8FF5324 */  addiu      $s3, $v0, -0x48
/* 5EFB0 8006E7B0 FC00A28F */  lw         $v0, 0xfc($sp)
/* 5EFB4 8006E7B4 00210400 */  sll        $a0, $a0, 4
/* 5EFB8 8006E7B8 C400B5AF */  sw         $s5, 0xc4($sp)
/* 5EFBC 8006E7BC 21184500 */  addu       $v1, $v0, $a1
/* 5EFC0 8006E7C0 0000628C */  lw         $v0, ($v1)
/* 5EFC4 8006E7C4 23986402 */  subu       $s3, $s3, $a0
/* 5EFC8 8006E7C8 08004224 */  addiu      $v0, $v0, 8
/* 5EFCC 8006E7CC 2A106202 */  slt        $v0, $s3, $v0
/* 5EFD0 8006E7D0 07004010 */  beqz       $v0, .L8006E7F0
/* 5EFD4 8006E7D4 94FF5626 */   addiu     $s6, $s2, -0x6c
/* 5EFD8 8006E7D8 FCB90108 */  j          .L8006E7F0
/* 5EFDC 8006E7DC C400A0AF */   sw        $zero, 0xc4($sp)
.L8006E7E0:
/* 5EFE0 8006E7E0 94FF5626 */  addiu      $s6, $s2, -0x6c
/* 5EFE4 8006E7E4 4801A68F */  lw         $a2, 0x148($sp)
/* 5EFE8 8006E7E8 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5EFEC 8006E7EC B8FFD324 */  addiu      $s3, $a2, -0x48
.L8006E7F0:
/* 5EFF0 8006E7F0 D400A78F */  lw         $a3, 0xd4($sp)
/* 5EFF4 8006E7F4 00000000 */  nop
/* 5EFF8 8006E7F8 2200E010 */  beqz       $a3, .L8006E884
/* 5EFFC 8006E7FC 80001024 */   addiu     $s0, $zero, 0x80
/* 5F000 8006E800 DC00A28F */  lw         $v0, 0xdc($sp)
/* 5F004 8006E804 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5F008 8006E808 7001A9AF */  sw         $t1, 0x170($sp)
/* 5F00C 8006E80C F4F1000C */  jal        rsin
/* 5F010 8006E810 00084424 */   addiu     $a0, $v0, 0x800
/* 5F014 8006E814 B400A48F */  lw         $a0, 0xb4($sp)
/* 5F018 8006E818 80000324 */  addiu      $v1, $zero, 0x80
/* 5F01C 8006E81C 18006400 */  mult       $v1, $a0
/* 5F020 8006E820 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5F024 8006E824 7001A98F */  lw         $t1, 0x170($sp)
/* 5F028 8006E828 21204000 */  addu       $a0, $v0, $zero
/* 5F02C 8006E82C 12280000 */  mflo       $a1
/* 5F030 8006E830 0200A104 */  bgez       $a1, .L8006E83C
/* 5F034 8006E834 2118A000 */   addu      $v1, $a1, $zero
/* 5F038 8006E838 7F00A324 */  addiu      $v1, $a1, 0x7f
.L8006E83C:
/* 5F03C 8006E83C C3310300 */  sra        $a2, $v1, 7
/* 5F040 8006E840 40100400 */  sll        $v0, $a0, 1
/* 5F044 8006E844 21104400 */  addu       $v0, $v0, $a0
/* 5F048 8006E848 40110200 */  sll        $v0, $v0, 5
/* 5F04C 8006E84C 03130200 */  sra        $v0, $v0, 0xc
/* 5F050 8006E850 18004600 */  mult       $v0, $a2
/* 5F054 8006E854 12100000 */  mflo       $v0
/* 5F058 8006E858 02004104 */  bgez       $v0, .L8006E864
/* 5F05C 8006E85C 00000000 */   nop
/* 5F060 8006E860 7F004224 */  addiu      $v0, $v0, 0x7f
.L8006E864:
/* 5F064 8006E864 C3110200 */  sra        $v0, $v0, 7
/* 5F068 8006E868 2180C200 */  addu       $s0, $a2, $v0
/* 5F06C 8006E86C 2401A28F */  lw         $v0, 0x124($sp)
/* 5F070 8006E870 00000000 */  nop
/* 5F074 8006E874 08004014 */  bnez       $v0, .L8006E898
/* 5F078 8006E878 21880000 */   addu      $s1, $zero, $zero
/* 5F07C 8006E87C 26BA0108 */  j          .L8006E898
/* 5F080 8006E880 05001124 */   addiu     $s1, $zero, 5
.L8006E884:
/* 5F084 8006E884 2401A38F */  lw         $v1, 0x124($sp)
/* 5F088 8006E888 00000000 */  nop
/* 5F08C 8006E88C 02006014 */  bnez       $v1, .L8006E898
/* 5F090 8006E890 21880000 */   addu      $s1, $zero, $zero
/* 5F094 8006E894 05001124 */  addiu      $s1, $zero, 5
.L8006E898:
/* 5F098 8006E898 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F09C 8006E89C D000A78F */  lw         $a3, 0xd0($sp)
/* 5F0A0 8006E8A0 D000A38F */  lw         $v1, 0xd0($sp)
/* 5F0A4 8006E8A4 17000224 */  addiu      $v0, $zero, 0x17
/* 5F0A8 8006E8A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F0AC 8006E8AC 1400A2AF */  sw         $v0, 0x14($sp)
/* 5F0B0 8006E8B0 0400E684 */  lh         $a2, 4($a3)
/* 5F0B4 8006E8B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 5F0B8 8006E8B8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5F0BC 8006E8BC 0600E784 */  lh         $a3, 6($a3)
/* 5F0C0 8006E8C0 0C006284 */  lh         $v0, 0xc($v1)
/* 5F0C4 8006E8C4 02000424 */  addiu      $a0, $zero, 2
/* 5F0C8 8006E8C8 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5F0CC 8006E8CC 2138E900 */  addu       $a3, $a3, $t1
/* 5F0D0 8006E8D0 1769010C */  jal        FUN_8005a45c
/* 5F0D4 8006E8D4 1800A2AF */   sw        $v0, 0x18($sp)
/* 5F0D8 8006E8D8 02000424 */  addiu      $a0, $zero, 2
/* 5F0DC 8006E8DC D000A68F */  lw         $a2, 0xd0($sp)
/* 5F0E0 8006E8E0 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F0E4 8006E8E4 1800C784 */  lh         $a3, 0x18($a2)
/* 5F0E8 8006E8E8 1600C284 */  lh         $v0, 0x16($a2)
/* 5F0EC 8006E8EC 00311100 */  sll        $a2, $s1, 4
/* 5F0F0 8006E8F0 396D010C */  jal        FUN_8005b4e4
/* 5F0F4 8006E8F4 21304600 */   addu      $a2, $v0, $a2
/* 5F0F8 8006E8F8 02000424 */  addiu      $a0, $zero, 2
/* 5F0FC 8006E8FC 21306002 */  addu       $a2, $s3, $zero
/* 5F100 8006E900 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F104 8006E904 C400A28F */  lw         $v0, 0xc4($sp)
/* 5F108 8006E908 2138C002 */  addu       $a3, $s6, $zero
/* 5F10C 8006E90C 1400B5AF */  sw         $s5, 0x14($sp)
/* 5F110 8006E910 976D010C */  jal        FUN_8005b65c
/* 5F114 8006E914 1000A2AF */   sw        $v0, 0x10($sp)
/* 5F118 8006E918 02000424 */  addiu      $a0, $zero, 2
/* 5F11C 8006E91C 21300002 */  addu       $a2, $s0, $zero
/* 5F120 8006E920 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F124 8006E924 2138C000 */  addu       $a3, $a2, $zero
/* 5F128 8006E928 EB6C010C */  jal        FUN_8005b3ac
/* 5F12C 8006E92C 1000B0AF */   sw        $s0, 0x10($sp)
/* 5F130 8006E930 CCCC023C */  lui        $v0, 0xcccc
/* 5F134 8006E934 CDCC4234 */  ori        $v0, $v0, 0xcccd
/* 5F138 8006E938 FFFFDE27 */  addiu      $fp, $fp, -1
/* 5F13C 8006E93C 19008202 */  multu      $s4, $v0
/* 5F140 8006E940 4801A38F */  lw         $v1, 0x148($sp)
/* 5F144 8006E944 4C01A48F */  lw         $a0, 0x14c($sp)
/* 5F148 8006E948 5001A58F */  lw         $a1, 0x150($sp)
/* 5F14C 8006E94C 5401A68F */  lw         $a2, 0x154($sp)
/* 5F150 8006E950 AC00A78F */  lw         $a3, 0xac($sp)
/* 5F154 8006E954 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5F158 8006E958 E8FF6324 */  addiu      $v1, $v1, -0x18
/* 5F15C 8006E95C E8FF8424 */  addiu      $a0, $a0, -0x18
/* 5F160 8006E960 E8FFA524 */  addiu      $a1, $a1, -0x18
/* 5F164 8006E964 E8FFC624 */  addiu      $a2, $a2, -0x18
/* 5F168 8006E968 0100E724 */  addiu      $a3, $a3, 1
/* 5F16C 8006E96C 4801A3AF */  sw         $v1, 0x148($sp)
/* 5F170 8006E970 4C01A4AF */  sw         $a0, 0x14c($sp)
/* 5F174 8006E974 5001A5AF */  sw         $a1, 0x150($sp)
/* 5F178 8006E978 5401A6AF */  sw         $a2, 0x154($sp)
/* 5F17C 8006E97C AC00A7AF */  sw         $a3, 0xac($sp)
/* 5F180 8006E980 10100000 */  mfhi       $v0
/* 5F184 8006E984 2DFFC107 */  bgez       $fp, .L8006E63C
/* 5F188 8006E988 C2A00200 */   srl       $s4, $v0, 3
/* 5F18C 8006E98C EB51063C */  lui        $a2, 0x51eb
/* 5F190 8006E990 1F85C634 */  ori        $a2, $a2, 0x851f
/* 5F194 8006E994 07001E24 */  addiu      $fp, $zero, 7
/* 5F198 8006E998 F400A38F */  lw         $v1, 0xf4($sp)
/* 5F19C 8006E99C D800A48F */  lw         $a0, 0xd8($sp)
/* 5F1A0 8006E9A0 1C01A58F */  lw         $a1, 0x11c($sp)
/* 5F1A4 8006E9A4 21106400 */  addu       $v0, $v1, $a0
/* 5F1A8 8006E9A8 2110A200 */  addu       $v0, $a1, $v0
/* 5F1AC 8006E9AC 6666043C */  lui        $a0, 0x6666
/* 5F1B0 8006E9B0 67668434 */  ori        $a0, $a0, 0x6667
/* 5F1B4 8006E9B4 7605053C */  lui        $a1, 0x576
/* 5F1B8 8006E9B8 F119A534 */  ori        $a1, $a1, 0x19f1
/* 5F1BC 8006E9BC 18000401 */  mult       $t0, $a0
/* 5F1C0 8006E9C0 0000548C */  lw         $s4, ($v0)
/* 5F1C4 8006E9C4 A8000324 */  addiu      $v1, $zero, 0xa8
/* 5F1C8 8006E9C8 3C01A3AF */  sw         $v1, 0x13c($sp)
/* 5F1CC 8006E9CC 4001A3AF */  sw         $v1, 0x140($sp)
/* 5F1D0 8006E9D0 4401A3AF */  sw         $v1, 0x144($sp)
/* 5F1D4 8006E9D4 F800A38F */  lw         $v1, 0xf8($sp)
/* 5F1D8 8006E9D8 18000224 */  addiu      $v0, $zero, 0x18
/* 5F1DC 8006E9DC C000A2AF */  sw         $v0, 0xc0($sp)
/* 5F1E0 8006E9E0 42131400 */  srl        $v0, $s4, 0xd
/* 5F1E4 8006E9E4 FEFF5430 */  andi       $s4, $v0, 0xfffe
/* 5F1E8 8006E9E8 05000224 */  addiu      $v0, $zero, 5
/* 5F1EC 8006E9EC 10200000 */  mfhi       $a0
/* 5F1F0 8006E9F0 23104800 */  subu       $v0, $v0, $t0
/* 5F1F4 8006E9F4 E800A2AF */  sw         $v0, 0xe8($sp)
/* 5F1F8 8006E9F8 19008502 */  multu      $s4, $a1
/* 5F1FC 8006E9FC 43200400 */  sra        $a0, $a0, 1
/* 5F200 8006EA00 23208300 */  subu       $a0, $a0, $v1
/* 5F204 8006EA04 80180400 */  sll        $v1, $a0, 2
/* 5F208 8006EA08 21186400 */  addu       $v1, $v1, $a0
/* 5F20C 8006EA0C 23180301 */  subu       $v1, $t0, $v1
/* 5F210 8006EA10 40100300 */  sll        $v0, $v1, 1
/* 5F214 8006EA14 21104300 */  addu       $v0, $v0, $v1
/* 5F218 8006EA18 80100200 */  sll        $v0, $v0, 2
/* 5F21C 8006EA1C 21104300 */  addu       $v0, $v0, $v1
/* 5F220 8006EA20 80100200 */  sll        $v0, $v0, 2
/* 5F224 8006EA24 21904300 */  addu       $s2, $v0, $v1
/* 5F228 8006EA28 10280000 */  mfhi       $a1
/* 5F22C 8006EA2C A0FF4226 */  addiu      $v0, $s2, -0x60
/* 5F230 8006EA30 EC00A2AF */  sw         $v0, 0xec($sp)
/* 5F234 8006EA34 19008602 */  multu      $s4, $a2
/* 5F238 8006EA38 C2290500 */  srl        $a1, $a1, 7
/* 5F23C 8006EA3C 40110500 */  sll        $v0, $a1, 5
/* 5F240 8006EA40 23104500 */  subu       $v0, $v0, $a1
/* 5F244 8006EA44 80210200 */  sll        $a0, $v0, 6
/* 5F248 8006EA48 23208200 */  subu       $a0, $a0, $v0
/* 5F24C 8006EA4C C0200400 */  sll        $a0, $a0, 3
/* 5F250 8006EA50 21208500 */  addu       $a0, $a0, $a1
/* 5F254 8006EA54 80210400 */  sll        $a0, $a0, 6
/* 5F258 8006EA58 00190500 */  sll        $v1, $a1, 4
/* 5F25C 8006EA5C 23186500 */  subu       $v1, $v1, $a1
/* 5F260 8006EA60 80180300 */  sll        $v1, $v1, 2
/* 5F264 8006EA64 10300000 */  mfhi       $a2
/* 5F268 8006EA68 42310600 */  srl        $a2, $a2, 5
/* 5F26C 8006EA6C 2318C300 */  subu       $v1, $a2, $v1
/* 5F270 8006EA70 40110300 */  sll        $v0, $v1, 5
/* 5F274 8006EA74 23104300 */  subu       $v0, $v0, $v1
/* 5F278 8006EA78 80100200 */  sll        $v0, $v0, 2
/* 5F27C 8006EA7C 21104300 */  addu       $v0, $v0, $v1
/* 5F280 8006EA80 C0100200 */  sll        $v0, $v0, 3
/* 5F284 8006EA84 21208200 */  addu       $a0, $a0, $v0
/* 5F288 8006EA88 40180600 */  sll        $v1, $a2, 1
/* 5F28C 8006EA8C 21186600 */  addu       $v1, $v1, $a2
/* 5F290 8006EA90 C0180300 */  sll        $v1, $v1, 3
/* 5F294 8006EA94 21186600 */  addu       $v1, $v1, $a2
/* 5F298 8006EA98 80180300 */  sll        $v1, $v1, 2
/* 5F29C 8006EA9C 23188302 */  subu       $v1, $s4, $v1
/* 5F2A0 8006EAA0 21A08300 */  addu       $s4, $a0, $v1
.L8006EAA4:
/* 5F2A4 8006EAA4 02000224 */  addiu      $v0, $zero, 2
/* 5F2A8 8006EAA8 0300C213 */  beq        $fp, $v0, .L8006EAB8
/* 5F2AC 8006EAAC 05000324 */   addiu     $v1, $zero, 5
/* 5F2B0 8006EAB0 0400C317 */  bne        $fp, $v1, .L8006EAC4
/* 5F2B4 8006EAB4 21380000 */   addu      $a3, $zero, $zero
.L8006EAB8:
/* 5F2B8 8006EAB8 18000724 */  addiu      $a3, $zero, 0x18
/* 5F2BC 8006EABC BDBA0108 */  j          .L8006EAF4
/* 5F2C0 8006EAC0 30000924 */   addiu     $t1, $zero, 0x30
.L8006EAC4:
/* 5F2C4 8006EAC4 CCCC033C */  lui        $v1, 0xcccc
/* 5F2C8 8006EAC8 CDCC6334 */  ori        $v1, $v1, 0xcccd
/* 5F2CC 8006EACC 19008302 */  multu      $s4, $v1
/* 5F2D0 8006EAD0 10180000 */  mfhi       $v1
/* 5F2D4 8006EAD4 C2180300 */  srl        $v1, $v1, 3
/* 5F2D8 8006EAD8 80100300 */  sll        $v0, $v1, 2
/* 5F2DC 8006EADC 21104300 */  addu       $v0, $v0, $v1
/* 5F2E0 8006EAE0 40100200 */  sll        $v0, $v0, 1
/* 5F2E4 8006EAE4 C000A38F */  lw         $v1, 0xc0($sp)
/* 5F2E8 8006EAE8 23108202 */  subu       $v0, $s4, $v0
/* 5F2EC 8006EAEC 18004300 */  mult       $v0, $v1
/* 5F2F0 8006EAF0 12480000 */  mflo       $t1
.L8006EAF4:
/* 5F2F4 8006EAF4 E800A48F */  lw         $a0, 0xe8($sp)
/* 5F2F8 8006EAF8 00000000 */  nop
/* 5F2FC 8006EAFC C0100400 */  sll        $v0, $a0, 3
/* 5F300 8006EB00 21104400 */  addu       $v0, $v0, $a0
/* 5F304 8006EB04 40280200 */  sll        $a1, $v0, 1
/* 5F308 8006EB08 2318BE00 */  subu       $v1, $a1, $fp
/* 5F30C 8006EB0C 2A18E302 */  slt        $v1, $s7, $v1
/* 5F310 8006EB10 06006010 */  beqz       $v1, .L8006EB2C
/* 5F314 8006EB14 94FF5626 */   addiu     $s6, $s2, -0x6c
/* 5F318 8006EB18 4401A58F */  lw         $a1, 0x144($sp)
/* 5F31C 8006EB1C 18001524 */  addiu      $s5, $zero, 0x18
/* 5F320 8006EB20 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5F324 8006EB24 1CBB0108 */  j          .L8006EC70
/* 5F328 8006EB28 4A01B324 */   addiu     $s3, $a1, 0x14a
.L8006EB2C:
/* 5F32C 8006EB2C 07000224 */  addiu      $v0, $zero, 7
/* 5F330 8006EB30 23104800 */  subu       $v0, $v0, $t0
/* 5F334 8006EB34 C0180200 */  sll        $v1, $v0, 3
/* 5F338 8006EB38 21186200 */  addu       $v1, $v1, $v0
/* 5F33C 8006EB3C 40200300 */  sll        $a0, $v1, 1
/* 5F340 8006EB40 23109E00 */  subu       $v0, $a0, $fp
/* 5F344 8006EB44 2A10E202 */  slt        $v0, $s7, $v0
/* 5F348 8006EB48 1D004010 */  beqz       $v0, .L8006EBC0
/* 5F34C 8006EB4C 2318E502 */   subu      $v1, $s7, $a1
/* 5F350 8006EB50 21187E00 */  addu       $v1, $v1, $fp
/* 5F354 8006EB54 40100300 */  sll        $v0, $v1, 1
/* 5F358 8006EB58 21104300 */  addu       $v0, $v0, $v1
/* 5F35C 8006EB5C C0100200 */  sll        $v0, $v0, 3
/* 5F360 8006EB60 23188500 */  subu       $v1, $a0, $a1
/* 5F364 8006EB64 1A004300 */  div        $zero, $v0, $v1
/* 5F368 8006EB68 12100000 */  mflo       $v0
/* 5F36C 8006EB6C 02006014 */  bnez       $v1, .L8006EB78
/* 5F370 8006EB70 00000000 */   nop
/* 5F374 8006EB74 CD010000 */  break      0, 7
.L8006EB78:
/* 5F378 8006EB78 C400A2AF */   sw        $v0, 0xc4($sp)
/* 5F37C 8006EB7C 02006014 */  bnez       $v1, .L8006EB88
/* 5F380 8006EB80 00000000 */   nop
/* 5F384 8006EB84 CD010000 */  break      0, 7
.L8006EB88:
/* 5F388 8006EB88 21A84000 */   addu      $s5, $v0, $zero
/* 5F38C 8006EB8C 1800D503 */  mult       $fp, $s5
/* 5F390 8006EB90 C2171500 */  srl        $v0, $s5, 0x1f
/* 5F394 8006EB94 2110A202 */  addu       $v0, $s5, $v0
/* 5F398 8006EB98 43100200 */  sra        $v0, $v0, 1
/* 5F39C 8006EB9C EC00A38F */  lw         $v1, 0xec($sp)
/* 5F3A0 8006EBA0 FC00A58F */  lw         $a1, 0xfc($sp)
/* 5F3A4 8006EBA4 F400A68F */  lw         $a2, 0xf4($sp)
/* 5F3A8 8006EBA8 23B06200 */  subu       $s6, $v1, $v0
/* 5F3AC 8006EBAC 2118A600 */  addu       $v1, $a1, $a2
/* 5F3B0 8006EBB0 0000628C */  lw         $v0, ($v1)
/* 5F3B4 8006EBB4 12200000 */  mflo       $a0
/* 5F3B8 8006EBB8 13BB0108 */  j          .L8006EC4C
/* 5F3BC 8006EBBC 5A009324 */   addiu     $s3, $a0, 0x5a
.L8006EBC0:
/* 5F3C0 8006EBC0 11000224 */  addiu      $v0, $zero, 0x11
/* 5F3C4 8006EBC4 23104800 */  subu       $v0, $v0, $t0
/* 5F3C8 8006EBC8 C0180200 */  sll        $v1, $v0, 3
/* 5F3CC 8006EBCC 21186200 */  addu       $v1, $v1, $v0
/* 5F3D0 8006EBD0 40200300 */  sll        $a0, $v1, 1
/* 5F3D4 8006EBD4 2A10E402 */  slt        $v0, $s7, $a0
/* 5F3D8 8006EBD8 07004010 */  beqz       $v0, .L8006EBF8
/* 5F3DC 8006EBDC 94FF5626 */   addiu     $s6, $s2, -0x6c
/* 5F3E0 8006EBE0 18000324 */  addiu      $v1, $zero, 0x18
/* 5F3E4 8006EBE4 4001A28F */  lw         $v0, 0x140($sp)
/* 5F3E8 8006EBE8 18001524 */  addiu      $s5, $zero, 0x18
/* 5F3EC 8006EBEC C400A3AF */  sw         $v1, 0xc4($sp)
/* 5F3F0 8006EBF0 1CBB0108 */  j          .L8006EC70
/* 5F3F4 8006EBF4 5A005324 */   addiu     $s3, $v0, 0x5a
.L8006EBF8:
/* 5F3F8 8006EBF8 12000324 */  addiu      $v1, $zero, 0x12
/* 5F3FC 8006EBFC 23186800 */  subu       $v1, $v1, $t0
/* 5F400 8006EC00 C0100300 */  sll        $v0, $v1, 3
/* 5F404 8006EC04 21104300 */  addu       $v0, $v0, $v1
/* 5F408 8006EC08 40100200 */  sll        $v0, $v0, 1
/* 5F40C 8006EC0C 2A10E202 */  slt        $v0, $s7, $v0
/* 5F410 8006EC10 13004010 */  beqz       $v0, .L8006EC60
/* 5F414 8006EC14 18001524 */   addiu     $s5, $zero, 0x18
/* 5F418 8006EC18 1800D503 */  mult       $fp, $s5
/* 5F41C 8006EC1C 94FF5626 */  addiu      $s6, $s2, -0x6c
/* 5F420 8006EC20 2320E402 */  subu       $a0, $s7, $a0
/* 5F424 8006EC24 F400A58F */  lw         $a1, 0xf4($sp)
/* 5F428 8006EC28 12100000 */  mflo       $v0
/* 5F42C 8006EC2C 5A005324 */  addiu      $s3, $v0, 0x5a
/* 5F430 8006EC30 FC00A28F */  lw         $v0, 0xfc($sp)
/* 5F434 8006EC34 00210400 */  sll        $a0, $a0, 4
/* 5F438 8006EC38 C400B5AF */  sw         $s5, 0xc4($sp)
/* 5F43C 8006EC3C 21184500 */  addu       $v1, $v0, $a1
/* 5F440 8006EC40 0000628C */  lw         $v0, ($v1)
/* 5F444 8006EC44 23986402 */  subu       $s3, $s3, $a0
/* 5F448 8006EC48 08004224 */  addiu      $v0, $v0, 8
.L8006EC4C:
/* 5F44C 8006EC4C 2A106202 */  slt        $v0, $s3, $v0
/* 5F450 8006EC50 07004010 */  beqz       $v0, .L8006EC70
/* 5F454 8006EC54 00000000 */   nop
/* 5F458 8006EC58 1CBB0108 */  j          .L8006EC70
/* 5F45C 8006EC5C C400A0AF */   sw        $zero, 0xc4($sp)
.L8006EC60:
/* 5F460 8006EC60 94FF5626 */  addiu      $s6, $s2, -0x6c
/* 5F464 8006EC64 3C01A68F */  lw         $a2, 0x13c($sp)
/* 5F468 8006EC68 C400A0AF */  sw         $zero, 0xc4($sp)
/* 5F46C 8006EC6C 5A00D324 */  addiu      $s3, $a2, 0x5a
.L8006EC70:
/* 5F470 8006EC70 D400A28F */  lw         $v0, 0xd4($sp)
/* 5F474 8006EC74 00000000 */  nop
/* 5F478 8006EC78 24004010 */  beqz       $v0, .L8006ED0C
/* 5F47C 8006EC7C 80001024 */   addiu     $s0, $zero, 0x80
/* 5F480 8006EC80 DC00A38F */  lw         $v1, 0xdc($sp)
/* 5F484 8006EC84 6801A7AF */  sw         $a3, 0x168($sp)
/* 5F488 8006EC88 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5F48C 8006EC8C 7001A9AF */  sw         $t1, 0x170($sp)
/* 5F490 8006EC90 F4F1000C */  jal        rsin
/* 5F494 8006EC94 00086424 */   addiu     $a0, $v1, 0x800
/* 5F498 8006EC98 B400A48F */  lw         $a0, 0xb4($sp)
/* 5F49C 8006EC9C 80000324 */  addiu      $v1, $zero, 0x80
/* 5F4A0 8006ECA0 18006400 */  mult       $v1, $a0
/* 5F4A4 8006ECA4 6801A78F */  lw         $a3, 0x168($sp)
/* 5F4A8 8006ECA8 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5F4AC 8006ECAC 7001A98F */  lw         $t1, 0x170($sp)
/* 5F4B0 8006ECB0 21204000 */  addu       $a0, $v0, $zero
/* 5F4B4 8006ECB4 12280000 */  mflo       $a1
/* 5F4B8 8006ECB8 0200A104 */  bgez       $a1, .L8006ECC4
/* 5F4BC 8006ECBC 2118A000 */   addu      $v1, $a1, $zero
/* 5F4C0 8006ECC0 7F00A324 */  addiu      $v1, $a1, 0x7f
.L8006ECC4:
/* 5F4C4 8006ECC4 C3310300 */  sra        $a2, $v1, 7
/* 5F4C8 8006ECC8 40100400 */  sll        $v0, $a0, 1
/* 5F4CC 8006ECCC 21104400 */  addu       $v0, $v0, $a0
/* 5F4D0 8006ECD0 40110200 */  sll        $v0, $v0, 5
/* 5F4D4 8006ECD4 03130200 */  sra        $v0, $v0, 0xc
/* 5F4D8 8006ECD8 18004600 */  mult       $v0, $a2
/* 5F4DC 8006ECDC 12100000 */  mflo       $v0
/* 5F4E0 8006ECE0 02004104 */  bgez       $v0, .L8006ECEC
/* 5F4E4 8006ECE4 00000000 */   nop
/* 5F4E8 8006ECE8 7F004224 */  addiu      $v0, $v0, 0x7f
.L8006ECEC:
/* 5F4EC 8006ECEC C3110200 */  sra        $v0, $v0, 7
/* 5F4F0 8006ECF0 2180C200 */  addu       $s0, $a2, $v0
/* 5F4F4 8006ECF4 2401A28F */  lw         $v0, 0x124($sp)
/* 5F4F8 8006ECF8 00000000 */  nop
/* 5F4FC 8006ECFC 08004014 */  bnez       $v0, .L8006ED20
/* 5F500 8006ED00 21880000 */   addu      $s1, $zero, $zero
/* 5F504 8006ED04 48BB0108 */  j          .L8006ED20
/* 5F508 8006ED08 05001124 */   addiu     $s1, $zero, 5
.L8006ED0C:
/* 5F50C 8006ED0C 2401A38F */  lw         $v1, 0x124($sp)
/* 5F510 8006ED10 00000000 */  nop
/* 5F514 8006ED14 02006014 */  bnez       $v1, .L8006ED20
/* 5F518 8006ED18 21880000 */   addu      $s1, $zero, $zero
/* 5F51C 8006ED1C 05001124 */  addiu      $s1, $zero, 5
.L8006ED20:
/* 5F520 8006ED20 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F524 8006ED24 17000224 */  addiu      $v0, $zero, 0x17
/* 5F528 8006ED28 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F52C 8006ED2C 1400A2AF */  sw         $v0, 0x14($sp)
/* 5F530 8006ED30 D000A28F */  lw         $v0, 0xd0($sp)
/* 5F534 8006ED34 D000A38F */  lw         $v1, 0xd0($sp)
/* 5F538 8006ED38 04004684 */  lh         $a2, 4($v0)
/* 5F53C 8006ED3C FFFF0224 */  addiu      $v0, $zero, -1
/* 5F540 8006ED40 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5F544 8006ED44 0C006284 */  lh         $v0, 0xc($v1)
/* 5F548 8006ED48 2130C700 */  addu       $a2, $a2, $a3
/* 5F54C 8006ED4C 06006784 */  lh         $a3, 6($v1)
/* 5F550 8006ED50 02000424 */  addiu      $a0, $zero, 2
/* 5F554 8006ED54 1800A2AF */  sw         $v0, 0x18($sp)
/* 5F558 8006ED58 6C01A8AF */  sw         $t0, 0x16c($sp)
/* 5F55C 8006ED5C 1769010C */  jal        FUN_8005a45c
/* 5F560 8006ED60 2138E900 */   addu      $a3, $a3, $t1
/* 5F564 8006ED64 02000424 */  addiu      $a0, $zero, 2
/* 5F568 8006ED68 D000A68F */  lw         $a2, 0xd0($sp)
/* 5F56C 8006ED6C AC00A58F */  lw         $a1, 0xac($sp)
/* 5F570 8006ED70 1800C784 */  lh         $a3, 0x18($a2)
/* 5F574 8006ED74 1600C284 */  lh         $v0, 0x16($a2)
/* 5F578 8006ED78 00311100 */  sll        $a2, $s1, 4
/* 5F57C 8006ED7C 396D010C */  jal        FUN_8005b4e4
/* 5F580 8006ED80 21304600 */   addu      $a2, $v0, $a2
/* 5F584 8006ED84 02000424 */  addiu      $a0, $zero, 2
/* 5F588 8006ED88 21306002 */  addu       $a2, $s3, $zero
/* 5F58C 8006ED8C AC00A58F */  lw         $a1, 0xac($sp)
/* 5F590 8006ED90 C400A28F */  lw         $v0, 0xc4($sp)
/* 5F594 8006ED94 2138C002 */  addu       $a3, $s6, $zero
/* 5F598 8006ED98 1400B5AF */  sw         $s5, 0x14($sp)
/* 5F59C 8006ED9C 976D010C */  jal        FUN_8005b65c
/* 5F5A0 8006EDA0 1000A2AF */   sw        $v0, 0x10($sp)
/* 5F5A4 8006EDA4 02000424 */  addiu      $a0, $zero, 2
/* 5F5A8 8006EDA8 21300002 */  addu       $a2, $s0, $zero
/* 5F5AC 8006EDAC AC00A58F */  lw         $a1, 0xac($sp)
/* 5F5B0 8006EDB0 2138C000 */  addu       $a3, $a2, $zero
/* 5F5B4 8006EDB4 EB6C010C */  jal        FUN_8005b3ac
/* 5F5B8 8006EDB8 1000B0AF */   sw        $s0, 0x10($sp)
/* 5F5BC 8006EDBC CCCC023C */  lui        $v0, 0xcccc
/* 5F5C0 8006EDC0 CDCC4234 */  ori        $v0, $v0, 0xcccd
/* 5F5C4 8006EDC4 FFFFDE27 */  addiu      $fp, $fp, -1
/* 5F5C8 8006EDC8 19008202 */  multu      $s4, $v0
/* 5F5CC 8006EDCC 3C01A38F */  lw         $v1, 0x13c($sp)
/* 5F5D0 8006EDD0 4001A48F */  lw         $a0, 0x140($sp)
/* 5F5D4 8006EDD4 4401A58F */  lw         $a1, 0x144($sp)
/* 5F5D8 8006EDD8 AC00A68F */  lw         $a2, 0xac($sp)
/* 5F5DC 8006EDDC 6C01A88F */  lw         $t0, 0x16c($sp)
/* 5F5E0 8006EDE0 E8FF6324 */  addiu      $v1, $v1, -0x18
/* 5F5E4 8006EDE4 E8FF8424 */  addiu      $a0, $a0, -0x18
/* 5F5E8 8006EDE8 E8FFA524 */  addiu      $a1, $a1, -0x18
/* 5F5EC 8006EDEC 0100C624 */  addiu      $a2, $a2, 1
/* 5F5F0 8006EDF0 3C01A3AF */  sw         $v1, 0x13c($sp)
/* 5F5F4 8006EDF4 4001A4AF */  sw         $a0, 0x140($sp)
/* 5F5F8 8006EDF8 4401A5AF */  sw         $a1, 0x144($sp)
/* 5F5FC 8006EDFC AC00A6AF */  sw         $a2, 0xac($sp)
/* 5F600 8006EE00 10100000 */  mfhi       $v0
/* 5F604 8006EE04 27FFC107 */  bgez       $fp, .L8006EAA4
/* 5F608 8006EE08 C2A00200 */   srl       $s4, $v0, 3
.L8006EE0C:
/* 5F60C 8006EE0C F000A88F */  lw         $t0, 0xf0($sp)
/* 5F610 8006EE10 00000000 */  nop
/* 5F614 8006EE14 C5FB0105 */  bgez       $t0, .L8006DD2C
/* 5F618 8006EE18 80380800 */   sll       $a3, $t0, 2
/* 5F61C 8006EE1C 21200000 */  addu       $a0, $zero, $zero
/* 5F620 8006EE20 1D6B010C */  jal        FUN_8005ac74
/* 5F624 8006EE24 02000524 */   addiu     $a1, $zero, 2
/* 5F628 8006EE28 9157010C */  jal        FUN_80055e44
/* 5F62C 8006EE2C 21200000 */   addu      $a0, $zero, $zero
/* 5F630 8006EE30 01000424 */  addiu      $a0, $zero, 1
/* 5F634 8006EE34 1D6B010C */  jal        FUN_8005ac74
/* 5F638 8006EE38 21280000 */   addu      $a1, $zero, $zero
/* 5F63C 8006EE3C 9157010C */  jal        FUN_80055e44
/* 5F640 8006EE40 01000424 */   addiu     $a0, $zero, 1
/* 5F644 8006EE44 AC00A58F */  lw         $a1, 0xac($sp)
/* 5F648 8006EE48 1D6B010C */  jal        FUN_8005ac74
/* 5F64C 8006EE4C 02000424 */   addiu     $a0, $zero, 2
/* 5F650 8006EE50 9157010C */  jal        FUN_80055e44
/* 5F654 8006EE54 02000424 */   addiu     $a0, $zero, 2
/* 5F658 8006EE58 21200000 */  addu       $a0, $zero, $zero
/* 5F65C 8006EE5C FC000524 */  addiu      $a1, $zero, 0xfc
/* 5F660 8006EE60 C0FE0724 */  addiu      $a3, $zero, -0x140
/* 5F664 8006EE64 10FF0224 */  addiu      $v0, $zero, -0xf0
/* 5F668 8006EE68 80021124 */  addiu      $s1, $zero, 0x280
/* 5F66C 8006EE6C B400A68F */  lw         $a2, 0xb4($sp)
/* 5F670 8006EE70 1380083C */  lui        $t0, %hi(D_801280E0)
/* 5F674 8006EE74 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F678 8006EE78 E0800225 */  addiu      $v0, $t0, %lo(D_801280E0)
/* 5F67C 8006EE7C 1800A0AF */  sw         $zero, 0x18($sp)
/* 5F680 8006EE80 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 5F684 8006EE84 2000B1AF */  sw         $s1, 0x20($sp)
/* 5F688 8006EE88 2C004390 */  lbu        $v1, 0x2c($v0)
/* 5F68C 8006EE8C 5F001224 */  addiu      $s2, $zero, 0x5f
/* 5F690 8006EE90 2400B2AF */  sw         $s2, 0x24($sp)
/* 5F694 8006EE94 C0800300 */  sll        $s0, $v1, 3
/* 5F698 8006EE98 23800302 */  subu       $s0, $s0, $v1
/* 5F69C 8006EE9C 80801000 */  sll        $s0, $s0, 2
/* 5F6A0 8006EEA0 1380033C */  lui        $v1, %hi(D_801282E0)
/* 5F6A4 8006EEA4 E0826224 */  addiu      $v0, $v1, %lo(D_801282E0)
/* 5F6A8 8006EEA8 21800202 */  addu       $s0, $s0, $v0
/* 5F6AC 8006EEAC 3DAD010C */  jal        FUN_8006b4f4
/* 5F6B0 8006EEB0 1400B0AF */   sw        $s0, 0x14($sp)
/* 5F6B4 8006EEB4 21204000 */  addu       $a0, $v0, $zero
/* 5F6B8 8006EEB8 FF000524 */  addiu      $a1, $zero, 0xff
/* 5F6BC 8006EEBC C0FE0724 */  addiu      $a3, $zero, -0x140
/* 5F6C0 8006EEC0 B400A68F */  lw         $a2, 0xb4($sp)
/* 5F6C4 8006EEC4 6FFF0224 */  addiu      $v0, $zero, -0x91
/* 5F6C8 8006EEC8 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F6CC 8006EECC 43010224 */  addiu      $v0, $zero, 0x143
/* 5F6D0 8006EED0 1400B0AF */  sw         $s0, 0x14($sp)
/* 5F6D4 8006EED4 1800A0AF */  sw         $zero, 0x18($sp)
/* 5F6D8 8006EED8 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 5F6DC 8006EEDC 2000B1AF */  sw         $s1, 0x20($sp)
/* 5F6E0 8006EEE0 3DAD010C */  jal        FUN_8006b4f4
/* 5F6E4 8006EEE4 2400A2AF */   sw        $v0, 0x24($sp)
/* 5F6E8 8006EEE8 21204000 */  addu       $a0, $v0, $zero
/* 5F6EC 8006EEEC FC000524 */  addiu      $a1, $zero, 0xfc
/* 5F6F0 8006EEF0 C0FE0724 */  addiu      $a3, $zero, -0x140
/* 5F6F4 8006EEF4 B400A68F */  lw         $a2, 0xb4($sp)
/* 5F6F8 8006EEF8 B2000224 */  addiu      $v0, $zero, 0xb2
/* 5F6FC 8006EEFC 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F700 8006EF00 A2010224 */  addiu      $v0, $zero, 0x1a2
/* 5F704 8006EF04 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5F708 8006EF08 3E000224 */  addiu      $v0, $zero, 0x3e
/* 5F70C 8006EF0C 1400B0AF */  sw         $s0, 0x14($sp)
/* 5F710 8006EF10 1800A0AF */  sw         $zero, 0x18($sp)
/* 5F714 8006EF14 2000B1AF */  sw         $s1, 0x20($sp)
/* 5F718 8006EF18 3DAD010C */  jal        FUN_8006b4f4
/* 5F71C 8006EF1C 2400A2AF */   sw        $v0, 0x24($sp)
/* 5F720 8006EF20 AC01BF8F */  lw         $ra, 0x1ac($sp)
/* 5F724 8006EF24 A801BE8F */  lw         $fp, 0x1a8($sp)
/* 5F728 8006EF28 A401B78F */  lw         $s7, 0x1a4($sp)
/* 5F72C 8006EF2C A001B68F */  lw         $s6, 0x1a0($sp)
/* 5F730 8006EF30 9C01B58F */  lw         $s5, 0x19c($sp)
/* 5F734 8006EF34 9801B48F */  lw         $s4, 0x198($sp)
/* 5F738 8006EF38 9401B38F */  lw         $s3, 0x194($sp)
/* 5F73C 8006EF3C 9001B28F */  lw         $s2, 0x190($sp)
/* 5F740 8006EF40 8C01B18F */  lw         $s1, 0x18c($sp)
/* 5F744 8006EF44 8801B08F */  lw         $s0, 0x188($sp)
/* 5F748 8006EF48 0800E003 */  jr         $ra
/* 5F74C 8006EF4C B001BD27 */   addiu     $sp, $sp, 0x1b0

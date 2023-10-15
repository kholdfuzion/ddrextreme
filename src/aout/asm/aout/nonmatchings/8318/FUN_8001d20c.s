.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001d20c
/* DA0C 8001D20C 21400000 */  addu       $t0, $zero, $zero
/* DA10 8001D210 FFFF0B24 */  addiu      $t3, $zero, -1
/* DA14 8001D214 AA2A0A3C */  lui        $t2, 0x2aaa
/* DA18 8001D218 ABAA4A35 */  ori        $t2, $t2, 0xaaab
/* DA1C 8001D21C 5555093C */  lui        $t1, 0x5555
/* DA20 8001D220 56552935 */  ori        $t1, $t1, 0x5556
/* DA24 8001D224 13800C3C */  lui        $t4, %hi(D_801282E0)
/* DA28 8001D228 E0828725 */  addiu      $a3, $t4, %lo(D_801282E0)
.L8001D22C:
/* DA2C 8001D22C 18000A01 */  mult       $t0, $t2
/* DA30 8001D230 10100000 */  mfhi       $v0
/* DA34 8001D234 03190800 */  sra        $v1, $t0, 4
/* DA38 8001D238 00000000 */  nop
/* DA3C 8001D23C 18006900 */  mult       $v1, $t1
/* DA40 8001D240 C3370800 */  sra        $a2, $t0, 0x1f
/* DA44 8001D244 0F000531 */  andi       $a1, $t0, 0xf
/* DA48 8001D248 01000825 */  addiu      $t0, $t0, 1
/* DA4C 8001D24C F001A524 */  addiu      $a1, $a1, 0x1f0
/* DA50 8001D250 0000EBA4 */  sh         $t3, ($a3)
/* DA54 8001D254 1400E0A4 */  sh         $zero, 0x14($a3)
/* DA58 8001D258 C3100200 */  sra        $v0, $v0, 3
/* DA5C 8001D25C 23104600 */  subu       $v0, $v0, $a2
/* DA60 8001D260 00120200 */  sll        $v0, $v0, 8
/* DA64 8001D264 1600E2A4 */  sh         $v0, 0x16($a3)
/* DA68 8001D268 10200000 */  mfhi       $a0
/* DA6C 8001D26C 23208600 */  subu       $a0, $a0, $a2
/* DA70 8001D270 40100400 */  sll        $v0, $a0, 1
/* DA74 8001D274 21104400 */  addu       $v0, $v0, $a0
/* DA78 8001D278 23186200 */  subu       $v1, $v1, $v0
/* DA7C 8001D27C 001A0300 */  sll        $v1, $v1, 8
/* DA80 8001D280 21186500 */  addu       $v1, $v1, $a1
/* DA84 8001D284 1800E3A4 */  sh         $v1, 0x18($a3)
/* DA88 8001D288 50000229 */  slti       $v0, $t0, 0x50
/* DA8C 8001D28C E7FF4014 */  bnez       $v0, .L8001D22C
/* DA90 8001D290 1C00E724 */   addiu     $a3, $a3, 0x1c
/* DA94 8001D294 50000324 */  addiu      $v1, $zero, 0x50
/* DA98 8001D298 FF010824 */  addiu      $t0, $zero, 0x1ff
/* DA9C 8001D29C 1380023C */  lui        $v0, %hi(D_801280E0)
/* DAA0 8001D2A0 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* DAA4 8001D2A4 FF014224 */  addiu      $v0, $v0, 0x1ff
.L8001D2A8:
/* DAA8 8001D2A8 000043A0 */  sb         $v1, ($v0)
/* DAAC 8001D2AC FFFF0825 */  addiu      $t0, $t0, -1
/* DAB0 8001D2B0 FDFF0105 */  bgez       $t0, .L8001D2A8
/* DAB4 8001D2B4 FFFF4224 */   addiu     $v0, $v0, -1
/* DAB8 8001D2B8 21400000 */  addu       $t0, $zero, $zero
/* DABC 8001D2BC 1380053C */  lui        $a1, %hi(D_80129DA8)
/* DAC0 8001D2C0 A89DA524 */  addiu      $a1, $a1, %lo(D_80129DA8)
/* DAC4 8001D2C4 2150A000 */  addu       $t2, $a1, $zero
/* DAC8 8001D2C8 FFFF0934 */  ori        $t1, $zero, 0xffff
/* DACC 8001D2CC E0828225 */  addiu      $v0, $t4, -0x7d20
/* DAD0 8001D2D0 01000624 */  addiu      $a2, $zero, 1
/* DAD4 8001D2D4 FFFF0724 */  addiu      $a3, $zero, -1
/* DAD8 8001D2D8 00060324 */  addiu      $v1, $zero, 0x600
/* DADC 8001D2DC C40843A4 */  sh         $v1, 0x8c4($v0)
/* DAE0 8001D2E0 40010324 */  addiu      $v1, $zero, 0x140
/* DAE4 8001D2E4 F0000424 */  addiu      $a0, $zero, 0xf0
/* DAE8 8001D2E8 C00840A4 */  sh         $zero, 0x8c0($v0)
/* DAEC 8001D2EC D40846A4 */  sh         $a2, 0x8d4($v0)
/* DAF0 8001D2F0 C20847A4 */  sh         $a3, 0x8c2($v0)
/* DAF4 8001D2F4 C60840A4 */  sh         $zero, 0x8c6($v0)
/* DAF8 8001D2F8 C80843A4 */  sh         $v1, 0x8c8($v0)
/* DAFC 8001D2FC CA0844A4 */  sh         $a0, 0x8ca($v0)
/* DB00 8001D300 CC0846A4 */  sh         $a2, 0x8cc($v0)
/* DB04 8001D304 D60840A4 */  sh         $zero, 0x8d6($v0)
/* DB08 8001D308 D80844A4 */  sh         $a0, 0x8d8($v0)
/* DB0C 8001D30C DC0840A4 */  sh         $zero, 0x8dc($v0)
/* DB10 8001D310 DC084224 */  addiu      $v0, $v0, 0x8dc
/* DB14 8001D314 C0080324 */  addiu      $v1, $zero, 0x8c0
/* DB18 8001D318 040043A4 */  sh         $v1, 4($v0)
/* DB1C 8001D31C 08000324 */  addiu      $v1, $zero, 8
/* DB20 8001D320 00010424 */  addiu      $a0, $zero, 0x100
/* DB24 8001D324 080043A4 */  sh         $v1, 8($v0)
/* DB28 8001D328 0A0043A4 */  sh         $v1, 0xa($v0)
/* DB2C 8001D32C F7010324 */  addiu      $v1, $zero, 0x1f7
/* DB30 8001D330 140046A4 */  sh         $a2, 0x14($v0)
/* DB34 8001D334 020047A4 */  sh         $a3, 2($v0)
/* DB38 8001D338 060040A4 */  sh         $zero, 6($v0)
/* DB3C 8001D33C 0C0040A4 */  sh         $zero, 0xc($v0)
/* DB40 8001D340 160044A4 */  sh         $a0, 0x16($v0)
/* DB44 8001D344 180043A4 */  sh         $v1, 0x18($v0)
/* DB48 8001D348 10000224 */  addiu      $v0, $zero, 0x10
/* DB4C 8001D34C 300CA4A4 */  sh         $a0, 0xc30($a1)
/* DB50 8001D350 320CA3A4 */  sh         $v1, 0xc32($a1)
/* DB54 8001D354 340CA2A4 */  sh         $v0, 0xc34($a1)
/* DB58 8001D358 360CA6A4 */  sh         $a2, 0xc36($a1)
.L8001D35C:
/* DB5C 8001D35C 40100800 */  sll        $v0, $t0, 1
/* DB60 8001D360 300D438D */  lw         $v1, 0xd30($t2)
/* DB64 8001D364 01000825 */  addiu      $t0, $t0, 1
/* DB68 8001D368 21104300 */  addu       $v0, $v0, $v1
/* DB6C 8001D36C 10000329 */  slti       $v1, $t0, 0x10
/* DB70 8001D370 FAFF6014 */  bnez       $v1, .L8001D35C
/* DB74 8001D374 000049A4 */   sh        $t1, ($v0)
/* DB78 8001D378 21400000 */  addu       $t0, $zero, $zero
/* DB7C 8001D37C 01000524 */  addiu      $a1, $zero, 1
/* DB80 8001D380 FFFF0B24 */  addiu      $t3, $zero, -1
/* DB84 8001D384 40050A24 */  addiu      $t2, $zero, 0x540
/* DB88 8001D388 00010924 */  addiu      $t1, $zero, 0x100
/* DB8C 8001D38C 50000724 */  addiu      $a3, $zero, 0x50
/* DB90 8001D390 00020624 */  addiu      $a2, $zero, 0x200
/* DB94 8001D394 00030424 */  addiu      $a0, $zero, 0x300
/* DB98 8001D398 1380023C */  lui        $v0, %hi(D_80128BF4)
/* DB9C 8001D39C F48B4324 */  addiu      $v1, $v0, %lo(D_80128BF4)
.L8001D3A0:
/* DBA0 8001D3A0 060064A4 */  sh         $a0, 6($v1)
/* DBA4 8001D3A4 50008424 */  addiu      $a0, $a0, 0x50
/* DBA8 8001D3A8 F0030225 */  addiu      $v0, $t0, 0x3f0
/* DBAC 8001D3AC 000060A4 */  sh         $zero, ($v1)
/* DBB0 8001D3B0 140065A4 */  sh         $a1, 0x14($v1)
/* DBB4 8001D3B4 02006BA4 */  sh         $t3, 2($v1)
/* DBB8 8001D3B8 04006AA4 */  sh         $t2, 4($v1)
/* DBBC 8001D3BC 080069A4 */  sh         $t1, 8($v1)
/* DBC0 8001D3C0 0A0067A4 */  sh         $a3, 0xa($v1)
/* DBC4 8001D3C4 0C0065A4 */  sh         $a1, 0xc($v1)
/* DBC8 8001D3C8 160066A4 */  sh         $a2, 0x16($v1)
/* DBCC 8001D3CC 180062A4 */  sh         $v0, 0x18($v1)
/* DBD0 8001D3D0 01000825 */  addiu      $t0, $t0, 1
/* DBD4 8001D3D4 02000229 */  slti       $v0, $t0, 2
/* DBD8 8001D3D8 F1FF4014 */  bnez       $v0, .L8001D3A0
/* DBDC 8001D3DC 1C006324 */   addiu     $v1, $v1, 0x1c
/* DBE0 8001D3E0 0800E003 */  jr         $ra
/* DBE4 8001D3E4 21100000 */   addu      $v0, $zero, $zero

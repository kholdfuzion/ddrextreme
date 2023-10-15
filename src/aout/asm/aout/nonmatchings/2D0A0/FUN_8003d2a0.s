.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003d2a0
/* 2DAA0 8003D2A0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2DAA4 8003D2A4 2800BFAF */  sw         $ra, 0x28($sp)
/* 2DAA8 8003D2A8 2400B3AF */  sw         $s3, 0x24($sp)
/* 2DAAC 8003D2AC 2000B2AF */  sw         $s2, 0x20($sp)
/* 2DAB0 8003D2B0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 2DAB4 8003D2B4 1E008014 */  bnez       $a0, .L8003D330
/* 2DAB8 8003D2B8 1800B0AF */   sw        $s0, 0x18($sp)
/* 2DABC 8003D2BC 1580023C */  lui        $v0, %hi(D_80156ED0)
/* 2DAC0 8003D2C0 0008033C */  lui        $v1, 0x800
/* 2DAC4 8003D2C4 D06E43AC */  sw         $v1, %lo(D_80156ED0)($v0)
/* 2DAC8 8003D2C8 1580113C */  lui        $s1, %hi(D_80156EE0)
/* 2DACC 8003D2CC E06E3026 */  addiu      $s0, $s1, %lo(D_80156EE0)
/* 2DAD0 8003D2D0 21200002 */  addu       $a0, $s0, $zero
/* 2DAD4 8003D2D4 0180053C */  lui        $a1, %hi(D_80012D58)
/* 2DAD8 8003D2D8 7347030C */  jal        FUN_800d1dcc
/* 2DADC 8003D2DC 582DA524 */   addiu     $a1, $a1, %lo(D_80012D58)
/* 2DAE0 8003D2E0 0C004010 */  beqz       $v0, .L8003D314
/* 2DAE4 8003D2E4 21100000 */   addu      $v0, $zero, $zero
/* 2DAE8 8003D2E8 09C8020C */  jal        FUN_800b2024
/* 2DAEC 8003D2EC 00000000 */   nop
/* 2DAF0 8003D2F0 FFFF0324 */  addiu      $v1, $zero, -1
/* 2DAF4 8003D2F4 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DAF8 8003D2F8 0180043C */  lui        $a0, %hi(D_80012D64)
/* 2DAFC 8003D2FC 642D8424 */  addiu      $a0, $a0, %lo(D_80012D64)
/* 2DB00 8003D300 21284000 */  addu       $a1, $v0, $zero
/* 2DB04 8003D304 01000624 */  addiu      $a2, $zero, 1
/* 2DB08 8003D308 27F3020C */  jal        HardWareError_800bcc9c
/* 2DB0C 8003D30C FFFF0724 */   addiu     $a3, $zero, -1
/* 2DB10 8003D310 21100000 */  addu       $v0, $zero, $zero
.L8003D314:
/* 2DB14 8003D314 0400048E */  lw         $a0, 4($s0)
/* 2DB18 8003D318 E06E258E */  lw         $a1, 0x6ee0($s1)
/* 2DB1C 8003D31C 1580033C */  lui        $v1, %hi(D_80156ED8)
/* 2DB20 8003D320 D86E64AC */  sw         $a0, %lo(D_80156ED8)($v1)
/* 2DB24 8003D324 1580033C */  lui        $v1, %hi(D_80156EDC)
/* 2DB28 8003D328 17F50008 */  j          .L8003D45C
/* 2DB2C 8003D32C DC6E65AC */   sw        $a1, %lo(D_80156EDC)($v1)
.L8003D330:
/* 2DB30 8003D330 1580133C */  lui        $s3, %hi(D_80156ED8)
/* 2DB34 8003D334 D86E628E */  lw         $v0, %lo(D_80156ED8)($s3)
/* 2DB38 8003D338 00000000 */  nop
/* 2DB3C 8003D33C 46004010 */  beqz       $v0, .L8003D458
/* 2DB40 8003D340 21904000 */   addu      $s2, $v0, $zero
/* 2DB44 8003D344 0200023C */  lui        $v0, 2
/* 2DB48 8003D348 2B105200 */  sltu       $v0, $v0, $s2
/* 2DB4C 8003D34C 03004010 */  beqz       $v0, .L8003D35C
/* 2DB50 8003D350 FF075126 */   addiu     $s1, $s2, 0x7ff
/* 2DB54 8003D354 0200123C */  lui        $s2, 2
/* 2DB58 8003D358 FF075126 */  addiu      $s1, $s2, 0x7ff
.L8003D35C:
/* 2DB5C 8003D35C 03002106 */  bgez       $s1, .L8003D36C
/* 2DB60 8003D360 C38A1100 */   sra       $s1, $s1, 0xb
/* 2DB64 8003D364 FE0F5126 */  addiu      $s1, $s2, 0xffe
/* 2DB68 8003D368 C38A1100 */  sra        $s1, $s1, 0xb
.L8003D36C:
/* 2DB6C 8003D36C 21282002 */  addu       $a1, $s1, $zero
/* 2DB70 8003D370 2580063C */  lui        $a2, 0x8025
/* 2DB74 8003D374 1580103C */  lui        $s0, %hi(D_80156EDC)
/* 2DB78 8003D378 DC6E048E */  lw         $a0, %lo(D_80156EDC)($s0)
/* 2DB7C 8003D37C C0C7020C */  jal        FUN_800b1f00
/* 2DB80 8003D380 0080C634 */   ori       $a2, $a2, 0x8000
/* 2DB84 8003D384 1580043C */  lui        $a0, %hi(D_80156ED4)
/* 2DB88 8003D388 D46E82AC */  sw         $v0, %lo(D_80156ED4)($a0)
/* 2DB8C 8003D38C DC6E028E */  lw         $v0, 0x6edc($s0)
/* 2DB90 8003D390 D86E638E */  lw         $v1, 0x6ed8($s3)
/* 2DB94 8003D394 21105100 */  addu       $v0, $v0, $s1
/* 2DB98 8003D398 23187200 */  subu       $v1, $v1, $s2
/* 2DB9C 8003D39C DC6E02AE */  sw         $v0, 0x6edc($s0)
/* 2DBA0 8003D3A0 D86E63AE */  sw         $v1, 0x6ed8($s3)
/* 2DBA4 8003D3A4 1580113C */  lui        $s1, 0x8015
/* 2DBA8 8003D3A8 FDF40008 */  j          .L8003D3F4
/* 2DBAC 8003D3AC 21808000 */   addu      $s0, $a0, $zero
.L8003D3B0:
/* 2DBB0 8003D3B0 B4C7020C */  jal        FUN_800b1ed0
/* 2DBB4 8003D3B4 00000000 */   nop
/* 2DBB8 8003D3B8 D46E048E */  lw         $a0, 0x6ed4($s0)
/* 2DBBC 8003D3BC E4C7020C */  jal        FUN_800b1f90
/* 2DBC0 8003D3C0 00000000 */   nop
/* 2DBC4 8003D3C4 21184000 */  addu       $v1, $v0, $zero
/* 2DBC8 8003D3C8 FFFF0224 */  addiu      $v0, $zero, -1
/* 2DBCC 8003D3CC 07006214 */  bne        $v1, $v0, .L8003D3EC
/* 2DBD0 8003D3D0 0180043C */   lui       $a0, %hi(D_80012D7C)
/* 2DBD4 8003D3D4 1000A3AF */  sw         $v1, 0x10($sp)
/* 2DBD8 8003D3D8 7C2D8424 */  addiu      $a0, $a0, %lo(D_80012D7C)
/* 2DBDC 8003D3DC FFFF0524 */  addiu      $a1, $zero, -1
/* 2DBE0 8003D3E0 21300000 */  addu       $a2, $zero, $zero
/* 2DBE4 8003D3E4 27F3020C */  jal        HardWareError_800bcc9c
/* 2DBE8 8003D3E8 FFFF0724 */   addiu     $a3, $zero, -1
.L8003D3EC:
/* 2DBEC 8003D3EC 7CAA000C */  jal        vsync_8002a9f0
/* 2DBF0 8003D3F0 00000000 */   nop
.L8003D3F4:
/* 2DBF4 8003D3F4 D46E048E */  lw         $a0, 0x6ed4($s0)
/* 2DBF8 8003D3F8 E4C7020C */  jal        FUN_800b1f90
/* 2DBFC 8003D3FC 00000000 */   nop
/* 2DC00 8003D400 EBFF4014 */  bnez       $v0, .L8003D3B0
/* 2DC04 8003D404 2580063C */   lui       $a2, 0x8025
/* 2DC08 8003D408 D06E258E */  lw         $a1, 0x6ed0($s1)
/* 2DC0C 8003D40C 0080C634 */  ori        $a2, $a2, 0x8000
/* 2DC10 8003D410 82260500 */  srl        $a0, $a1, 0x1a
/* 2DC14 8003D414 422C0500 */  srl        $a1, $a1, 0x11
/* 2DC18 8003D418 65D4000C */  jal        FUN_80035194
/* 2DC1C 8003D41C FF01A530 */   andi      $a1, $a1, 0x1ff
/* 2DC20 8003D420 08004010 */  beqz       $v0, .L8003D444
/* 2DC24 8003D424 FFFF0224 */   addiu     $v0, $zero, -1
/* 2DC28 8003D428 1000A2AF */  sw         $v0, 0x10($sp)
/* 2DC2C 8003D42C 0180043C */  lui        $a0, %hi(D_80012D90)
/* 2DC30 8003D430 902D8424 */  addiu      $a0, $a0, %lo(D_80012D90)
/* 2DC34 8003D434 FFFF0524 */  addiu      $a1, $zero, -1
/* 2DC38 8003D438 21300000 */  addu       $a2, $zero, $zero
/* 2DC3C 8003D43C 27F3020C */  jal        HardWareError_800bcc9c
/* 2DC40 8003D440 FFFF0724 */   addiu     $a3, $zero, -1
.L8003D444:
/* 2DC44 8003D444 D06E238E */  lw         $v1, 0x6ed0($s1)
/* 2DC48 8003D448 21100000 */  addu       $v0, $zero, $zero
/* 2DC4C 8003D44C 21187200 */  addu       $v1, $v1, $s2
/* 2DC50 8003D450 17F50008 */  j          .L8003D45C
/* 2DC54 8003D454 D06E23AE */   sw        $v1, 0x6ed0($s1)
.L8003D458:
/* 2DC58 8003D458 FFFF0224 */  addiu      $v0, $zero, -1
.L8003D45C:
/* 2DC5C 8003D45C 2800BF8F */  lw         $ra, 0x28($sp)
/* 2DC60 8003D460 2400B38F */  lw         $s3, 0x24($sp)
/* 2DC64 8003D464 2000B28F */  lw         $s2, 0x20($sp)
/* 2DC68 8003D468 1C00B18F */  lw         $s1, 0x1c($sp)
/* 2DC6C 8003D46C 1800B08F */  lw         $s0, 0x18($sp)
/* 2DC70 8003D470 0800E003 */  jr         $ra
/* 2DC74 8003D474 3000BD27 */   addiu     $sp, $sp, 0x30

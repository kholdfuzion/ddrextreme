.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009d354
/* 8DB54 8009D354 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8DB58 8009D358 3400B1AF */  sw         $s1, 0x34($sp)
/* 8DB5C 8009D35C 21888000 */  addu       $s1, $a0, $zero
/* 8DB60 8009D360 21280000 */  addu       $a1, $zero, $zero
/* 8DB64 8009D364 0C000624 */  addiu      $a2, $zero, 0xc
/* 8DB68 8009D368 4800BFAF */  sw         $ra, 0x48($sp)
/* 8DB6C 8009D36C 4400B5AF */  sw         $s5, 0x44($sp)
/* 8DB70 8009D370 4000B4AF */  sw         $s4, 0x40($sp)
/* 8DB74 8009D374 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 8DB78 8009D378 3800B2AF */  sw         $s2, 0x38($sp)
/* 8DB7C 8009D37C F6A2000C */  jal        memset
/* 8DB80 8009D380 3000B0AF */   sw        $s0, 0x30($sp)
/* 8DB84 8009D384 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 8DB88 8009D388 1C00628C */  lw         $v0, %lo(D_800F001C)($v1)
/* 8DB8C 8009D38C 0180033C */  lui        $v1, %hi(D_8001682C)
/* 8DB90 8009D390 0F800C3C */  lui        $t4, %hi(D_800F0028)
/* 8DB94 8009D394 2C68648C */  lw         $a0, %lo(D_8001682C)($v1)
/* 8DB98 8009D398 28008D25 */  addiu      $t5, $t4, %lo(D_800F0028)
/* 8DB9C 8009D39C 000022AE */  sw         $v0, ($s1)
/* 8DBA0 8009D3A0 2C686224 */  addiu      $v0, $v1, 0x682c
/* 8DBA4 8009D3A4 0400458C */  lw         $a1, 4($v0)
/* 8DBA8 8009D3A8 0800468C */  lw         $a2, 8($v0)
/* 8DBAC 8009D3AC 0C00478C */  lw         $a3, 0xc($v0)
/* 8DBB0 8009D3B0 1000488C */  lw         $t0, 0x10($v0)
/* 8DBB4 8009D3B4 1400498C */  lw         $t1, 0x14($v0)
/* 8DBB8 8009D3B8 18004A8C */  lw         $t2, 0x18($v0)
/* 8DBBC 8009D3BC 1C004B8C */  lw         $t3, 0x1c($v0)
/* 8DBC0 8009D3C0 2000A381 */  lb         $v1, 0x20($t5)
/* 8DBC4 8009D3C4 1700B281 */  lb         $s2, 0x17($t5)
/* 8DBC8 8009D3C8 21988001 */  addu       $s3, $t4, $zero
/* 8DBCC 8009D3CC 1000A4AF */  sw         $a0, 0x10($sp)
/* 8DBD0 8009D3D0 01006238 */  xori       $v0, $v1, 1
/* 8DBD4 8009D3D4 0100542C */  sltiu      $s4, $v0, 1
/* 8DBD8 8009D3D8 02006338 */  xori       $v1, $v1, 2
/* 8DBDC 8009D3DC 1300A281 */  lb         $v0, 0x13($t5)
/* 8DBE0 8009D3E0 0100752C */  sltiu      $s5, $v1, 1
/* 8DBE4 8009D3E4 1400A5AF */  sw         $a1, 0x14($sp)
/* 8DBE8 8009D3E8 1800A6AF */  sw         $a2, 0x18($sp)
/* 8DBEC 8009D3EC 1C00A7AF */  sw         $a3, 0x1c($sp)
/* 8DBF0 8009D3F0 2000A8AF */  sw         $t0, 0x20($sp)
/* 8DBF4 8009D3F4 2400A9AF */  sw         $t1, 0x24($sp)
/* 8DBF8 8009D3F8 2800AAAF */  sw         $t2, 0x28($sp)
/* 8DBFC 8009D3FC 03004010 */  beqz       $v0, .L8009D40C
/* 8DC00 8009D400 2C00ABAF */   sw        $t3, 0x2c($sp)
/* 8DC04 8009D404 08750208 */  j          .L8009D420
/* 8DC08 8009D408 21800000 */   addu      $s0, $zero, $zero
.L8009D40C:
/* 8DC0C 8009D40C 0400A28D */  lw         $v0, 4($t5)
/* 8DC10 8009D410 00000000 */  nop
/* 8DC14 8009D414 2400438C */  lw         $v1, 0x24($v0)
/* 8DC18 8009D418 00000000 */  nop
/* 8DC1C 8009D41C 10007030 */  andi       $s0, $v1, 0x10
.L8009D420:
/* 8DC20 8009D420 28006226 */  addiu      $v0, $s3, 0x28
/* 8DC24 8009D424 14004480 */  lb         $a0, 0x14($v0)
/* 8DC28 8009D428 C4F8010C */  jal        FUN_8007e310
/* 8DC2C 8009D42C 00000000 */   nop
/* 8DC30 8009D430 03004228 */  slti       $v0, $v0, 3
/* 8DC34 8009D434 03004010 */  beqz       $v0, .L8009D444
/* 8DC38 8009D438 00000000 */   nop
/* 8DC3C 8009D43C 04000016 */  bnez       $s0, .L8009D450
/* 8DC40 8009D440 01000424 */   addiu     $a0, $zero, 1
.L8009D444:
/* 8DC44 8009D444 14F1010C */  jal        FUN_8007c450
/* 8DC48 8009D448 00000000 */   nop
/* 8DC4C 8009D44C 21204000 */  addu       $a0, $v0, $zero
.L8009D450:
/* 8DC50 8009D450 28006226 */  addiu      $v0, $s3, 0x28
/* 8DC54 8009D454 0C004380 */  lb         $v1, 0xc($v0)
/* 8DC58 8009D458 02008010 */  beqz       $a0, .L8009D464
/* 8DC5C 8009D45C 01006224 */   addiu     $v0, $v1, 1
/* 8DC60 8009D460 05000224 */  addiu      $v0, $zero, 5
.L8009D464:
/* 8DC64 8009D464 02004012 */  beqz       $s2, .L8009D470
/* 8DC68 8009D468 00000000 */   nop
/* 8DC6C 8009D46C 06000224 */  addiu      $v0, $zero, 6
.L8009D470:
/* 8DC70 8009D470 02008012 */  beqz       $s4, .L8009D47C
/* 8DC74 8009D474 00000000 */   nop
/* 8DC78 8009D478 07000224 */  addiu      $v0, $zero, 7
.L8009D47C:
/* 8DC7C 8009D47C 0300A012 */  beqz       $s5, .L8009D48C
/* 8DC80 8009D480 FFFF4224 */   addiu     $v0, $v0, -1
/* 8DC84 8009D484 08000224 */  addiu      $v0, $zero, 8
/* 8DC88 8009D488 FFFF4224 */  addiu      $v0, $v0, -1
.L8009D48C:
/* 8DC8C 8009D48C FFFF0524 */  addiu      $a1, $zero, -1
/* 8DC90 8009D490 80100200 */  sll        $v0, $v0, 2
/* 8DC94 8009D494 2118A203 */  addu       $v1, $sp, $v0
/* 8DC98 8009D498 1000678C */  lw         $a3, 0x10($v1)
/* 8DC9C 8009D49C FFFF0624 */  addiu      $a2, $zero, -1
/* 8DCA0 8009D4A0 2120E000 */  addu       $a0, $a3, $zero
/* 8DCA4 8009D4A4 8876000C */  jal        FUN_8001da20
/* 8DCA8 8009D4A8 080027AE */   sw        $a3, 8($s1)
/* 8DCAC 8009D4AC 4800BF8F */  lw         $ra, 0x48($sp)
/* 8DCB0 8009D4B0 4400B58F */  lw         $s5, 0x44($sp)
/* 8DCB4 8009D4B4 4000B48F */  lw         $s4, 0x40($sp)
/* 8DCB8 8009D4B8 3C00B38F */  lw         $s3, 0x3c($sp)
/* 8DCBC 8009D4BC 3800B28F */  lw         $s2, 0x38($sp)
/* 8DCC0 8009D4C0 3400B18F */  lw         $s1, 0x34($sp)
/* 8DCC4 8009D4C4 3000B08F */  lw         $s0, 0x30($sp)
/* 8DCC8 8009D4C8 0800E003 */  jr         $ra
/* 8DCCC 8009D4CC 5000BD27 */   addiu     $sp, $sp, 0x50

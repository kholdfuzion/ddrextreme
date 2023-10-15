.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002d2e8
/* 1DAE8 8002D2E8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1DAEC 8002D2EC 1800B2AF */  sw         $s2, 0x18($sp)
/* 1DAF0 8002D2F0 21900000 */  addu       $s2, $zero, $zero
/* 1DAF4 8002D2F4 3800A4AF */  sw         $a0, 0x38($sp)
/* 1DAF8 8002D2F8 21200000 */  addu       $a0, $zero, $zero
/* 1DAFC 8002D2FC 3000BEAF */  sw         $fp, 0x30($sp)
/* 1DB00 8002D300 21F0A000 */  addu       $fp, $a1, $zero
/* 1DB04 8002D304 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 1DB08 8002D308 21B8C000 */  addu       $s7, $a2, $zero
/* 1DB0C 8002D30C 2800B6AF */  sw         $s6, 0x28($sp)
/* 1DB10 8002D310 21B0E000 */  addu       $s6, $a3, $zero
/* 1DB14 8002D314 3400BFAF */  sw         $ra, 0x34($sp)
/* 1DB18 8002D318 2400B5AF */  sw         $s5, 0x24($sp)
/* 1DB1C 8002D31C 2000B4AF */  sw         $s4, 0x20($sp)
/* 1DB20 8002D320 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1DB24 8002D324 1400B1AF */  sw         $s1, 0x14($sp)
/* 1DB28 8002D328 CD6B000C */  jal        VSync
/* 1DB2C 8002D32C 1000B0AF */   sw        $s0, 0x10($sp)
/* 1DB30 8002D330 04001524 */  addiu      $s5, $zero, 4
/* 1DB34 8002D334 E5B40008 */  j          .L8002D394
/* 1DB38 8002D338 21880000 */   addu      $s1, $zero, $zero
.L8002D33C:
/* 1DB3C 8002D33C D2B40008 */  j          .L8002D348
/* 1DB40 8002D340 01003126 */   addiu     $s1, $s1, 1
.L8002D344:
/* 1DB44 8002D344 01001026 */  addiu      $s0, $s0, 1
.L8002D348:
/* 1DB48 8002D348 0400022A */  slti       $v0, $s0, 4
/* 1DB4C 8002D34C 09004010 */  beqz       $v0, .L8002D374
/* 1DB50 8002D350 00000000 */   nop
/* 1DB54 8002D354 CD6B000C */  jal        VSync
/* 1DB58 8002D358 21200000 */   addu      $a0, $zero, $zero
/* 1DB5C 8002D35C 7CAA000C */  jal        vsync_8002a9f0
/* 1DB60 8002D360 00000000 */   nop
/* 1DB64 8002D364 1F05030C */  jal        FUN_800c147c
/* 1DB68 8002D368 00000000 */   nop
/* 1DB6C 8002D36C F5FF4014 */  bnez       $v0, .L8002D344
/* 1DB70 8002D370 00000000 */   nop
.L8002D374:
/* 1DB74 8002D374 CD6B000C */  jal        VSync
/* 1DB78 8002D378 21200000 */   addu      $a0, $zero, $zero
/* 1DB7C 8002D37C 7CAA000C */  jal        vsync_8002a9f0
/* 1DB80 8002D380 00000000 */   nop
/* 1DB84 8002D384 04001516 */  bne        $s0, $s5, .L8002D398
/* 1DB88 8002D388 0400222A */   slti      $v0, $s1, 4
/* 1DB8C 8002D38C DFB9000C */  jal        FUN_8002e77c
/* 1DB90 8002D390 01000424 */   addiu     $a0, $zero, 1
.L8002D394:
/* 1DB94 8002D394 0400222A */  slti       $v0, $s1, 4
.L8002D398:
/* 1DB98 8002D398 06004010 */  beqz       $v0, .L8002D3B4
/* 1DB9C 8002D39C 2128C003 */   addu      $a1, $fp, $zero
/* 1DBA0 8002D3A0 3800A48F */  lw         $a0, 0x38($sp)
/* 1DBA4 8002D3A4 E905030C */  jal        FUN_800c17a4
/* 1DBA8 8002D3A8 2130E002 */   addu      $a2, $s7, $zero
/* 1DBAC 8002D3AC E3FF4014 */  bnez       $v0, .L8002D33C
/* 1DBB0 8002D3B0 21800000 */   addu      $s0, $zero, $zero
.L8002D3B4:
/* 1DBB4 8002D3B4 03003516 */  bne        $s1, $s5, .L8002D3C4
/* 1DBB8 8002D3B8 00000000 */   nop
/* 1DBBC 8002D3BC DFB9000C */  jal        FUN_8002e77c
/* 1DBC0 8002D3C0 09000424 */   addiu     $a0, $zero, 9
.L8002D3C4:
/* 1DBC4 8002D3C4 CD6B000C */  jal        VSync
/* 1DBC8 8002D3C8 21200000 */   addu      $a0, $zero, $zero
/* 1DBCC 8002D3CC 7CAA000C */  jal        vsync_8002a9f0
/* 1DBD0 8002D3D0 FBFF1424 */   addiu     $s4, $zero, -5
/* 1DBD4 8002D3D4 04001324 */  addiu      $s3, $zero, 4
.L8002D3D8:
/* 1DBD8 8002D3D8 3B06030C */  jal        FUN_800c18ec
/* 1DBDC 8002D3DC 2120C002 */   addu      $a0, $s6, $zero
/* 1DBE0 8002D3E0 21884000 */  addu       $s1, $v0, $zero
/* 1DBE4 8002D3E4 18003412 */  beq        $s1, $s4, .L8002D448
/* 1DBE8 8002D3E8 FBFF222A */   slti      $v0, $s1, -5
/* 1DBEC 8002D3EC 37004014 */  bnez       $v0, .L8002D4CC
/* 1DBF0 8002D3F0 21102002 */   addu      $v0, $s1, $zero
/* 1DBF4 8002D3F4 35002106 */  bgez       $s1, .L8002D4CC
/* 1DBF8 8002D3F8 01005226 */   addiu     $s2, $s2, 1
/* 1DBFC 8002D3FC 0500422A */  slti       $v0, $s2, 5
/* 1DC00 8002D400 31004010 */  beqz       $v0, .L8002D4C8
/* 1DC04 8002D404 21800000 */   addu      $s0, $zero, $zero
/* 1DC08 8002D408 06B50008 */  j          .L8002D418
/* 1DC0C 8002D40C 0400022A */   slti      $v0, $s0, 4
.L8002D410:
/* 1DC10 8002D410 01001026 */  addiu      $s0, $s0, 1
/* 1DC14 8002D414 0400022A */  slti       $v0, $s0, 4
.L8002D418:
/* 1DC18 8002D418 1D004010 */  beqz       $v0, .L8002D490
/* 1DC1C 8002D41C 00000000 */   nop
/* 1DC20 8002D420 CD6B000C */  jal        VSync
/* 1DC24 8002D424 21200000 */   addu      $a0, $zero, $zero
/* 1DC28 8002D428 7CAA000C */  jal        vsync_8002a9f0
/* 1DC2C 8002D42C 00000000 */   nop
/* 1DC30 8002D430 1F05030C */  jal        FUN_800c147c
/* 1DC34 8002D434 00000000 */   nop
/* 1DC38 8002D438 F5FF4014 */  bnez       $v0, .L8002D410
/* 1DC3C 8002D43C 00000000 */   nop
/* 1DC40 8002D440 24B50008 */  j          .L8002D490
/* 1DC44 8002D444 00000000 */   nop
.L8002D448:
/* 1DC48 8002D448 01005226 */  addiu      $s2, $s2, 1
/* 1DC4C 8002D44C 0500422A */  slti       $v0, $s2, 5
/* 1DC50 8002D450 1B004010 */  beqz       $v0, .L8002D4C0
/* 1DC54 8002D454 21800000 */   addu      $s0, $zero, $zero
/* 1DC58 8002D458 1AB50008 */  j          .L8002D468
/* 1DC5C 8002D45C 0400022A */   slti      $v0, $s0, 4
.L8002D460:
/* 1DC60 8002D460 01001026 */  addiu      $s0, $s0, 1
/* 1DC64 8002D464 0400022A */  slti       $v0, $s0, 4
.L8002D468:
/* 1DC68 8002D468 09004010 */  beqz       $v0, .L8002D490
/* 1DC6C 8002D46C 00000000 */   nop
/* 1DC70 8002D470 CD6B000C */  jal        VSync
/* 1DC74 8002D474 21200000 */   addu      $a0, $zero, $zero
/* 1DC78 8002D478 7CAA000C */  jal        vsync_8002a9f0
/* 1DC7C 8002D47C 00000000 */   nop
/* 1DC80 8002D480 1F05030C */  jal        FUN_800c147c
/* 1DC84 8002D484 00000000 */   nop
/* 1DC88 8002D488 F5FF4014 */  bnez       $v0, .L8002D460
/* 1DC8C 8002D48C 00000000 */   nop
.L8002D490:
/* 1DC90 8002D490 CD6B000C */  jal        VSync
/* 1DC94 8002D494 21200000 */   addu      $a0, $zero, $zero
/* 1DC98 8002D498 7CAA000C */  jal        vsync_8002a9f0
/* 1DC9C 8002D49C 00000000 */   nop
/* 1DCA0 8002D4A0 03001316 */  bne        $s0, $s3, .L8002D4B0
/* 1DCA4 8002D4A4 00000000 */   nop
/* 1DCA8 8002D4A8 DFB9000C */  jal        FUN_8002e77c
/* 1DCAC 8002D4AC 01000424 */   addiu     $a0, $zero, 1
.L8002D4B0:
/* 1DCB0 8002D4B0 C9FF3412 */  beq        $s1, $s4, .L8002D3D8
/* 1DCB4 8002D4B4 21880000 */   addu      $s1, $zero, $zero
/* 1DCB8 8002D4B8 E6B40008 */  j          .L8002D398
/* 1DCBC 8002D4BC 0400222A */   slti      $v0, $s1, 4
.L8002D4C0:
/* 1DCC0 8002D4C0 33B50008 */  j          .L8002D4CC
/* 1DCC4 8002D4C4 FBFF0224 */   addiu     $v0, $zero, -5
.L8002D4C8:
/* 1DCC8 8002D4C8 21102002 */  addu       $v0, $s1, $zero
.L8002D4CC:
/* 1DCCC 8002D4CC 3400BF8F */  lw         $ra, 0x34($sp)
/* 1DCD0 8002D4D0 3000BE8F */  lw         $fp, 0x30($sp)
/* 1DCD4 8002D4D4 2C00B78F */  lw         $s7, 0x2c($sp)
/* 1DCD8 8002D4D8 2800B68F */  lw         $s6, 0x28($sp)
/* 1DCDC 8002D4DC 2400B58F */  lw         $s5, 0x24($sp)
/* 1DCE0 8002D4E0 2000B48F */  lw         $s4, 0x20($sp)
/* 1DCE4 8002D4E4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1DCE8 8002D4E8 1800B28F */  lw         $s2, 0x18($sp)
/* 1DCEC 8002D4EC 1400B18F */  lw         $s1, 0x14($sp)
/* 1DCF0 8002D4F0 1000B08F */  lw         $s0, 0x10($sp)
/* 1DCF4 8002D4F4 0800E003 */  jr         $ra
/* 1DCF8 8002D4F8 3800BD27 */   addiu     $sp, $sp, 0x38

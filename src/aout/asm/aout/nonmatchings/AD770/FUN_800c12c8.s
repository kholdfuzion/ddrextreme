.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c12c8
/* B1AC8 800C12C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1ACC 800C12CC 1000BFAF */  sw         $ra, 0x10($sp)
/* B1AD0 800C12D0 0000828C */  lw         $v0, ($a0)
/* B1AD4 800C12D4 00000000 */  nop
/* B1AD8 800C12D8 0000438C */  lw         $v1, ($v0)
/* B1ADC 800C12DC 00000000 */  nop
/* B1AE0 800C12E0 0900622C */  sltiu      $v0, $v1, 9
/* B1AE4 800C12E4 45004010 */  beqz       $v0, .L800C13FC
/* B1AE8 800C12E8 21280000 */   addu      $a1, $zero, $zero
/* B1AEC 800C12EC 0180023C */  lui        $v0, %hi(D_800177B4)
/* B1AF0 800C12F0 B4774224 */  addiu      $v0, $v0, %lo(D_800177B4)
/* B1AF4 800C12F4 80180300 */  sll        $v1, $v1, 2
/* B1AF8 800C12F8 21186200 */  addu       $v1, $v1, $v0
/* B1AFC 800C12FC 0000628C */  lw         $v0, ($v1)
/* B1B00 800C1300 00000000 */  nop
/* B1B04 800C1304 08004000 */  jr         $v0
/* B1B08 800C1308 00000000 */   nop
/* B1B0C 800C130C 0000828C */  lw         $v0, ($a0)
/* B1B10 800C1310 00000000 */  nop
/* B1B14 800C1314 0E004494 */  lhu        $a0, 0xe($v0)
/* B1B18 800C1318 2A00030C */  jal        FUN_800c00a8
/* B1B1C 800C131C 00000000 */   nop
/* B1B20 800C1320 01050308 */  j          .L800C1404
/* B1B24 800C1324 FF004330 */   andi      $v1, $v0, 0xff
/* B1B28 800C1328 0000828C */  lw         $v0, ($a0)
/* B1B2C 800C132C 00000000 */  nop
/* B1B30 800C1330 0E004490 */  lbu        $a0, 0xe($v0)
/* B1B34 800C1334 0C004590 */  lbu        $a1, 0xc($v0)
/* B1B38 800C1338 0400468C */  lw         $a2, 4($v0)
/* B1B3C 800C133C E000030C */  jal        FUN_800c0380
/* B1B40 800C1340 00000000 */   nop
/* B1B44 800C1344 01050308 */  j          .L800C1404
/* B1B48 800C1348 FF004330 */   andi      $v1, $v0, 0xff
/* B1B4C 800C134C 0000828C */  lw         $v0, ($a0)
/* B1B50 800C1350 00000000 */  nop
/* B1B54 800C1354 0800438C */  lw         $v1, 8($v0)
/* B1B58 800C1358 0E004490 */  lbu        $a0, 0xe($v0)
/* B1B5C 800C135C 0000658C */  lw         $a1, ($v1)
/* B1B60 800C1360 1601030C */  jal        FUN_800c0458
/* B1B64 800C1364 00000000 */   nop
/* B1B68 800C1368 01050308 */  j          .L800C1404
/* B1B6C 800C136C FF004330 */   andi      $v1, $v0, 0xff
/* B1B70 800C1370 01000524 */  addiu      $a1, $zero, 1
/* B1B74 800C1374 0000828C */  lw         $v0, ($a0)
/* B1B78 800C1378 2120A000 */  addu       $a0, $a1, $zero
/* B1B7C 800C137C 0E004594 */  lhu        $a1, 0xe($v0)
/* B1B80 800C1380 0C004694 */  lhu        $a2, 0xc($v0)
/* B1B84 800C1384 0800478C */  lw         $a3, 8($v0)
/* B1B88 800C1388 6A01030C */  jal        FUN_800c05a8
/* B1B8C 800C138C 00000000 */   nop
/* B1B90 800C1390 01050308 */  j          .L800C1404
/* B1B94 800C1394 FF004330 */   andi      $v1, $v0, 0xff
/* B1B98 800C1398 0000828C */  lw         $v0, ($a0)
/* B1B9C 800C139C 00000000 */  nop
/* B1BA0 800C13A0 0E004490 */  lbu        $a0, 0xe($v0)
/* B1BA4 800C13A4 0800458C */  lw         $a1, 8($v0)
/* B1BA8 800C13A8 5F02030C */  jal        FUN_800c097c
/* B1BAC 800C13AC 00000000 */   nop
/* B1BB0 800C13B0 01050308 */  j          .L800C1404
/* B1BB4 800C13B4 FF004330 */   andi      $v1, $v0, 0xff
/* B1BB8 800C13B8 01000524 */  addiu      $a1, $zero, 1
/* B1BBC 800C13BC 0000828C */  lw         $v0, ($a0)
/* B1BC0 800C13C0 2120A000 */  addu       $a0, $a1, $zero
/* B1BC4 800C13C4 0E004594 */  lhu        $a1, 0xe($v0)
/* B1BC8 800C13C8 0C004694 */  lhu        $a2, 0xc($v0)
/* B1BCC 800C13CC 0800478C */  lw         $a3, 8($v0)
/* B1BD0 800C13D0 B902030C */  jal        FUN_800c0ae4
/* B1BD4 800C13D4 00000000 */   nop
/* B1BD8 800C13D8 01050308 */  j          .L800C1404
/* B1BDC 800C13DC FF004330 */   andi      $v1, $v0, 0xff
/* B1BE0 800C13E0 0000828C */  lw         $v0, ($a0)
/* B1BE4 800C13E4 00000000 */  nop
/* B1BE8 800C13E8 0400448C */  lw         $a0, 4($v0)
/* B1BEC 800C13EC E302030C */  jal        FUN_800c0b8c
/* B1BF0 800C13F0 00000000 */   nop
/* B1BF4 800C13F4 01050308 */  j          .L800C1404
/* B1BF8 800C13F8 FF004330 */   andi      $v1, $v0, 0xff
.L800C13FC:
/* B1BFC 800C13FC 07050308 */  j          .L800C141C
/* B1C00 800C1400 FFFF0224 */   addiu     $v0, $zero, -1
.L800C1404:
/* B1C04 800C1404 FEFF0224 */  addiu      $v0, $zero, -2
/* B1C08 800C1408 04006210 */  beq        $v1, $v0, .L800C141C
/* B1C0C 800C140C 00000000 */   nop
/* B1C10 800C1410 02006014 */  bnez       $v1, .L800C141C
/* B1C14 800C1414 FFFF0224 */   addiu     $v0, $zero, -1
/* B1C18 800C1418 21100000 */  addu       $v0, $zero, $zero
.L800C141C:
/* B1C1C 800C141C 1000BF8F */  lw         $ra, 0x10($sp)
/* B1C20 800C1420 00000000 */  nop
/* B1C24 800C1424 0800E003 */  jr         $ra
/* B1C28 800C1428 1800BD27 */   addiu     $sp, $sp, 0x18

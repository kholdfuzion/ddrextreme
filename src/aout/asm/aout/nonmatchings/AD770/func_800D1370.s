.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D1370
/* C1B70 800D1370 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* C1B74 800D1374 21388000 */  addu       $a3, $a0, $zero
/* C1B78 800D1378 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C1B7C 800D137C 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C1B80 800D1380 10BD5324 */  addiu      $s3, $v0, %lo(D_801FBD10)
/* C1B84 800D1384 3000BFAF */  sw         $ra, 0x30($sp)
/* C1B88 800D1388 2800B2AF */  sw         $s2, 0x28($sp)
/* C1B8C 800D138C 2400B1AF */  sw         $s1, 0x24($sp)
/* C1B90 800D1390 2000B0AF */  sw         $s0, 0x20($sp)
/* C1B94 800D1394 DF116392 */  lbu        $v1, 0x11df($s3)
/* C1B98 800D1398 00000000 */  nop
/* C1B9C 800D139C 35006014 */  bnez       $v1, .L800D1474
/* C1BA0 800D13A0 2130A000 */   addu      $a2, $a1, $zero
/* C1BA4 800D13A4 C7016392 */  lbu        $v1, 0x1c7($s3)
/* C1BA8 800D13A8 00000000 */  nop
/* C1BAC 800D13AC 2A106700 */  slt        $v0, $v1, $a3
/* C1BB0 800D13B0 31004014 */  bnez       $v0, .L800D1478
/* C1BB4 800D13B4 FBFF0224 */   addiu     $v0, $zero, -5
/* C1BB8 800D13B8 2A106600 */  slt        $v0, $v1, $a2
/* C1BBC 800D13BC 2E004014 */  bnez       $v0, .L800D1478
/* C1BC0 800D13C0 FBFF0224 */   addiu     $v0, $zero, -5
/* C1BC4 800D13C4 1000B227 */  addiu      $s2, $sp, 0x10
/* C1BC8 800D13C8 21204002 */  addu       $a0, $s2, $zero
/* C1BCC 800D13CC 21280000 */  addu       $a1, $zero, $zero
/* C1BD0 800D13D0 80180700 */  sll        $v1, $a3, 2
/* C1BD4 800D13D4 0100C224 */  addiu      $v0, $a2, 1
/* C1BD8 800D13D8 80100200 */  sll        $v0, $v0, 2
/* C1BDC 800D13DC 21105300 */  addu       $v0, $v0, $s3
/* C1BE0 800D13E0 21187300 */  addu       $v1, $v1, $s3
/* C1BE4 800D13E4 0C000624 */  addiu      $a2, $zero, 0xc
/* C1BE8 800D13E8 0000508C */  lw         $s0, ($v0)
/* C1BEC 800D13EC 0000718C */  lw         $s1, ($v1)
/* C1BF0 800D13F0 F6A2000C */  jal        memset
/* C1BF4 800D13F4 FFFF1026 */   addiu     $s0, $s0, -1
/* C1BF8 800D13F8 21200000 */  addu       $a0, $zero, $zero
/* C1BFC 800D13FC 21284002 */  addu       $a1, $s2, $zero
/* C1C00 800D1400 A5000224 */  addiu      $v0, $zero, 0xa5
/* C1C04 800D1404 1000A2A3 */  sb         $v0, 0x10($sp)
/* C1C08 800D1408 02161100 */  srl        $v0, $s1, 0x18
/* C1C0C 800D140C 021C1100 */  srl        $v1, $s1, 0x10
/* C1C10 800D1410 1200A2A3 */  sb         $v0, 0x12($sp)
/* C1C14 800D1414 02121100 */  srl        $v0, $s1, 8
/* C1C18 800D1418 23801102 */  subu       $s0, $s0, $s1
/* C1C1C 800D141C 1400A2A3 */  sb         $v0, 0x14($sp)
/* C1C20 800D1420 02161000 */  srl        $v0, $s0, 0x18
/* C1C24 800D1424 1300A3A3 */  sb         $v1, 0x13($sp)
/* C1C28 800D1428 021C1000 */  srl        $v1, $s0, 0x10
/* C1C2C 800D142C 1600A2A3 */  sb         $v0, 0x16($sp)
/* C1C30 800D1430 02121000 */  srl        $v0, $s0, 8
/* C1C34 800D1434 1800A2A3 */  sb         $v0, 0x18($sp)
/* C1C38 800D1438 01000224 */  addiu      $v0, $zero, 1
/* C1C3C 800D143C 1100A0A3 */  sb         $zero, 0x11($sp)
/* C1C40 800D1440 1500B1A3 */  sb         $s1, 0x15($sp)
/* C1C44 800D1444 1700A3A3 */  sb         $v1, 0x17($sp)
/* C1C48 800D1448 1900B0A3 */  sb         $s0, 0x19($sp)
/* C1C4C 800D144C 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C1C50 800D1450 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C1C54 800D1454 DF1162A2 */  sb         $v0, 0x11df($s3)
/* C1C58 800D1458 E01160AE */  sw         $zero, 0x11e0($s3)
/* C1C5C 800D145C E41160AE */  sw         $zero, 0x11e4($s3)
/* C1C60 800D1460 E81160AE */  sw         $zero, 0x11e8($s3)
/* C1C64 800D1464 AC41030C */  jal        FUN_800d06b0
/* C1C68 800D1468 00000000 */   nop
/* C1C6C 800D146C 1E450308 */  j          .L800D1478
/* C1C70 800D1470 00000000 */   nop
.L800D1474:
/* C1C74 800D1474 FBFF0224 */  addiu      $v0, $zero, -5
.L800D1478:
/* C1C78 800D1478 3000BF8F */  lw         $ra, 0x30($sp)
/* C1C7C 800D147C 2C00B38F */  lw         $s3, 0x2c($sp)
/* C1C80 800D1480 2800B28F */  lw         $s2, 0x28($sp)
/* C1C84 800D1484 2400B18F */  lw         $s1, 0x24($sp)
/* C1C88 800D1488 2000B08F */  lw         $s0, 0x20($sp)
/* C1C8C 800D148C 0800E003 */  jr         $ra
/* C1C90 800D1490 3800BD27 */   addiu     $sp, $sp, 0x38

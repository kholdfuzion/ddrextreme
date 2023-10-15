.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D0C74
/* C1474 800D0C74 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C1478 800D0C78 3800B6AF */  sw         $s6, 0x38($sp)
/* C147C 800D0C7C 21B08000 */  addu       $s6, $a0, $zero
/* C1480 800D0C80 21200000 */  addu       $a0, $zero, $zero
/* C1484 800D0C84 A8000224 */  addiu      $v0, $zero, 0xa8
/* C1488 800D0C88 1000A2A3 */  sb         $v0, 0x10($sp)
/* C148C 800D0C8C 02160500 */  srl        $v0, $a1, 0x18
/* C1490 800D0C90 021C0500 */  srl        $v1, $a1, 0x10
/* C1494 800D0C94 1200A2A3 */  sb         $v0, 0x12($sp)
/* C1498 800D0C98 02120500 */  srl        $v0, $a1, 8
/* C149C 800D0C9C 1400A2A3 */  sb         $v0, 0x14($sp)
/* C14A0 800D0CA0 02160700 */  srl        $v0, $a3, 0x18
/* C14A4 800D0CA4 1300A3A3 */  sb         $v1, 0x13($sp)
/* C14A8 800D0CA8 021C0700 */  srl        $v1, $a3, 0x10
/* C14AC 800D0CAC 1600A2A3 */  sb         $v0, 0x16($sp)
/* C14B0 800D0CB0 02120700 */  srl        $v0, $a3, 8
/* C14B4 800D0CB4 2000B0AF */  sw         $s0, 0x20($sp)
/* C14B8 800D0CB8 2080103C */  lui        $s0, %hi(D_801FBD10)
/* C14BC 800D0CBC 2800B2AF */  sw         $s2, 0x28($sp)
/* C14C0 800D0CC0 10BD1226 */  addiu      $s2, $s0, %lo(D_801FBD10)
/* C14C4 800D0CC4 1800A2A3 */  sb         $v0, 0x18($sp)
/* C14C8 800D0CC8 02000224 */  addiu      $v0, $zero, 2
/* C14CC 800D0CCC 1900A7A3 */  sb         $a3, 0x19($sp)
/* C14D0 800D0CD0 C03A0700 */  sll        $a3, $a3, 0xb
/* C14D4 800D0CD4 1500A5A3 */  sb         $a1, 0x15($sp)
/* C14D8 800D0CD8 1000A527 */  addiu      $a1, $sp, 0x10
/* C14DC 800D0CDC 3C00BFAF */  sw         $ra, 0x3c($sp)
/* C14E0 800D0CE0 3400B5AF */  sw         $s5, 0x34($sp)
/* C14E4 800D0CE4 3000B4AF */  sw         $s4, 0x30($sp)
/* C14E8 800D0CE8 2C00B3AF */  sw         $s3, 0x2c($sp)
/* C14EC 800D0CEC 2400B1AF */  sw         $s1, 0x24($sp)
/* C14F0 800D0CF0 1100A0A3 */  sb         $zero, 0x11($sp)
/* C14F4 800D0CF4 1700A3A3 */  sb         $v1, 0x17($sp)
/* C14F8 800D0CF8 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C14FC 800D0CFC 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C1500 800D0D00 DF1142A2 */  sb         $v0, 0x11df($s2)
/* C1504 800D0D04 E01146AE */  sw         $a2, 0x11e0($s2)
/* C1508 800D0D08 E41147AE */  sw         $a3, 0x11e4($s2)
/* C150C 800D0D0C E81140AE */  sw         $zero, 0x11e8($s2)
/* C1510 800D0D10 AC41030C */  jal        FUN_800d06b0
/* C1514 800D0D14 21A80002 */   addu      $s5, $s0, $zero
/* C1518 800D0D18 21884000 */  addu       $s1, $v0, $zero
/* C151C 800D0D1C 4F002016 */  bnez       $s1, .L800D0E5C
/* C1520 800D0D20 00000000 */   nop
/* C1524 800D0D24 CD6B000C */  jal        VSync
/* C1528 800D0D28 FFFF0424 */   addiu     $a0, $zero, -1
/* C152C 800D0D2C E0011424 */  addiu      $s4, $zero, 0x1e0
/* C1530 800D0D30 21804000 */  addu       $s0, $v0, $zero
/* C1534 800D0D34 DF114392 */  lbu        $v1, 0x11df($s2)
/* C1538 800D0D38 03000224 */  addiu      $v0, $zero, 3
/* C153C 800D0D3C 0F006210 */  beq        $v1, $v0, .L800D0D7C
/* C1540 800D0D40 21100000 */   addu      $v0, $zero, $zero
/* C1544 800D0D44 21984002 */  addu       $s3, $s2, $zero
/* C1548 800D0D48 03001224 */  addiu      $s2, $zero, 3
.L800D0D4C:
/* C154C 800D0D4C CD6B000C */  jal        VSync
/* C1550 800D0D50 FFFF0424 */   addiu     $a0, $zero, -1
/* C1554 800D0D54 23105000 */  subu       $v0, $v0, $s0
/* C1558 800D0D58 2A108202 */  slt        $v0, $s4, $v0
/* C155C 800D0D5C 07004014 */  bnez       $v0, .L800D0D7C
/* C1560 800D0D60 FFFF0224 */   addiu     $v0, $zero, -1
/* C1564 800D0D64 4A70000C */  jal        FUN_8001c128
/* C1568 800D0D68 00000000 */   nop
/* C156C 800D0D6C DF116292 */  lbu        $v0, 0x11df($s3)
/* C1570 800D0D70 00000000 */  nop
/* C1574 800D0D74 F5FF5214 */  bne        $v0, $s2, .L800D0D4C
/* C1578 800D0D78 21100000 */   addu      $v0, $zero, $zero
.L800D0D7C:
/* C157C 800D0D7C 37004014 */  bnez       $v0, .L800D0E5C
/* C1580 800D0D80 FFFF0224 */   addiu     $v0, $zero, -1
/* C1584 800D0D84 10BDB026 */  addiu      $s0, $s5, -0x42f0
/* C1588 800D0D88 E811028E */  lw         $v0, 0x11e8($s0)
/* C158C 800D0D8C 00000000 */  nop
/* C1590 800D0D90 04004010 */  beqz       $v0, .L800D0DA4
/* C1594 800D0D94 00000000 */   nop
/* C1598 800D0D98 E811028E */  lw         $v0, 0x11e8($s0)
/* C159C 800D0D9C 97430308 */  j          .L800D0E5C
/* C15A0 800D0DA0 00000000 */   nop
.L800D0DA4:
/* C15A4 800D0DA4 D8110292 */  lbu        $v0, 0x11d8($s0)
/* C15A8 800D0DA8 00000000 */  nop
/* C15AC 800D0DAC 01004230 */  andi       $v0, $v0, 1
/* C15B0 800D0DB0 2A004010 */  beqz       $v0, .L800D0E5C
/* C15B4 800D0DB4 21100000 */   addu      $v0, $zero, $zero
/* C15B8 800D0DB8 CB40030C */  jal        FUN_800d032c
/* C15BC 800D0DBC 2120C002 */   addu      $a0, $s6, $zero
/* C15C0 800D0DC0 26004014 */  bnez       $v0, .L800D0E5C
/* C15C4 800D0DC4 00000000 */   nop
/* C15C8 800D0DC8 FFFF0224 */  addiu      $v0, $zero, -1
/* C15CC 800D0DCC 09002212 */  beq        $s1, $v0, .L800D0DF4
/* C15D0 800D0DD0 FAFF0224 */   addiu     $v0, $zero, -6
/* C15D4 800D0DD4 07002212 */  beq        $s1, $v0, .L800D0DF4
/* C15D8 800D0DD8 F8FF0224 */   addiu     $v0, $zero, -8
/* C15DC 800D0DDC 05002212 */  beq        $s1, $v0, .L800D0DF4
/* C15E0 800D0DE0 F7FF0224 */   addiu     $v0, $zero, -9
/* C15E4 800D0DE4 03002212 */  beq        $s1, $v0, .L800D0DF4
/* C15E8 800D0DE8 F6FF0224 */   addiu     $v0, $zero, -0xa
/* C15EC 800D0DEC 03002216 */  bne        $s1, $v0, .L800D0DFC
/* C15F0 800D0DF0 03000224 */   addiu     $v0, $zero, 3
.L800D0DF4:
/* C15F4 800D0DF4 97430308 */  j          .L800D0E5C
/* C15F8 800D0DF8 21102002 */   addu      $v0, $s1, $zero
.L800D0DFC:
/* C15FC 800D0DFC 96011092 */  lbu        $s0, 0x196($s0)
/* C1600 800D0E00 00000000 */  nop
/* C1604 800D0E04 10000212 */  beq        $s0, $v0, .L800D0E48
/* C1608 800D0E08 0400022A */   slti      $v0, $s0, 4
/* C160C 800D0E0C 05004010 */  beqz       $v0, .L800D0E24
/* C1610 800D0E10 02000224 */   addiu     $v0, $zero, 2
/* C1614 800D0E14 0A000212 */  beq        $s0, $v0, .L800D0E40
/* C1618 800D0E18 FAFF0224 */   addiu     $v0, $zero, -6
/* C161C 800D0E1C 97430308 */  j          .L800D0E5C
/* C1620 800D0E20 00000000 */   nop
.L800D0E24:
/* C1624 800D0E24 04000224 */  addiu      $v0, $zero, 4
/* C1628 800D0E28 09000212 */  beq        $s0, $v0, .L800D0E50
/* C162C 800D0E2C 05000224 */   addiu     $v0, $zero, 5
/* C1630 800D0E30 09000212 */  beq        $s0, $v0, .L800D0E58
/* C1634 800D0E34 FAFF0224 */   addiu     $v0, $zero, -6
/* C1638 800D0E38 97430308 */  j          .L800D0E5C
/* C163C 800D0E3C 00000000 */   nop
.L800D0E40:
/* C1640 800D0E40 97430308 */  j          .L800D0E5C
/* C1644 800D0E44 FEFF0224 */   addiu     $v0, $zero, -2
.L800D0E48:
/* C1648 800D0E48 97430308 */  j          .L800D0E5C
/* C164C 800D0E4C FDFF0224 */   addiu     $v0, $zero, -3
.L800D0E50:
/* C1650 800D0E50 97430308 */  j          .L800D0E5C
/* C1654 800D0E54 FCFF0224 */   addiu     $v0, $zero, -4
.L800D0E58:
/* C1658 800D0E58 FBFF0224 */  addiu      $v0, $zero, -5
.L800D0E5C:
/* C165C 800D0E5C 3C00BF8F */  lw         $ra, 0x3c($sp)
/* C1660 800D0E60 3800B68F */  lw         $s6, 0x38($sp)
/* C1664 800D0E64 3400B58F */  lw         $s5, 0x34($sp)
/* C1668 800D0E68 3000B48F */  lw         $s4, 0x30($sp)
/* C166C 800D0E6C 2C00B38F */  lw         $s3, 0x2c($sp)
/* C1670 800D0E70 2800B28F */  lw         $s2, 0x28($sp)
/* C1674 800D0E74 2400B18F */  lw         $s1, 0x24($sp)
/* C1678 800D0E78 2000B08F */  lw         $s0, 0x20($sp)
/* C167C 800D0E7C 0800E003 */  jr         $ra
/* C1680 800D0E80 4000BD27 */   addiu     $sp, $sp, 0x40

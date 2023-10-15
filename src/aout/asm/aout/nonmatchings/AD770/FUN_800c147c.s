.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c147c
/* B1C7C 800C147C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B1C80 800C1480 21200000 */  addu       $a0, $zero, $zero
/* B1C84 800C1484 2400BFAF */  sw         $ra, 0x24($sp)
/* B1C88 800C1488 2000B4AF */  sw         $s4, 0x20($sp)
/* B1C8C 800C148C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B1C90 800C1490 1800B2AF */  sw         $s2, 0x18($sp)
/* B1C94 800C1494 1400B1AF */  sw         $s1, 0x14($sp)
/* B1C98 800C1498 74EF020C */  jal        FUN_800bbdd0
/* B1C9C 800C149C 1000B0AF */   sw        $s0, 0x10($sp)
/* B1CA0 800C14A0 01000424 */  addiu      $a0, $zero, 1
/* B1CA4 800C14A4 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B1CA8 800C14A8 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B1CAC 800C14AC B471428C */  lw         $v0, 0x71b4($v0)
/* B1CB0 800C14B0 CD6B000C */  jal        VSync
/* B1CB4 800C14B4 00000000 */   nop
/* B1CB8 800C14B8 21804000 */  addu       $s0, $v0, $zero
.L800C14BC:
/* B1CBC 800C14BC CD6B000C */  jal        VSync
/* B1CC0 800C14C0 01000424 */   addiu     $a0, $zero, 1
/* B1CC4 800C14C4 23105000 */  subu       $v0, $v0, $s0
/* B1CC8 800C14C8 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1CCC 800C14CC 02004228 */  slti       $v0, $v0, 2
/* B1CD0 800C14D0 FAFF4014 */  bnez       $v0, .L800C14BC
/* B1CD4 800C14D4 00000000 */   nop
/* B1CD8 800C14D8 74EF020C */  jal        FUN_800bbdd0
/* B1CDC 800C14DC 01000424 */   addiu     $a0, $zero, 1
/* B1CE0 800C14E0 01000424 */  addiu      $a0, $zero, 1
/* B1CE4 800C14E4 1F80023C */  lui        $v0, %hi(D_801F71B4)
/* B1CE8 800C14E8 B47140AC */  sw         $zero, %lo(D_801F71B4)($v0)
/* B1CEC 800C14EC B471428C */  lw         $v0, 0x71b4($v0)
/* B1CF0 800C14F0 CD6B000C */  jal        VSync
/* B1CF4 800C14F4 00000000 */   nop
/* B1CF8 800C14F8 21804000 */  addu       $s0, $v0, $zero
.L800C14FC:
/* B1CFC 800C14FC CD6B000C */  jal        VSync
/* B1D00 800C1500 01000424 */   addiu     $a0, $zero, 1
/* B1D04 800C1504 23105000 */  subu       $v0, $v0, $s0
/* B1D08 800C1508 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1D0C 800C150C 02004228 */  slti       $v0, $v0, 2
/* B1D10 800C1510 FAFF4014 */  bnez       $v0, .L800C14FC
/* B1D14 800C1514 00000000 */   nop
/* B1D18 800C1518 CD6B000C */  jal        VSync
/* B1D1C 800C151C 01000424 */   addiu     $a0, $zero, 1
/* B1D20 800C1520 21804000 */  addu       $s0, $v0, $zero
/* B1D24 800C1524 401F123C */  lui        $s2, 0x1f40
/* B1D28 800C1528 0C001124 */  addiu      $s1, $zero, 0xc
.L800C152C:
/* B1D2C 800C152C CD6B000C */  jal        VSync
/* B1D30 800C1530 01000424 */   addiu     $a0, $zero, 1
/* B1D34 800C1534 04004396 */  lhu        $v1, 4($s2)
/* B1D38 800C1538 00000000 */  nop
/* B1D3C 800C153C 02190300 */  srl        $v1, $v1, 4
/* B1D40 800C1540 0F006330 */  andi       $v1, $v1, 0xf
/* B1D44 800C1544 07007110 */  beq        $v1, $s1, .L800C1564
/* B1D48 800C1548 23105000 */   subu      $v0, $v0, $s0
/* B1D4C 800C154C FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1D50 800C1550 0600422C */  sltiu      $v0, $v0, 6
/* B1D54 800C1554 F5FF4014 */  bnez       $v0, .L800C152C
/* B1D58 800C1558 FFFF0224 */   addiu     $v0, $zero, -1
/* B1D5C 800C155C 76050308 */  j          .L800C15D8
/* B1D60 800C1560 00000000 */   nop
.L800C1564:
/* B1D64 800C1564 CD6B000C */  jal        VSync
/* B1D68 800C1568 01000424 */   addiu     $a0, $zero, 1
/* B1D6C 800C156C 401F043C */  lui        $a0, 0x1f40
/* B1D70 800C1570 06008394 */  lhu        $v1, 6($a0)
/* B1D74 800C1574 00000000 */  nop
/* B1D78 800C1578 10006330 */  andi       $v1, $v1, 0x10
/* B1D7C 800C157C 15006010 */  beqz       $v1, .L800C15D4
/* B1D80 800C1580 21804000 */   addu      $s0, $v0, $zero
/* B1D84 800C1584 521F143C */  lui        $s4, 0x1f52
/* B1D88 800C1588 FFFF1334 */  ori        $s3, $zero, 0xffff
/* B1D8C 800C158C 1F80113C */  lui        $s1, %hi(D_801F71B4)
/* B1D90 800C1590 21908000 */  addu       $s2, $a0, $zero
/* B1D94 800C1594 01000424 */  addiu      $a0, $zero, 1
.L800C1598:
/* B1D98 800C1598 000093A6 */  sh         $s3, ($s4)
/* B1D9C 800C159C B47120AE */  sw         $zero, %lo(D_801F71B4)($s1)
/* B1DA0 800C15A0 B471228E */  lw         $v0, 0x71b4($s1)
/* B1DA4 800C15A4 CD6B000C */  jal        VSync
/* B1DA8 800C15A8 00000000 */   nop
/* B1DAC 800C15AC 23105000 */  subu       $v0, $v0, $s0
/* B1DB0 800C15B0 FFFF4230 */  andi       $v0, $v0, 0xffff
/* B1DB4 800C15B4 0600422C */  sltiu      $v0, $v0, 6
/* B1DB8 800C15B8 07004010 */  beqz       $v0, .L800C15D8
/* B1DBC 800C15BC FFFF0224 */   addiu     $v0, $zero, -1
/* B1DC0 800C15C0 06004296 */  lhu        $v0, 6($s2)
/* B1DC4 800C15C4 00000000 */  nop
/* B1DC8 800C15C8 10004230 */  andi       $v0, $v0, 0x10
/* B1DCC 800C15CC F2FF4014 */  bnez       $v0, .L800C1598
/* B1DD0 800C15D0 01000424 */   addiu     $a0, $zero, 1
.L800C15D4:
/* B1DD4 800C15D4 21100000 */  addu       $v0, $zero, $zero
.L800C15D8:
/* B1DD8 800C15D8 2400BF8F */  lw         $ra, 0x24($sp)
/* B1DDC 800C15DC 2000B48F */  lw         $s4, 0x20($sp)
/* B1DE0 800C15E0 1C00B38F */  lw         $s3, 0x1c($sp)
/* B1DE4 800C15E4 1800B28F */  lw         $s2, 0x18($sp)
/* B1DE8 800C15E8 1400B18F */  lw         $s1, 0x14($sp)
/* B1DEC 800C15EC 1000B08F */  lw         $s0, 0x10($sp)
/* B1DF0 800C15F0 0800E003 */  jr         $ra
/* B1DF4 800C15F4 2800BD27 */   addiu     $sp, $sp, 0x28

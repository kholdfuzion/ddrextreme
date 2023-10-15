.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800af490
/* 9FC90 800AF490 20FFBD27 */  addiu      $sp, $sp, -0xe0
/* 9FC94 800AF494 D000B6AF */  sw         $s6, 0xd0($sp)
/* 9FC98 800AF498 21B08000 */  addu       $s6, $a0, $zero
/* 9FC9C 800AF49C BC00B1AF */  sw         $s1, 0xbc($sp)
/* 9FCA0 800AF4A0 1D80113C */  lui        $s1, %hi(D_801D0048)
/* 9FCA4 800AF4A4 B800B0AF */  sw         $s0, 0xb8($sp)
/* 9FCA8 800AF4A8 48003026 */  addiu      $s0, $s1, %lo(D_801D0048)
/* 9FCAC 800AF4AC 21200002 */  addu       $a0, $s0, $zero
/* 9FCB0 800AF4B0 C400B3AF */  sw         $s3, 0xc4($sp)
/* 9FCB4 800AF4B4 2198A000 */  addu       $s3, $a1, $zero
/* 9FCB8 800AF4B8 21280000 */  addu       $a1, $zero, $zero
/* 9FCBC 800AF4BC C000B2AF */  sw         $s2, 0xc0($sp)
/* 9FCC0 800AF4C0 2190C000 */  addu       $s2, $a2, $zero
/* 9FCC4 800AF4C4 CC00B5AF */  sw         $s5, 0xcc($sp)
/* 9FCC8 800AF4C8 F000B58F */  lw         $s5, 0xf0($sp)
/* 9FCCC 800AF4CC 48000624 */  addiu      $a2, $zero, 0x48
/* 9FCD0 800AF4D0 C800B4AF */  sw         $s4, 0xc8($sp)
/* 9FCD4 800AF4D4 21A0E000 */  addu       $s4, $a3, $zero
/* 9FCD8 800AF4D8 DC00BFAF */  sw         $ra, 0xdc($sp)
/* 9FCDC 800AF4DC D800BEAF */  sw         $fp, 0xd8($sp)
/* 9FCE0 800AF4E0 F6A2000C */  jal        memset
/* 9FCE4 800AF4E4 D400B7AF */   sw        $s7, 0xd4($sp)
/* 9FCE8 800AF4E8 480020A2 */  sb         $zero, 0x48($s1)
/* 9FCEC 800AF4EC 040012AE */  sw         $s2, 4($s0)
/* 9FCF0 800AF4F0 FFFF1224 */  addiu      $s2, $zero, -1
/* 9FCF4 800AF4F4 FFFF0234 */  ori        $v0, $zero, 0xffff
/* 9FCF8 800AF4F8 010016A2 */  sb         $s6, 1($s0)
/* 9FCFC 800AF4FC 080013A6 */  sh         $s3, 8($s0)
/* 9FD00 800AF500 140012AE */  sw         $s2, 0x14($s0)
/* 9FD04 800AF504 0C0012AE */  sw         $s2, 0xc($s0)
/* 9FD08 800AF508 0A0000A2 */  sb         $zero, 0xa($s0)
/* 9FD0C 800AF50C 0B0000A2 */  sb         $zero, 0xb($s0)
/* 9FD10 800AF510 100012AE */  sw         $s2, 0x10($s0)
/* 9FD14 800AF514 180000AE */  sw         $zero, 0x18($s0)
/* 9FD18 800AF518 400014AE */  sw         $s4, 0x40($s0)
/* 9FD1C 800AF51C 2A0002A6 */  sh         $v0, 0x2a($s0)
/* 9FD20 800AF520 56BA020C */  jal        FUN_800ae958
/* 9FD24 800AF524 440015AE */   sw        $s5, 0x44($s0)
/* 9FD28 800AF528 04000496 */  lhu        $a0, 4($s0)
/* 9FD2C 800AF52C BDEF020C */  jal        FUN_800bbef4
/* 9FD30 800AF530 00000000 */   nop
/* 9FD34 800AF534 08000492 */  lbu        $a0, 8($s0)
/* 9FD38 800AF538 B8C1020C */  jal        FUN_800b06e0
/* 9FD3C 800AF53C 00000000 */   nop
/* 9FD40 800AF540 4B01C016 */  bnez       $s6, .L800AFA70
/* 9FD44 800AF544 21100000 */   addu      $v0, $zero, $zero
/* 9FD48 800AF548 B000A0AF */  sw         $zero, 0xb0($sp)
/* 9FD4C 800AF54C 1800A427 */  addiu      $a0, $sp, 0x18
/* 9FD50 800AF550 0180053C */  lui        $a1, %hi(D_80016FE8)
/* 9FD54 800AF554 7347030C */  jal        FUN_800d1dcc
/* 9FD58 800AF558 E86FA524 */   addiu     $a1, $a1, %lo(D_80016FE8)
/* 9FD5C 800AF55C 09004014 */  bnez       $v0, .L800AF584
/* 9FD60 800AF560 0180043C */   lui       $a0, 0x8001
/* 9FD64 800AF564 1000B2AF */  sw         $s2, 0x10($sp)
/* 9FD68 800AF568 0180043C */  lui        $a0, %hi(D_80016FF8)
/* 9FD6C 800AF56C F86F8424 */  addiu      $a0, $a0, %lo(D_80016FF8)
/* 9FD70 800AF570 01000524 */  addiu      $a1, $zero, 1
/* 9FD74 800AF574 21300000 */  addu       $a2, $zero, $zero
/* 9FD78 800AF578 27F3020C */  jal        HardWareError_800bcc9c
/* 9FD7C 800AF57C FFFF0724 */   addiu     $a3, $zero, -1
/* 9FD80 800AF580 0180043C */  lui        $a0, %hi(D_80017004)
.L800AF584:
/* 9FD84 800AF584 04708424 */  addiu      $a0, $a0, %lo(D_80017004)
/* 9FD88 800AF588 2380053C */  lui        $a1, 0x8023
/* 9FD8C 800AF58C DDB3000C */  jal        decodefile_8002cf74
/* 9FD90 800AF590 0080A534 */   ori       $a1, $a1, 0x8000
/* 9FD94 800AF594 7CAA000C */  jal        vsync_8002a9f0
/* 9FD98 800AF598 21900000 */   addu      $s2, $zero, $zero
/* 9FD9C 800AF59C 2380043C */  lui        $a0, 0x8023
/* 9FDA0 800AF5A0 00808434 */  ori        $a0, $a0, 0x8000
/* 9FDA4 800AF5A4 1D80063C */  lui        $a2, %hi(D_801CC948)
/* 9FDA8 800AF5A8 48C9C524 */  addiu      $a1, $a2, %lo(D_801CC948)
.L800AF5AC:
/* 9FDAC 800AF5AC 0000828C */  lw         $v0, ($a0)
/* 9FDB0 800AF5B0 00000000 */  nop
/* 9FDB4 800AF5B4 0000A2AC */  sw         $v0, ($a1)
/* 9FDB8 800AF5B8 0400838C */  lw         $v1, 4($a0)
/* 9FDBC 800AF5BC 00000000 */  nop
/* 9FDC0 800AF5C0 0400A3AC */  sw         $v1, 4($a1)
/* 9FDC4 800AF5C4 0800828C */  lw         $v0, 8($a0)
/* 9FDC8 800AF5C8 00000000 */  nop
/* 9FDCC 800AF5CC 0800A2AC */  sw         $v0, 8($a1)
/* 9FDD0 800AF5D0 0C00838C */  lw         $v1, 0xc($a0)
/* 9FDD4 800AF5D4 00000000 */  nop
/* 9FDD8 800AF5D8 0C00A3AC */  sw         $v1, 0xc($a1)
/* 9FDDC 800AF5DC 1000828C */  lw         $v0, 0x10($a0)
/* 9FDE0 800AF5E0 00000000 */  nop
/* 9FDE4 800AF5E4 1000A2AC */  sw         $v0, 0x10($a1)
/* 9FDE8 800AF5E8 1400838C */  lw         $v1, 0x14($a0)
/* 9FDEC 800AF5EC 0500A290 */  lbu        $v0, 5($a1)
/* 9FDF0 800AF5F0 00000000 */  nop
/* 9FDF4 800AF5F4 06004010 */  beqz       $v0, .L800AF610
/* 9FDF8 800AF5F8 1400A3AC */   sw        $v1, 0x14($a1)
/* 9FDFC 800AF5FC 18008424 */  addiu      $a0, $a0, 0x18
/* 9FE00 800AF600 01005226 */  addiu      $s2, $s2, 1
/* 9FE04 800AF604 F401422A */  slti       $v0, $s2, 0x1f4
/* 9FE08 800AF608 E8FF4014 */  bnez       $v0, .L800AF5AC
/* 9FE0C 800AF60C 1800A524 */   addiu     $a1, $a1, 0x18
.L800AF610:
/* 9FE10 800AF610 21900000 */  addu       $s2, $zero, $zero
/* 9FE14 800AF614 48C9C324 */  addiu      $v1, $a2, -0x36b8
/* 9FE18 800AF618 05006290 */  lbu        $v0, 5($v1)
/* 9FE1C 800AF61C 00000000 */  nop
/* 9FE20 800AF620 BA004010 */  beqz       $v0, .L800AF90C
/* 9FE24 800AF624 0A001524 */   addiu     $s5, $zero, 0xa
/* 9FE28 800AF628 21F06000 */  addu       $fp, $v1, $zero
.L800AF62C:
/* 9FE2C 800AF62C 7CAA000C */  jal        vsync_8002a9f0
/* 9FE30 800AF630 00000000 */   nop
/* 9FE34 800AF634 40281200 */  sll        $a1, $s2, 1
/* 9FE38 800AF638 2110B200 */  addu       $v0, $a1, $s2
/* 9FE3C 800AF63C C0300200 */  sll        $a2, $v0, 3
/* 9FE40 800AF640 2118DE00 */  addu       $v1, $a2, $fp
/* 9FE44 800AF644 0F006480 */  lb         $a0, 0xf($v1)
/* 9FE48 800AF648 01000224 */  addiu      $v0, $zero, 1
/* 9FE4C 800AF64C 43008214 */  bne        $a0, $v0, .L800AF75C
/* 9FE50 800AF650 2198A000 */   addu      $s3, $a1, $zero
/* 9FE54 800AF654 FFFF4732 */  andi       $a3, $s2, 0xffff
/* 9FE58 800AF658 A000A927 */  addiu      $t1, $sp, 0xa0
/* 9FE5C 800AF65C 21300000 */  addu       $a2, $zero, $zero
/* 9FE60 800AF660 01004226 */  addiu      $v0, $s2, 1
/* 9FE64 800AF664 FEFF0834 */  ori        $t0, $zero, 0xfffe
/* 9FE68 800AF668 B400A2AF */  sw         $v0, 0xb4($sp)
/* 9FE6C 800AF66C 0180023C */  lui        $v0, %hi(D_80016EC4)
/* 9FE70 800AF670 C46E4324 */  addiu      $v1, $v0, %lo(D_80016EC4)
/* 9FE74 800AF674 1D800A3C */  lui        $t2, %hi(D_801CC948)
/* 9FE78 800AF678 48C94A25 */  addiu      $t2, $t2, %lo(D_801CC948)
/* 9FE7C 800AF67C C46E448C */  lw         $a0, 0x6ec4($v0)
/* 9FE80 800AF680 0400658C */  lw         $a1, 4($v1)
/* 9FE84 800AF684 0800628C */  lw         $v0, 8($v1)
/* 9FE88 800AF688 05004325 */  addiu      $v1, $t2, 5
/* 9FE8C 800AF68C A000A4AF */  sw         $a0, 0xa0($sp)
/* 9FE90 800AF690 A400A5AF */  sw         $a1, 0xa4($sp)
/* 9FE94 800AF694 A800A2AF */  sw         $v0, 0xa8($sp)
.L800AF698:
/* 9FE98 800AF698 00006290 */  lbu        $v0, ($v1)
/* 9FE9C 800AF69C 00000000 */  nop
/* 9FEA0 800AF6A0 06004010 */  beqz       $v0, .L800AF6BC
/* 9FEA4 800AF6A4 2110C000 */   addu      $v0, $a2, $zero
/* 9FEA8 800AF6A8 0100C624 */  addiu      $a2, $a2, 1
/* 9FEAC 800AF6AC 2A100601 */  slt        $v0, $t0, $a2
/* 9FEB0 800AF6B0 F9FF4010 */  beqz       $v0, .L800AF698
/* 9FEB4 800AF6B4 18006324 */   addiu     $v1, $v1, 0x18
/* 9FEB8 800AF6B8 21100000 */  addu       $v0, $zero, $zero
.L800AF6BC:
/* 9FEBC 800AF6BC 2A10E200 */  slt        $v0, $a3, $v0
/* 9FEC0 800AF6C0 03004014 */  bnez       $v0, .L800AF6D0
/* 9FEC4 800AF6C4 40800700 */   sll       $s0, $a3, 1
/* 9FEC8 800AF6C8 C8BD0208 */  j          .L800AF720
/* 9FECC 800AF6CC 21200000 */   addu      $a0, $zero, $zero
.L800AF6D0:
/* 9FED0 800AF6D0 21800702 */  addu       $s0, $s0, $a3
/* 9FED4 800AF6D4 C0801000 */  sll        $s0, $s0, 3
/* 9FED8 800AF6D8 21181E02 */  addu       $v1, $s0, $fp
/* 9FEDC 800AF6DC 0F006280 */  lb         $v0, 0xf($v1)
/* 9FEE0 800AF6E0 00000000 */  nop
/* 9FEE4 800AF6E4 80100200 */  sll        $v0, $v0, 2
/* 9FEE8 800AF6E8 21102201 */  addu       $v0, $t1, $v0
/* 9FEEC 800AF6EC 0000458C */  lw         $a1, ($v0)
/* 9FEF0 800AF6F0 057C000C */  jal        strcpy
/* 9FEF4 800AF6F4 2000A427 */   addiu     $a0, $sp, 0x20
/* 9FEF8 800AF6F8 2000A427 */  addiu      $a0, $sp, 0x20
/* 9FEFC 800AF6FC 1D80023C */  lui        $v0, %hi(D_801CC94D)
/* 9FF00 800AF700 4DC94224 */  addiu      $v0, $v0, %lo(D_801CC94D)
/* 9FF04 800AF704 3F71000C */  jal        FUN_8001c4fc
/* 9FF08 800AF708 21280202 */   addu      $a1, $s0, $v0
/* 9FF0C 800AF70C 2000A427 */  addiu      $a0, $sp, 0x20
/* 9FF10 800AF710 0180033C */  lui        $v1, %hi(D_80016ED0)
/* 9FF14 800AF714 3F71000C */  jal        FUN_8001c4fc
/* 9FF18 800AF718 D06E6524 */   addiu     $a1, $v1, %lo(D_80016ED0)
/* 9FF1C 800AF71C 2000A427 */  addiu      $a0, $sp, 0x20
.L800AF720:
/* 9FF20 800AF720 21307202 */  addu       $a2, $s3, $s2
/* 9FF24 800AF724 C0300600 */  sll        $a2, $a2, 3
/* 9FF28 800AF728 1D80053C */  lui        $a1, %hi(D_801CC958)
/* 9FF2C 800AF72C 58C9A524 */  addiu      $a1, $a1, %lo(D_801CC958)
/* 9FF30 800AF730 2180C500 */  addu       $s0, $a2, $a1
/* 9FF34 800AF734 21280002 */  addu       $a1, $s0, $zero
/* 9FF38 800AF738 1D800A3C */  lui        $t2, %hi(D_801CC95C)
/* 9FF3C 800AF73C 5CC94A25 */  addiu      $t2, $t2, %lo(D_801CC95C)
/* 9FF40 800AF740 F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 9FF44 800AF744 2130CA00 */   addu      $a2, $a2, $t2
/* 9FF48 800AF748 0000038E */  lw         $v1, ($s0)
/* 9FF4C 800AF74C 00000000 */  nop
/* 9FF50 800AF750 C01A0300 */  sll        $v1, $v1, 0xb
/* 9FF54 800AF754 37BE0208 */  j          .L800AF8DC
/* 9FF58 800AF758 000003AE */   sw        $v1, ($s0)
.L800AF75C:
/* 9FF5C 800AF75C 01004226 */  addiu      $v0, $s2, 1
/* 9FF60 800AF760 B400A2AF */  sw         $v0, 0xb4($sp)
/* 9FF64 800AF764 A000B727 */  addiu      $s7, $sp, 0xa0
/* 9FF68 800AF768 0180033C */  lui        $v1, %hi(D_80016EC4)
/* 9FF6C 800AF76C C46E7624 */  addiu      $s6, $v1, %lo(D_80016EC4)
/* 9FF70 800AF770 1D80053C */  lui        $a1, %hi(D_801CC948)
/* 9FF74 800AF774 48C9B324 */  addiu      $s3, $a1, %lo(D_801CC948)
/* 9FF78 800AF778 21A0C000 */  addu       $s4, $a2, $zero
/* 9FF7C 800AF77C 14006226 */  addiu      $v0, $s3, 0x14
/* 9FF80 800AF780 21888202 */  addu       $s1, $s4, $v0
/* 9FF84 800AF784 FFFF5032 */  andi       $s0, $s2, 0xffff
/* 9FF88 800AF788 40101000 */  sll        $v0, $s0, 1
/* 9FF8C 800AF78C 21105000 */  addu       $v0, $v0, $s0
/* 9FF90 800AF790 C0900200 */  sll        $s2, $v0, 3
/* 9FF94 800AF794 21300000 */  addu       $a2, $zero, $zero
.L800AF798:
/* 9FF98 800AF798 01800A3C */  lui        $t2, %hi(D_80016EC4)
/* 9FF9C 800AF79C C46E428D */  lw         $v0, %lo(D_80016EC4)($t2)
/* 9FFA0 800AF7A0 0400C38E */  lw         $v1, 4($s6)
/* 9FFA4 800AF7A4 0800C48E */  lw         $a0, 8($s6)
/* 9FFA8 800AF7A8 05006526 */  addiu      $a1, $s3, 5
/* 9FFAC 800AF7AC A000A2AF */  sw         $v0, 0xa0($sp)
/* 9FFB0 800AF7B0 A400A3AF */  sw         $v1, 0xa4($sp)
/* 9FFB4 800AF7B4 A800A4AF */  sw         $a0, 0xa8($sp)
.L800AF7B8:
/* 9FFB8 800AF7B8 0000A290 */  lbu        $v0, ($a1)
/* 9FFBC 800AF7BC 00000000 */  nop
/* 9FFC0 800AF7C0 0B004010 */  beqz       $v0, .L800AF7F0
/* 9FFC4 800AF7C4 FEFF0334 */   ori       $v1, $zero, 0xfffe
/* 9FFC8 800AF7C8 0100C624 */  addiu      $a2, $a2, 1
/* 9FFCC 800AF7CC 2A106600 */  slt        $v0, $v1, $a2
/* 9FFD0 800AF7D0 F9FF4010 */  beqz       $v0, .L800AF7B8
/* 9FFD4 800AF7D4 1800A524 */   addiu     $a1, $a1, 0x18
/* 9FFD8 800AF7D8 21100000 */  addu       $v0, $zero, $zero
.L800AF7DC:
/* 9FFDC 800AF7DC 2A100202 */  slt        $v0, $s0, $v0
/* 9FFE0 800AF7E0 05004014 */  bnez       $v0, .L800AF7F8
/* 9FFE4 800AF7E4 21185302 */   addu      $v1, $s2, $s3
/* 9FFE8 800AF7E8 0FBE0208 */  j          .L800AF83C
/* 9FFEC 800AF7EC 21280000 */   addu      $a1, $zero, $zero
.L800AF7F0:
/* 9FFF0 800AF7F0 F7BD0208 */  j          .L800AF7DC
/* 9FFF4 800AF7F4 2110C000 */   addu      $v0, $a2, $zero
.L800AF7F8:
/* 9FFF8 800AF7F8 0F006280 */  lb         $v0, 0xf($v1)
/* 9FFFC 800AF7FC 00000000 */  nop
/* A0000 800AF800 80100200 */  sll        $v0, $v0, 2
/* A0004 800AF804 2110E202 */  addu       $v0, $s7, $v0
/* A0008 800AF808 0000458C */  lw         $a1, ($v0)
/* A000C 800AF80C 057C000C */  jal        strcpy
/* A0010 800AF810 2000A427 */   addiu     $a0, $sp, 0x20
/* A0014 800AF814 2000A427 */  addiu      $a0, $sp, 0x20
/* A0018 800AF818 1D80063C */  lui        $a2, %hi(D_801CC94D)
/* A001C 800AF81C 4DC9C624 */  addiu      $a2, $a2, %lo(D_801CC94D)
/* A0020 800AF820 3F71000C */  jal        FUN_8001c4fc
/* A0024 800AF824 21284602 */   addu      $a1, $s2, $a2
/* A0028 800AF828 2000A427 */  addiu      $a0, $sp, 0x20
/* A002C 800AF82C 01800A3C */  lui        $t2, %hi(D_80016ED0)
/* A0030 800AF830 3F71000C */  jal        FUN_8001c4fc
/* A0034 800AF834 D06E4525 */   addiu     $a1, $t2, %lo(D_80016ED0)
/* A0038 800AF838 2000A527 */  addiu      $a1, $sp, 0x20
.L800AF83C:
/* A003C 800AF83C 7347030C */  jal        FUN_800d1dcc
/* A0040 800AF840 1800A427 */   addiu     $a0, $sp, 0x18
/* A0044 800AF844 21184000 */  addu       $v1, $v0, $zero
/* A0048 800AF848 0E006014 */  bnez       $v1, .L800AF884
/* A004C 800AF84C 1D80053C */   lui       $a1, %hi(D_801CC958)
/* A0050 800AF850 58C9A524 */  addiu      $a1, $a1, %lo(D_801CC958)
/* A0054 800AF854 1800A28F */  lw         $v0, 0x18($sp)
/* A0058 800AF858 1C00A48F */  lw         $a0, 0x1c($sp)
/* A005C 800AF85C 21188502 */  addu       $v1, $s4, $a1
/* A0060 800AF860 000062AC */  sw         $v0, ($v1)
/* A0064 800AF864 000024AE */  sw         $a0, ($s1)
/* A0068 800AF868 B000A68F */  lw         $a2, 0xb0($sp)
/* A006C 800AF86C 00000000 */  nop
/* A0070 800AF870 2B10C400 */  sltu       $v0, $a2, $a0
/* A0074 800AF874 19004010 */  beqz       $v0, .L800AF8DC
/* A0078 800AF878 00000000 */   nop
/* A007C 800AF87C 37BE0208 */  j          .L800AF8DC
/* A0080 800AF880 B000A4AF */   sw        $a0, 0xb0($sp)
.L800AF884:
/* A0084 800AF884 FFFFB526 */  addiu      $s5, $s5, -1
/* A0088 800AF888 C3FFA016 */  bnez       $s5, .L800AF798
/* A008C 800AF88C 21300000 */   addu      $a2, $zero, $zero
/* A0090 800AF890 F4FF0224 */  addiu      $v0, $zero, -0xc
/* A0094 800AF894 08006214 */  bne        $v1, $v0, .L800AF8B8
/* A0098 800AF898 00000000 */   nop
/* A009C 800AF89C 09C8020C */  jal        FUN_800b2024
/* A00A0 800AF8A0 00000000 */   nop
/* A00A4 800AF8A4 0180043C */  lui        $a0, %hi(D_8001701C)
/* A00A8 800AF8A8 1C708424 */  addiu      $a0, $a0, %lo(D_8001701C)
/* A00AC 800AF8AC 21284000 */  addu       $a1, $v0, $zero
/* A00B0 800AF8B0 58AA000C */  jal        error_8002a960
/* A00B4 800AF8B4 01000624 */   addiu     $a2, $zero, 1
.L800AF8B8:
/* A00B8 800AF8B8 09C8020C */  jal        FUN_800b2024
/* A00BC 800AF8BC 00000000 */   nop
/* A00C0 800AF8C0 0180043C */  lui        $a0, %hi(D_80017034)
/* A00C4 800AF8C4 34708424 */  addiu      $a0, $a0, %lo(D_80017034)
/* A00C8 800AF8C8 21284000 */  addu       $a1, $v0, $zero
/* A00CC 800AF8CC 58AA000C */  jal        error_8002a960
/* A00D0 800AF8D0 01000624 */   addiu     $a2, $zero, 1
/* A00D4 800AF8D4 E6BD0208 */  j          .L800AF798
/* A00D8 800AF8D8 21300000 */   addu      $a2, $zero, $zero
.L800AF8DC:
/* A00DC 800AF8DC B400B28F */  lw         $s2, 0xb4($sp)
/* A00E0 800AF8E0 FEFF0234 */  ori        $v0, $zero, 0xfffe
/* A00E4 800AF8E4 2A105200 */  slt        $v0, $v0, $s2
/* A00E8 800AF8E8 08004014 */  bnez       $v0, .L800AF90C
/* A00EC 800AF8EC 40101200 */   sll       $v0, $s2, 1
/* A00F0 800AF8F0 21105200 */  addu       $v0, $v0, $s2
/* A00F4 800AF8F4 C0100200 */  sll        $v0, $v0, 3
/* A00F8 800AF8F8 21105E00 */  addu       $v0, $v0, $fp
/* A00FC 800AF8FC 05004390 */  lbu        $v1, 5($v0)
/* A0100 800AF900 00000000 */  nop
/* A0104 800AF904 49FF6014 */  bnez       $v1, .L800AF62C
/* A0108 800AF908 0A001524 */   addiu     $s5, $zero, 0xa
.L800AF90C:
/* A010C 800AF90C FFFF0534 */  ori        $a1, $zero, 0xffff
/* A0110 800AF910 B000AA8F */  lw         $t2, 0xb0($sp)
/* A0114 800AF914 2B010424 */  addiu      $a0, $zero, 0x12b
/* A0118 800AF918 FF034225 */  addiu      $v0, $t2, 0x3ff
/* A011C 800AF91C 82120200 */  srl        $v0, $v0, 0xa
/* A0120 800AF920 80120200 */  sll        $v0, $v0, 0xa
/* A0124 800AF924 B000A2AF */  sw         $v0, 0xb0($sp)
/* A0128 800AF928 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A012C 800AF92C B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
/* A0130 800AF930 B000A68F */  lw         $a2, 0xb0($sp)
/* A0134 800AF934 1D80023C */  lui        $v0, %hi(D_801D10B0)
/* A0138 800AF938 B01046AC */  sw         $a2, %lo(D_801D10B0)($v0)
/* A013C 800AF93C B0104224 */  addiu      $v0, $v0, 0x10b0
/* A0140 800AF940 040046AC */  sw         $a2, 4($v0)
.L800AF944:
/* A0144 800AF944 070060A0 */  sb         $zero, 7($v1)
/* A0148 800AF948 000065A4 */  sh         $a1, ($v1)
/* A014C 800AF94C 020060A4 */  sh         $zero, 2($v1)
/* A0150 800AF950 040060A4 */  sh         $zero, 4($v1)
/* A0154 800AF954 060060A0 */  sb         $zero, 6($v1)
/* A0158 800AF958 080060AC */  sw         $zero, 8($v1)
/* A015C 800AF95C 0C0060AC */  sw         $zero, 0xc($v1)
/* A0160 800AF960 FFFF8424 */  addiu      $a0, $a0, -1
/* A0164 800AF964 F7FF8104 */  bgez       $a0, .L800AF944
/* A0168 800AF968 10006324 */   addiu     $v1, $v1, 0x10
/* A016C 800AF96C 51C1020C */  jal        FUN_800b0544
/* A0170 800AF970 00000000 */   nop
/* A0174 800AF974 1D6E000C */  jal        FUN_8001b874
/* A0178 800AF978 00000000 */   nop
/* A017C 800AF97C C3C2020C */  jal        FUN_800b0b0c
/* A0180 800AF980 00000000 */   nop
/* A0184 800AF984 0B80043C */  lui        $a0, %hi(func_800B0A98)
/* A0188 800AF988 980A8424 */  addiu      $a0, $a0, %lo(func_800B0A98)
/* A018C 800AF98C 1D80053C */  lui        $a1, %hi(D_801D0034)
/* A0190 800AF990 3400A524 */  addiu      $a1, $a1, %lo(D_801D0034)
/* A0194 800AF994 BBC2020C */  jal        OpenTh
/* A0198 800AF998 21304000 */   addu      $a2, $v0, $zero
/* A019C 800AF99C 1D800A3C */  lui        $t2, %hi(D_801CF828)
/* A01A0 800AF9A0 216E000C */  jal        FUN_8001b884
/* A01A4 800AF9A4 28F842AD */   sw        $v0, %lo(D_801CF828)($t2)
/* A01A8 800AF9A8 1D80023C */  lui        $v0, %hi(D_801CF828)
/* A01AC 800AF9AC 28F8438C */  lw         $v1, %lo(D_801CF828)($v0)
/* A01B0 800AF9B0 FFFF0224 */  addiu      $v0, $zero, -1
/* A01B4 800AF9B4 0A006210 */  beq        $v1, $v0, .L800AF9E0
/* A01B8 800AF9B8 FFFF0524 */   addiu     $a1, $zero, -1
/* A01BC 800AF9BC 21280000 */  addu       $a1, $zero, $zero
/* A01C0 800AF9C0 FFFF6330 */  andi       $v1, $v1, 0xffff
/* A01C4 800AF9C4 40100300 */  sll        $v0, $v1, 1
/* A01C8 800AF9C8 21104300 */  addu       $v0, $v0, $v1
/* A01CC 800AF9CC 80110200 */  sll        $v0, $v0, 6
/* A01D0 800AF9D0 1001048C */  lw         $a0, 0x110($zero)
/* A01D4 800AF9D4 04040324 */  addiu      $v1, $zero, 0x404
/* A01D8 800AF9D8 21104400 */  addu       $v0, $v0, $a0
/* A01DC 800AF9DC 940043AC */  sw         $v1, 0x94($v0)
.L800AF9E0:
/* A01E0 800AF9E0 FFFF1024 */  addiu      $s0, $zero, -1
/* A01E4 800AF9E4 2200B010 */  beq        $a1, $s0, .L800AFA70
/* A01E8 800AF9E8 FFFF0224 */   addiu     $v0, $zero, -1
/* A01EC 800AF9EC 1D6E000C */  jal        FUN_8001b874
/* A01F0 800AF9F0 00000000 */   nop
/* A01F4 800AF9F4 00F3043C */  lui        $a0, 0xf300
/* A01F8 800AF9F8 00018434 */  ori        $a0, $a0, 0x100
/* A01FC 800AF9FC 21280000 */  addu       $a1, $zero, $zero
/* A0200 800AFA00 00200624 */  addiu      $a2, $zero, 0x2000
/* A0204 800AFA04 2DBB000C */  jal        OpenEvent
/* A0208 800AFA08 21380000 */   addu      $a3, $zero, $zero
/* A020C 800AFA0C 00F3043C */  lui        $a0, 0xf300
/* A0210 800AFA10 00028434 */  ori        $a0, $a0, 0x200
/* A0214 800AFA14 01000524 */  addiu      $a1, $zero, 1
/* A0218 800AFA18 00200624 */  addiu      $a2, $zero, 0x2000
/* A021C 800AFA1C 21380000 */  addu       $a3, $zero, $zero
/* A0220 800AFA20 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0224 800AFA24 48007124 */  addiu      $s1, $v1, %lo(D_801D0048)
/* A0228 800AFA28 2DBB000C */  jal        OpenEvent
/* A022C 800AFA2C 380022AE */   sw        $v0, 0x38($s1)
/* A0230 800AFA30 216E000C */  jal        FUN_8001b884
/* A0234 800AFA34 3C0022AE */   sw        $v0, 0x3c($s1)
/* A0238 800AFA38 3800248E */  lw         $a0, 0x38($s1)
/* A023C 800AFA3C 00000000 */  nop
/* A0240 800AFA40 0B009010 */  beq        $a0, $s0, .L800AFA70
/* A0244 800AFA44 FFFF0224 */   addiu     $v0, $zero, -1
/* A0248 800AFA48 3C00228E */  lw         $v0, 0x3c($s1)
/* A024C 800AFA4C 00000000 */  nop
/* A0250 800AFA50 07005010 */  beq        $v0, $s0, .L800AFA70
/* A0254 800AFA54 FFFF0224 */   addiu     $v0, $zero, -1
/* A0258 800AFA58 31BB000C */  jal        EnableEvent
/* A025C 800AFA5C 00000000 */   nop
/* A0260 800AFA60 3C00248E */  lw         $a0, 0x3c($s1)
/* A0264 800AFA64 31BB000C */  jal        EnableEvent
/* A0268 800AFA68 00000000 */   nop
/* A026C 800AFA6C 21100000 */  addu       $v0, $zero, $zero
.L800AFA70:
/* A0270 800AFA70 DC00BF8F */  lw         $ra, 0xdc($sp)
/* A0274 800AFA74 D800BE8F */  lw         $fp, 0xd8($sp)
/* A0278 800AFA78 D400B78F */  lw         $s7, 0xd4($sp)
/* A027C 800AFA7C D000B68F */  lw         $s6, 0xd0($sp)
/* A0280 800AFA80 CC00B58F */  lw         $s5, 0xcc($sp)
/* A0284 800AFA84 C800B48F */  lw         $s4, 0xc8($sp)
/* A0288 800AFA88 C400B38F */  lw         $s3, 0xc4($sp)
/* A028C 800AFA8C C000B28F */  lw         $s2, 0xc0($sp)
/* A0290 800AFA90 BC00B18F */  lw         $s1, 0xbc($sp)
/* A0294 800AFA94 B800B08F */  lw         $s0, 0xb8($sp)
/* A0298 800AFA98 0800E003 */  jr         $ra
/* A029C 800AFA9C E000BD27 */   addiu     $sp, $sp, 0xe0

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007fbac
/* 703AC 8007FBAC C8FEBD27 */  addiu      $sp, $sp, -0x138
/* 703B0 8007FBB0 2C01B7AF */  sw         $s7, 0x12c($sp)
/* 703B4 8007FBB4 21B8A000 */  addu       $s7, $a1, $zero
/* 703B8 8007FBB8 0180023C */  lui        $v0, %hi(D_800159B0)
/* 703BC 8007FBBC 1801B2AF */  sw         $s2, 0x118($sp)
/* 703C0 8007FBC0 5401B28F */  lw         $s2, 0x154($sp)
/* 703C4 8007FBC4 B0594524 */  addiu      $a1, $v0, %lo(D_800159B0)
/* 703C8 8007FBC8 1001B0AF */  sw         $s0, 0x110($sp)
/* 703CC 8007FBCC 5801B08F */  lw         $s0, 0x158($sp)
/* 703D0 8007FBD0 5C01A28F */  lw         $v0, 0x15c($sp)
/* 703D4 8007FBD4 2401B5AF */  sw         $s5, 0x124($sp)
/* 703D8 8007FBD8 21A8C000 */  addu       $s5, $a2, $zero
/* 703DC 8007FBDC 3001BEAF */  sw         $fp, 0x130($sp)
/* 703E0 8007FBE0 6001BE8F */  lw         $fp, 0x160($sp)
/* 703E4 8007FBE4 2000A627 */  addiu      $a2, $sp, 0x20
/* 703E8 8007FBE8 4401A7AF */  sw         $a3, 0x144($sp)
/* 703EC 8007FBEC F000A724 */  addiu      $a3, $a1, 0xf0
/* 703F0 8007FBF0 3401BFAF */  sw         $ra, 0x134($sp)
/* 703F4 8007FBF4 2801B6AF */  sw         $s6, 0x128($sp)
/* 703F8 8007FBF8 2001B4AF */  sw         $s4, 0x120($sp)
/* 703FC 8007FBFC 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 70400 8007FC00 1401B1AF */  sw         $s1, 0x114($sp)
/* 70404 8007FC04 40100200 */  sll        $v0, $v0, 1
/* 70408 8007FC08 21208200 */  addu       $a0, $a0, $v0
/* 7040C 8007FC0C 54098384 */  lh         $v1, 0x954($a0)
.L8007FC10:
/* 70410 8007FC10 0000A88C */  lw         $t0, ($a1)
/* 70414 8007FC14 0400A98C */  lw         $t1, 4($a1)
/* 70418 8007FC18 0800AA8C */  lw         $t2, 8($a1)
/* 7041C 8007FC1C 0C00AB8C */  lw         $t3, 0xc($a1)
/* 70420 8007FC20 0000C8AC */  sw         $t0, ($a2)
/* 70424 8007FC24 0400C9AC */  sw         $t1, 4($a2)
/* 70428 8007FC28 0800CAAC */  sw         $t2, 8($a2)
/* 7042C 8007FC2C 0C00CBAC */  sw         $t3, 0xc($a2)
/* 70430 8007FC30 1000A524 */  addiu      $a1, $a1, 0x10
/* 70434 8007FC34 F6FFA714 */  bne        $a1, $a3, .L8007FC10
/* 70438 8007FC38 1000C624 */   addiu     $a2, $a2, 0x10
/* 7043C 8007FC3C A200C013 */  beqz       $fp, .L8007FEC8
/* 70440 8007FC40 23000224 */   addiu     $v0, $zero, 0x23
/* 70444 8007FC44 03006214 */  bne        $v1, $v0, .L8007FC54
/* 70448 8007FC48 BFFF6324 */   addiu     $v1, $v1, -0x41
/* 7044C 8007FC4C 5B000324 */  addiu      $v1, $zero, 0x5b
/* 70450 8007FC50 BFFF6324 */  addiu      $v1, $v1, -0x41
.L8007FC54:
/* 70454 8007FC54 1380043C */  lui        $a0, 0x8013
/* 70458 8007FC58 40100300 */  sll        $v0, $v1, 1
/* 7045C 8007FC5C 21104300 */  addu       $v0, $v0, $v1
/* 70460 8007FC60 80100200 */  sll        $v0, $v0, 2
/* 70464 8007FC64 2000A527 */  addiu      $a1, $sp, 0x20
/* 70468 8007FC68 2128A200 */  addu       $a1, $a1, $v0
/* 7046C 8007FC6C 0000A28C */  lw         $v0, ($a1)
/* 70470 8007FC70 E0808424 */  addiu      $a0, $a0, -0x7f20
/* 70474 8007FC74 21104400 */  addu       $v0, $v0, $a0
/* 70478 8007FC78 00004290 */  lbu        $v0, ($v0)
/* 7047C 8007FC7C 0400A48C */  lw         $a0, 4($a1)
/* 70480 8007FC80 C0180200 */  sll        $v1, $v0, 3
/* 70484 8007FC84 23186200 */  subu       $v1, $v1, $v0
/* 70488 8007FC88 80180300 */  sll        $v1, $v1, 2
/* 7048C 8007FC8C 1380023C */  lui        $v0, %hi(D_801282E0)
/* 70490 8007FC90 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 70494 8007FC94 21B06200 */  addu       $s6, $v1, $v0
/* 70498 8007FC98 0400D386 */  lh         $s3, 4($s6)
/* 7049C 8007FC9C 0600C386 */  lh         $v1, 6($s6)
/* 704A0 8007FCA0 0800A28C */  lw         $v0, 8($a1)
/* 704A4 8007FCA4 00000000 */  nop
/* 704A8 8007FCA8 21186200 */  addu       $v1, $v1, $v0
/* 704AC 8007FCAC 80010224 */  addiu      $v0, $zero, 0x180
/* 704B0 8007FCB0 3F008214 */  bne        $a0, $v0, .L8007FDB0
/* 704B4 8007FCB4 21886402 */   addu      $s1, $s3, $a0
/* 704B8 8007FCB8 2120E002 */  addu       $a0, $s7, $zero
/* 704BC 8007FCBC 2128A002 */  addu       $a1, $s5, $zero
/* 704C0 8007FCC0 21302002 */  addu       $a2, $s1, $zero
/* 704C4 8007FCC4 21A07200 */  addu       $s4, $v1, $s2
/* 704C8 8007FCC8 21388002 */  addu       $a3, $s4, $zero
/* 704CC 8007FCCC 7F000224 */  addiu      $v0, $zero, 0x7f
/* 704D0 8007FCD0 20001026 */  addiu      $s0, $s0, 0x20
/* 704D4 8007FCD4 1000A2AF */  sw         $v0, 0x10($sp)
/* 704D8 8007FCD8 1400B0AF */  sw         $s0, 0x14($sp)
/* 704DC 8007FCDC 0C00C286 */  lh         $v0, 0xc($s6)
/* 704E0 8007FCE0 FFFF0824 */  addiu      $t0, $zero, -1
/* 704E4 8007FCE4 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 704E8 8007FCE8 1769010C */  jal        FUN_8005a45c
/* 704EC 8007FCEC 1800A2AF */   sw        $v0, 0x18($sp)
/* 704F0 8007FCF0 2120E002 */  addu       $a0, $s7, $zero
/* 704F4 8007FCF4 1600C686 */  lh         $a2, 0x16($s6)
/* 704F8 8007FCF8 1800C786 */  lh         $a3, 0x18($s6)
/* 704FC 8007FCFC 396D010C */  jal        FUN_8005b4e4
/* 70500 8007FD00 2128A002 */   addu      $a1, $s5, $zero
/* 70504 8007FD04 2120E002 */  addu       $a0, $s7, $zero
/* 70508 8007FD08 2128A002 */  addu       $a1, $s5, $zero
/* 7050C 8007FD0C 4401A98F */  lw         $t1, 0x144($sp)
/* 70510 8007FD10 4801AA8F */  lw         $t2, 0x148($sp)
/* 70514 8007FD14 80000224 */  addiu      $v0, $zero, 0x80
/* 70518 8007FD18 1000A2AF */  sw         $v0, 0x10($sp)
/* 7051C 8007FD1C 1400B0AF */  sw         $s0, 0x14($sp)
/* 70520 8007FD20 18002625 */  addiu      $a2, $t1, 0x18
/* 70524 8007FD24 21905201 */  addu       $s2, $t2, $s2
/* 70528 8007FD28 976D010C */  jal        FUN_8005b65c
/* 7052C 8007FD2C 21384002 */   addu      $a3, $s2, $zero
/* 70530 8007FD30 2120E002 */  addu       $a0, $s7, $zero
/* 70534 8007FD34 2128A002 */  addu       $a1, $s5, $zero
/* 70538 8007FD38 2130C003 */  addu       $a2, $fp, $zero
/* 7053C 8007FD3C 2138C003 */  addu       $a3, $fp, $zero
/* 70540 8007FD40 EB6C010C */  jal        FUN_8005b3ac
/* 70544 8007FD44 1000BEAF */   sw        $fp, 0x10($sp)
/* 70548 8007FD48 0100B526 */  addiu      $s5, $s5, 1
/* 7054C 8007FD4C 2120E002 */  addu       $a0, $s7, $zero
/* 70550 8007FD50 2128A002 */  addu       $a1, $s5, $zero
/* 70554 8007FD54 00026626 */  addiu      $a2, $s3, 0x200
/* 70558 8007FD58 40001124 */  addiu      $s1, $zero, 0x40
/* 7055C 8007FD5C 21388002 */  addu       $a3, $s4, $zero
/* 70560 8007FD60 1000B1AF */  sw         $s1, 0x10($sp)
/* 70564 8007FD64 1400B0AF */  sw         $s0, 0x14($sp)
/* 70568 8007FD68 0C00C286 */  lh         $v0, 0xc($s6)
/* 7056C 8007FD6C FFFF0B24 */  addiu      $t3, $zero, -1
/* 70570 8007FD70 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 70574 8007FD74 1769010C */  jal        FUN_8005a45c
/* 70578 8007FD78 1800A2AF */   sw        $v0, 0x18($sp)
/* 7057C 8007FD7C 2120E002 */  addu       $a0, $s7, $zero
/* 70580 8007FD80 1600C686 */  lh         $a2, 0x16($s6)
/* 70584 8007FD84 1800C786 */  lh         $a3, 0x18($s6)
/* 70588 8007FD88 396D010C */  jal        FUN_8005b4e4
/* 7058C 8007FD8C 2128A002 */   addu      $a1, $s5, $zero
/* 70590 8007FD90 2120E002 */  addu       $a0, $s7, $zero
/* 70594 8007FD94 2128A002 */  addu       $a1, $s5, $zero
/* 70598 8007FD98 4401A88F */  lw         $t0, 0x144($sp)
/* 7059C 8007FD9C 21384002 */  addu       $a3, $s2, $zero
/* 705A0 8007FDA0 1000B1AF */  sw         $s1, 0x10($sp)
/* 705A4 8007FDA4 1400B0AF */  sw         $s0, 0x14($sp)
/* 705A8 8007FDA8 A9FF0108 */  j          .L8007FEA4
/* 705AC 8007FDAC 98000625 */   addiu     $a2, $t0, 0x98
.L8007FDB0:
/* 705B0 8007FDB0 2120E002 */  addu       $a0, $s7, $zero
/* 705B4 8007FDB4 2128A002 */  addu       $a1, $s5, $zero
/* 705B8 8007FDB8 21302002 */  addu       $a2, $s1, $zero
/* 705BC 8007FDBC 21A07200 */  addu       $s4, $v1, $s2
/* 705C0 8007FDC0 21388002 */  addu       $a3, $s4, $zero
/* 705C4 8007FDC4 3F000224 */  addiu      $v0, $zero, 0x3f
/* 705C8 8007FDC8 20001026 */  addiu      $s0, $s0, 0x20
/* 705CC 8007FDCC 1000A2AF */  sw         $v0, 0x10($sp)
/* 705D0 8007FDD0 1400B0AF */  sw         $s0, 0x14($sp)
/* 705D4 8007FDD4 0C00C286 */  lh         $v0, 0xc($s6)
/* 705D8 8007FDD8 FFFF0924 */  addiu      $t1, $zero, -1
/* 705DC 8007FDDC 1C00A9AF */  sw         $t1, 0x1c($sp)
/* 705E0 8007FDE0 1769010C */  jal        FUN_8005a45c
/* 705E4 8007FDE4 1800A2AF */   sw        $v0, 0x18($sp)
/* 705E8 8007FDE8 2120E002 */  addu       $a0, $s7, $zero
/* 705EC 8007FDEC 1600C686 */  lh         $a2, 0x16($s6)
/* 705F0 8007FDF0 1800C786 */  lh         $a3, 0x18($s6)
/* 705F4 8007FDF4 396D010C */  jal        FUN_8005b4e4
/* 705F8 8007FDF8 2128A002 */   addu      $a1, $s5, $zero
/* 705FC 8007FDFC 2120E002 */  addu       $a0, $s7, $zero
/* 70600 8007FE00 2128A002 */  addu       $a1, $s5, $zero
/* 70604 8007FE04 4401AA8F */  lw         $t2, 0x144($sp)
/* 70608 8007FE08 4801AB8F */  lw         $t3, 0x148($sp)
/* 7060C 8007FE0C 40000224 */  addiu      $v0, $zero, 0x40
/* 70610 8007FE10 1000A2AF */  sw         $v0, 0x10($sp)
/* 70614 8007FE14 1400B0AF */  sw         $s0, 0x14($sp)
/* 70618 8007FE18 18004625 */  addiu      $a2, $t2, 0x18
/* 7061C 8007FE1C 21907201 */  addu       $s2, $t3, $s2
/* 70620 8007FE20 976D010C */  jal        FUN_8005b65c
/* 70624 8007FE24 21384002 */   addu      $a3, $s2, $zero
/* 70628 8007FE28 2120E002 */  addu       $a0, $s7, $zero
/* 7062C 8007FE2C 2128A002 */  addu       $a1, $s5, $zero
/* 70630 8007FE30 2130C003 */  addu       $a2, $fp, $zero
/* 70634 8007FE34 2138C003 */  addu       $a3, $fp, $zero
/* 70638 8007FE38 EB6C010C */  jal        FUN_8005b3ac
/* 7063C 8007FE3C 1000BEAF */   sw        $fp, 0x10($sp)
/* 70640 8007FE40 0100B526 */  addiu      $s5, $s5, 1
/* 70644 8007FE44 2120E002 */  addu       $a0, $s7, $zero
/* 70648 8007FE48 2128A002 */  addu       $a1, $s5, $zero
/* 7064C 8007FE4C 40002626 */  addiu      $a2, $s1, 0x40
/* 70650 8007FE50 80001124 */  addiu      $s1, $zero, 0x80
/* 70654 8007FE54 21388002 */  addu       $a3, $s4, $zero
/* 70658 8007FE58 1000B1AF */  sw         $s1, 0x10($sp)
/* 7065C 8007FE5C 1400B0AF */  sw         $s0, 0x14($sp)
/* 70660 8007FE60 0C00C286 */  lh         $v0, 0xc($s6)
/* 70664 8007FE64 FFFF0824 */  addiu      $t0, $zero, -1
/* 70668 8007FE68 1C00A8AF */  sw         $t0, 0x1c($sp)
/* 7066C 8007FE6C 1769010C */  jal        FUN_8005a45c
/* 70670 8007FE70 1800A2AF */   sw        $v0, 0x18($sp)
/* 70674 8007FE74 2120E002 */  addu       $a0, $s7, $zero
/* 70678 8007FE78 1600C686 */  lh         $a2, 0x16($s6)
/* 7067C 8007FE7C 1800C786 */  lh         $a3, 0x18($s6)
/* 70680 8007FE80 396D010C */  jal        FUN_8005b4e4
/* 70684 8007FE84 2128A002 */   addu      $a1, $s5, $zero
/* 70688 8007FE88 2120E002 */  addu       $a0, $s7, $zero
/* 7068C 8007FE8C 2128A002 */  addu       $a1, $s5, $zero
/* 70690 8007FE90 4401A98F */  lw         $t1, 0x144($sp)
/* 70694 8007FE94 21384002 */  addu       $a3, $s2, $zero
/* 70698 8007FE98 1000B1AF */  sw         $s1, 0x10($sp)
/* 7069C 8007FE9C 1400B0AF */  sw         $s0, 0x14($sp)
/* 706A0 8007FEA0 58002625 */  addiu      $a2, $t1, 0x58
.L8007FEA4:
/* 706A4 8007FEA4 976D010C */  jal        FUN_8005b65c
/* 706A8 8007FEA8 00000000 */   nop
/* 706AC 8007FEAC 2120E002 */  addu       $a0, $s7, $zero
/* 706B0 8007FEB0 2128A002 */  addu       $a1, $s5, $zero
/* 706B4 8007FEB4 2130C003 */  addu       $a2, $fp, $zero
/* 706B8 8007FEB8 2138C000 */  addu       $a3, $a2, $zero
/* 706BC 8007FEBC EB6C010C */  jal        FUN_8005b3ac
/* 706C0 8007FEC0 1000A6AF */   sw        $a2, 0x10($sp)
/* 706C4 8007FEC4 0100B526 */  addiu      $s5, $s5, 1
.L8007FEC8:
/* 706C8 8007FEC8 2110A002 */  addu       $v0, $s5, $zero
/* 706CC 8007FECC 3401BF8F */  lw         $ra, 0x134($sp)
/* 706D0 8007FED0 3001BE8F */  lw         $fp, 0x130($sp)
/* 706D4 8007FED4 2C01B78F */  lw         $s7, 0x12c($sp)
/* 706D8 8007FED8 2801B68F */  lw         $s6, 0x128($sp)
/* 706DC 8007FEDC 2401B58F */  lw         $s5, 0x124($sp)
/* 706E0 8007FEE0 2001B48F */  lw         $s4, 0x120($sp)
/* 706E4 8007FEE4 1C01B38F */  lw         $s3, 0x11c($sp)
/* 706E8 8007FEE8 1801B28F */  lw         $s2, 0x118($sp)
/* 706EC 8007FEEC 1401B18F */  lw         $s1, 0x114($sp)
/* 706F0 8007FEF0 1001B08F */  lw         $s0, 0x110($sp)
/* 706F4 8007FEF4 0800E003 */  jr         $ra
/* 706F8 8007FEF8 3801BD27 */   addiu     $sp, $sp, 0x138

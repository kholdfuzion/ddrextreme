.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cad10
/* BB510 800CAD10 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BB514 800CAD14 2400B3AF */  sw         $s3, 0x24($sp)
/* BB518 800CAD18 21988000 */  addu       $s3, $a0, $zero
/* BB51C 800CAD1C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BB520 800CAD20 2080113C */  lui        $s1, %hi(D_801FBCA0)
/* BB524 800CAD24 2000B2AF */  sw         $s2, 0x20($sp)
/* BB528 800CAD28 FF007232 */  andi       $s2, $s3, 0xff
/* BB52C 800CAD2C A0BC2396 */  lhu        $v1, %lo(D_801FBCA0)($s1)
/* BB530 800CAD30 C2111200 */  srl        $v0, $s2, 7
/* BB534 800CAD34 1800B0AF */  sw         $s0, 0x18($sp)
/* BB538 800CAD38 6A1F103C */  lui        $s0, 0x1f6a
/* BB53C 800CAD3C FEFF6330 */  andi       $v1, $v1, 0xfffe
/* BB540 800CAD40 25186200 */  or         $v1, $v1, $v0
/* BB544 800CAD44 000003A6 */  sh         $v1, ($s0)
/* BB548 800CAD48 00000296 */  lhu        $v0, ($s0)
/* BB54C 800CAD4C 2800BFAF */  sw         $ra, 0x28($sp)
/* BB550 800CAD50 A0BC23A6 */  sh         $v1, -0x4360($s1)
/* BB554 800CAD54 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB558 800CAD58 6DF0020C */  jal        FUN_800bc1b4
/* BB55C 800CAD5C 01000424 */   addiu     $a0, $zero, 1
/* BB560 800CAD60 21280000 */  addu       $a1, $zero, $zero
/* BB564 800CAD64 07000724 */  addiu      $a3, $zero, 7
/* BB568 800CAD68 FDFF0624 */  addiu      $a2, $zero, -3
/* BB56C 800CAD6C 2310E500 */  subu       $v0, $a3, $a1
.L800CAD70:
/* BB570 800CAD70 07105200 */  srav       $v0, $s2, $v0
/* BB574 800CAD74 A0BC2396 */  lhu        $v1, -0x4360($s1)
/* BB578 800CAD78 01004230 */  andi       $v0, $v0, 1
/* BB57C 800CAD7C FEFF6330 */  andi       $v1, $v1, 0xfffe
/* BB580 800CAD80 25186200 */  or         $v1, $v1, $v0
/* BB584 800CAD84 000003A6 */  sh         $v1, ($s0)
/* BB588 800CAD88 00000296 */  lhu        $v0, ($s0)
/* BB58C 800CAD8C 21200000 */  addu       $a0, $zero, $zero
/* BB590 800CAD90 A0BC23A6 */  sh         $v1, -0x4360($s1)
/* BB594 800CAD94 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB598 800CAD98 FFFF8424 */  addiu      $a0, $a0, -1
.L800CAD9C:
/* BB59C 800CAD9C FFFF8104 */  bgez       $a0, .L800CAD9C
/* BB5A0 800CADA0 FFFF8424 */   addiu     $a0, $a0, -1
/* BB5A4 800CADA4 A0BC2296 */  lhu        $v0, -0x4360($s1)
/* BB5A8 800CADA8 00000000 */  nop
/* BB5AC 800CADAC 02004234 */  ori        $v0, $v0, 2
/* BB5B0 800CADB0 000002A6 */  sh         $v0, ($s0)
/* BB5B4 800CADB4 00000396 */  lhu        $v1, ($s0)
/* BB5B8 800CADB8 21200000 */  addu       $a0, $zero, $zero
/* BB5BC 800CADBC A0BC22A6 */  sh         $v0, -0x4360($s1)
/* BB5C0 800CADC0 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB5C4 800CADC4 FFFF8424 */  addiu      $a0, $a0, -1
.L800CADC8:
/* BB5C8 800CADC8 FFFF8104 */  bgez       $a0, .L800CADC8
/* BB5CC 800CADCC FFFF8424 */   addiu     $a0, $a0, -1
/* BB5D0 800CADD0 01008424 */  addiu      $a0, $a0, 1
/* BB5D4 800CADD4 A0BC2296 */  lhu        $v0, -0x4360($s1)
/* BB5D8 800CADD8 00000000 */  nop
/* BB5DC 800CADDC 24104600 */  and        $v0, $v0, $a2
/* BB5E0 800CADE0 000002A6 */  sh         $v0, ($s0)
/* BB5E4 800CADE4 00000396 */  lhu        $v1, ($s0)
/* BB5E8 800CADE8 0100A524 */  addiu      $a1, $a1, 1
/* BB5EC 800CADEC A0BC22A6 */  sh         $v0, -0x4360($s1)
/* BB5F0 800CADF0 0700A228 */  slti       $v0, $a1, 7
/* BB5F4 800CADF4 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB5F8 800CADF8 DDFF4014 */  bnez       $v0, .L800CAD70
/* BB5FC 800CADFC 2310E500 */   subu      $v0, $a3, $a1
/* BB600 800CAE00 21100000 */  addu       $v0, $zero, $zero
/* BB604 800CAE04 FFFF4224 */  addiu      $v0, $v0, -1
.L800CAE08:
/* BB608 800CAE08 FFFF4104 */  bgez       $v0, .L800CAE08
/* BB60C 800CAE0C FFFF4224 */   addiu     $v0, $v0, -1
/* BB610 800CAE10 FF006432 */  andi       $a0, $s3, 0xff
/* BB614 800CAE14 07000224 */  addiu      $v0, $zero, 7
/* BB618 800CAE18 23104500 */  subu       $v0, $v0, $a1
/* BB61C 800CAE1C 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB620 800CAE20 07204400 */  srav       $a0, $a0, $v0
/* BB624 800CAE24 01008430 */  andi       $a0, $a0, 1
/* BB628 800CAE28 A0BCA394 */  lhu        $v1, %lo(D_801FBCA0)($a1)
/* BB62C 800CAE2C 6A1F023C */  lui        $v0, 0x1f6a
/* BB630 800CAE30 FEFF6330 */  andi       $v1, $v1, 0xfffe
/* BB634 800CAE34 25186400 */  or         $v1, $v1, $a0
/* BB638 800CAE38 000043A4 */  sh         $v1, ($v0)
/* BB63C 800CAE3C 00004294 */  lhu        $v0, ($v0)
/* BB640 800CAE40 21200000 */  addu       $a0, $zero, $zero
/* BB644 800CAE44 A0BCA3A4 */  sh         $v1, -0x4360($a1)
/* BB648 800CAE48 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB64C 800CAE4C FFFF8424 */  addiu      $a0, $a0, -1
.L800CAE50:
/* BB650 800CAE50 FFFF8104 */  bgez       $a0, .L800CAE50
/* BB654 800CAE54 FFFF8424 */   addiu     $a0, $a0, -1
/* BB658 800CAE58 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB65C 800CAE5C A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB660 800CAE60 6A1F033C */  lui        $v1, 0x1f6a
/* BB664 800CAE64 02004234 */  ori        $v0, $v0, 2
/* BB668 800CAE68 000062A4 */  sh         $v0, ($v1)
/* BB66C 800CAE6C 00006394 */  lhu        $v1, ($v1)
/* BB670 800CAE70 21280000 */  addu       $a1, $zero, $zero
/* BB674 800CAE74 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB678 800CAE78 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB67C 800CAE7C FFFFA524 */  addiu      $a1, $a1, -1
.L800CAE80:
/* BB680 800CAE80 FFFFA104 */  bgez       $a1, .L800CAE80
/* BB684 800CAE84 FFFFA524 */   addiu     $a1, $a1, -1
/* BB688 800CAE88 2080063C */  lui        $a2, %hi(D_801FBCA0)
/* BB68C 800CAE8C 1E80073C */  lui        $a3, %hi(D_801E179A)
/* BB690 800CAE90 6A1F033C */  lui        $v1, 0x1f6a
/* BB694 800CAE94 501F023C */  lui        $v0, 0x1f50
/* BB698 800CAE98 A0BCC494 */  lhu        $a0, %lo(D_801FBCA0)($a2)
/* BB69C 800CAE9C 9A17E594 */  lhu        $a1, %lo(D_801E179A)($a3)
/* BB6A0 800CAEA0 FDFF8430 */  andi       $a0, $a0, 0xfffd
/* BB6A4 800CAEA4 BFFFA530 */  andi       $a1, $a1, 0xffbf
/* BB6A8 800CAEA8 000064A4 */  sh         $a0, ($v1)
/* BB6AC 800CAEAC 000045A4 */  sh         $a1, ($v0)
/* BB6B0 800CAEB0 00004294 */  lhu        $v0, ($v0)
/* BB6B4 800CAEB4 00000000 */  nop
/* BB6B8 800CAEB8 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB6BC 800CAEBC 02008234 */  ori        $v0, $a0, 2
/* BB6C0 800CAEC0 000062A4 */  sh         $v0, ($v1)
/* BB6C4 800CAEC4 00006394 */  lhu        $v1, ($v1)
/* BB6C8 800CAEC8 21400000 */  addu       $t0, $zero, $zero
/* BB6CC 800CAECC A0BCC4A4 */  sh         $a0, -0x4360($a2)
/* BB6D0 800CAED0 9A17E5A4 */  sh         $a1, 0x179a($a3)
/* BB6D4 800CAED4 A0BCC2A4 */  sh         $v0, -0x4360($a2)
/* BB6D8 800CAED8 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB6DC 800CAEDC FFFF0825 */  addiu      $t0, $t0, -1
.L800CAEE0:
/* BB6E0 800CAEE0 FFFF0105 */  bgez       $t0, .L800CAEE0
/* BB6E4 800CAEE4 FFFF0825 */   addiu     $t0, $t0, -1
/* BB6E8 800CAEE8 01000825 */  addiu      $t0, $t0, 1
/* BB6EC 800CAEEC 401F023C */  lui        $v0, 0x1f40
/* BB6F0 800CAEF0 06004294 */  lhu        $v0, 6($v0)
/* BB6F4 800CAEF4 21300000 */  addu       $a2, $zero, $zero
/* BB6F8 800CAEF8 82100200 */  srl        $v0, $v0, 2
/* BB6FC 800CAEFC 01004730 */  andi       $a3, $v0, 1
/* BB700 800CAF00 FFFFC624 */  addiu      $a2, $a2, -1
.L800CAF04:
/* BB704 800CAF04 FFFFC104 */  bgez       $a2, .L800CAF04
/* BB708 800CAF08 FFFFC624 */   addiu     $a2, $a2, -1
/* BB70C 800CAF0C 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB710 800CAF10 01000624 */  addiu      $a2, $zero, 1
/* BB714 800CAF14 A0BCA394 */  lhu        $v1, %lo(D_801FBCA0)($a1)
/* BB718 800CAF18 6A1F023C */  lui        $v0, 0x1f6a
/* BB71C 800CAF1C FDFF6330 */  andi       $v1, $v1, 0xfffd
/* BB720 800CAF20 000043A4 */  sh         $v1, ($v0)
/* BB724 800CAF24 00004494 */  lhu        $a0, ($v0)
/* BB728 800CAF28 A0BCA3A4 */  sh         $v1, -0x4360($a1)
/* BB72C 800CAF2C 1000A4A7 */  sh         $a0, 0x10($sp)
/* BB730 800CAF30 0200E610 */  beq        $a3, $a2, .L800CAF3C
/* BB734 800CAF34 FFFF0224 */   addiu     $v0, $zero, -1
/* BB738 800CAF38 21100000 */  addu       $v0, $zero, $zero
.L800CAF3C:
/* BB73C 800CAF3C 2800BF8F */  lw         $ra, 0x28($sp)
/* BB740 800CAF40 2400B38F */  lw         $s3, 0x24($sp)
/* BB744 800CAF44 2000B28F */  lw         $s2, 0x20($sp)
/* BB748 800CAF48 1C00B18F */  lw         $s1, 0x1c($sp)
/* BB74C 800CAF4C 1800B08F */  lw         $s0, 0x18($sp)
/* BB750 800CAF50 0800E003 */  jr         $ra
/* BB754 800CAF54 3000BD27 */   addiu     $sp, $sp, 0x30

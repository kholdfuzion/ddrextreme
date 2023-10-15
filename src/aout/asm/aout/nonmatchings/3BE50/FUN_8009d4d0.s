.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009d4d0
/* 8DCD0 8009D4D0 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 8DCD4 8009D4D4 7000A38F */  lw         $v1, 0x70($sp)
/* 8DCD8 8009D4D8 003B0700 */  sll        $a3, $a3, 0xc
/* 8DCDC 8009D4DC FFFF6324 */  addiu      $v1, $v1, -1
/* 8DCE0 8009D4E0 1A00E300 */  div        $zero, $a3, $v1
/* 8DCE4 8009D4E4 0F80023C */  lui        $v0, %hi(D_800F003F)
/* 8DCE8 8009D4E8 3F004280 */  lb         $v0, %lo(D_800F003F)($v0)
/* 8DCEC 8009D4EC 4C00B5AF */  sw         $s5, 0x4c($sp)
/* 8DCF0 8009D4F0 21A8C000 */  addu       $s5, $a2, $zero
/* 8DCF4 8009D4F4 5C00BFAF */  sw         $ra, 0x5c($sp)
/* 8DCF8 8009D4F8 5800BEAF */  sw         $fp, 0x58($sp)
/* 8DCFC 8009D4FC 5400B7AF */  sw         $s7, 0x54($sp)
/* 8DD00 8009D500 5000B6AF */  sw         $s6, 0x50($sp)
/* 8DD04 8009D504 4800B4AF */  sw         $s4, 0x48($sp)
/* 8DD08 8009D508 4400B3AF */  sw         $s3, 0x44($sp)
/* 8DD0C 8009D50C 4000B2AF */  sw         $s2, 0x40($sp)
/* 8DD10 8009D510 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 8DD14 8009D514 3800B0AF */  sw         $s0, 0x38($sp)
/* 8DD18 8009D518 6000A4AF */  sw         $a0, 0x60($sp)
/* 8DD1C 8009D51C 6400A5AF */  sw         $a1, 0x64($sp)
/* 8DD20 8009D520 3000A2AF */  sw         $v0, 0x30($sp)
/* 8DD24 8009D524 12380000 */  mflo       $a3
/* 8DD28 8009D528 02006014 */  bnez       $v1, .L8009D534
/* 8DD2C 8009D52C 00000000 */   nop
/* 8DD30 8009D530 CD010000 */  break      0, 7
.L8009D534:
/* 8DD34 8009D534 0110E228 */   slti      $v0, $a3, 0x1001
/* 8DD38 8009D538 05004010 */  beqz       $v0, .L8009D550
/* 8DD3C 8009D53C 00000000 */   nop
/* 8DD40 8009D540 0400E104 */  bgez       $a3, .L8009D554
/* 8DD44 8009D544 00000000 */   nop
/* 8DD48 8009D548 55750208 */  j          .L8009D554
/* 8DD4C 8009D54C 21380000 */   addu      $a3, $zero, $zero
.L8009D550:
/* 8DD50 8009D550 00100724 */  addiu      $a3, $zero, 0x1000
.L8009D554:
/* 8DD54 8009D554 6000A48F */  lw         $a0, 0x60($sp)
/* 8DD58 8009D558 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8DD5C 8009D55C 0800838C */  lw         $v1, 8($a0)
/* 8DD60 8009D560 E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 8DD64 8009D564 21186200 */  addu       $v1, $v1, $v0
/* 8DD68 8009D568 1380023C */  lui        $v0, %hi(D_801282E0)
/* 8DD6C 8009D56C E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 8DD70 8009D570 00006590 */  lbu        $a1, ($v1)
/* 8DD74 8009D574 00100324 */  addiu      $v1, $zero, 0x1000
/* 8DD78 8009D578 C0200500 */  sll        $a0, $a1, 3
/* 8DD7C 8009D57C 23208500 */  subu       $a0, $a0, $a1
/* 8DD80 8009D580 80200400 */  sll        $a0, $a0, 2
/* 8DD84 8009D584 21A08200 */  addu       $s4, $a0, $v0
/* 8DD88 8009D588 0A008686 */  lh         $a2, 0xa($s4)
/* 8DD8C 8009D58C 23186700 */  subu       $v1, $v1, $a3
/* 8DD90 8009D590 1800C300 */  mult       $a2, $v1
/* 8DD94 8009D594 12280000 */  mflo       $a1
/* 8DD98 8009D598 00000000 */  nop
/* 8DD9C 8009D59C 00000000 */  nop
/* 8DDA0 8009D5A0 1800A300 */  mult       $a1, $v1
/* 8DDA4 8009D5A4 E338043C */  lui        $a0, 0x38e3
/* 8DDA8 8009D5A8 08008286 */  lh         $v0, 8($s4)
/* 8DDAC 8009D5AC 398E8434 */  ori        $a0, $a0, 0x8e39
/* 8DDB0 8009D5B0 3400A2AF */  sw         $v0, 0x34($sp)
/* 8DDB4 8009D5B4 12280000 */  mflo       $a1
/* 8DDB8 8009D5B8 80020324 */  addiu      $v1, $zero, 0x280
/* 8DDBC 8009D5BC 23186200 */  subu       $v1, $v1, $v0
/* 8DDC0 8009D5C0 1800A400 */  mult       $a1, $a0
/* 8DDC4 8009D5C4 C2170300 */  srl        $v0, $v1, 0x1f
/* 8DDC8 8009D5C8 21186200 */  addu       $v1, $v1, $v0
/* 8DDCC 8009D5CC 43180300 */  sra        $v1, $v1, 1
/* 8DDD0 8009D5D0 C0FE7724 */  addiu      $s7, $v1, -0x140
/* 8DDD4 8009D5D4 E0010224 */  addiu      $v0, $zero, 0x1e0
/* 8DDD8 8009D5D8 23104600 */  subu       $v0, $v0, $a2
/* 8DDDC 8009D5DC C21F0200 */  srl        $v1, $v0, 0x1f
/* 8DDE0 8009D5E0 21104300 */  addu       $v0, $v0, $v1
/* 8DDE4 8009D5E4 43100200 */  sra        $v0, $v0, 1
/* 8DDE8 8009D5E8 10FF5E24 */  addiu      $fp, $v0, -0xf0
/* 8DDEC 8009D5EC C32F0500 */  sra        $a1, $a1, 0x1f
/* 8DDF0 8009D5F0 10200000 */  mfhi       $a0
/* 8DDF4 8009D5F4 43250400 */  sra        $a0, $a0, 0x15
/* 8DDF8 8009D5F8 23208500 */  subu       $a0, $a0, $a1
/* 8DDFC 8009D5FC 2328C400 */  subu       $a1, $a2, $a0
/* 8DE00 8009D600 2A10C500 */  slt        $v0, $a2, $a1
/* 8DE04 8009D604 05004014 */  bnez       $v0, .L8009D61C
/* 8DE08 8009D608 2198C000 */   addu      $s3, $a2, $zero
/* 8DE0C 8009D60C 2198A000 */  addu       $s3, $a1, $zero
/* 8DE10 8009D610 03006106 */  bgez       $s3, .L8009D620
/* 8DE14 8009D614 0004E228 */   slti      $v0, $a3, 0x400
/* 8DE18 8009D618 21980000 */  addu       $s3, $zero, $zero
.L8009D61C:
/* 8DE1C 8009D61C 0004E228 */  slti       $v0, $a3, 0x400
.L8009D620:
/* 8DE20 8009D620 05004010 */  beqz       $v0, .L8009D638
/* 8DE24 8009D624 40100700 */   sll       $v0, $a3, 1
/* 8DE28 8009D628 21104700 */  addu       $v0, $v0, $a3
/* 8DE2C 8009D62C C0100200 */  sll        $v0, $v0, 3
/* 8DE30 8009D630 94750208 */  j          .L8009D650
/* 8DE34 8009D634 21104700 */   addu      $v0, $v0, $a3
.L8009D638:
/* 8DE38 8009D638 00100324 */  addiu      $v1, $zero, 0x1000
/* 8DE3C 8009D63C 23186700 */  subu       $v1, $v1, $a3
/* 8DE40 8009D640 40100300 */  sll        $v0, $v1, 1
/* 8DE44 8009D644 21104300 */  addu       $v0, $v0, $v1
/* 8DE48 8009D648 C0100200 */  sll        $v0, $v0, 3
/* 8DE4C 8009D64C 21104300 */  addu       $v0, $v0, $v1
.L8009D650:
/* 8DE50 8009D650 00110200 */  sll        $v0, $v0, 4
/* 8DE54 8009D654 03004104 */  bgez       $v0, .L8009D664
/* 8DE58 8009D658 83920200 */   sra       $s2, $v0, 0xa
/* 8DE5C 8009D65C FF034224 */  addiu      $v0, $v0, 0x3ff
/* 8DE60 8009D660 83920200 */  sra        $s2, $v0, 0xa
.L8009D664:
/* 8DE64 8009D664 9101422A */  slti       $v0, $s2, 0x191
/* 8DE68 8009D668 04004010 */  beqz       $v0, .L8009D67C
/* 8DE6C 8009D66C 90010224 */   addiu     $v0, $zero, 0x190
/* 8DE70 8009D670 02004106 */  bgez       $s2, .L8009D67C
/* 8DE74 8009D674 21104002 */   addu      $v0, $s2, $zero
/* 8DE78 8009D678 21100000 */  addu       $v0, $zero, $zero
.L8009D67C:
/* 8DE7C 8009D67C 21904000 */  addu       $s2, $v0, $zero
/* 8DE80 8009D680 01001624 */  addiu      $s6, $zero, 1
/* 8DE84 8009D684 1380113C */  lui        $s1, %hi(D_80128BBC)
/* 8DE88 8009D688 6400A48F */  lw         $a0, 0x64($sp)
/* 8DE8C 8009D68C BC8B3026 */  addiu      $s0, $s1, %lo(D_80128BBC)
/* 8DE90 8009D690 1000B6AF */  sw         $s6, 0x10($sp)
/* 8DE94 8009D694 1400B6AF */  sw         $s6, 0x14($sp)
/* 8DE98 8009D698 04000686 */  lh         $a2, 4($s0)
/* 8DE9C 8009D69C FFFF0224 */  addiu      $v0, $zero, -1
/* 8DEA0 8009D6A0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8DEA4 8009D6A4 06000786 */  lh         $a3, 6($s0)
/* 8DEA8 8009D6A8 0C000286 */  lh         $v0, 0xc($s0)
/* 8DEAC 8009D6AC 2128A002 */  addu       $a1, $s5, $zero
/* 8DEB0 8009D6B0 1769010C */  jal        FUN_8005a45c
/* 8DEB4 8009D6B4 1800A2AF */   sw        $v0, 0x18($sp)
/* 8DEB8 8009D6B8 6400A48F */  lw         $a0, 0x64($sp)
/* 8DEBC 8009D6BC 16000686 */  lh         $a2, 0x16($s0)
/* 8DEC0 8009D6C0 18000786 */  lh         $a3, 0x18($s0)
/* 8DEC4 8009D6C4 396D010C */  jal        FUN_8005b4e4
/* 8DEC8 8009D6C8 2128A002 */   addu      $a1, $s5, $zero
/* 8DECC 8009D6CC 6400A48F */  lw         $a0, 0x64($sp)
/* 8DED0 8009D6D0 2128A002 */  addu       $a1, $s5, $zero
/* 8DED4 8009D6D4 1000B2AF */  sw         $s2, 0x10($sp)
/* 8DED8 8009D6D8 08008686 */  lh         $a2, 8($s4)
/* 8DEDC 8009D6DC 02000224 */  addiu      $v0, $zero, 2
/* 8DEE0 8009D6E0 1400A2AF */  sw         $v0, 0x14($sp)
/* 8DEE4 8009D6E4 0A008786 */  lh         $a3, 0xa($s4)
/* 8DEE8 8009D6E8 2330D200 */  subu       $a2, $a2, $s2
/* 8DEEC 8009D6EC C2170600 */  srl        $v0, $a2, 0x1f
/* 8DEF0 8009D6F0 2130C200 */  addu       $a2, $a2, $v0
/* 8DEF4 8009D6F4 43300600 */  sra        $a2, $a2, 1
/* 8DEF8 8009D6F8 2130E602 */  addu       $a2, $s7, $a2
/* 8DEFC 8009D6FC 976D010C */  jal        FUN_8005b65c
/* 8DF00 8009D700 2138C703 */   addu      $a3, $fp, $a3
/* 8DF04 8009D704 2128A002 */  addu       $a1, $s5, $zero
/* 8DF08 8009D708 80000624 */  addiu      $a2, $zero, 0x80
/* 8DF0C 8009D70C 80000724 */  addiu      $a3, $zero, 0x80
/* 8DF10 8009D710 6400A48F */  lw         $a0, 0x64($sp)
/* 8DF14 8009D714 80001224 */  addiu      $s2, $zero, 0x80
/* 8DF18 8009D718 EB6C010C */  jal        FUN_8005b3ac
/* 8DF1C 8009D71C 1000B2AF */   sw        $s2, 0x10($sp)
/* 8DF20 8009D720 2F00601A */  blez       $s3, .L8009D7E0
/* 8DF24 8009D724 0100B526 */   addiu     $s5, $s5, 1
/* 8DF28 8009D728 3000A28F */  lw         $v0, 0x30($sp)
/* 8DF2C 8009D72C 00000000 */  nop
/* 8DF30 8009D730 17005614 */  bne        $v0, $s6, .L8009D790
/* 8DF34 8009D734 80000624 */   addiu     $a2, $zero, 0x80
/* 8DF38 8009D738 01000524 */  addiu      $a1, $zero, 1
/* 8DF3C 8009D73C 6000A38F */  lw         $v1, 0x60($sp)
/* 8DF40 8009D740 00000000 */  nop
/* 8DF44 8009D744 0400648C */  lw         $a0, 4($v1)
/* 8DF48 8009D748 0A008386 */  lh         $v1, 0xa($s4)
/* 8DF4C 8009D74C 10000224 */  addiu      $v0, $zero, 0x10
/* 8DF50 8009D750 1000A2AF */  sw         $v0, 0x10($sp)
/* 8DF54 8009D754 3400A28F */  lw         $v0, 0x34($sp)
/* 8DF58 8009D758 20000724 */  addiu      $a3, $zero, 0x20
/* 8DF5C 8009D75C 1400B7AF */  sw         $s7, 0x14($sp)
/* 8DF60 8009D760 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8DF64 8009D764 2000A0AF */  sw         $zero, 0x20($sp)
/* 8DF68 8009D768 2400A0AF */  sw         $zero, 0x24($sp)
/* 8DF6C 8009D76C 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 8DF70 8009D770 2118C303 */  addu       $v1, $fp, $v1
/* 8DF74 8009D774 23187300 */  subu       $v1, $v1, $s3
/* 8DF78 8009D778 2800A2AF */  sw         $v0, 0x28($sp)
/* 8DF7C 8009D77C 58AD010C */  jal        FUN_8006b560
/* 8DF80 8009D780 1800A3AF */   sw        $v1, 0x18($sp)
/* 8DF84 8009D784 6000A38F */  lw         $v1, 0x60($sp)
/* 8DF88 8009D788 F8750208 */  j          .L8009D7E0
/* 8DF8C 8009D78C 040062AC */   sw        $v0, 4($v1)
.L8009D790:
/* 8DF90 8009D790 01000524 */  addiu      $a1, $zero, 1
/* 8DF94 8009D794 6000A28F */  lw         $v0, 0x60($sp)
/* 8DF98 8009D798 3400A38F */  lw         $v1, 0x34($sp)
/* 8DF9C 8009D79C 0400448C */  lw         $a0, 4($v0)
/* 8DFA0 8009D7A0 0A008286 */  lh         $v0, 0xa($s4)
/* 8DFA4 8009D7A4 80000724 */  addiu      $a3, $zero, 0x80
/* 8DFA8 8009D7A8 1000B2AF */  sw         $s2, 0x10($sp)
/* 8DFAC 8009D7AC 1400B7AF */  sw         $s7, 0x14($sp)
/* 8DFB0 8009D7B0 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 8DFB4 8009D7B4 2000A0AF */  sw         $zero, 0x20($sp)
/* 8DFB8 8009D7B8 2400A0AF */  sw         $zero, 0x24($sp)
/* 8DFBC 8009D7BC 2800A3AF */  sw         $v1, 0x28($sp)
/* 8DFC0 8009D7C0 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 8DFC4 8009D7C4 2110C203 */  addu       $v0, $fp, $v0
/* 8DFC8 8009D7C8 23105300 */  subu       $v0, $v0, $s3
/* 8DFCC 8009D7CC 58AD010C */  jal        FUN_8006b560
/* 8DFD0 8009D7D0 1800A2AF */   sw        $v0, 0x18($sp)
/* 8DFD4 8009D7D4 6000A48F */  lw         $a0, 0x60($sp)
/* 8DFD8 8009D7D8 00000000 */  nop
/* 8DFDC 8009D7DC 040082AC */  sw         $v0, 4($a0)
.L8009D7E0:
/* 8DFE0 8009D7E0 01000224 */  addiu      $v0, $zero, 1
/* 8DFE4 8009D7E4 6400A48F */  lw         $a0, 0x64($sp)
/* 8DFE8 8009D7E8 BC8B3026 */  addiu      $s0, $s1, -0x7444
/* 8DFEC 8009D7EC 1000A2AF */  sw         $v0, 0x10($sp)
/* 8DFF0 8009D7F0 1400A2AF */  sw         $v0, 0x14($sp)
/* 8DFF4 8009D7F4 04000686 */  lh         $a2, 4($s0)
/* 8DFF8 8009D7F8 FFFF0224 */  addiu      $v0, $zero, -1
/* 8DFFC 8009D7FC 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8E000 8009D800 06000786 */  lh         $a3, 6($s0)
/* 8E004 8009D804 0C000286 */  lh         $v0, 0xc($s0)
/* 8E008 8009D808 2128A002 */  addu       $a1, $s5, $zero
/* 8E00C 8009D80C 1769010C */  jal        FUN_8005a45c
/* 8E010 8009D810 1800A2AF */   sw        $v0, 0x18($sp)
/* 8E014 8009D814 6400A48F */  lw         $a0, 0x64($sp)
/* 8E018 8009D818 16000686 */  lh         $a2, 0x16($s0)
/* 8E01C 8009D81C 18000786 */  lh         $a3, 0x18($s0)
/* 8E020 8009D820 396D010C */  jal        FUN_8005b4e4
/* 8E024 8009D824 2128A002 */   addu      $a1, $s5, $zero
/* 8E028 8009D828 2128A002 */  addu       $a1, $s5, $zero
/* 8E02C 8009D82C C0FE0624 */  addiu      $a2, $zero, -0x140
/* 8E030 8009D830 10FF0724 */  addiu      $a3, $zero, -0xf0
/* 8E034 8009D834 80020224 */  addiu      $v0, $zero, 0x280
/* 8E038 8009D838 6400A48F */  lw         $a0, 0x64($sp)
/* 8E03C 8009D83C E0010324 */  addiu      $v1, $zero, 0x1e0
/* 8E040 8009D840 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E044 8009D844 976D010C */  jal        FUN_8005b65c
/* 8E048 8009D848 1400A3AF */   sw        $v1, 0x14($sp)
/* 8E04C 8009D84C 2128A002 */  addu       $a1, $s5, $zero
/* 8E050 8009D850 21300000 */  addu       $a2, $zero, $zero
/* 8E054 8009D854 6400A48F */  lw         $a0, 0x64($sp)
/* 8E058 8009D858 21380000 */  addu       $a3, $zero, $zero
/* 8E05C 8009D85C EB6C010C */  jal        FUN_8005b3ac
/* 8E060 8009D860 1000A0AF */   sw        $zero, 0x10($sp)
/* 8E064 8009D864 0100A226 */  addiu      $v0, $s5, 1
/* 8E068 8009D868 5C00BF8F */  lw         $ra, 0x5c($sp)
/* 8E06C 8009D86C 5800BE8F */  lw         $fp, 0x58($sp)
/* 8E070 8009D870 5400B78F */  lw         $s7, 0x54($sp)
/* 8E074 8009D874 5000B68F */  lw         $s6, 0x50($sp)
/* 8E078 8009D878 4C00B58F */  lw         $s5, 0x4c($sp)
/* 8E07C 8009D87C 4800B48F */  lw         $s4, 0x48($sp)
/* 8E080 8009D880 4400B38F */  lw         $s3, 0x44($sp)
/* 8E084 8009D884 4000B28F */  lw         $s2, 0x40($sp)
/* 8E088 8009D888 3C00B18F */  lw         $s1, 0x3c($sp)
/* 8E08C 8009D88C 3800B08F */  lw         $s0, 0x38($sp)
/* 8E090 8009D890 0800E003 */  jr         $ra
/* 8E094 8009D894 6000BD27 */   addiu     $sp, $sp, 0x60

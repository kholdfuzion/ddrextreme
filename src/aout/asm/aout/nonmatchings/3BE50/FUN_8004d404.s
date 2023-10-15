.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004d404
/* 3DC04 8004D404 30FFBD27 */  addiu      $sp, $sp, -0xd0
/* 3DC08 8004D408 2160C000 */  addu       $t4, $a2, $zero
/* 3DC0C 8004D40C D400A5AF */  sw         $a1, 0xd4($sp)
/* 3DC10 8004D410 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 3DC14 8004D414 2800A624 */  addiu      $a2, $a1, %lo(D_800F0028)
/* 3DC18 8004D418 80100C00 */  sll        $v0, $t4, 2
/* 3DC1C 8004D41C 21104C00 */  addu       $v0, $v0, $t4
/* 3DC20 8004D420 C0190200 */  sll        $v1, $v0, 7
/* 3DC24 8004D424 21104300 */  addu       $v0, $v0, $v1
/* 3DC28 8004D428 40110200 */  sll        $v0, $v0, 5
/* 3DC2C 8004D42C 23104C00 */  subu       $v0, $v0, $t4
/* 3DC30 8004D430 80100200 */  sll        $v0, $v0, 2
/* 3DC34 8004D434 21104600 */  addu       $v0, $v0, $a2
/* 3DC38 8004D438 CC00BFAF */  sw         $ra, 0xcc($sp)
/* 3DC3C 8004D43C C800BEAF */  sw         $fp, 0xc8($sp)
/* 3DC40 8004D440 C400B7AF */  sw         $s7, 0xc4($sp)
/* 3DC44 8004D444 C000B6AF */  sw         $s6, 0xc0($sp)
/* 3DC48 8004D448 BC00B5AF */  sw         $s5, 0xbc($sp)
/* 3DC4C 8004D44C B800B4AF */  sw         $s4, 0xb8($sp)
/* 3DC50 8004D450 B400B3AF */  sw         $s3, 0xb4($sp)
/* 3DC54 8004D454 B000B2AF */  sw         $s2, 0xb0($sp)
/* 3DC58 8004D458 AC00B1AF */  sw         $s1, 0xac($sp)
/* 3DC5C 8004D45C A800B0AF */  sw         $s0, 0xa8($sp)
/* 3DC60 8004D460 4C00A0AF */  sw         $zero, 0x4c($sp)
/* 3DC64 8004D464 9000438C */  lw         $v1, 0x90($v0)
/* 3DC68 8004D468 2168A000 */  addu       $t5, $a1, $zero
/* 3DC6C 8004D46C 5800A0AF */  sw         $zero, 0x58($sp)
/* 3DC70 8004D470 D000A4AF */  sw         $a0, 0xd0($sp)
/* 3DC74 8004D474 03006230 */  andi       $v0, $v1, 3
/* 3DC78 8004D478 C2340300 */  srl        $a2, $v1, 0x13
/* 3DC7C 8004D47C 2800A384 */  lh         $v1, 0x28($a1)
/* 3DC80 8004D480 5C00A2AF */  sw         $v0, 0x5c($sp)
/* 3DC84 8004D484 03000224 */  addiu      $v0, $zero, 3
/* 3DC88 8004D488 04006210 */  beq        $v1, $v0, .L8004D49C
/* 3DC8C 8004D48C 0100C630 */   andi      $a2, $a2, 1
/* 3DC90 8004D490 26000224 */  addiu      $v0, $zero, 0x26
/* 3DC94 8004D494 04006214 */  bne        $v1, $v0, .L8004D4A8
/* 3DC98 8004D498 2800A525 */   addiu     $a1, $t5, 0x28
.L8004D49C:
/* 3DC9C 8004D49C 5C00A0AF */  sw         $zero, 0x5c($sp)
/* 3DCA0 8004D4A0 21300000 */  addu       $a2, $zero, $zero
/* 3DCA4 8004D4A4 2800A525 */  addiu      $a1, $t5, 0x28
.L8004D4A8:
/* 3DCA8 8004D4A8 80200C00 */  sll        $a0, $t4, 2
/* 3DCAC 8004D4AC 21108C00 */  addu       $v0, $a0, $t4
/* 3DCB0 8004D4B0 C0190200 */  sll        $v1, $v0, 7
/* 3DCB4 8004D4B4 21104300 */  addu       $v0, $v0, $v1
/* 3DCB8 8004D4B8 40110200 */  sll        $v0, $v0, 5
/* 3DCBC 8004D4BC 23104C00 */  subu       $v0, $v0, $t4
/* 3DCC0 8004D4C0 80100200 */  sll        $v0, $v0, 2
/* 3DCC4 8004D4C4 21104500 */  addu       $v0, $v0, $a1
/* 3DCC8 8004D4C8 9000438C */  lw         $v1, 0x90($v0)
/* 3DCCC 8004D4CC 00000000 */  nop
/* 3DCD0 8004D4D0 021B0300 */  srl        $v1, $v1, 0xc
/* 3DCD4 8004D4D4 03006330 */  andi       $v1, $v1, 3
/* 3DCD8 8004D4D8 1E006010 */  beqz       $v1, .L8004D554
/* 3DCDC 8004D4DC 9400A4AF */   sw        $a0, 0x94($sp)
/* 3DCE0 8004D4E0 2800A385 */  lh         $v1, 0x28($t5)
/* 3DCE4 8004D4E4 03000424 */  addiu      $a0, $zero, 3
/* 3DCE8 8004D4E8 1A006410 */  beq        $v1, $a0, .L8004D554
/* 3DCEC 8004D4EC 26000224 */   addiu     $v0, $zero, 0x26
/* 3DCF0 8004D4F0 18006210 */  beq        $v1, $v0, .L8004D554
/* 3DCF4 8004D4F4 01000224 */   addiu     $v0, $zero, 1
/* 3DCF8 8004D4F8 5C00A38F */  lw         $v1, 0x5c($sp)
/* 3DCFC 8004D4FC 00000000 */  nop
/* 3DD00 8004D500 04006214 */  bne        $v1, $v0, .L8004D514
/* 3DD04 8004D504 02000224 */   addiu     $v0, $zero, 2
/* 3DD08 8004D508 02000424 */  addiu      $a0, $zero, 2
/* 3DD0C 8004D50C 5C350108 */  j          .L8004D570
/* 3DD10 8004D510 5C00A4AF */   sw        $a0, 0x5c($sp)
.L8004D514:
/* 3DD14 8004D514 5C00A58F */  lw         $a1, 0x5c($sp)
/* 3DD18 8004D518 00000000 */  nop
/* 3DD1C 8004D51C 0300A214 */  bne        $a1, $v0, .L8004D52C
/* 3DD20 8004D520 00000000 */   nop
/* 3DD24 8004D524 5B350108 */  j          .L8004D56C
/* 3DD28 8004D528 01000624 */   addiu     $a2, $zero, 1
.L8004D52C:
/* 3DD2C 8004D52C 5C00A28F */  lw         $v0, 0x5c($sp)
/* 3DD30 8004D530 00000000 */  nop
/* 3DD34 8004D534 0F004414 */  bne        $v0, $a0, .L8004D574
/* 3DD38 8004D538 1380023C */   lui       $v0, 0x8013
/* 3DD3C 8004D53C 04000324 */  addiu      $v1, $zero, 4
/* 3DD40 8004D540 0C00C010 */  beqz       $a2, .L8004D574
/* 3DD44 8004D544 5C00A3AF */   sw        $v1, 0x5c($sp)
/* 3DD48 8004D548 05000424 */  addiu      $a0, $zero, 5
/* 3DD4C 8004D54C 5D350108 */  j          .L8004D574
/* 3DD50 8004D550 5C00A4AF */   sw        $a0, 0x5c($sp)
.L8004D554:
/* 3DD54 8004D554 5C00A58F */  lw         $a1, 0x5c($sp)
/* 3DD58 8004D558 03000224 */  addiu      $v0, $zero, 3
/* 3DD5C 8004D55C 0500A214 */  bne        $a1, $v0, .L8004D574
/* 3DD60 8004D560 1380023C */   lui       $v0, 0x8013
/* 3DD64 8004D564 0300C010 */  beqz       $a2, .L8004D574
/* 3DD68 8004D568 05000624 */   addiu     $a2, $zero, 5
.L8004D56C:
/* 3DD6C 8004D56C 5C00A6AF */  sw         $a2, 0x5c($sp)
.L8004D570:
/* 3DD70 8004D570 1380023C */  lui        $v0, %hi(D_80128164)
.L8004D574:
/* 3DD74 8004D574 64814390 */  lbu        $v1, %lo(D_80128164)($v0)
/* 3DD78 8004D578 00000000 */  nop
/* 3DD7C 8004D57C C0200300 */  sll        $a0, $v1, 3
/* 3DD80 8004D580 23208300 */  subu       $a0, $a0, $v1
/* 3DD84 8004D584 80200400 */  sll        $a0, $a0, 2
/* 3DD88 8004D588 1380033C */  lui        $v1, %hi(D_801282E0)
/* 3DD8C 8004D58C E0826324 */  addiu      $v1, $v1, %lo(D_801282E0)
/* 3DD90 8004D590 21808300 */  addu       $s0, $a0, $v1
/* 3DD94 8004D594 9400A38F */  lw         $v1, 0x94($sp)
/* 3DD98 8004D598 0F80043C */  lui        $a0, 0x800f
/* 3DD9C 8004D59C 21106C00 */  addu       $v0, $v1, $t4
/* 3DDA0 8004D5A0 C0190200 */  sll        $v1, $v0, 7
/* 3DDA4 8004D5A4 21104300 */  addu       $v0, $v0, $v1
/* 3DDA8 8004D5A8 40110200 */  sll        $v0, $v0, 5
/* 3DDAC 8004D5AC 23104C00 */  subu       $v0, $v0, $t4
/* 3DDB0 8004D5B0 80100200 */  sll        $v0, $v0, 2
/* 3DDB4 8004D5B4 D4018324 */  addiu      $v1, $a0, 0x1d4
/* 3DDB8 8004D5B8 21104300 */  addu       $v0, $v0, $v1
/* 3DDBC 8004D5BC 54FE6324 */  addiu      $v1, $v1, -0x1ac
/* 3DDC0 8004D5C0 4800A2AF */  sw         $v0, 0x48($sp)
/* 3DDC4 8004D5C4 8A006290 */  lbu        $v0, 0x8a($v1)
/* 3DDC8 8004D5C8 02000524 */  addiu      $a1, $zero, 2
/* 3DDCC 8004D5CC 0A004510 */  beq        $v0, $a1, .L8004D5F8
/* 3DDD0 8004D5D0 0A000424 */   addiu     $a0, $zero, 0xa
/* 3DDD4 8004D5D4 08004410 */  beq        $v0, $a0, .L8004D5F8
/* 3DDD8 8004D5D8 0100023C */   lui       $v0, 1
/* 3DDDC 8004D5DC 21106200 */  addu       $v0, $v1, $v0
/* 3DDE0 8004D5E0 06434290 */  lbu        $v0, 0x4306($v0)
/* 3DDE4 8004D5E4 00000000 */  nop
/* 3DDE8 8004D5E8 03004510 */  beq        $v0, $a1, .L8004D5F8
/* 3DDEC 8004D5EC 00000000 */   nop
/* 3DDF0 8004D5F0 09004414 */  bne        $v0, $a0, .L8004D618
/* 3DDF4 8004D5F4 00000000 */   nop
.L8004D5F8:
/* 3DDF8 8004D5F8 2800A385 */  lh         $v1, 0x28($t5)
/* 3DDFC 8004D5FC 03000224 */  addiu      $v0, $zero, 3
/* 3DE00 8004D600 05006210 */  beq        $v1, $v0, .L8004D618
/* 3DE04 8004D604 26000224 */   addiu     $v0, $zero, 0x26
/* 3DE08 8004D608 03006210 */  beq        $v1, $v0, .L8004D618
/* 3DE0C 8004D60C 15000224 */   addiu     $v0, $zero, 0x15
/* 3DE10 8004D610 03006214 */  bne        $v1, $v0, .L8004D620
/* 3DE14 8004D614 00000000 */   nop
.L8004D618:
/* 3DE18 8004D618 89350108 */  j          .L8004D624
/* 3DE1C 8004D61C 5400ACAF */   sw        $t4, 0x54($sp)
.L8004D620:
/* 3DE20 8004D620 5400A0AF */  sw         $zero, 0x54($sp)
.L8004D624:
/* 3DE24 8004D624 2800A425 */  addiu      $a0, $t5, 0x28
/* 3DE28 8004D628 8A008290 */  lbu        $v0, 0x8a($a0)
/* 3DE2C 8004D62C 02000524 */  addiu      $a1, $zero, 2
/* 3DE30 8004D630 0A004510 */  beq        $v0, $a1, .L8004D65C
/* 3DE34 8004D634 0A000324 */   addiu     $v1, $zero, 0xa
/* 3DE38 8004D638 08004310 */  beq        $v0, $v1, .L8004D65C
/* 3DE3C 8004D63C 0100023C */   lui       $v0, 1
/* 3DE40 8004D640 21108200 */  addu       $v0, $a0, $v0
/* 3DE44 8004D644 06434290 */  lbu        $v0, 0x4306($v0)
/* 3DE48 8004D648 00000000 */  nop
/* 3DE4C 8004D64C 03004510 */  beq        $v0, $a1, .L8004D65C
/* 3DE50 8004D650 00000000 */   nop
/* 3DE54 8004D654 0B004314 */  bne        $v0, $v1, .L8004D684
/* 3DE58 8004D658 04000524 */   addiu     $a1, $zero, 4
.L8004D65C:
/* 3DE5C 8004D65C 2800A385 */  lh         $v1, 0x28($t5)
/* 3DE60 8004D660 03000224 */  addiu      $v0, $zero, 3
/* 3DE64 8004D664 06006210 */  beq        $v1, $v0, .L8004D680
/* 3DE68 8004D668 26000224 */   addiu     $v0, $zero, 0x26
/* 3DE6C 8004D66C 04006210 */  beq        $v1, $v0, .L8004D680
/* 3DE70 8004D670 08000424 */   addiu     $a0, $zero, 8
/* 3DE74 8004D674 15000224 */  addiu      $v0, $zero, 0x15
/* 3DE78 8004D678 03006214 */  bne        $v1, $v0, .L8004D688
/* 3DE7C 8004D67C 6400A4AF */   sw        $a0, 0x64($sp)
.L8004D680:
/* 3DE80 8004D680 04000524 */  addiu      $a1, $zero, 4
.L8004D684:
/* 3DE84 8004D684 6400A5AF */  sw         $a1, 0x64($sp)
.L8004D688:
/* 3DE88 8004D688 9400A68F */  lw         $a2, 0x94($sp)
/* 3DE8C 8004D68C 0F80043C */  lui        $a0, 0x800f
/* 3DE90 8004D690 2110CC00 */  addu       $v0, $a2, $t4
/* 3DE94 8004D694 C0190200 */  sll        $v1, $v0, 7
/* 3DE98 8004D698 21104300 */  addu       $v0, $v0, $v1
/* 3DE9C 8004D69C 40110200 */  sll        $v0, $v0, 5
/* 3DEA0 8004D6A0 23104C00 */  subu       $v0, $v0, $t4
/* 3DEA4 8004D6A4 80100200 */  sll        $v0, $v0, 2
/* 3DEA8 8004D6A8 D4018324 */  addiu      $v1, $a0, 0x1d4
/* 3DEAC 8004D6AC 21384300 */  addu       $a3, $v0, $v1
/* 3DEB0 8004D6B0 1780043C */  lui        $a0, %hi(D_8016F9E0)
/* 3DEB4 8004D6B4 E0F98224 */  addiu      $v0, $a0, %lo(D_8016F9E0)
/* 3DEB8 8004D6B8 2128C200 */  addu       $a1, $a2, $v0
/* 3DEBC 8004D6BC 0000A68C */  lw         $a2, ($a1)
/* 3DEC0 8004D6C0 FFFF0224 */  addiu      $v0, $zero, -1
/* 3DEC4 8004D6C4 0400C214 */  bne        $a2, $v0, .L8004D6D8
/* 3DEC8 8004D6C8 00000000 */   nop
/* 3DECC 8004D6CC AC00E78C */  lw         $a3, 0xac($a3)
/* 3DED0 8004D6D0 BF350108 */  j          .L8004D6FC
/* 3DED4 8004D6D4 6000A7AF */   sw        $a3, 0x60($sp)
.L8004D6D8:
/* 3DED8 8004D6D8 AC00E38C */  lw         $v1, 0xac($a3)
/* 3DEDC 8004D6DC 00000000 */  nop
/* 3DEE0 8004D6E0 2A106600 */  slt        $v0, $v1, $a2
/* 3DEE4 8004D6E4 02004010 */  beqz       $v0, .L8004D6F0
/* 3DEE8 8004D6E8 00000000 */   nop
/* 3DEEC 8004D6EC 0000A3AC */  sw         $v1, ($a1)
.L8004D6F0:
/* 3DEF0 8004D6F0 0000A58C */  lw         $a1, ($a1)
/* 3DEF4 8004D6F4 00000000 */  nop
/* 3DEF8 8004D6F8 6000A5AF */  sw         $a1, 0x60($sp)
.L8004D6FC:
/* 3DEFC 8004D6FC 00010524 */  addiu      $a1, $zero, 0x100
/* 3DF00 8004D700 1780063C */  lui        $a2, %hi(D_8016F9E0)
/* 3DF04 8004D704 E0F9C324 */  addiu      $v1, $a2, %lo(D_8016F9E0)
/* 3DF08 8004D708 9400A28F */  lw         $v0, 0x94($sp)
/* 3DF0C 8004D70C FFFF0424 */  addiu      $a0, $zero, -1
/* 3DF10 8004D710 7400A5AF */  sw         $a1, 0x74($sp)
/* 3DF14 8004D714 21184300 */  addu       $v1, $v0, $v1
/* 3DF18 8004D718 21104C00 */  addu       $v0, $v0, $t4
/* 3DF1C 8004D71C 000064AC */  sw         $a0, ($v1)
/* 3DF20 8004D720 C0190200 */  sll        $v1, $v0, 7
/* 3DF24 8004D724 21104300 */  addu       $v0, $v0, $v1
/* 3DF28 8004D728 40110200 */  sll        $v0, $v0, 5
/* 3DF2C 8004D72C 23104C00 */  subu       $v0, $v0, $t4
/* 3DF30 8004D730 80280200 */  sll        $a1, $v0, 2
/* 3DF34 8004D734 0F80033C */  lui        $v1, %hi(D_800F02D4)
/* 3DF38 8004D738 D4026324 */  addiu      $v1, $v1, %lo(D_800F02D4)
/* 3DF3C 8004D73C 6000A68F */  lw         $a2, 0x60($sp)
/* 3DF40 8004D740 2120A300 */  addu       $a0, $a1, $v1
/* 3DF44 8004D744 80100600 */  sll        $v0, $a2, 2
/* 3DF48 8004D748 21104600 */  addu       $v0, $v0, $a2
/* 3DF4C 8004D74C C0100200 */  sll        $v0, $v0, 3
/* 3DF50 8004D750 21908200 */  addu       $s2, $a0, $v0
/* 3DF54 8004D754 54FD6424 */  addiu      $a0, $v1, -0x2ac
/* 3DF58 8004D758 54FD6384 */  lh         $v1, -0x2ac($v1)
/* 3DF5C 8004D75C 03000224 */  addiu      $v0, $zero, 3
/* 3DF60 8004D760 03006210 */  beq        $v1, $v0, .L8004D770
/* 3DF64 8004D764 26000224 */   addiu     $v0, $zero, 0x26
/* 3DF68 8004D768 03006214 */  bne        $v1, $v0, .L8004D778
/* 3DF6C 8004D76C 2118A400 */   addu      $v1, $a1, $a0
.L8004D770:
/* 3DF70 8004D770 E5350108 */  j          .L8004D794
/* 3DF74 8004D774 20000224 */   addiu     $v0, $zero, 0x20
.L8004D778:
/* 3DF78 8004D778 9000628C */  lw         $v0, 0x90($v1)
/* 3DF7C 8004D77C 08000324 */  addiu      $v1, $zero, 8
/* 3DF80 8004D780 C2110200 */  srl        $v0, $v0, 7
/* 3DF84 8004D784 1F004230 */  andi       $v0, $v0, 0x1f
/* 3DF88 8004D788 03004010 */  beqz       $v0, .L8004D798
/* 3DF8C 8004D78C 8400A3AF */   sw        $v1, 0x84($sp)
/* 3DF90 8004D790 00110200 */  sll        $v0, $v0, 4
.L8004D794:
/* 3DF94 8004D794 8400A2AF */  sw         $v0, 0x84($sp)
.L8004D798:
/* 3DF98 8004D798 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3DF9C 8004D79C 7470000C */  jal        getcoinslot1_8001c1d0
/* 3DFA0 8004D7A0 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3DFA4 8004D7A4 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3DFA8 8004D7A8 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3DFAC 8004D7AC 06004010 */  beqz       $v0, .L8004D7C8
/* 3DFB0 8004D7B0 843C0424 */   addiu     $a0, $zero, 0x3c84
/* 3DFB4 8004D7B4 F1000524 */  addiu      $a1, $zero, 0xf1
/* 3DFB8 8004D7B8 7800A4AF */  sw         $a0, 0x78($sp)
/* 3DFBC 8004D7BC 7C00A0AF */  sw         $zero, 0x7c($sp)
/* 3DFC0 8004D7C0 00360108 */  j          .L8004D800
/* 3DFC4 8004D7C4 8000A5AF */   sw        $a1, 0x80($sp)
.L8004D7C8:
/* 3DFC8 8004D7C8 18000496 */  lhu        $a0, 0x18($s0)
/* 3DFCC 8004D7CC 16000586 */  lh         $a1, 0x16($s0)
/* 3DFD0 8004D7D0 80190400 */  sll        $v1, $a0, 6
/* 3DFD4 8004D7D4 6000A224 */  addiu      $v0, $a1, 0x60
/* 3DFD8 8004D7D8 03110200 */  sra        $v0, $v0, 4
/* 3DFDC 8004D7DC 3F004230 */  andi       $v0, $v0, 0x3f
/* 3DFE0 8004D7E0 25186200 */  or         $v1, $v1, $v0
/* 3DFE4 8004D7E4 001C0300 */  sll        $v1, $v1, 0x10
/* 3DFE8 8004D7E8 031C0300 */  sra        $v1, $v1, 0x10
/* 3DFEC 8004D7EC 00240400 */  sll        $a0, $a0, 0x10
/* 3DFF0 8004D7F0 03240400 */  sra        $a0, $a0, 0x10
/* 3DFF4 8004D7F4 7800A3AF */  sw         $v1, 0x78($sp)
/* 3DFF8 8004D7F8 7C00A5AF */  sw         $a1, 0x7c($sp)
/* 3DFFC 8004D7FC 8000A4AF */  sw         $a0, 0x80($sp)
.L8004D800:
/* 3E000 8004D800 2800A225 */  addiu      $v0, $t5, 0x28
/* 3E004 8004D804 20004480 */  lb         $a0, 0x20($v0)
/* 3E008 8004D808 01000324 */  addiu      $v1, $zero, 1
/* 3E00C 8004D80C 10008314 */  bne        $a0, $v1, .L8004D850
/* 3E010 8004D810 0F80023C */   lui       $v0, 0x800f
/* 3E014 8004D814 4800A68F */  lw         $a2, 0x48($sp)
/* 3E018 8004D818 00000000 */  nop
/* 3E01C 8004D81C CE00C290 */  lbu        $v0, 0xce($a2)
/* 3E020 8004D820 00000000 */  nop
/* 3E024 8004D824 09004010 */  beqz       $v0, .L8004D84C
/* 3E028 8004D828 1780023C */   lui       $v0, %hi(D_8016F800)
/* 3E02C 8004D82C 9400A38F */  lw         $v1, 0x94($sp)
/* 3E030 8004D830 00F84224 */  addiu      $v0, $v0, %lo(D_8016F800)
/* 3E034 8004D834 21106200 */  addu       $v0, $v1, $v0
/* 3E038 8004D838 0000448C */  lw         $a0, ($v0)
/* 3E03C 8004D83C 00000000 */  nop
/* 3E040 8004D840 01008324 */  addiu      $v1, $a0, 1
/* 3E044 8004D844 15360108 */  j          .L8004D854
/* 3E048 8004D848 000043AC */   sw        $v1, ($v0)
.L8004D84C:
/* 3E04C 8004D84C 0F80023C */  lui        $v0, %hi(D_800F0020)
.L8004D850:
/* 3E050 8004D850 2000448C */  lw         $a0, %lo(D_800F0020)($v0)
.L8004D854:
/* 3E054 8004D854 00000000 */  nop
/* 3E058 8004D858 0B008228 */  slti       $v0, $a0, 0xb
/* 3E05C 8004D85C 10004014 */  bnez       $v0, .L8004D8A0
/* 3E060 8004D860 6666023C */   lui       $v0, 0x6666
/* 3E064 8004D864 AA2A023C */  lui        $v0, 0x2aaa
/* 3E068 8004D868 ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 3E06C 8004D86C F6FF8324 */  addiu      $v1, $a0, -0xa
/* 3E070 8004D870 001A0300 */  sll        $v1, $v1, 8
/* 3E074 8004D874 18006200 */  mult       $v1, $v0
/* 3E078 8004D878 C31F0300 */  sra        $v1, $v1, 0x1f
/* 3E07C 8004D87C 10100000 */  mfhi       $v0
/* 3E080 8004D880 43100200 */  sra        $v0, $v0, 1
/* 3E084 8004D884 23104300 */  subu       $v0, $v0, $v1
/* 3E088 8004D888 00014224 */  addiu      $v0, $v0, 0x100
/* 3E08C 8004D88C 01024328 */  slti       $v1, $v0, 0x201
/* 3E090 8004D890 0B006014 */  bnez       $v1, .L8004D8C0
/* 3E094 8004D894 7000A2AF */   sw        $v0, 0x70($sp)
/* 3E098 8004D898 2F360108 */  j          .L8004D8BC
/* 3E09C 8004D89C 00020224 */   addiu     $v0, $zero, 0x200
.L8004D8A0:
/* 3E0A0 8004D8A0 67664234 */  ori        $v0, $v0, 0x6667
/* 3E0A4 8004D8A4 001A0400 */  sll        $v1, $a0, 8
/* 3E0A8 8004D8A8 18006200 */  mult       $v1, $v0
/* 3E0AC 8004D8AC C31F0300 */  sra        $v1, $v1, 0x1f
/* 3E0B0 8004D8B0 10100000 */  mfhi       $v0
/* 3E0B4 8004D8B4 83100200 */  sra        $v0, $v0, 2
/* 3E0B8 8004D8B8 23104300 */  subu       $v0, $v0, $v1
.L8004D8BC:
/* 3E0BC 8004D8BC 7000A2AF */  sw         $v0, 0x70($sp)
.L8004D8C0:
/* 3E0C0 8004D8C0 2800A225 */  addiu      $v0, $t5, 0x28
/* 3E0C4 8004D8C4 20004480 */  lb         $a0, 0x20($v0)
/* 3E0C8 8004D8C8 01000324 */  addiu      $v1, $zero, 1
/* 3E0CC 8004D8CC 10008314 */  bne        $a0, $v1, .L8004D910
/* 3E0D0 8004D8D0 00000000 */   nop
/* 3E0D4 8004D8D4 4800A38F */  lw         $v1, 0x48($sp)
/* 3E0D8 8004D8D8 00000000 */  nop
/* 3E0DC 8004D8DC CE006290 */  lbu        $v0, 0xce($v1)
/* 3E0E0 8004D8E0 00000000 */  nop
/* 3E0E4 8004D8E4 0A004010 */  beqz       $v0, .L8004D910
/* 3E0E8 8004D8E8 00000000 */   nop
/* 3E0EC 8004D8EC 7000A48F */  lw         $a0, 0x70($sp)
/* 3E0F0 8004D8F0 00000000 */  nop
/* 3E0F4 8004D8F4 01018228 */  slti       $v0, $a0, 0x101
/* 3E0F8 8004D8F8 05004014 */  bnez       $v0, .L8004D910
/* 3E0FC 8004D8FC 00020224 */   addiu     $v0, $zero, 0x200
/* 3E100 8004D900 23104400 */  subu       $v0, $v0, $a0
/* 3E104 8004D904 00140200 */  sll        $v0, $v0, 0x10
/* 3E108 8004D908 03140200 */  sra        $v0, $v0, 0x10
/* 3E10C 8004D90C 7400A2AF */  sw         $v0, 0x74($sp)
.L8004D910:
/* 3E110 8004D910 6400A68F */  lw         $a2, 0x64($sp)
/* 3E114 8004D914 C0280C00 */  sll        $a1, $t4, 3
/* 3E118 8004D918 0D00C010 */  beqz       $a2, .L8004D950
/* 3E11C 8004D91C 9800A5AF */   sw        $a1, 0x98($sp)
/* 3E120 8004D920 0100053C */  lui        $a1, 1
/* 3E124 8004D924 2800A427 */  addiu      $a0, $sp, 0x28
/* 3E128 8004D928 0100063C */  lui        $a2, 1
.L8004D92C:
/* 3E12C 8004D92C 2118A000 */  addu       $v1, $a1, $zero
/* 3E130 8004D930 2128A600 */  addu       $a1, $a1, $a2
/* 3E134 8004D934 038C0300 */  sra        $s1, $v1, 0x10
/* 3E138 8004D938 000080AC */  sw         $zero, ($a0)
/* 3E13C 8004D93C 6400A38F */  lw         $v1, 0x64($sp)
/* 3E140 8004D940 00000000 */  nop
/* 3E144 8004D944 2A102302 */  slt        $v0, $s1, $v1
/* 3E148 8004D948 F8FF4014 */  bnez       $v0, .L8004D92C
/* 3E14C 8004D94C 04008424 */   addiu     $a0, $a0, 4
.L8004D950:
/* 3E150 8004D950 21B84002 */  addu       $s7, $s2, $zero
/* 3E154 8004D954 0600E286 */  lh         $v0, 6($s7)
/* 3E158 8004D958 00000000 */  nop
/* 3E15C 8004D95C DB054010 */  beqz       $v0, .L8004F0CC
/* 3E160 8004D960 0E80033C */   lui       $v1, 0x800e
.L8004D964:
/* 3E164 8004D964 0400E486 */  lh         $a0, 4($s7)
/* 3E168 8004D968 00000000 */  nop
/* 3E16C 8004D96C CC058004 */  bltz       $a0, .L8004F0A0
/* 3E170 8004D970 FF000224 */   addiu     $v0, $zero, 0xff
/* 3E174 8004D974 1E00E392 */  lbu        $v1, 0x1e($s7)
/* 3E178 8004D978 00000000 */  nop
/* 3E17C 8004D97C 08006214 */  bne        $v1, $v0, .L8004D9A0
/* 3E180 8004D980 21980000 */   addu      $s3, $zero, $zero
/* 3E184 8004D984 4800A58F */  lw         $a1, 0x48($sp)
/* 3E188 8004D988 6000A68F */  lw         $a2, 0x60($sp)
/* 3E18C 8004D98C AC00A28C */  lw         $v0, 0xac($a1)
/* 3E190 8004D990 00000000 */  nop
/* 3E194 8004D994 2A10C200 */  slt        $v0, $a2, $v0
/* 3E198 8004D998 C1054014 */  bnez       $v0, .L8004F0A0
/* 3E19C 8004D99C 00000000 */   nop
.L8004D9A0:
/* 3E1A0 8004D9A0 40100400 */  sll        $v0, $a0, 1
/* 3E1A4 8004D9A4 21104400 */  addu       $v0, $v0, $a0
/* 3E1A8 8004D9A8 C0100200 */  sll        $v0, $v0, 3
/* 3E1AC 8004D9AC 1280043C */  lui        $a0, %hi(D_8011864A)
/* 3E1B0 8004D9B0 4A868324 */  addiu      $v1, $a0, %lo(D_8011864A)
/* 3E1B4 8004D9B4 21104300 */  addu       $v0, $v0, $v1
/* 3E1B8 8004D9B8 21880000 */  addu       $s1, $zero, $zero
/* 3E1BC 8004D9BC 5000A2AF */  sw         $v0, 0x50($sp)
/* 3E1C0 8004D9C0 6400A28F */  lw         $v0, 0x64($sp)
/* 3E1C4 8004D9C4 8400BE8F */  lw         $fp, 0x84($sp)
/* 3E1C8 8004D9C8 1B004010 */  beqz       $v0, .L8004DA38
/* 3E1CC 8004D9CC 1780083C */   lui       $t0, 0x8017
/* 3E1D0 8004D9D0 01000724 */  addiu      $a3, $zero, 1
/* 3E1D4 8004D9D4 0100053C */  lui        $a1, 1
/* 3E1D8 8004D9D8 5000A38F */  lw         $v1, 0x50($sp)
/* 3E1DC 8004D9DC 0100063C */  lui        $a2, 1
/* 3E1E0 8004D9E0 08006424 */  addiu      $a0, $v1, 8
.L8004D9E4:
/* 3E1E4 8004D9E4 5000A38F */  lw         $v1, 0x50($sp)
/* 3E1E8 8004D9E8 00000000 */  nop
/* 3E1EC 8004D9EC 21107100 */  addu       $v0, $v1, $s1
/* 3E1F0 8004D9F0 00004390 */  lbu        $v1, ($v0)
/* 3E1F4 8004D9F4 00000000 */  nop
/* 3E1F8 8004D9F8 08006714 */  bne        $v1, $a3, .L8004DA1C
/* 3E1FC 8004D9FC 2118A000 */   addu      $v1, $a1, $zero
/* 3E200 8004DA00 00008394 */  lhu        $v1, ($a0)
/* 3E204 8004DA04 00000000 */  nop
/* 3E208 8004DA08 2A106302 */  slt        $v0, $s3, $v1
/* 3E20C 8004DA0C 02004010 */  beqz       $v0, .L8004DA18
/* 3E210 8004DA10 00000000 */   nop
/* 3E214 8004DA14 21986000 */  addu       $s3, $v1, $zero
.L8004DA18:
/* 3E218 8004DA18 2118A000 */  addu       $v1, $a1, $zero
.L8004DA1C:
/* 3E21C 8004DA1C 2128A600 */  addu       $a1, $a1, $a2
/* 3E220 8004DA20 038C0300 */  sra        $s1, $v1, 0x10
/* 3E224 8004DA24 6400A38F */  lw         $v1, 0x64($sp)
/* 3E228 8004DA28 00000000 */  nop
/* 3E22C 8004DA2C 2A102302 */  slt        $v0, $s1, $v1
/* 3E230 8004DA30 ECFF4014 */  bnez       $v0, .L8004D9E4
/* 3E234 8004DA34 02008424 */   addiu     $a0, $a0, 2
.L8004DA38:
/* 3E238 8004DA38 2800A385 */  lh         $v1, 0x28($t5)
/* 3E23C 8004DA3C 05000224 */  addiu      $v0, $zero, 5
/* 3E240 8004DA40 05006214 */  bne        $v1, $v0, .L8004DA58
/* 3E244 8004DA44 2800A425 */   addiu     $a0, $t5, 0x28
/* 3E248 8004DA48 0E008280 */  lb         $v0, 0xe($a0)
/* 3E24C 8004DA4C 00000000 */  nop
/* 3E250 8004DA50 0B004014 */  bnez       $v0, .L8004DA80
/* 3E254 8004DA54 00000000 */   nop
.L8004DA58:
/* 3E258 8004DA58 20008380 */  lb         $v1, 0x20($a0)
/* 3E25C 8004DA5C 01000224 */  addiu      $v0, $zero, 1
/* 3E260 8004DA60 1D006214 */  bne        $v1, $v0, .L8004DAD8
/* 3E264 8004DA64 00000000 */   nop
/* 3E268 8004DA68 4800A48F */  lw         $a0, 0x48($sp)
/* 3E26C 8004DA6C 00000000 */  nop
/* 3E270 8004DA70 CE008290 */  lbu        $v0, 0xce($a0)
/* 3E274 8004DA74 00000000 */  nop
/* 3E278 8004DA78 17004010 */  beqz       $v0, .L8004DAD8
/* 3E27C 8004DA7C 00000000 */   nop
.L8004DA80:
/* 3E280 8004DA80 9400A58F */  lw         $a1, 0x94($sp)
/* 3E284 8004DA84 08F80225 */  addiu      $v0, $t0, -0x7f8
/* 3E288 8004DA88 2120A200 */  addu       $a0, $a1, $v0
/* 3E28C 8004DA8C 0000838C */  lw         $v1, ($a0)
/* 3E290 8004DA90 00000000 */  nop
/* 3E294 8004DA94 06006014 */  bnez       $v1, .L8004DAB0
/* 3E298 8004DA98 00000000 */   nop
/* 3E29C 8004DA9C 4800A68F */  lw         $a2, 0x48($sp)
/* 3E2A0 8004DAA0 00000000 */  nop
/* 3E2A4 8004DAA4 0400C28C */  lw         $v0, 4($a2)
/* 3E2A8 8004DAA8 00000000 */  nop
/* 3E2AC 8004DAAC 000082AC */  sw         $v0, ($a0)
.L8004DAB0:
/* 3E2B0 8004DAB0 0000E38E */  lw         $v1, ($s7)
/* 3E2B4 8004DAB4 0000828C */  lw         $v0, ($a0)
/* 3E2B8 8004DAB8 00000000 */  nop
/* 3E2BC 8004DABC 23186200 */  subu       $v1, $v1, $v0
/* 3E2C0 8004DAC0 18007E00 */  mult       $v1, $fp
/* 3E2C4 8004DAC4 FEFF023C */  lui        $v0, 0xfffe
/* 3E2C8 8004DAC8 00884234 */  ori        $v0, $v0, 0x8800
/* 3E2CC 8004DACC 12180000 */  mflo       $v1
/* 3E2D0 8004DAD0 C6360108 */  j          .L8004DB18
/* 3E2D4 8004DAD4 21906200 */   addu      $s2, $v1, $v0
.L8004DAD8:
/* 3E2D8 8004DAD8 4800A38F */  lw         $v1, 0x48($sp)
/* 3E2DC 8004DADC 0000E48E */  lw         $a0, ($s7)
/* 3E2E0 8004DAE0 0400628C */  lw         $v0, 4($v1)
/* 3E2E4 8004DAE4 00000000 */  nop
/* 3E2E8 8004DAE8 23208200 */  subu       $a0, $a0, $v0
/* 3E2EC 8004DAEC 18009E00 */  mult       $a0, $fp
/* 3E2F0 8004DAF0 9400A58F */  lw         $a1, 0x94($sp)
/* 3E2F4 8004DAF4 FEFF033C */  lui        $v1, 0xfffe
/* 3E2F8 8004DAF8 00886334 */  ori        $v1, $v1, 0x8800
/* 3E2FC 8004DAFC FFFF0224 */  addiu      $v0, $zero, -1
/* 3E300 8004DB00 7000A2AF */  sw         $v0, 0x70($sp)
/* 3E304 8004DB04 08F80225 */  addiu      $v0, $t0, -0x7f8
/* 3E308 8004DB08 2110A200 */  addu       $v0, $a1, $v0
/* 3E30C 8004DB0C 000040AC */  sw         $zero, ($v0)
/* 3E310 8004DB10 12200000 */  mflo       $a0
/* 3E314 8004DB14 21908300 */  addu       $s2, $a0, $v1
.L8004DB18:
/* 3E318 8004DB18 9400A68F */  lw         $a2, 0x94($sp)
/* 3E31C 8004DB1C 2800A425 */  addiu      $a0, $t5, 0x28
/* 3E320 8004DB20 2110CC00 */  addu       $v0, $a2, $t4
/* 3E324 8004DB24 C0190200 */  sll        $v1, $v0, 7
/* 3E328 8004DB28 21104300 */  addu       $v0, $v0, $v1
/* 3E32C 8004DB2C 40110200 */  sll        $v0, $v0, 5
/* 3E330 8004DB30 23104C00 */  subu       $v0, $v0, $t4
/* 3E334 8004DB34 80100200 */  sll        $v0, $v0, 2
/* 3E338 8004DB38 21104400 */  addu       $v0, $v0, $a0
/* 3E33C 8004DB3C 9000438C */  lw         $v1, 0x90($v0)
/* 3E340 8004DB40 00000000 */  nop
/* 3E344 8004DB44 42190300 */  srl        $v1, $v1, 5
/* 3E348 8004DB48 03006530 */  andi       $a1, $v1, 3
/* 3E34C 8004DB4C DA00A010 */  beqz       $a1, .L8004DEB8
/* 3E350 8004DB50 03000624 */   addiu     $a2, $zero, 3
/* 3E354 8004DB54 2800A485 */  lh         $a0, 0x28($t5)
/* 3E358 8004DB58 00000000 */  nop
/* 3E35C 8004DB5C D6008610 */  beq        $a0, $a2, .L8004DEB8
/* 3E360 8004DB60 26000224 */   addiu     $v0, $zero, 0x26
/* 3E364 8004DB64 D4008210 */  beq        $a0, $v0, .L8004DEB8
/* 3E368 8004DB68 FEFF103C */   lui       $s0, 0xfffe
/* 3E36C 8004DB6C 00881036 */  ori        $s0, $s0, 0x8800
/* 3E370 8004DB70 0200043C */  lui        $a0, 2
/* 3E374 8004DB74 00C08434 */  ori        $a0, $a0, 0xc000
/* 3E378 8004DB78 02000224 */  addiu      $v0, $zero, 2
/* 3E37C 8004DB7C 6000A210 */  beq        $a1, $v0, .L8004DD00
/* 3E380 8004DB80 23185002 */   subu      $v1, $s2, $s0
/* 3E384 8004DB84 0300A228 */  slti       $v0, $a1, 3
/* 3E388 8004DB88 05004010 */  beqz       $v0, .L8004DBA0
/* 3E38C 8004DB8C 01000224 */   addiu     $v0, $zero, 1
/* 3E390 8004DB90 0700A210 */  beq        $a1, $v0, .L8004DBB0
/* 3E394 8004DB94 00000000 */   nop
/* 3E398 8004DB98 A9370108 */  j          .L8004DEA4
/* 3E39C 8004DB9C 00000000 */   nop
.L8004DBA0:
/* 3E3A0 8004DBA0 A900A610 */  beq        $a1, $a2, .L8004DE48
/* 3E3A4 8004DBA4 00000000 */   nop
/* 3E3A8 8004DBA8 A9370108 */  j          .L8004DEA4
/* 3E3AC 8004DBAC 00000000 */   nop
.L8004DBB0:
/* 3E3B0 8004DBB0 A7006018 */  blez       $v1, .L8004DE50
/* 3E3B4 8004DBB4 2A106400 */   slt       $v0, $v1, $a0
/* 3E3B8 8004DBB8 BA004010 */  beqz       $v0, .L8004DEA4
/* 3E3BC 8004DBBC 23186400 */   subu      $v1, $v1, $a0
/* 3E3C0 8004DBC0 21406000 */  addu       $t0, $v1, $zero
/* 3E3C4 8004DBC4 0200073C */  lui        $a3, 2
/* 3E3C8 8004DBC8 00C0E734 */  ori        $a3, $a3, 0xc000
/* 3E3CC 8004DBCC 06006104 */  bgez       $v1, .L8004DBE8
/* 3E3D0 8004DBD0 01000A24 */   addiu     $t2, $zero, 1
/* 3E3D4 8004DBD4 23400300 */  negu       $t0, $v1
/* 3E3D8 8004DBD8 03006104 */  bgez       $v1, .L8004DBE8
/* 3E3DC 8004DBDC FFFF0A24 */   addiu     $t2, $zero, -1
/* 3E3E0 8004DBE0 21180001 */  addu       $v1, $t0, $zero
/* 3E3E4 8004DBE4 23500A00 */  negu       $t2, $t2
.L8004DBE8:
/* 3E3E8 8004DBE8 21280001 */  addu       $a1, $t0, $zero
/* 3E3EC 8004DBEC 21200000 */  addu       $a0, $zero, $zero
/* 3E3F0 8004DBF0 0100093C */  lui        $t1, 1
/* 3E3F4 8004DBF4 06000011 */  beqz       $t0, .L8004DC10
/* 3E3F8 8004DBF8 00482935 */   ori       $t1, $t1, 0x4800
.L8004DBFC:
/* 3E3FC 8004DBFC C2170500 */  srl        $v0, $a1, 0x1f
/* 3E400 8004DC00 2110A200 */  addu       $v0, $a1, $v0
/* 3E404 8004DC04 43280200 */  sra        $a1, $v0, 1
/* 3E408 8004DC08 FCFFA014 */  bnez       $a1, .L8004DBFC
/* 3E40C 8004DC0C 01008424 */   addiu     $a0, $a0, 1
.L8004DC10:
/* 3E410 8004DC10 21286000 */  addu       $a1, $v1, $zero
/* 3E414 8004DC14 06006010 */  beqz       $v1, .L8004DC30
/* 3E418 8004DC18 21300000 */   addu      $a2, $zero, $zero
.L8004DC1C:
/* 3E41C 8004DC1C C2170500 */  srl        $v0, $a1, 0x1f
/* 3E420 8004DC20 2110A200 */  addu       $v0, $a1, $v0
/* 3E424 8004DC24 43280200 */  sra        $a1, $v0, 1
/* 3E428 8004DC28 FCFFA014 */  bnez       $a1, .L8004DC1C
/* 3E42C 8004DC2C 0100C624 */   addiu     $a2, $a2, 1
.L8004DC30:
/* 3E430 8004DC30 21288600 */  addu       $a1, $a0, $a2
/* 3E434 8004DC34 E0FFA624 */  addiu      $a2, $a1, -0x20
/* 3E438 8004DC38 0500C104 */  bgez       $a2, .L8004DC50
/* 3E43C 8004DC3C 1800C400 */   mult      $a2, $a0
/* 3E440 8004DC40 21300000 */  addu       $a2, $zero, $zero
/* 3E444 8004DC44 21200000 */  addu       $a0, $zero, $zero
/* 3E448 8004DC48 1E370108 */  j          .L8004DC78
/* 3E44C 8004DC4C 21280000 */   addu      $a1, $zero, $zero
.L8004DC50:
/* 3E450 8004DC50 12100000 */  mflo       $v0
/* 3E454 8004DC54 00000000 */  nop
/* 3E458 8004DC58 00000000 */  nop
/* 3E45C 8004DC5C 1A004500 */  div        $zero, $v0, $a1
/* 3E460 8004DC60 12100000 */  mflo       $v0
/* 3E464 8004DC64 0200A014 */  bnez       $a1, .L8004DC70
/* 3E468 8004DC68 00000000 */   nop
/* 3E46C 8004DC6C CD010000 */  break      0, 7
.L8004DC70:
/* 3E470 8004DC70 21204000 */   addu      $a0, $v0, $zero
/* 3E474 8004DC74 2328C400 */  subu       $a1, $a2, $a0
.L8004DC78:
/* 3E478 8004DC78 1F008004 */  bltz       $a0, .L8004DCF8
/* 3E47C 8004DC7C 21100000 */   addu      $v0, $zero, $zero
/* 3E480 8004DC80 8800A004 */  bltz       $a1, .L8004DEA4
/* 3E484 8004DC84 23902201 */   subu      $s2, $t1, $v0
/* 3E488 8004DC88 0300C104 */  bgez       $a2, .L8004DC98
/* 3E48C 8004DC8C 0710C700 */   srav      $v0, $a3, $a2
/* 3E490 8004DC90 3E370108 */  j          .L8004DCF8
/* 3E494 8004DC94 21100000 */   addu      $v0, $zero, $zero
.L8004DC98:
/* 3E498 8004DC98 0B004014 */  bnez       $v0, .L8004DCC8
/* 3E49C 8004DC9C 06208800 */   srlv      $a0, $t0, $a0
/* 3E4A0 8004DCA0 1A000701 */  div        $zero, $t0, $a3
/* 3E4A4 8004DCA4 12100000 */  mflo       $v0
/* 3E4A8 8004DCA8 0200E014 */  bnez       $a3, .L8004DCB4
/* 3E4AC 8004DCAC 00000000 */   nop
/* 3E4B0 8004DCB0 CD010000 */  break      0, 7
.L8004DCB4:
/* 3E4B4 8004DCB4 18004300 */   mult      $v0, $v1
/* 3E4B8 8004DCB8 12200000 */  mflo       $a0
/* 3E4BC 8004DCBC 00000000 */  nop
/* 3E4C0 8004DCC0 3D370108 */  j          .L8004DCF4
/* 3E4C4 8004DCC4 18004401 */   mult      $t2, $a0
.L8004DCC8:
/* 3E4C8 8004DCC8 0618A300 */  srlv       $v1, $v1, $a1
/* 3E4CC 8004DCCC 18008300 */  mult       $a0, $v1
/* 3E4D0 8004DCD0 12200000 */  mflo       $a0
/* 3E4D4 8004DCD4 0610C700 */  srlv       $v0, $a3, $a2
/* 3E4D8 8004DCD8 00000000 */  nop
/* 3E4DC 8004DCDC 1B008200 */  divu       $zero, $a0, $v0
/* 3E4E0 8004DCE0 12200000 */  mflo       $a0
/* 3E4E4 8004DCE4 02004014 */  bnez       $v0, .L8004DCF0
/* 3E4E8 8004DCE8 00000000 */   nop
/* 3E4EC 8004DCEC CD010000 */  break      0, 7
.L8004DCF0:
/* 3E4F0 8004DCF0 18004401 */   mult      $t2, $a0
.L8004DCF4:
/* 3E4F4 8004DCF4 12100000 */  mflo       $v0
.L8004DCF8:
/* 3E4F8 8004DCF8 A9370108 */  j          .L8004DEA4
/* 3E4FC 8004DCFC 23902201 */   subu      $s2, $t1, $v0
.L8004DD00:
/* 3E500 8004DD00 53006018 */  blez       $v1, .L8004DE50
/* 3E504 8004DD04 2A106400 */   slt       $v0, $v1, $a0
/* 3E508 8004DD08 66004010 */  beqz       $v0, .L8004DEA4
/* 3E50C 8004DD0C 21486000 */   addu      $t1, $v1, $zero
/* 3E510 8004DD10 21506000 */  addu       $t2, $v1, $zero
/* 3E514 8004DD14 0200073C */  lui        $a3, 2
/* 3E518 8004DD18 00C0E734 */  ori        $a3, $a3, 0xc000
/* 3E51C 8004DD1C 06006104 */  bgez       $v1, .L8004DD38
/* 3E520 8004DD20 01000B24 */   addiu     $t3, $zero, 1
/* 3E524 8004DD24 23480300 */  negu       $t1, $v1
/* 3E528 8004DD28 03006104 */  bgez       $v1, .L8004DD38
/* 3E52C 8004DD2C FFFF0B24 */   addiu     $t3, $zero, -1
/* 3E530 8004DD30 21502001 */  addu       $t2, $t1, $zero
/* 3E534 8004DD34 23580B00 */  negu       $t3, $t3
.L8004DD38:
/* 3E538 8004DD38 21282001 */  addu       $a1, $t1, $zero
/* 3E53C 8004DD3C 06002011 */  beqz       $t1, .L8004DD58
/* 3E540 8004DD40 21400000 */   addu      $t0, $zero, $zero
.L8004DD44:
/* 3E544 8004DD44 C2170500 */  srl        $v0, $a1, 0x1f
/* 3E548 8004DD48 2110A200 */  addu       $v0, $a1, $v0
/* 3E54C 8004DD4C 43280200 */  sra        $a1, $v0, 1
/* 3E550 8004DD50 FCFFA014 */  bnez       $a1, .L8004DD44
/* 3E554 8004DD54 01000825 */   addiu     $t0, $t0, 1
.L8004DD58:
/* 3E558 8004DD58 21284001 */  addu       $a1, $t2, $zero
/* 3E55C 8004DD5C 06004011 */  beqz       $t2, .L8004DD78
/* 3E560 8004DD60 21300000 */   addu      $a2, $zero, $zero
.L8004DD64:
/* 3E564 8004DD64 C2170500 */  srl        $v0, $a1, 0x1f
/* 3E568 8004DD68 2110A200 */  addu       $v0, $a1, $v0
/* 3E56C 8004DD6C 43280200 */  sra        $a1, $v0, 1
/* 3E570 8004DD70 FCFFA014 */  bnez       $a1, .L8004DD64
/* 3E574 8004DD74 0100C624 */   addiu     $a2, $a2, 1
.L8004DD78:
/* 3E578 8004DD78 21280601 */  addu       $a1, $t0, $a2
/* 3E57C 8004DD7C E0FFA624 */  addiu      $a2, $a1, -0x20
/* 3E580 8004DD80 0500C104 */  bgez       $a2, .L8004DD98
/* 3E584 8004DD84 1800C800 */   mult      $a2, $t0
/* 3E588 8004DD88 21300000 */  addu       $a2, $zero, $zero
/* 3E58C 8004DD8C 21200000 */  addu       $a0, $zero, $zero
/* 3E590 8004DD90 70370108 */  j          .L8004DDC0
/* 3E594 8004DD94 21180000 */   addu      $v1, $zero, $zero
.L8004DD98:
/* 3E598 8004DD98 12100000 */  mflo       $v0
/* 3E59C 8004DD9C 00000000 */  nop
/* 3E5A0 8004DDA0 00000000 */  nop
/* 3E5A4 8004DDA4 1A004500 */  div        $zero, $v0, $a1
/* 3E5A8 8004DDA8 12100000 */  mflo       $v0
/* 3E5AC 8004DDAC 0200A014 */  bnez       $a1, .L8004DDB8
/* 3E5B0 8004DDB0 00000000 */   nop
/* 3E5B4 8004DDB4 CD010000 */  break      0, 7
.L8004DDB8:
/* 3E5B8 8004DDB8 21204000 */   addu      $a0, $v0, $zero
/* 3E5BC 8004DDBC 2318C400 */  subu       $v1, $a2, $a0
.L8004DDC0:
/* 3E5C0 8004DDC0 1F008004 */  bltz       $a0, .L8004DE40
/* 3E5C4 8004DDC4 21100000 */   addu      $v0, $zero, $zero
/* 3E5C8 8004DDC8 36006004 */  bltz       $v1, .L8004DEA4
/* 3E5CC 8004DDCC 21900202 */   addu      $s2, $s0, $v0
/* 3E5D0 8004DDD0 0300C104 */  bgez       $a2, .L8004DDE0
/* 3E5D4 8004DDD4 0710C700 */   srav      $v0, $a3, $a2
/* 3E5D8 8004DDD8 90370108 */  j          .L8004DE40
/* 3E5DC 8004DDDC 21100000 */   addu      $v0, $zero, $zero
.L8004DDE0:
/* 3E5E0 8004DDE0 0B004014 */  bnez       $v0, .L8004DE10
/* 3E5E4 8004DDE4 06208900 */   srlv      $a0, $t1, $a0
/* 3E5E8 8004DDE8 1A002701 */  div        $zero, $t1, $a3
/* 3E5EC 8004DDEC 12100000 */  mflo       $v0
/* 3E5F0 8004DDF0 0200E014 */  bnez       $a3, .L8004DDFC
/* 3E5F4 8004DDF4 00000000 */   nop
/* 3E5F8 8004DDF8 CD010000 */  break      0, 7
.L8004DDFC:
/* 3E5FC 8004DDFC 18004A00 */   mult      $v0, $t2
/* 3E600 8004DE00 12200000 */  mflo       $a0
/* 3E604 8004DE04 00000000 */  nop
/* 3E608 8004DE08 8F370108 */  j          .L8004DE3C
/* 3E60C 8004DE0C 18006401 */   mult      $t3, $a0
.L8004DE10:
/* 3E610 8004DE10 06186A00 */  srlv       $v1, $t2, $v1
/* 3E614 8004DE14 18008300 */  mult       $a0, $v1
/* 3E618 8004DE18 12200000 */  mflo       $a0
/* 3E61C 8004DE1C 0610C700 */  srlv       $v0, $a3, $a2
/* 3E620 8004DE20 00000000 */  nop
/* 3E624 8004DE24 1B008200 */  divu       $zero, $a0, $v0
/* 3E628 8004DE28 12200000 */  mflo       $a0
/* 3E62C 8004DE2C 02004014 */  bnez       $v0, .L8004DE38
/* 3E630 8004DE30 00000000 */   nop
/* 3E634 8004DE34 CD010000 */  break      0, 7
.L8004DE38:
/* 3E638 8004DE38 18006401 */   mult      $t3, $a0
.L8004DE3C:
/* 3E63C 8004DE3C 12100000 */  mflo       $v0
.L8004DE40:
/* 3E640 8004DE40 A9370108 */  j          .L8004DEA4
/* 3E644 8004DE44 21900202 */   addu      $s2, $s0, $v0
.L8004DE48:
/* 3E648 8004DE48 0400601C */  bgtz       $v1, .L8004DE5C
/* 3E64C 8004DE4C 0F80023C */   lui       $v0, %hi(D_800F001C)
.L8004DE50:
/* 3E650 8004DE50 40100300 */  sll        $v0, $v1, 1
/* 3E654 8004DE54 A9370108 */  j          .L8004DEA4
/* 3E658 8004DE58 21905000 */   addu      $s2, $v0, $s0
.L8004DE5C:
/* 3E65C 8004DE5C 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 3E660 8004DE60 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3E664 8004DE64 A400ADAF */  sw         $t5, 0xa4($sp)
/* 3E668 8004DE68 F4F1000C */  jal        rsin
/* 3E66C 8004DE6C 40210400 */   sll       $a0, $a0, 5
/* 3E670 8004DE70 00120200 */  sll        $v0, $v0, 8
/* 3E674 8004DE74 03130200 */  sra        $v0, $v0, 0xc
/* 3E678 8004DE78 4800A58F */  lw         $a1, 0x48($sp)
/* 3E67C 8004DE7C 0000E38E */  lw         $v1, ($s7)
/* 3E680 8004DE80 0400A48C */  lw         $a0, 4($a1)
/* 3E684 8004DE84 00024224 */  addiu      $v0, $v0, 0x200
/* 3E688 8004DE88 23186400 */  subu       $v1, $v1, $a0
/* 3E68C 8004DE8C 18006200 */  mult       $v1, $v0
/* 3E690 8004DE90 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3E694 8004DE94 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3E698 8004DE98 12180000 */  mflo       $v1
/* 3E69C 8004DE9C 02190300 */  srl        $v1, $v1, 4
/* 3E6A0 8004DEA0 21907000 */  addu       $s2, $v1, $s0
.L8004DEA4:
/* 3E6A4 8004DEA4 0500601A */  blez       $s3, .L8004DEBC
/* 3E6A8 8004DEA8 83A21200 */   sra       $s4, $s2, 0xa
/* 3E6AC 8004DEAC 8400A28F */  lw         $v0, 0x84($sp)
/* 3E6B0 8004DEB0 00000000 */  nop
/* 3E6B4 8004DEB4 40F00200 */  sll        $fp, $v0, 1
.L8004DEB8:
/* 3E6B8 8004DEB8 83A21200 */  sra        $s4, $s2, 0xa
.L8004DEBC:
/* 3E6BC 8004DEBC 5200822A */  slti       $v0, $s4, 0x52
/* 3E6C0 8004DEC0 81044010 */  beqz       $v0, .L8004F0C8
/* 3E6C4 8004DEC4 1800D303 */   mult      $fp, $s3
/* 3E6C8 8004DEC8 12100000 */  mflo       $v0
/* 3E6CC 8004DECC 03120200 */  sra        $v0, $v0, 8
/* 3E6D0 8004DED0 20004224 */  addiu      $v0, $v0, 0x20
/* 3E6D4 8004DED4 21108202 */  addu       $v0, $s4, $v0
/* 3E6D8 8004DED8 A1FF4228 */  slti       $v0, $v0, -0x5f
/* 3E6DC 8004DEDC 70044014 */  bnez       $v0, .L8004F0A0
/* 3E6E0 8004DEE0 2800A425 */   addiu     $a0, $t5, 0x28
/* 3E6E4 8004DEE4 9400A38F */  lw         $v1, 0x94($sp)
/* 3E6E8 8004DEE8 00000000 */  nop
/* 3E6EC 8004DEEC 21106C00 */  addu       $v0, $v1, $t4
/* 3E6F0 8004DEF0 C0190200 */  sll        $v1, $v0, 7
/* 3E6F4 8004DEF4 21104300 */  addu       $v0, $v0, $v1
/* 3E6F8 8004DEF8 40110200 */  sll        $v0, $v0, 5
/* 3E6FC 8004DEFC 23104C00 */  subu       $v0, $v0, $t4
/* 3E700 8004DF00 80100200 */  sll        $v0, $v0, 2
/* 3E704 8004DF04 21104400 */  addu       $v0, $v0, $a0
/* 3E708 8004DF08 9000438C */  lw         $v1, 0x90($v0)
/* 3E70C 8004DF0C 00000000 */  nop
/* 3E710 8004DF10 021B0300 */  srl        $v1, $v1, 0xc
/* 3E714 8004DF14 03006330 */  andi       $v1, $v1, 3
/* 3E718 8004DF18 0A006010 */  beqz       $v1, .L8004DF44
/* 3E71C 8004DF1C 03000224 */   addiu     $v0, $zero, 3
/* 3E720 8004DF20 2800A385 */  lh         $v1, 0x28($t5)
/* 3E724 8004DF24 00000000 */  nop
/* 3E728 8004DF28 06006210 */  beq        $v1, $v0, .L8004DF44
/* 3E72C 8004DF2C 26000224 */   addiu     $v0, $zero, 0x26
/* 3E730 8004DF30 04006210 */  beq        $v1, $v0, .L8004DF44
/* 3E734 8004DF34 FFFF023C */   lui       $v0, 0xffff
/* 3E738 8004DF38 004C4234 */  ori        $v0, $v0, 0x4c00
/* 3E73C 8004DF3C 23905200 */  subu       $s2, $v0, $s2
/* 3E740 8004DF40 83A21200 */  sra        $s4, $s2, 0xa
.L8004DF44:
/* 3E744 8004DF44 3201601A */  blez       $s3, .L8004E410
/* 3E748 8004DF48 1780043C */   lui       $a0, %hi(D_8016F9E0)
/* 3E74C 8004DF4C 9400A58F */  lw         $a1, 0x94($sp)
/* 3E750 8004DF50 E0F98224 */  addiu      $v0, $a0, %lo(D_8016F9E0)
/* 3E754 8004DF54 8800B4AF */  sw         $s4, 0x88($sp)
/* 3E758 8004DF58 2120A200 */  addu       $a0, $a1, $v0
/* 3E75C 8004DF5C 0000838C */  lw         $v1, ($a0)
/* 3E760 8004DF60 FFFF0224 */  addiu      $v0, $zero, -1
/* 3E764 8004DF64 04006214 */  bne        $v1, $v0, .L8004DF78
/* 3E768 8004DF68 00000000 */   nop
/* 3E76C 8004DF6C 6000A68F */  lw         $a2, 0x60($sp)
/* 3E770 8004DF70 00000000 */  nop
/* 3E774 8004DF74 000086AC */  sw         $a2, ($a0)
.L8004DF78:
/* 3E778 8004DF78 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3E77C 8004DF7C 7470000C */  jal        getcoinslot1_8001c1d0
/* 3E780 8004DF80 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3E784 8004DF84 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3E788 8004DF88 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3E78C 8004DF8C 1E004010 */  beqz       $v0, .L8004E008
/* 3E790 8004DF90 26000224 */   addiu     $v0, $zero, 0x26
/* 3E794 8004DF94 2800A385 */  lh         $v1, 0x28($t5)
/* 3E798 8004DF98 00000000 */  nop
/* 3E79C 8004DF9C 1A006210 */  beq        $v1, $v0, .L8004E008
/* 3E7A0 8004DFA0 2800A425 */   addiu     $a0, $t5, 0x28
/* 3E7A4 8004DFA4 0180053C */  lui        $a1, %hi(D_80013D14)
/* 3E7A8 8004DFA8 9400A38F */  lw         $v1, 0x94($sp)
/* 3E7AC 8004DFAC 143DA524 */  addiu      $a1, $a1, %lo(D_80013D14)
/* 3E7B0 8004DFB0 21106C00 */  addu       $v0, $v1, $t4
/* 3E7B4 8004DFB4 C0190200 */  sll        $v1, $v0, 7
/* 3E7B8 8004DFB8 21104300 */  addu       $v0, $v0, $v1
/* 3E7BC 8004DFBC 40110200 */  sll        $v0, $v0, 5
/* 3E7C0 8004DFC0 23104C00 */  subu       $v0, $v0, $t4
/* 3E7C4 8004DFC4 80100200 */  sll        $v0, $v0, 2
/* 3E7C8 8004DFC8 21104400 */  addu       $v0, $v0, $a0
/* 3E7CC 8004DFCC 8A004490 */  lbu        $a0, 0x8a($v0)
/* 3E7D0 8004DFD0 40100C00 */  sll        $v0, $t4, 1
/* 3E7D4 8004DFD4 21104C00 */  addu       $v0, $v0, $t4
/* 3E7D8 8004DFD8 80100200 */  sll        $v0, $v0, 2
/* 3E7DC 8004DFDC 23104C00 */  subu       $v0, $v0, $t4
/* 3E7E0 8004DFE0 0A008438 */  xori       $a0, $a0, 0xa
/* 3E7E4 8004DFE4 2B200400 */  sltu       $a0, $zero, $a0
/* 3E7E8 8004DFE8 00210400 */  sll        $a0, $a0, 4
/* 3E7EC 8004DFEC 21208500 */  addu       $a0, $a0, $a1
/* 3E7F0 8004DFF0 00008394 */  lhu        $v1, ($a0)
/* 3E7F4 8004DFF4 C0100200 */  sll        $v0, $v0, 3
/* 3E7F8 8004DFF8 21186200 */  addu       $v1, $v1, $v0
/* 3E7FC 8004DFFC 001C0300 */  sll        $v1, $v1, 0x10
/* 3E800 8004E000 26380108 */  j          .L8004E098
/* 3E804 8004E004 03140300 */   sra       $v0, $v1, 0x10
.L8004E008:
/* 3E808 8004E008 2800A425 */  addiu      $a0, $t5, 0x28
/* 3E80C 8004E00C 8A008290 */  lbu        $v0, 0x8a($a0)
/* 3E810 8004E010 02000524 */  addiu      $a1, $zero, 2
/* 3E814 8004E014 0A004510 */  beq        $v0, $a1, .L8004E040
/* 3E818 8004E018 0A000324 */   addiu     $v1, $zero, 0xa
/* 3E81C 8004E01C 08004310 */  beq        $v0, $v1, .L8004E040
/* 3E820 8004E020 0100023C */   lui       $v0, 1
/* 3E824 8004E024 21108200 */  addu       $v0, $a0, $v0
/* 3E828 8004E028 06434290 */  lbu        $v0, 0x4306($v0)
/* 3E82C 8004E02C 00000000 */  nop
/* 3E830 8004E030 03004510 */  beq        $v0, $a1, .L8004E040
/* 3E834 8004E034 00000000 */   nop
/* 3E838 8004E038 0C004314 */  bne        $v0, $v1, .L8004E06C
/* 3E83C 8004E03C 40180C00 */   sll       $v1, $t4, 1
.L8004E040:
/* 3E840 8004E040 2800A385 */  lh         $v1, 0x28($t5)
/* 3E844 8004E044 03000224 */  addiu      $v0, $zero, 3
/* 3E848 8004E048 07006210 */  beq        $v1, $v0, .L8004E068
/* 3E84C 8004E04C 00000000 */   nop
/* 3E850 8004E050 26000224 */  addiu      $v0, $zero, 0x26
/* 3E854 8004E054 04006210 */  beq        $v1, $v0, .L8004E068
/* 3E858 8004E058 00000000 */   nop
/* 3E85C 8004E05C 15000224 */  addiu      $v0, $zero, 0x15
/* 3E860 8004E060 0C006214 */  bne        $v1, $v0, .L8004E094
/* 3E864 8004E064 00000000 */   nop
.L8004E068:
/* 3E868 8004E068 40180C00 */  sll        $v1, $t4, 1
.L8004E06C:
/* 3E86C 8004E06C FFFF6324 */  addiu      $v1, $v1, -1
/* 3E870 8004E070 40100300 */  sll        $v0, $v1, 1
/* 3E874 8004E074 21104300 */  addu       $v0, $v0, $v1
/* 3E878 8004E078 80100200 */  sll        $v0, $v0, 2
/* 3E87C 8004E07C 23104300 */  subu       $v0, $v0, $v1
/* 3E880 8004E080 C0100200 */  sll        $v0, $v0, 3
/* 3E884 8004E084 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 3E888 8004E088 00140200 */  sll        $v0, $v0, 0x10
/* 3E88C 8004E08C 26380108 */  j          .L8004E098
/* 3E890 8004E090 03140200 */   sra       $v0, $v0, 0x10
.L8004E094:
/* 3E894 8004E094 80FF0224 */  addiu      $v0, $zero, -0x80
.L8004E098:
/* 3E898 8004E098 21B04000 */  addu       $s6, $v0, $zero
/* 3E89C 8004E09C 0A00E386 */  lh         $v1, 0xa($s7)
/* 3E8A0 8004E0A0 007D0224 */  addiu      $v0, $zero, 0x7d00
/* 3E8A4 8004E0A4 47006214 */  bne        $v1, $v0, .L8004E1C4
/* 3E8A8 8004E0A8 00000000 */   nop
/* 3E8AC 8004E0AC 6400A48F */  lw         $a0, 0x64($sp)
/* 3E8B0 8004E0B0 00000000 */  nop
/* 3E8B4 8004E0B4 FA038010 */  beqz       $a0, .L8004F0A0
/* 3E8B8 8004E0B8 21880000 */   addu      $s1, $zero, $zero
/* 3E8BC 8004E0BC 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3E8C0 8004E0C0 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 3E8C4 8004E0C4 9400A58F */  lw         $a1, 0x94($sp)
/* 3E8C8 8004E0C8 0100123C */  lui        $s2, 1
/* 3E8CC 8004E0CC 2180C002 */  addu       $s0, $s6, $zero
/* 3E8D0 8004E0D0 2118AC00 */  addu       $v1, $a1, $t4
/* 3E8D4 8004E0D4 C0210300 */  sll        $a0, $v1, 7
/* 3E8D8 8004E0D8 21186400 */  addu       $v1, $v1, $a0
/* 3E8DC 8004E0DC 40190300 */  sll        $v1, $v1, 5
/* 3E8E0 8004E0E0 23186C00 */  subu       $v1, $v1, $t4
/* 3E8E4 8004E0E4 80180300 */  sll        $v1, $v1, 2
/* 3E8E8 8004E0E8 21986200 */  addu       $s3, $v1, $v0
.L8004E0EC:
/* 3E8EC 8004E0EC 5000A68F */  lw         $a2, 0x50($sp)
/* 3E8F0 8004E0F0 00000000 */  nop
/* 3E8F4 8004E0F4 2110D100 */  addu       $v0, $a2, $s1
/* 3E8F8 8004E0F8 00004490 */  lbu        $a0, ($v0)
/* 3E8FC 8004E0FC 01000324 */  addiu      $v1, $zero, 1
/* 3E900 8004E100 27008314 */  bne        $a0, $v1, .L8004E1A0
/* 3E904 8004E104 21104002 */   addu      $v0, $s2, $zero
/* 3E908 8004E108 40101100 */  sll        $v0, $s1, 1
/* 3E90C 8004E10C 2110C200 */  addu       $v0, $a2, $v0
/* 3E910 8004E110 08004394 */  lhu        $v1, 8($v0)
/* 3E914 8004E114 00000000 */  nop
/* 3E918 8004E118 18007E00 */  mult       $v1, $fp
/* 3E91C 8004E11C 9000628E */  lw         $v0, 0x90($s3)
/* 3E920 8004E120 8800B48F */  lw         $s4, 0x88($sp)
/* 3E924 8004E124 02130200 */  srl        $v0, $v0, 0xc
/* 3E928 8004E128 03004230 */  andi       $v0, $v0, 3
/* 3E92C 8004E12C 12180000 */  mflo       $v1
/* 3E930 8004E130 08004010 */  beqz       $v0, .L8004E154
/* 3E934 8004E134 03420300 */   sra       $t0, $v1, 8
/* 3E938 8004E138 2800A385 */  lh         $v1, 0x28($t5)
/* 3E93C 8004E13C 03000224 */  addiu      $v0, $zero, 3
/* 3E940 8004E140 04006210 */  beq        $v1, $v0, .L8004E154
/* 3E944 8004E144 26000224 */   addiu     $v0, $zero, 0x26
/* 3E948 8004E148 03006210 */  beq        $v1, $v0, .L8004E158
/* 3E94C 8004E14C 21308001 */   addu      $a2, $t4, $zero
/* 3E950 8004E150 23A08802 */  subu       $s4, $s4, $t0
.L8004E154:
/* 3E954 8004E154 21308001 */  addu       $a2, $t4, $zero
.L8004E158:
/* 3E958 8004E158 D000A48F */  lw         $a0, 0xd0($sp)
/* 3E95C 8004E15C D400A58F */  lw         $a1, 0xd4($sp)
/* 3E960 8004E160 5C00A28F */  lw         $v0, 0x5c($sp)
/* 3E964 8004E164 7400A38F */  lw         $v1, 0x74($sp)
/* 3E968 8004E168 21380002 */  addu       $a3, $s0, $zero
/* 3E96C 8004E16C 1000B4AF */  sw         $s4, 0x10($sp)
/* 3E970 8004E170 1400A8AF */  sw         $t0, 0x14($sp)
/* 3E974 8004E174 1800B1AF */  sw         $s1, 0x18($sp)
/* 3E978 8004E178 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 3E97C 8004E17C A000ACAF */  sw         $t4, 0xa0($sp)
/* 3E980 8004E180 A400ADAF */  sw         $t5, 0xa4($sp)
/* 3E984 8004E184 2000A2AF */  sw         $v0, 0x20($sp)
/* 3E988 8004E188 2032010C */  jal        FUN_8004c880
/* 3E98C 8004E18C 2400A3AF */   sw        $v1, 0x24($sp)
/* 3E990 8004E190 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3E994 8004E194 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3E998 8004E198 D400A2AF */  sw         $v0, 0xd4($sp)
/* 3E99C 8004E19C 21104002 */  addu       $v0, $s2, $zero
.L8004E1A0:
/* 3E9A0 8004E1A0 0100033C */  lui        $v1, 1
/* 3E9A4 8004E1A4 21904302 */  addu       $s2, $s2, $v1
/* 3E9A8 8004E1A8 6400A48F */  lw         $a0, 0x64($sp)
/* 3E9AC 8004E1AC 038C0200 */  sra        $s1, $v0, 0x10
/* 3E9B0 8004E1B0 2A182402 */  slt        $v1, $s1, $a0
/* 3E9B4 8004E1B4 CDFF6014 */  bnez       $v1, .L8004E0EC
/* 3E9B8 8004E1B8 20001026 */   addiu     $s0, $s0, 0x20
/* 3E9BC 8004E1BC 293C0108 */  j          .L8004F0A4
/* 3E9C0 8004E1C0 2800F726 */   addiu     $s7, $s7, 0x28
.L8004E1C4:
/* 3E9C4 8004E1C4 6400A58F */  lw         $a1, 0x64($sp)
/* 3E9C8 8004E1C8 00000000 */  nop
/* 3E9CC 8004E1CC B403A010 */  beqz       $a1, .L8004F0A0
/* 3E9D0 8004E1D0 21880000 */   addu      $s1, $zero, $zero
/* 3E9D4 8004E1D4 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3E9D8 8004E1D8 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 3E9DC 8004E1DC 9400A68F */  lw         $a2, 0x94($sp)
/* 3E9E0 8004E1E0 2190C002 */  addu       $s2, $s6, $zero
/* 3E9E4 8004E1E4 21984002 */  addu       $s3, $s2, $zero
/* 3E9E8 8004E1E8 21800000 */  addu       $s0, $zero, $zero
/* 3E9EC 8004E1EC 03001624 */  addiu      $s6, $zero, 3
/* 3E9F0 8004E1F0 2118CC00 */  addu       $v1, $a2, $t4
/* 3E9F4 8004E1F4 C0210300 */  sll        $a0, $v1, 7
/* 3E9F8 8004E1F8 21186400 */  addu       $v1, $v1, $a0
/* 3E9FC 8004E1FC 40190300 */  sll        $v1, $v1, 5
/* 3EA00 8004E200 23186C00 */  subu       $v1, $v1, $t4
/* 3EA04 8004E204 80180300 */  sll        $v1, $v1, 2
/* 3EA08 8004E208 21A86200 */  addu       $s5, $v1, $v0
.L8004E20C:
/* 3EA0C 8004E20C 5000A28F */  lw         $v0, 0x50($sp)
/* 3EA10 8004E210 01000424 */  addiu      $a0, $zero, 1
/* 3EA14 8004E214 21285000 */  addu       $a1, $v0, $s0
/* 3EA18 8004E218 21105100 */  addu       $v0, $v0, $s1
/* 3EA1C 8004E21C 00004390 */  lbu        $v1, ($v0)
/* 3EA20 8004E220 0800A594 */  lhu        $a1, 8($a1)
/* 3EA24 8004E224 6F006414 */  bne        $v1, $a0, .L8004E3E4
/* 3EA28 8004E228 0E00E226 */   addiu     $v0, $s7, 0xe
/* 3EA2C 8004E22C 21185000 */  addu       $v1, $v0, $s0
/* 3EA30 8004E230 00006494 */  lhu        $a0, ($v1)
/* 3EA34 8004E234 00000000 */  nop
/* 3EA38 8004E238 35008014 */  bnez       $a0, .L8004E310
/* 3EA3C 8004E23C 21304000 */   addu      $a2, $v0, $zero
/* 3EA40 8004E240 0A00E386 */  lh         $v1, 0xa($s7)
/* 3EA44 8004E244 F1D80224 */  addiu      $v0, $zero, -0x270f
/* 3EA48 8004E248 32006210 */  beq        $v1, $v0, .L8004E314
/* 3EA4C 8004E24C 2110D000 */   addu      $v0, $a2, $s0
/* 3EA50 8004E250 4800A38F */  lw         $v1, 0x48($sp)
/* 3EA54 8004E254 00000000 */  nop
/* 3EA58 8004E258 0400628C */  lw         $v0, 4($v1)
/* 3EA5C 8004E25C 0000E38E */  lw         $v1, ($s7)
/* 3EA60 8004E260 00000000 */  nop
/* 3EA64 8004E264 23104300 */  subu       $v0, $v0, $v1
/* 3EA68 8004E268 83100200 */  sra        $v0, $v0, 2
/* 3EA6C 8004E26C 2A184500 */  slt        $v1, $v0, $a1
/* 3EA70 8004E270 5C006010 */  beqz       $v1, .L8004E3E4
/* 3EA74 8004E274 2318A200 */   subu      $v1, $a1, $v0
/* 3EA78 8004E278 18007E00 */  mult       $v1, $fp
/* 3EA7C 8004E27C 9000A28E */  lw         $v0, 0x90($s5)
/* 3EA80 8004E280 00000000 */  nop
/* 3EA84 8004E284 02130200 */  srl        $v0, $v0, 0xc
/* 3EA88 8004E288 03004230 */  andi       $v0, $v0, 3
/* 3EA8C 8004E28C 12180000 */  mflo       $v1
/* 3EA90 8004E290 09004010 */  beqz       $v0, .L8004E2B8
/* 3EA94 8004E294 03420300 */   sra       $t0, $v1, 8
/* 3EA98 8004E298 2800A385 */  lh         $v1, 0x28($t5)
/* 3EA9C 8004E29C 00000000 */  nop
/* 3EAA0 8004E2A0 05007610 */  beq        $v1, $s6, .L8004E2B8
/* 3EAA4 8004E2A4 26000224 */   addiu     $v0, $zero, 0x26
/* 3EAA8 8004E2A8 03006210 */  beq        $v1, $v0, .L8004E2B8
/* 3EAAC 8004E2AC 31000224 */   addiu     $v0, $zero, 0x31
/* 3EAB0 8004E2B0 AF380108 */  j          .L8004E2BC
/* 3EAB4 8004E2B4 23A04800 */   subu      $s4, $v0, $t0
.L8004E2B8:
/* 3EAB8 8004E2B8 A2FF1424 */  addiu      $s4, $zero, -0x5e
.L8004E2BC:
/* 3EABC 8004E2BC 2110F102 */  addu       $v0, $s7, $s1
/* 3EAC0 8004E2C0 D000A48F */  lw         $a0, 0xd0($sp)
/* 3EAC4 8004E2C4 D400A58F */  lw         $a1, 0xd4($sp)
/* 3EAC8 8004E2C8 1E004390 */  lbu        $v1, 0x1e($v0)
/* 3EACC 8004E2CC 5C00A28F */  lw         $v0, 0x5c($sp)
/* 3EAD0 8004E2D0 21308001 */  addu       $a2, $t4, $zero
/* 3EAD4 8004E2D4 2000A2AF */  sw         $v0, 0x20($sp)
/* 3EAD8 8004E2D8 7400A28F */  lw         $v0, 0x74($sp)
/* 3EADC 8004E2DC 21386002 */  addu       $a3, $s3, $zero
/* 3EAE0 8004E2E0 1000B4AF */  sw         $s4, 0x10($sp)
/* 3EAE4 8004E2E4 1400A8AF */  sw         $t0, 0x14($sp)
/* 3EAE8 8004E2E8 1800B1AF */  sw         $s1, 0x18($sp)
/* 3EAEC 8004E2EC A000ACAF */  sw         $t4, 0xa0($sp)
/* 3EAF0 8004E2F0 A400ADAF */  sw         $t5, 0xa4($sp)
/* 3EAF4 8004E2F4 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 3EAF8 8004E2F8 2032010C */  jal        FUN_8004c880
/* 3EAFC 8004E2FC 2400A2AF */   sw        $v0, 0x24($sp)
/* 3EB00 8004E300 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3EB04 8004E304 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3EB08 8004E308 F9380108 */  j          .L8004E3E4
/* 3EB0C 8004E30C D400A2AF */   sw        $v0, 0xd4($sp)
.L8004E310:
/* 3EB10 8004E310 2110D000 */  addu       $v0, $a2, $s0
.L8004E314:
/* 3EB14 8004E314 00004294 */  lhu        $v0, ($v0)
/* 3EB18 8004E318 00000000 */  nop
/* 3EB1C 8004E31C 2A184500 */  slt        $v1, $v0, $a1
/* 3EB20 8004E320 30006010 */  beqz       $v1, .L8004E3E4
/* 3EB24 8004E324 2318A200 */   subu      $v1, $a1, $v0
/* 3EB28 8004E328 18007E00 */  mult       $v1, $fp
/* 3EB2C 8004E32C 9000A28E */  lw         $v0, 0x90($s5)
/* 3EB30 8004E330 00000000 */  nop
/* 3EB34 8004E334 02130200 */  srl        $v0, $v0, 0xc
/* 3EB38 8004E338 03004230 */  andi       $v0, $v0, 3
/* 3EB3C 8004E33C 12180000 */  mflo       $v1
/* 3EB40 8004E340 0C004010 */  beqz       $v0, .L8004E374
/* 3EB44 8004E344 03420300 */   sra       $t0, $v1, 8
/* 3EB48 8004E348 2800A385 */  lh         $v1, 0x28($t5)
/* 3EB4C 8004E34C 00000000 */  nop
/* 3EB50 8004E350 08007610 */  beq        $v1, $s6, .L8004E374
/* 3EB54 8004E354 26000224 */   addiu     $v0, $zero, 0x26
/* 3EB58 8004E358 06006210 */  beq        $v1, $v0, .L8004E374
/* 3EB5C 8004E35C 1800BE00 */   mult      $a1, $fp
/* 3EB60 8004E360 8800A38F */  lw         $v1, 0x88($sp)
/* 3EB64 8004E364 12100000 */  mflo       $v0
/* 3EB68 8004E368 03120200 */  sra        $v0, $v0, 8
/* 3EB6C 8004E36C E5380108 */  j          .L8004E394
/* 3EB70 8004E370 23A06200 */   subu      $s4, $v1, $v0
.L8004E374:
/* 3EB74 8004E374 2118D000 */  addu       $v1, $a2, $s0
/* 3EB78 8004E378 00006294 */  lhu        $v0, ($v1)
/* 3EB7C 8004E37C 00000000 */  nop
/* 3EB80 8004E380 18005E00 */  mult       $v0, $fp
/* 3EB84 8004E384 8800A38F */  lw         $v1, 0x88($sp)
/* 3EB88 8004E388 12100000 */  mflo       $v0
/* 3EB8C 8004E38C 03120200 */  sra        $v0, $v0, 8
/* 3EB90 8004E390 21A06200 */  addu       $s4, $v1, $v0
.L8004E394:
/* 3EB94 8004E394 2110F102 */  addu       $v0, $s7, $s1
/* 3EB98 8004E398 D000A48F */  lw         $a0, 0xd0($sp)
/* 3EB9C 8004E39C D400A58F */  lw         $a1, 0xd4($sp)
/* 3EBA0 8004E3A0 1E004390 */  lbu        $v1, 0x1e($v0)
/* 3EBA4 8004E3A4 5C00A28F */  lw         $v0, 0x5c($sp)
/* 3EBA8 8004E3A8 21308001 */  addu       $a2, $t4, $zero
/* 3EBAC 8004E3AC 2000A2AF */  sw         $v0, 0x20($sp)
/* 3EBB0 8004E3B0 7400A28F */  lw         $v0, 0x74($sp)
/* 3EBB4 8004E3B4 21384002 */  addu       $a3, $s2, $zero
/* 3EBB8 8004E3B8 1000B4AF */  sw         $s4, 0x10($sp)
/* 3EBBC 8004E3BC 1400A8AF */  sw         $t0, 0x14($sp)
/* 3EBC0 8004E3C0 1800B1AF */  sw         $s1, 0x18($sp)
/* 3EBC4 8004E3C4 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3EBC8 8004E3C8 A400ADAF */  sw         $t5, 0xa4($sp)
/* 3EBCC 8004E3CC 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 3EBD0 8004E3D0 2032010C */  jal        FUN_8004c880
/* 3EBD4 8004E3D4 2400A2AF */   sw        $v0, 0x24($sp)
/* 3EBD8 8004E3D8 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3EBDC 8004E3DC A000AC8F */  lw         $t4, 0xa0($sp)
/* 3EBE0 8004E3E0 D400A2AF */  sw         $v0, 0xd4($sp)
.L8004E3E4:
/* 3EBE4 8004E3E4 20005226 */  addiu      $s2, $s2, 0x20
/* 3EBE8 8004E3E8 20007326 */  addiu      $s3, $s3, 0x20
/* 3EBEC 8004E3EC 01002226 */  addiu      $v0, $s1, 1
/* 3EBF0 8004E3F0 00140200 */  sll        $v0, $v0, 0x10
/* 3EBF4 8004E3F4 6400A48F */  lw         $a0, 0x64($sp)
/* 3EBF8 8004E3F8 038C0200 */  sra        $s1, $v0, 0x10
/* 3EBFC 8004E3FC 2A182402 */  slt        $v1, $s1, $a0
/* 3EC00 8004E400 82FF6014 */  bnez       $v1, .L8004E20C
/* 3EC04 8004E404 02001026 */   addiu     $s0, $s0, 2
/* 3EC08 8004E408 293C0108 */  j          .L8004F0A4
/* 3EC0C 8004E40C 2800F726 */   addiu     $s7, $s7, 0x28
.L8004E410:
/* 3EC10 8004E410 9400A58F */  lw         $a1, 0x94($sp)
/* 3EC14 8004E414 2800A425 */  addiu      $a0, $t5, 0x28
/* 3EC18 8004E418 2110AC00 */  addu       $v0, $a1, $t4
/* 3EC1C 8004E41C C0190200 */  sll        $v1, $v0, 7
/* 3EC20 8004E420 21104300 */  addu       $v0, $v0, $v1
/* 3EC24 8004E424 40110200 */  sll        $v0, $v0, 5
/* 3EC28 8004E428 23104C00 */  subu       $v0, $v0, $t4
/* 3EC2C 8004E42C 80100200 */  sll        $v0, $v0, 2
/* 3EC30 8004E430 21104400 */  addu       $v0, $v0, $a0
/* 3EC34 8004E434 9000438C */  lw         $v1, 0x90($v0)
/* 3EC38 8004E438 00000000 */  nop
/* 3EC3C 8004E43C C21B0300 */  srl        $v1, $v1, 0xf
/* 3EC40 8004E440 03006330 */  andi       $v1, $v1, 3
/* 3EC44 8004E444 0D006010 */  beqz       $v1, .L8004E47C
/* 3EC48 8004E448 05000224 */   addiu     $v0, $zero, 5
/* 3EC4C 8004E44C 88008390 */  lbu        $v1, 0x88($a0)
/* 3EC50 8004E450 00000000 */  nop
/* 3EC54 8004E454 09006210 */  beq        $v1, $v0, .L8004E47C
/* 3EC58 8004E458 00000000 */   nop
/* 3EC5C 8004E45C 0000E28E */  lw         $v0, ($s7)
/* 3EC60 8004E460 00000000 */  nop
/* 3EC64 8004E464 FF034230 */  andi       $v0, $v0, 0x3ff
/* 3EC68 8004E468 DC004224 */  addiu      $v0, $v0, 0xdc
/* 3EC6C 8004E46C 03120200 */  sra        $v0, $v0, 8
/* 3EC70 8004E470 03004230 */  andi       $v0, $v0, 3
/* 3EC74 8004E474 20390108 */  j          .L8004E480
/* 3EC78 8004E478 6800A2AF */   sw        $v0, 0x68($sp)
.L8004E47C:
/* 3EC7C 8004E47C 6800A0AF */  sw         $zero, 0x68($sp)
.L8004E480:
/* 3EC80 8004E480 2800A225 */  addiu      $v0, $t5, 0x28
/* 3EC84 8004E484 88004490 */  lbu        $a0, 0x88($v0)
/* 3EC88 8004E488 05000324 */  addiu      $v1, $zero, 5
/* 3EC8C 8004E48C 06008314 */  bne        $a0, $v1, .L8004E4A8
/* 3EC90 8004E490 1780043C */   lui       $a0, 0x8017
/* 3EC94 8004E494 1780033C */  lui        $v1, %hi(D_8016F810)
/* 3EC98 8004E498 9800A68F */  lw         $a2, 0x98($sp)
/* 3EC9C 8004E49C 10F86224 */  addiu      $v0, $v1, %lo(D_8016F810)
/* 3ECA0 8004E4A0 2E390108 */  j          .L8004E4B8
/* 3ECA4 8004E4A4 2110C200 */   addu      $v0, $a2, $v0
.L8004E4A8:
/* 3ECA8 8004E4A8 6800A58F */  lw         $a1, 0x68($sp)
/* 3ECAC 8004E4AC 10F88324 */  addiu      $v1, $a0, -0x7f0
/* 3ECB0 8004E4B0 40100500 */  sll        $v0, $a1, 1
/* 3ECB4 8004E4B4 21104300 */  addu       $v0, $v0, $v1
.L8004E4B8:
/* 3ECB8 8004E4B8 00004284 */  lh         $v0, ($v0)
/* 3ECBC 8004E4BC 00000000 */  nop
/* 3ECC0 8004E4C0 8C00A2AF */  sw         $v0, 0x8c($sp)
/* 3ECC4 8004E4C4 0A00E296 */  lhu        $v0, 0xa($s7)
/* 3ECC8 8004E4C8 0800E396 */  lhu        $v1, 8($s7)
/* 3ECCC 8004E4CC 00000000 */  nop
/* 3ECD0 8004E4D0 23104300 */  subu       $v0, $v0, $v1
/* 3ECD4 8004E4D4 00140200 */  sll        $v0, $v0, 0x10
/* 3ECD8 8004E4D8 03240200 */  sra        $a0, $v0, 0x10
/* 3ECDC 8004E4DC 02008324 */  addiu      $v1, $a0, 2
/* 3ECE0 8004E4E0 FFFF6330 */  andi       $v1, $v1, 0xffff
/* 3ECE4 8004E4E4 0500632C */  sltiu      $v1, $v1, 5
/* 3ECE8 8004E4E8 0C006014 */  bnez       $v1, .L8004E51C
/* 3ECEC 8004E4EC 21180000 */   addu      $v1, $zero, $zero
/* 3ECF0 8004E4F0 04008224 */  addiu      $v0, $a0, 4
/* 3ECF4 8004E4F4 FFFF4230 */  andi       $v0, $v0, 0xffff
/* 3ECF8 8004E4F8 0900422C */  sltiu      $v0, $v0, 9
/* 3ECFC 8004E4FC 07004014 */  bnez       $v0, .L8004E51C
/* 3ED00 8004E500 01000324 */   addiu     $v1, $zero, 1
/* 3ED04 8004E504 0D008224 */  addiu      $v0, $a0, 0xd
/* 3ED08 8004E508 FFFF4230 */  andi       $v0, $v0, 0xffff
/* 3ED0C 8004E50C 1900422C */  sltiu      $v0, $v0, 0x19
/* 3ED10 8004E510 02004010 */  beqz       $v0, .L8004E51C
/* 3ED14 8004E514 07000324 */   addiu     $v1, $zero, 7
/* 3ED18 8004E518 02000324 */  addiu      $v1, $zero, 2
.L8004E51C:
/* 3ED1C 8004E51C 6C00A0AF */  sw         $zero, 0x6c($sp)
/* 3ED20 8004E520 21F00000 */  addu       $fp, $zero, $zero
/* 3ED24 8004E524 07000224 */  addiu      $v0, $zero, 7
/* 3ED28 8004E528 DD026214 */  bne        $v1, $v0, .L8004F0A0
/* 3ED2C 8004E52C 21880000 */   addu      $s1, $zero, $zero
/* 3ED30 8004E530 5C00A68F */  lw         $a2, 0x5c($sp)
/* 3ED34 8004E534 00000000 */  nop
/* 3ED38 8004E538 0600C22C */  sltiu      $v0, $a2, 6
/* 3ED3C 8004E53C 7F004010 */  beqz       $v0, .L8004E73C
/* 3ED40 8004E540 0180023C */   lui       $v0, %hi(D_80013D6C)
/* 3ED44 8004E544 6C3D4224 */  addiu      $v0, $v0, %lo(D_80013D6C)
/* 3ED48 8004E548 80180600 */  sll        $v1, $a2, 2
/* 3ED4C 8004E54C 21186200 */  addu       $v1, $v1, $v0
/* 3ED50 8004E550 0000648C */  lw         $a0, ($v1)
/* 3ED54 8004E554 00000000 */  nop
/* 3ED58 8004E558 08008000 */  jr         $a0
/* 3ED5C 8004E55C 00000000 */   nop
/* 3ED60 8004E560 A2FF0224 */  addiu      $v0, $zero, -0x5e
/* 3ED64 8004E564 23105400 */  subu       $v0, $v0, $s4
/* 3ED68 8004E568 00140200 */  sll        $v0, $v0, 0x10
/* 3ED6C 8004E56C 03240200 */  sra        $a0, $v0, 0x10
/* 3ED70 8004E570 72008018 */  blez       $a0, .L8004E73C
/* 3ED74 8004E574 00011124 */   addiu     $s1, $zero, 0x100
/* 3ED78 8004E578 40100400 */  sll        $v0, $a0, 1
/* 3ED7C 8004E57C 00014224 */  addiu      $v0, $v0, 0x100
/* 3ED80 8004E580 00140200 */  sll        $v0, $v0, 0x10
/* 3ED84 8004E584 038C0200 */  sra        $s1, $v0, 0x10
/* 3ED88 8004E588 8101232A */  slti       $v1, $s1, 0x181
/* 3ED8C 8004E58C 6B006014 */  bnez       $v1, .L8004E73C
/* 3ED90 8004E590 00000000 */   nop
/* 3ED94 8004E594 CF390108 */  j          .L8004E73C
/* 3ED98 8004E598 80011124 */   addiu     $s1, $zero, 0x180
/* 3ED9C 8004E59C 00141400 */  sll        $v0, $s4, 0x10
/* 3EDA0 8004E5A0 03240200 */  sra        $a0, $v0, 0x10
/* 3EDA4 8004E5A4 0F00801C */  bgtz       $a0, .L8004E5E4
/* 3EDA8 8004E5A8 CA6B023C */   lui       $v0, 0x6bca
/* 3EDAC 8004E5AC F31A4234 */  ori        $v0, $v0, 0x1af3
/* 3EDB0 8004E5B0 C0190400 */  sll        $v1, $a0, 7
/* 3EDB4 8004E5B4 18006200 */  mult       $v1, $v0
/* 3EDB8 8004E5B8 C31F0300 */  sra        $v1, $v1, 0x1f
/* 3EDBC 8004E5BC 10100000 */  mfhi       $v0
/* 3EDC0 8004E5C0 03110200 */  sra        $v0, $v0, 4
/* 3EDC4 8004E5C4 23104300 */  subu       $v0, $v0, $v1
/* 3EDC8 8004E5C8 80004224 */  addiu      $v0, $v0, 0x80
/* 3EDCC 8004E5CC 00140200 */  sll        $v0, $v0, 0x10
/* 3EDD0 8004E5D0 038C0200 */  sra        $s1, $v0, 0x10
/* 3EDD4 8004E5D4 59002106 */  bgez       $s1, .L8004E73C
/* 3EDD8 8004E5D8 00000000 */   nop
/* 3EDDC 8004E5DC CF390108 */  j          .L8004E73C
/* 3EDE0 8004E5E0 21880000 */   addu      $s1, $zero, $zero
.L8004E5E4:
/* 3EDE4 8004E5E4 F31A4234 */  ori        $v0, $v0, 0x1af3
/* 3EDE8 8004E5E8 C0190400 */  sll        $v1, $a0, 7
/* 3EDEC 8004E5EC 18006200 */  mult       $v1, $v0
/* 3EDF0 8004E5F0 C31F0300 */  sra        $v1, $v1, 0x1f
/* 3EDF4 8004E5F4 10100000 */  mfhi       $v0
/* 3EDF8 8004E5F8 03110200 */  sra        $v0, $v0, 4
/* 3EDFC 8004E5FC 23104300 */  subu       $v0, $v0, $v1
/* 3EE00 8004E600 91390108 */  j          .L8004E644
/* 3EE04 8004E604 80004224 */   addiu     $v0, $v0, 0x80
/* 3EE08 8004E608 30008226 */  addiu      $v0, $s4, 0x30
/* 3EE0C 8004E60C 00140200 */  sll        $v0, $v0, 0x10
/* 3EE10 8004E610 03240200 */  sra        $a0, $v0, 0x10
/* 3EE14 8004E614 1200801C */  bgtz       $a0, .L8004E660
/* 3EE18 8004E618 CA6B023C */   lui       $v0, 0x6bca
/* 3EE1C 8004E61C CA6B033C */  lui        $v1, 0x6bca
/* 3EE20 8004E620 F31A6334 */  ori        $v1, $v1, 0x1af3
/* 3EE24 8004E624 C0210400 */  sll        $a0, $a0, 7
/* 3EE28 8004E628 18008300 */  mult       $a0, $v1
/* 3EE2C 8004E62C C3270400 */  sra        $a0, $a0, 0x1f
/* 3EE30 8004E630 80000224 */  addiu      $v0, $zero, 0x80
/* 3EE34 8004E634 10180000 */  mfhi       $v1
/* 3EE38 8004E638 03190300 */  sra        $v1, $v1, 4
/* 3EE3C 8004E63C 23186400 */  subu       $v1, $v1, $a0
/* 3EE40 8004E640 23104300 */  subu       $v0, $v0, $v1
.L8004E644:
/* 3EE44 8004E644 00140200 */  sll        $v0, $v0, 0x10
/* 3EE48 8004E648 038C0200 */  sra        $s1, $v0, 0x10
/* 3EE4C 8004E64C 0101232A */  slti       $v1, $s1, 0x101
/* 3EE50 8004E650 3A006014 */  bnez       $v1, .L8004E73C
/* 3EE54 8004E654 00000000 */   nop
/* 3EE58 8004E658 CF390108 */  j          .L8004E73C
/* 3EE5C 8004E65C 00011124 */   addiu     $s1, $zero, 0x100
.L8004E660:
/* 3EE60 8004E660 F31A4234 */  ori        $v0, $v0, 0x1af3
/* 3EE64 8004E664 C0210400 */  sll        $a0, $a0, 7
/* 3EE68 8004E668 18008200 */  mult       $a0, $v0
/* 3EE6C 8004E66C C3270400 */  sra        $a0, $a0, 0x1f
/* 3EE70 8004E670 80000324 */  addiu      $v1, $zero, 0x80
/* 3EE74 8004E674 10100000 */  mfhi       $v0
/* 3EE78 8004E678 03110200 */  sra        $v0, $v0, 4
/* 3EE7C 8004E67C 23104400 */  subu       $v0, $v0, $a0
/* 3EE80 8004E680 23186200 */  subu       $v1, $v1, $v0
/* 3EE84 8004E684 001C0300 */  sll        $v1, $v1, 0x10
/* 3EE88 8004E688 038C0300 */  sra        $s1, $v1, 0x10
/* 3EE8C 8004E68C 2B002106 */  bgez       $s1, .L8004E73C
/* 3EE90 8004E690 00000000 */   nop
/* 3EE94 8004E694 CF390108 */  j          .L8004E73C
/* 3EE98 8004E698 21880000 */   addu      $s1, $zero, $zero
/* 3EE9C 8004E69C 6666043C */  lui        $a0, 0x6666
/* 3EEA0 8004E6A0 67668434 */  ori        $a0, $a0, 0x6667
/* 3EEA4 8004E6A4 A2FF0224 */  addiu      $v0, $zero, -0x5e
/* 3EEA8 8004E6A8 23105400 */  subu       $v0, $v0, $s4
/* 3EEAC 8004E6AC C0110200 */  sll        $v0, $v0, 7
/* 3EEB0 8004E6B0 18004400 */  mult       $v0, $a0
/* 3EEB4 8004E6B4 C3170200 */  sra        $v0, $v0, 0x1f
/* 3EEB8 8004E6B8 80010324 */  addiu      $v1, $zero, 0x180
/* 3EEBC 8004E6BC 10200000 */  mfhi       $a0
/* 3EEC0 8004E6C0 C3200400 */  sra        $a0, $a0, 3
/* 3EEC4 8004E6C4 23208200 */  subu       $a0, $a0, $v0
/* 3EEC8 8004E6C8 23186400 */  subu       $v1, $v1, $a0
/* 3EECC 8004E6CC 001C0300 */  sll        $v1, $v1, 0x10
/* 3EED0 8004E6D0 038C0300 */  sra        $s1, $v1, 0x10
/* 3EED4 8004E6D4 0001222A */  slti       $v0, $s1, 0x100
/* 3EED8 8004E6D8 15004010 */  beqz       $v0, .L8004E730
/* 3EEDC 8004E6DC 8101222A */   slti      $v0, $s1, 0x181
/* 3EEE0 8004E6E0 CB390108 */  j          .L8004E72C
/* 3EEE4 8004E6E4 00011124 */   addiu     $s1, $zero, 0x100
/* 3EEE8 8004E6E8 6666023C */  lui        $v0, 0x6666
/* 3EEEC 8004E6EC 67664234 */  ori        $v0, $v0, 0x6667
/* 3EEF0 8004E6F0 31000324 */  addiu      $v1, $zero, 0x31
/* 3EEF4 8004E6F4 23187400 */  subu       $v1, $v1, $s4
/* 3EEF8 8004E6F8 C0190300 */  sll        $v1, $v1, 7
/* 3EEFC 8004E6FC 18006200 */  mult       $v1, $v0
/* 3EF00 8004E700 C31F0300 */  sra        $v1, $v1, 0x1f
/* 3EF04 8004E704 10100000 */  mfhi       $v0
/* 3EF08 8004E708 C3100200 */  sra        $v0, $v0, 3
/* 3EF0C 8004E70C 23104300 */  subu       $v0, $v0, $v1
/* 3EF10 8004E710 80014224 */  addiu      $v0, $v0, 0x180
/* 3EF14 8004E714 00140200 */  sll        $v0, $v0, 0x10
/* 3EF18 8004E718 038C0200 */  sra        $s1, $v0, 0x10
/* 3EF1C 8004E71C 0001232A */  slti       $v1, $s1, 0x100
/* 3EF20 8004E720 03006010 */  beqz       $v1, .L8004E730
/* 3EF24 8004E724 8101222A */   slti      $v0, $s1, 0x181
/* 3EF28 8004E728 00011124 */  addiu      $s1, $zero, 0x100
.L8004E72C:
/* 3EF2C 8004E72C 8101222A */  slti       $v0, $s1, 0x181
.L8004E730:
/* 3EF30 8004E730 02004014 */  bnez       $v0, .L8004E73C
/* 3EF34 8004E734 00000000 */   nop
/* 3EF38 8004E738 21880000 */  addu       $s1, $zero, $zero
.L8004E73C:
/* 3EF3C 8004E73C A000ACAF */  sw         $t4, 0xa0($sp)
/* 3EF40 8004E740 7470000C */  jal        getcoinslot1_8001c1d0
/* 3EF44 8004E744 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3EF48 8004E748 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3EF4C 8004E74C A400AD8F */  lw         $t5, 0xa4($sp)
/* 3EF50 8004E750 1E004010 */  beqz       $v0, .L8004E7CC
/* 3EF54 8004E754 26000224 */   addiu     $v0, $zero, 0x26
/* 3EF58 8004E758 2800A385 */  lh         $v1, 0x28($t5)
/* 3EF5C 8004E75C 00000000 */  nop
/* 3EF60 8004E760 1A006210 */  beq        $v1, $v0, .L8004E7CC
/* 3EF64 8004E764 2800A425 */   addiu     $a0, $t5, 0x28
/* 3EF68 8004E768 0180053C */  lui        $a1, %hi(D_80013D14)
/* 3EF6C 8004E76C 9400A38F */  lw         $v1, 0x94($sp)
/* 3EF70 8004E770 143DA524 */  addiu      $a1, $a1, %lo(D_80013D14)
/* 3EF74 8004E774 21106C00 */  addu       $v0, $v1, $t4
/* 3EF78 8004E778 C0190200 */  sll        $v1, $v0, 7
/* 3EF7C 8004E77C 21104300 */  addu       $v0, $v0, $v1
/* 3EF80 8004E780 40110200 */  sll        $v0, $v0, 5
/* 3EF84 8004E784 23104C00 */  subu       $v0, $v0, $t4
/* 3EF88 8004E788 80100200 */  sll        $v0, $v0, 2
/* 3EF8C 8004E78C 21104400 */  addu       $v0, $v0, $a0
/* 3EF90 8004E790 8A004490 */  lbu        $a0, 0x8a($v0)
/* 3EF94 8004E794 40100C00 */  sll        $v0, $t4, 1
/* 3EF98 8004E798 21104C00 */  addu       $v0, $v0, $t4
/* 3EF9C 8004E79C 80100200 */  sll        $v0, $v0, 2
/* 3EFA0 8004E7A0 23104C00 */  subu       $v0, $v0, $t4
/* 3EFA4 8004E7A4 0A008438 */  xori       $a0, $a0, 0xa
/* 3EFA8 8004E7A8 2B200400 */  sltu       $a0, $zero, $a0
/* 3EFAC 8004E7AC 00210400 */  sll        $a0, $a0, 4
/* 3EFB0 8004E7B0 21208500 */  addu       $a0, $a0, $a1
/* 3EFB4 8004E7B4 00008394 */  lhu        $v1, ($a0)
/* 3EFB8 8004E7B8 C0100200 */  sll        $v0, $v0, 3
/* 3EFBC 8004E7BC 21186200 */  addu       $v1, $v1, $v0
/* 3EFC0 8004E7C0 001C0300 */  sll        $v1, $v1, 0x10
/* 3EFC4 8004E7C4 133A0108 */  j          .L8004E84C
/* 3EFC8 8004E7C8 033C0300 */   sra       $a3, $v1, 0x10
.L8004E7CC:
/* 3EFCC 8004E7CC 2800A425 */  addiu      $a0, $t5, 0x28
/* 3EFD0 8004E7D0 8A008290 */  lbu        $v0, 0x8a($a0)
/* 3EFD4 8004E7D4 02000524 */  addiu      $a1, $zero, 2
/* 3EFD8 8004E7D8 0A004510 */  beq        $v0, $a1, .L8004E804
/* 3EFDC 8004E7DC 0A000324 */   addiu     $v1, $zero, 0xa
/* 3EFE0 8004E7E0 08004310 */  beq        $v0, $v1, .L8004E804
/* 3EFE4 8004E7E4 0100023C */   lui       $v0, 1
/* 3EFE8 8004E7E8 21108200 */  addu       $v0, $a0, $v0
/* 3EFEC 8004E7EC 06434290 */  lbu        $v0, 0x4306($v0)
/* 3EFF0 8004E7F0 00000000 */  nop
/* 3EFF4 8004E7F4 03004510 */  beq        $v0, $a1, .L8004E804
/* 3EFF8 8004E7F8 00000000 */   nop
/* 3EFFC 8004E7FC 0A004314 */  bne        $v0, $v1, .L8004E828
/* 3F000 8004E800 40180C00 */   sll       $v1, $t4, 1
.L8004E804:
/* 3F004 8004E804 2800A385 */  lh         $v1, 0x28($t5)
/* 3F008 8004E808 03000224 */  addiu      $v0, $zero, 3
/* 3F00C 8004E80C 05006210 */  beq        $v1, $v0, .L8004E824
/* 3F010 8004E810 26000224 */   addiu     $v0, $zero, 0x26
/* 3F014 8004E814 03006210 */  beq        $v1, $v0, .L8004E824
/* 3F018 8004E818 15000224 */   addiu     $v0, $zero, 0x15
/* 3F01C 8004E81C 0B006214 */  bne        $v1, $v0, .L8004E84C
/* 3F020 8004E820 80FF0724 */   addiu     $a3, $zero, -0x80
.L8004E824:
/* 3F024 8004E824 40180C00 */  sll        $v1, $t4, 1
.L8004E828:
/* 3F028 8004E828 FFFF6324 */  addiu      $v1, $v1, -1
/* 3F02C 8004E82C 40100300 */  sll        $v0, $v1, 1
/* 3F030 8004E830 21104300 */  addu       $v0, $v0, $v1
/* 3F034 8004E834 80100200 */  sll        $v0, $v0, 2
/* 3F038 8004E838 23104300 */  subu       $v0, $v0, $v1
/* 3F03C 8004E83C C0100200 */  sll        $v0, $v0, 3
/* 3F040 8004E840 C0FF4224 */  addiu      $v0, $v0, -0x40
/* 3F044 8004E844 00140200 */  sll        $v0, $v0, 0x10
/* 3F048 8004E848 033C0200 */  sra        $a3, $v0, 0x10
.L8004E84C:
/* 3F04C 8004E84C 9400A48F */  lw         $a0, 0x94($sp)
/* 3F050 8004E850 2800A825 */  addiu      $t0, $t5, 0x28
/* 3F054 8004E854 21108C00 */  addu       $v0, $a0, $t4
/* 3F058 8004E858 C0190200 */  sll        $v1, $v0, 7
/* 3F05C 8004E85C 21104300 */  addu       $v0, $v0, $v1
/* 3F060 8004E860 40110200 */  sll        $v0, $v0, 5
/* 3F064 8004E864 23104C00 */  subu       $v0, $v0, $t4
/* 3F068 8004E868 80100200 */  sll        $v0, $v0, 2
/* 3F06C 8004E86C 21104800 */  addu       $v0, $v0, $t0
/* 3F070 8004E870 88004490 */  lbu        $a0, 0x88($v0)
/* 3F074 8004E874 05000324 */  addiu      $v1, $zero, 5
/* 3F078 8004E878 9D008314 */  bne        $a0, $v1, .L8004EAF0
/* 3F07C 8004E87C 21B0E000 */   addu      $s6, $a3, $zero
/* 3F080 8004E880 0188422A */  slti       $v0, $s2, -0x77ff
/* 3F084 8004E884 5D004014 */  bnez       $v0, .L8004E9FC
/* 3F088 8004E888 04000224 */   addiu     $v0, $zero, 4
/* 3F08C 8004E88C C0FF1624 */  addiu      $s6, $zero, -0x40
/* 3F090 8004E890 40180C00 */  sll        $v1, $t4, 1
/* 3F094 8004E894 FFC70234 */  ori        $v0, $zero, 0xc7ff
/* 3F098 8004E898 2A105200 */  slt        $v0, $v0, $s2
/* 3F09C 8004E89C 94004014 */  bnez       $v0, .L8004EAF0
/* 3F0A0 8004E8A0 FFFF7324 */   addiu     $s3, $v1, -1
/* 3F0A4 8004E8A4 6666023C */  lui        $v0, 0x6666
/* 3F0A8 8004E8A8 67664234 */  ori        $v0, $v0, 0x6667
/* 3F0AC 8004E8AC 00C80334 */  ori        $v1, $zero, 0xc800
/* 3F0B0 8004E8B0 23187200 */  subu       $v1, $v1, $s2
/* 3F0B4 8004E8B4 18006200 */  mult       $v1, $v0
/* 3F0B8 8004E8B8 00101024 */  addiu      $s0, $zero, 0x1000
/* 3F0BC 8004E8BC C31F0300 */  sra        $v1, $v1, 0x1f
/* 3F0C0 8004E8C0 10100000 */  mfhi       $v0
/* 3F0C4 8004E8C4 43110200 */  sra        $v0, $v0, 5
/* 3F0C8 8004E8C8 23904300 */  subu       $s2, $v0, $v1
/* 3F0CC 8004E8CC 2800A385 */  lh         $v1, 0x28($t5)
/* 3F0D0 8004E8D0 04000224 */  addiu      $v0, $zero, 4
/* 3F0D4 8004E8D4 04006210 */  beq        $v1, $v0, .L8004E8E8
/* 3F0D8 8004E8D8 E8FD0634 */   ori       $a2, $zero, 0xfde8
/* 3F0DC 8004E8DC 02000224 */  addiu      $v0, $zero, 2
/* 3F0E0 8004E8E0 2A006214 */  bne        $v1, $v0, .L8004E98C
/* 3F0E4 8004E8E4 21204002 */   addu      $a0, $s2, $zero
.L8004E8E8:
/* 3F0E8 8004E8E8 21280000 */  addu       $a1, $zero, $zero
/* 3F0EC 8004E8EC AC020725 */  addiu      $a3, $t0, 0x2ac
/* 3F0F0 8004E8F0 80100500 */  sll        $v0, $a1, 2
.L8004E8F4:
/* 3F0F4 8004E8F4 21104500 */  addu       $v0, $v0, $a1
/* 3F0F8 8004E8F8 C0190200 */  sll        $v1, $v0, 7
/* 3F0FC 8004E8FC 21104300 */  addu       $v0, $v0, $v1
/* 3F100 8004E900 40110200 */  sll        $v0, $v0, 5
/* 3F104 8004E904 23104500 */  subu       $v0, $v0, $a1
/* 3F108 8004E908 80100200 */  sll        $v0, $v0, 2
/* 3F10C 8004E90C 21204700 */  addu       $a0, $v0, $a3
/* 3F110 8004E910 04008384 */  lh         $v1, 4($a0)
/* 3F114 8004E914 00000000 */  nop
/* 3F118 8004E918 07006104 */  bgez       $v1, .L8004E938
/* 3F11C 8004E91C 0100A524 */   addiu     $a1, $a1, 1
/* 3F120 8004E920 28008424 */  addiu      $a0, $a0, 0x28
.L8004E924:
/* 3F124 8004E924 04008284 */  lh         $v0, 4($a0)
/* 3F128 8004E928 00000000 */  nop
/* 3F12C 8004E92C FDFF4004 */  bltz       $v0, .L8004E924
/* 3F130 8004E930 28008424 */   addiu     $a0, $a0, 0x28
/* 3F134 8004E934 D8FF8424 */  addiu      $a0, $a0, -0x28
.L8004E938:
/* 3F138 8004E938 0000838C */  lw         $v1, ($a0)
/* 3F13C 8004E93C 00000000 */  nop
/* 3F140 8004E940 2A106600 */  slt        $v0, $v1, $a2
/* 3F144 8004E944 02004010 */  beqz       $v0, .L8004E950
/* 3F148 8004E948 0200A228 */   slti      $v0, $a1, 2
/* 3F14C 8004E94C 21306000 */  addu       $a2, $v1, $zero
.L8004E950:
/* 3F150 8004E950 E8FF4014 */  bnez       $v0, .L8004E8F4
/* 3F154 8004E954 80100500 */   sll       $v0, $a1, 2
/* 3F158 8004E958 0F80023C */  lui        $v0, %hi(D_800F01D4)
/* 3F15C 8004E95C D4014324 */  addiu      $v1, $v0, %lo(D_800F01D4)
/* 3F160 8004E960 0400628C */  lw         $v0, 4($v1)
/* 3F164 8004E964 00000000 */  nop
/* 3F168 8004E968 00144224 */  addiu      $v0, $v0, 0x1400
/* 3F16C 8004E96C 23804600 */  subu       $s0, $v0, $a2
/* 3F170 8004E970 03000106 */  bgez       $s0, .L8004E980
/* 3F174 8004E974 0110022A */   slti      $v0, $s0, 0x1001
/* 3F178 8004E978 21800000 */  addu       $s0, $zero, $zero
/* 3F17C 8004E97C 0110022A */  slti       $v0, $s0, 0x1001
.L8004E980:
/* 3F180 8004E980 02004014 */  bnez       $v0, .L8004E98C
/* 3F184 8004E984 21204002 */   addu      $a0, $s2, $zero
/* 3F188 8004E988 00101024 */  addiu      $s0, $zero, 0x1000
.L8004E98C:
/* 3F18C 8004E98C A000ACAF */  sw         $t4, 0xa0($sp)
/* 3F190 8004E990 F4F1000C */  jal        rsin
/* 3F194 8004E994 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3F198 8004E998 00191000 */  sll        $v1, $s0, 4
/* 3F19C 8004E99C 21187000 */  addu       $v1, $v1, $s0
/* 3F1A0 8004E9A0 80180300 */  sll        $v1, $v1, 2
/* 3F1A4 8004E9A4 21187000 */  addu       $v1, $v1, $s0
/* 3F1A8 8004E9A8 031B0300 */  sra        $v1, $v1, 0xc
/* 3F1AC 8004E9AC 18006200 */  mult       $v1, $v0
/* 3F1B0 8004E9B0 12180000 */  mflo       $v1
/* 3F1B4 8004E9B4 00000000 */  nop
/* 3F1B8 8004E9B8 00000000 */  nop
/* 3F1BC 8004E9BC 18006302 */  mult       $s3, $v1
/* 3F1C0 8004E9C0 21204002 */  addu       $a0, $s2, $zero
/* 3F1C4 8004E9C4 12180000 */  mflo       $v1
/* 3F1C8 8004E9C8 031B0300 */  sra        $v1, $v1, 0xc
/* 3F1CC 8004E9CC C0FF6324 */  addiu      $v1, $v1, -0x40
/* 3F1D0 8004E9D0 001C0300 */  sll        $v1, $v1, 0x10
/* 3F1D4 8004E9D4 28F2000C */  jal        rcos
/* 3F1D8 8004E9D8 03B40300 */   sra       $s6, $v1, 0x10
/* 3F1DC 8004E9DC 80180200 */  sll        $v1, $v0, 2
/* 3F1E0 8004E9E0 21186200 */  addu       $v1, $v1, $v0
/* 3F1E4 8004E9E4 00190300 */  sll        $v1, $v1, 4
/* 3F1E8 8004E9E8 031B0300 */  sra        $v1, $v1, 0xc
/* 3F1EC 8004E9EC A000AC8F */  lw         $t4, 0xa0($sp)
/* 3F1F0 8004E9F0 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3F1F4 8004E9F4 BC3A0108 */  j          .L8004EAF0
/* 3F1F8 8004E9F8 E2FF7424 */   addiu     $s4, $v1, -0x1e
.L8004E9FC:
/* 3F1FC 8004E9FC 00100424 */  addiu      $a0, $zero, 0x1000
/* 3F200 8004EA00 2800A385 */  lh         $v1, 0x28($t5)
/* 3F204 8004EA04 00000000 */  nop
/* 3F208 8004EA08 04006210 */  beq        $v1, $v0, .L8004EA1C
/* 3F20C 8004EA0C E8FD0634 */   ori       $a2, $zero, 0xfde8
/* 3F210 8004EA10 02000224 */  addiu      $v0, $zero, 2
/* 3F214 8004EA14 2B006214 */  bne        $v1, $v0, .L8004EAC4
/* 3F218 8004EA18 40380C00 */   sll       $a3, $t4, 1
.L8004EA1C:
/* 3F21C 8004EA1C 21280000 */  addu       $a1, $zero, $zero
/* 3F220 8004EA20 40380C00 */  sll        $a3, $t4, 1
/* 3F224 8004EA24 AC020825 */  addiu      $t0, $t0, 0x2ac
/* 3F228 8004EA28 80100500 */  sll        $v0, $a1, 2
.L8004EA2C:
/* 3F22C 8004EA2C 21104500 */  addu       $v0, $v0, $a1
/* 3F230 8004EA30 C0190200 */  sll        $v1, $v0, 7
/* 3F234 8004EA34 21104300 */  addu       $v0, $v0, $v1
/* 3F238 8004EA38 40110200 */  sll        $v0, $v0, 5
/* 3F23C 8004EA3C 23104500 */  subu       $v0, $v0, $a1
/* 3F240 8004EA40 80100200 */  sll        $v0, $v0, 2
/* 3F244 8004EA44 21204800 */  addu       $a0, $v0, $t0
/* 3F248 8004EA48 04008384 */  lh         $v1, 4($a0)
/* 3F24C 8004EA4C 00000000 */  nop
/* 3F250 8004EA50 07006104 */  bgez       $v1, .L8004EA70
/* 3F254 8004EA54 0100A524 */   addiu     $a1, $a1, 1
/* 3F258 8004EA58 28008424 */  addiu      $a0, $a0, 0x28
.L8004EA5C:
/* 3F25C 8004EA5C 04008284 */  lh         $v0, 4($a0)
/* 3F260 8004EA60 00000000 */  nop
/* 3F264 8004EA64 FDFF4004 */  bltz       $v0, .L8004EA5C
/* 3F268 8004EA68 28008424 */   addiu     $a0, $a0, 0x28
/* 3F26C 8004EA6C D8FF8424 */  addiu      $a0, $a0, -0x28
.L8004EA70:
/* 3F270 8004EA70 0000838C */  lw         $v1, ($a0)
/* 3F274 8004EA74 00000000 */  nop
/* 3F278 8004EA78 2A106600 */  slt        $v0, $v1, $a2
/* 3F27C 8004EA7C 02004010 */  beqz       $v0, .L8004EA88
/* 3F280 8004EA80 0200A228 */   slti      $v0, $a1, 2
/* 3F284 8004EA84 21306000 */  addu       $a2, $v1, $zero
.L8004EA88:
/* 3F288 8004EA88 E8FF4014 */  bnez       $v0, .L8004EA2C
/* 3F28C 8004EA8C 80100500 */   sll       $v0, $a1, 2
/* 3F290 8004EA90 0F80023C */  lui        $v0, %hi(D_800F01D4)
/* 3F294 8004EA94 D4014324 */  addiu      $v1, $v0, %lo(D_800F01D4)
/* 3F298 8004EA98 0400628C */  lw         $v0, 4($v1)
/* 3F29C 8004EA9C 00000000 */  nop
/* 3F2A0 8004EAA0 00144224 */  addiu      $v0, $v0, 0x1400
/* 3F2A4 8004EAA4 23204600 */  subu       $a0, $v0, $a2
/* 3F2A8 8004EAA8 03008104 */  bgez       $a0, .L8004EAB8
/* 3F2AC 8004EAAC 01108228 */   slti      $v0, $a0, 0x1001
/* 3F2B0 8004EAB0 21200000 */  addu       $a0, $zero, $zero
/* 3F2B4 8004EAB4 01108228 */  slti       $v0, $a0, 0x1001
.L8004EAB8:
/* 3F2B8 8004EAB8 03004014 */  bnez       $v0, .L8004EAC8
/* 3F2BC 8004EABC FFFFE324 */   addiu     $v1, $a3, -1
/* 3F2C0 8004EAC0 00100424 */  addiu      $a0, $zero, 0x1000
.L8004EAC4:
/* 3F2C4 8004EAC4 FFFFE324 */  addiu      $v1, $a3, -1
.L8004EAC8:
/* 3F2C8 8004EAC8 00110400 */  sll        $v0, $a0, 4
/* 3F2CC 8004EACC 21104400 */  addu       $v0, $v0, $a0
/* 3F2D0 8004EAD0 80100200 */  sll        $v0, $v0, 2
/* 3F2D4 8004EAD4 21104400 */  addu       $v0, $v0, $a0
/* 3F2D8 8004EAD8 03130200 */  sra        $v0, $v0, 0xc
/* 3F2DC 8004EADC 18006200 */  mult       $v1, $v0
/* 3F2E0 8004EAE0 12180000 */  mflo       $v1
/* 3F2E4 8004EAE4 C0FF6324 */  addiu      $v1, $v1, -0x40
/* 3F2E8 8004EAE8 001C0300 */  sll        $v1, $v1, 0x10
/* 3F2EC 8004EAEC 03B40300 */  sra        $s6, $v1, 0x10
.L8004EAF0:
/* 3F2F0 8004EAF0 9400A38F */  lw         $v1, 0x94($sp)
/* 3F2F4 8004EAF4 2800A625 */  addiu      $a2, $t5, 0x28
/* 3F2F8 8004EAF8 21106C00 */  addu       $v0, $v1, $t4
/* 3F2FC 8004EAFC C0190200 */  sll        $v1, $v0, 7
/* 3F300 8004EB00 21104300 */  addu       $v0, $v0, $v1
/* 3F304 8004EB04 40110200 */  sll        $v0, $v0, 5
/* 3F308 8004EB08 23104C00 */  subu       $v0, $v0, $t4
/* 3F30C 8004EB0C 80100200 */  sll        $v0, $v0, 2
/* 3F310 8004EB10 21104600 */  addu       $v0, $v0, $a2
/* 3F314 8004EB14 88004490 */  lbu        $a0, 0x88($v0)
/* 3F318 8004EB18 05000324 */  addiu      $v1, $zero, 5
/* 3F31C 8004EB1C 7C008314 */  bne        $a0, $v1, .L8004ED10
/* 3F320 8004EB20 21A80000 */   addu      $s5, $zero, $zero
/* 3F324 8004EB24 0C00E586 */  lh         $a1, 0xc($s7)
/* 3F328 8004EB28 FFFF0224 */  addiu      $v0, $zero, -1
/* 3F32C 8004EB2C 0300A214 */  bne        $a1, $v0, .L8004EB3C
/* 3F330 8004EB30 01000424 */   addiu     $a0, $zero, 1
/* 3F334 8004EB34 DE3A0108 */  j          .L8004EB78
/* 3F338 8004EB38 4C00A0AF */   sw        $zero, 0x4c($sp)
.L8004EB3C:
/* 3F33C 8004EB3C 23208C00 */  subu       $a0, $a0, $t4
/* 3F340 8004EB40 80180400 */  sll        $v1, $a0, 2
/* 3F344 8004EB44 21186400 */  addu       $v1, $v1, $a0
/* 3F348 8004EB48 C0110300 */  sll        $v0, $v1, 7
/* 3F34C 8004EB4C 21186200 */  addu       $v1, $v1, $v0
/* 3F350 8004EB50 40190300 */  sll        $v1, $v1, 5
/* 3F354 8004EB54 23186400 */  subu       $v1, $v1, $a0
/* 3F358 8004EB58 80180300 */  sll        $v1, $v1, 2
/* 3F35C 8004EB5C AC02C424 */  addiu      $a0, $a2, 0x2ac
/* 3F360 8004EB60 21186400 */  addu       $v1, $v1, $a0
/* 3F364 8004EB64 80100500 */  sll        $v0, $a1, 2
/* 3F368 8004EB68 21104500 */  addu       $v0, $v0, $a1
/* 3F36C 8004EB6C C0100200 */  sll        $v0, $v0, 3
/* 3F370 8004EB70 21186200 */  addu       $v1, $v1, $v0
/* 3F374 8004EB74 4C00A3AF */  sw         $v1, 0x4c($sp)
.L8004EB78:
/* 3F378 8004EB78 4C00A48F */  lw         $a0, 0x4c($sp)
/* 3F37C 8004EB7C 00000000 */  nop
/* 3F380 8004EB80 63008010 */  beqz       $a0, .L8004ED10
/* 3F384 8004EB84 FEFF053C */   lui       $a1, 0xfffe
/* 3F388 8004EB88 1780033C */  lui        $v1, %hi(D_80172710)
/* 3F38C 8004EB8C 0088A534 */  ori        $a1, $a1, 0x8800
/* 3F390 8004EB90 0000E28E */  lw         $v0, ($s7)
/* 3F394 8004EB94 1027648C */  lw         $a0, %lo(D_80172710)($v1)
/* 3F398 8004EB98 3300832A */  slti       $v1, $s4, 0x33
/* 3F39C 8004EB9C 23104400 */  subu       $v0, $v0, $a0
/* 3F3A0 8004EBA0 40110200 */  sll        $v0, $v0, 5
/* 3F3A4 8004EBA4 21104500 */  addu       $v0, $v0, $a1
/* 3F3A8 8004EBA8 0E006010 */  beqz       $v1, .L8004EBE4
/* 3F3AC 8004EBAC 83120200 */   sra       $v0, $v0, 0xa
/* 3F3B0 8004EBB0 33004228 */  slti       $v0, $v0, 0x33
/* 3F3B4 8004EBB4 0B004014 */  bnez       $v0, .L8004EBE4
/* 3F3B8 8004EBB8 00000000 */   nop
/* 3F3BC 8004EBBC 09008015 */  bnez       $t4, .L8004EBE4
/* 3F3C0 8004EBC0 21200000 */   addu      $a0, $zero, $zero
/* 3F3C4 8004EBC4 2128E002 */  addu       $a1, $s7, $zero
/* 3F3C8 8004EBC8 04000624 */  addiu      $a2, $zero, 4
/* 3F3CC 8004EBCC FF000724 */  addiu      $a3, $zero, 0xff
/* 3F3D0 8004EBD0 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3F3D4 8004EBD4 942D010C */  jal        FUN_8004b650
/* 3F3D8 8004EBD8 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3F3DC 8004EBDC A400AD8F */  lw         $t5, 0xa4($sp)
/* 3F3E0 8004EBE0 A000AC8F */  lw         $t4, 0xa0($sp)
.L8004EBE4:
/* 3F3E4 8004EBE4 4C00A68F */  lw         $a2, 0x4c($sp)
/* 3F3E8 8004EBE8 0400E486 */  lh         $a0, 4($s7)
/* 3F3EC 8004EBEC 0400C584 */  lh         $a1, 4($a2)
/* 3F3F0 8004EBF0 00000000 */  nop
/* 3F3F4 8004EBF4 26108500 */  xor        $v0, $a0, $a1
/* 3F3F8 8004EBF8 0100552C */  sltiu      $s5, $v0, 1
/* 3F3FC 8004EBFC 4400A016 */  bnez       $s5, .L8004ED10
/* 3F400 8004EC00 40180400 */   sll       $v1, $a0, 1
/* 3F404 8004EC04 21186400 */  addu       $v1, $v1, $a0
/* 3F408 8004EC08 C0180300 */  sll        $v1, $v1, 3
/* 3F40C 8004EC0C 1280023C */  lui        $v0, %hi(D_8011864A)
/* 3F410 8004EC10 4A864424 */  addiu      $a0, $v0, %lo(D_8011864A)
/* 3F414 8004EC14 21306400 */  addu       $a2, $v1, $a0
/* 3F418 8004EC18 40100500 */  sll        $v0, $a1, 1
/* 3F41C 8004EC1C 21104500 */  addu       $v0, $v0, $a1
/* 3F420 8004EC20 C0100200 */  sll        $v0, $v0, 3
/* 3F424 8004EC24 21204400 */  addu       $a0, $v0, $a0
/* 3F428 8004EC28 0000C390 */  lbu        $v1, ($a2)
/* 3F42C 8004EC2C 03008290 */  lbu        $v0, 3($a0)
/* 3F430 8004EC30 00000000 */  nop
/* 3F434 8004EC34 10006214 */  bne        $v1, $v0, .L8004EC78
/* 3F438 8004EC38 21280000 */   addu      $a1, $zero, $zero
/* 3F43C 8004EC3C 0300C390 */  lbu        $v1, 3($a2)
/* 3F440 8004EC40 00008290 */  lbu        $v0, ($a0)
/* 3F444 8004EC44 00000000 */  nop
/* 3F448 8004EC48 0B006214 */  bne        $v1, $v0, .L8004EC78
/* 3F44C 8004EC4C 00000000 */   nop
/* 3F450 8004EC50 0100C390 */  lbu        $v1, 1($a2)
/* 3F454 8004EC54 01008290 */  lbu        $v0, 1($a0)
/* 3F458 8004EC58 00000000 */  nop
/* 3F45C 8004EC5C 06006214 */  bne        $v1, $v0, .L8004EC78
/* 3F460 8004EC60 00000000 */   nop
/* 3F464 8004EC64 0200C290 */  lbu        $v0, 2($a2)
/* 3F468 8004EC68 02008390 */  lbu        $v1, 2($a0)
/* 3F46C 8004EC6C 00000000 */  nop
/* 3F470 8004EC70 26104300 */  xor        $v0, $v0, $v1
/* 3F474 8004EC74 0100452C */  sltiu      $a1, $v0, 1
.L8004EC78:
/* 3F478 8004EC78 25A8A502 */  or         $s5, $s5, $a1
/* 3F47C 8004EC7C 21400000 */  addu       $t0, $zero, $zero
/* 3F480 8004EC80 0100C390 */  lbu        $v1, 1($a2)
/* 3F484 8004EC84 02008290 */  lbu        $v0, 2($a0)
/* 3F488 8004EC88 0000C790 */  lbu        $a3, ($a2)
/* 3F48C 8004EC8C 03008590 */  lbu        $a1, 3($a0)
/* 3F490 8004EC90 21506000 */  addu       $t2, $v1, $zero
/* 3F494 8004EC94 0E006214 */  bne        $v1, $v0, .L8004ECD0
/* 3F498 8004EC98 21484000 */   addu      $t1, $v0, $zero
/* 3F49C 8004EC9C 0200C390 */  lbu        $v1, 2($a2)
/* 3F4A0 8004ECA0 01008290 */  lbu        $v0, 1($a0)
/* 3F4A4 8004ECA4 00000000 */  nop
/* 3F4A8 8004ECA8 09006214 */  bne        $v1, $v0, .L8004ECD0
/* 3F4AC 8004ECAC 00000000 */   nop
/* 3F4B0 8004ECB0 00008290 */  lbu        $v0, ($a0)
/* 3F4B4 8004ECB4 00000000 */  nop
/* 3F4B8 8004ECB8 0500E214 */  bne        $a3, $v0, .L8004ECD0
/* 3F4BC 8004ECBC 00000000 */   nop
/* 3F4C0 8004ECC0 0300C290 */  lbu        $v0, 3($a2)
/* 3F4C4 8004ECC4 00000000 */  nop
/* 3F4C8 8004ECC8 2610A200 */  xor        $v0, $a1, $v0
/* 3F4CC 8004ECCC 0100482C */  sltiu      $t0, $v0, 1
.L8004ECD0:
/* 3F4D0 8004ECD0 25A8A802 */  or         $s5, $s5, $t0
/* 3F4D4 8004ECD4 0D00E514 */  bne        $a3, $a1, .L8004ED0C
/* 3F4D8 8004ECD8 21400000 */   addu      $t0, $zero, $zero
/* 3F4DC 8004ECDC 0B004915 */  bne        $t2, $t1, .L8004ED0C
/* 3F4E0 8004ECE0 00000000 */   nop
/* 3F4E4 8004ECE4 0200C390 */  lbu        $v1, 2($a2)
/* 3F4E8 8004ECE8 01008290 */  lbu        $v0, 1($a0)
/* 3F4EC 8004ECEC 00000000 */  nop
/* 3F4F0 8004ECF0 06006214 */  bne        $v1, $v0, .L8004ED0C
/* 3F4F4 8004ECF4 00000000 */   nop
/* 3F4F8 8004ECF8 0300C290 */  lbu        $v0, 3($a2)
/* 3F4FC 8004ECFC 00008390 */  lbu        $v1, ($a0)
/* 3F500 8004ED00 00000000 */  nop
/* 3F504 8004ED04 26104300 */  xor        $v0, $v0, $v1
/* 3F508 8004ED08 0100482C */  sltiu      $t0, $v0, 1
.L8004ED0C:
/* 3F50C 8004ED0C 25A8A802 */  or         $s5, $s5, $t0
.L8004ED10:
/* 3F510 8004ED10 7000A38F */  lw         $v1, 0x70($sp)
/* 3F514 8004ED14 FFFF0224 */  addiu      $v0, $zero, -1
/* 3F518 8004ED18 08006210 */  beq        $v1, $v0, .L8004ED3C
/* 3F51C 8004ED1C 01016228 */   slti      $v0, $v1, 0x101
/* 3F520 8004ED20 06004014 */  bnez       $v0, .L8004ED3C
/* 3F524 8004ED24 00020224 */   addiu     $v0, $zero, 0x200
/* 3F528 8004ED28 23104300 */  subu       $v0, $v0, $v1
/* 3F52C 8004ED2C 2A185100 */  slt        $v1, $v0, $s1
/* 3F530 8004ED30 02006010 */  beqz       $v1, .L8004ED3C
/* 3F534 8004ED34 00140200 */   sll       $v0, $v0, 0x10
/* 3F538 8004ED38 038C0200 */  sra        $s1, $v0, 0x10
.L8004ED3C:
/* 3F53C 8004ED3C 24002006 */  bltz       $s1, .L8004EDD0
/* 3F540 8004ED40 00000000 */   nop
/* 3F544 8004ED44 D6002012 */  beqz       $s1, .L8004F0A0
/* 3F548 8004ED48 8000222A */   slti      $v0, $s1, 0x80
/* 3F54C 8004ED4C 07004010 */  beqz       $v0, .L8004ED6C
/* 3F550 8004ED50 40181100 */   sll       $v1, $s1, 1
/* 3F554 8004ED54 6C00A0AF */  sw         $zero, 0x6c($sp)
/* 3F558 8004ED58 21187100 */  addu       $v1, $v1, $s1
/* 3F55C 8004ED5C 00110300 */  sll        $v0, $v1, 4
/* 3F560 8004ED60 23104300 */  subu       $v0, $v0, $v1
/* 3F564 8004ED64 663B0108 */  j          .L8004ED98
/* 3F568 8004ED68 80100200 */   sll       $v0, $v0, 2
.L8004ED6C:
/* 3F56C 8004ED6C 0101222A */  slti       $v0, $s1, 0x101
/* 3F570 8004ED70 0F004010 */  beqz       $v0, .L8004EDB0
/* 3F574 8004ED74 80000424 */   addiu     $a0, $zero, 0x80
/* 3F578 8004ED78 6C00A4AF */  sw         $a0, 0x6c($sp)
/* 3F57C 8004ED7C 00010224 */  addiu      $v0, $zero, 0x100
/* 3F580 8004ED80 23105100 */  subu       $v0, $v0, $s1
/* 3F584 8004ED84 40200200 */  sll        $a0, $v0, 1
/* 3F588 8004ED88 21208200 */  addu       $a0, $a0, $v0
/* 3F58C 8004ED8C 00190400 */  sll        $v1, $a0, 4
/* 3F590 8004ED90 23186400 */  subu       $v1, $v1, $a0
/* 3F594 8004ED94 80100300 */  sll        $v0, $v1, 2
.L8004ED98:
/* 3F598 8004ED98 02004104 */  bgez       $v0, .L8004EDA4
/* 3F59C 8004ED9C 00000000 */   nop
/* 3F5A0 8004EDA0 7F004224 */  addiu      $v0, $v0, 0x7f
.L8004EDA4:
/* 3F5A4 8004EDA4 40120200 */  sll        $v0, $v0, 9
/* 3F5A8 8004EDA8 743B0108 */  j          .L8004EDD0
/* 3F5AC 8004EDAC 03F40200 */   sra       $fp, $v0, 0x10
.L8004EDB0:
/* 3F5B0 8004EDB0 8101222A */  slti       $v0, $s1, 0x181
/* 3F5B4 8004EDB4 06004010 */  beqz       $v0, .L8004EDD0
/* 3F5B8 8004EDB8 81010224 */   addiu     $v0, $zero, 0x181
/* 3F5BC 8004EDBC 23105100 */  subu       $v0, $v0, $s1
/* 3F5C0 8004EDC0 00140200 */  sll        $v0, $v0, 0x10
/* 3F5C4 8004EDC4 03140200 */  sra        $v0, $v0, 0x10
/* 3F5C8 8004EDC8 6C00A2AF */  sw         $v0, 0x6c($sp)
/* 3F5CC 8004EDCC 21F00000 */  addu       $fp, $zero, $zero
.L8004EDD0:
/* 3F5D0 8004EDD0 21880000 */  addu       $s1, $zero, $zero
/* 3F5D4 8004EDD4 1280053C */  lui        $a1, 0x8012
/* 3F5D8 8004EDD8 0400E286 */  lh         $v0, 4($s7)
/* 3F5DC 8004EDDC 6400A68F */  lw         $a2, 0x64($sp)
/* 3F5E0 8004EDE0 40180200 */  sll        $v1, $v0, 1
/* 3F5E4 8004EDE4 21186200 */  addu       $v1, $v1, $v0
/* 3F5E8 8004EDE8 C0180300 */  sll        $v1, $v1, 3
/* 3F5EC 8004EDEC 4A86A224 */  addiu      $v0, $a1, -0x79b6
/* 3F5F0 8004EDF0 21186200 */  addu       $v1, $v1, $v0
/* 3F5F4 8004EDF4 AA00C010 */  beqz       $a2, .L8004F0A0
/* 3F5F8 8004EDF8 5000A3AF */   sw        $v1, 0x50($sp)
/* 3F5FC 8004EDFC 2800A28F */  lw         $v0, 0x28($sp)
/* 3F600 8004EE00 00000000 */  nop
/* 3F604 8004EE04 23004228 */  slti       $v0, $v0, 0x23
/* 3F608 8004EE08 03004014 */  bnez       $v0, .L8004EE18
/* 3F60C 8004EE0C 01000224 */   addiu     $v0, $zero, 1
/* 3F610 8004EE10 283C0108 */  j          .L8004F0A0
/* 3F614 8004EE14 5800A2AF */   sw        $v0, 0x58($sp)
.L8004EE18:
/* 3F618 8004EE18 5000A38F */  lw         $v1, 0x50($sp)
/* 3F61C 8004EE1C 00000000 */  nop
/* 3F620 8004EE20 21107100 */  addu       $v0, $v1, $s1
/* 3F624 8004EE24 00004490 */  lbu        $a0, ($v0)
/* 3F628 8004EE28 01000324 */  addiu      $v1, $zero, 1
/* 3F62C 8004EE2C 8F008314 */  bne        $a0, $v1, .L8004F06C
/* 3F630 8004EE30 01002226 */   addiu     $v0, $s1, 1
/* 3F634 8004EE34 2A00C013 */  beqz       $fp, .L8004EEE0
/* 3F638 8004EE38 80101100 */   sll       $v0, $s1, 2
/* 3F63C 8004EE3C 2800A427 */  addiu      $a0, $sp, 0x28
/* 3F640 8004EE40 21208200 */  addu       $a0, $a0, $v0
/* 3F644 8004EE44 21900000 */  addu       $s2, $zero, $zero
/* 3F648 8004EE48 C0101100 */  sll        $v0, $s1, 3
/* 3F64C 8004EE4C 21105100 */  addu       $v0, $v0, $s1
/* 3F650 8004EE50 0000908C */  lw         $s0, ($a0)
/* 3F654 8004EE54 40990200 */  sll        $s3, $v0, 5
/* 3F658 8004EE58 01000326 */  addiu      $v1, $s0, 1
/* 3F65C 8004EE5C 000083AC */  sw         $v1, ($a0)
/* 3F660 8004EE60 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3F664 8004EE64 7470000C */  jal        getcoinslot1_8001c1d0
/* 3F668 8004EE68 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3F66C 8004EE6C A000AC8F */  lw         $t4, 0xa0($sp)
/* 3F670 8004EE70 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3F674 8004EE74 05004010 */  beqz       $v0, .L8004EE8C
/* 3F678 8004EE78 02000224 */   addiu     $v0, $zero, 2
/* 3F67C 8004EE7C 06002212 */  beq        $s1, $v0, .L8004EE98
/* 3F680 8004EE80 21101202 */   addu      $v0, $s0, $s2
/* 3F684 8004EE84 AD3B0108 */  j          .L8004EEB4
/* 3F688 8004EE88 C0100200 */   sll       $v0, $v0, 3
.L8004EE8C:
/* 3F68C 8004EE8C 03002332 */  andi       $v1, $s1, 3
/* 3F690 8004EE90 07006214 */  bne        $v1, $v0, .L8004EEB0
/* 3F694 8004EE94 21101202 */   addu      $v0, $s0, $s2
.L8004EE98:
/* 3F698 8004EE98 6C00A48F */  lw         $a0, 0x6c($sp)
/* 3F69C 8004EE9C 00000000 */  nop
/* 3F6A0 8004EEA0 03008010 */  beqz       $a0, .L8004EEB0
/* 3F6A4 8004EEA4 21101202 */   addu      $v0, $s0, $s2
/* 3F6A8 8004EEA8 01001224 */  addiu      $s2, $zero, 1
/* 3F6AC 8004EEAC 21101202 */  addu       $v0, $s0, $s2
.L8004EEB0:
/* 3F6B0 8004EEB0 C0100200 */  sll        $v0, $v0, 3
.L8004EEB4:
/* 3F6B4 8004EEB4 1780033C */  lui        $v1, %hi(D_8016EEA0)
/* 3F6B8 8004EEB8 A0EE6324 */  addiu      $v1, $v1, %lo(D_8016EEA0)
/* 3F6BC 8004EEBC 21104300 */  addu       $v0, $v0, $v1
/* 3F6C0 8004EEC0 21306202 */  addu       $a2, $s3, $v0
/* 3F6C4 8004EEC4 40111100 */  sll        $v0, $s1, 5
/* 3F6C8 8004EEC8 7800A58F */  lw         $a1, 0x78($sp)
/* 3F6CC 8004EECC 2110C202 */  addu       $v0, $s6, $v0
/* 3F6D0 8004EED0 0600DEA4 */  sh         $fp, 6($a2)
/* 3F6D4 8004EED4 0200D4A4 */  sh         $s4, 2($a2)
/* 3F6D8 8004EED8 0000C2A4 */  sh         $v0, ($a2)
/* 3F6DC 8004EEDC 0400C5A4 */  sh         $a1, 4($a2)
.L8004EEE0:
/* 3F6E0 8004EEE0 6C00A68F */  lw         $a2, 0x6c($sp)
/* 3F6E4 8004EEE4 00000000 */  nop
/* 3F6E8 8004EEE8 5F00C010 */  beqz       $a2, .L8004F068
/* 3F6EC 8004EEEC 80101100 */   sll       $v0, $s1, 2
/* 3F6F0 8004EEF0 2800A427 */  addiu      $a0, $sp, 0x28
/* 3F6F4 8004EEF4 21208200 */  addu       $a0, $a0, $v0
/* 3F6F8 8004EEF8 21900000 */  addu       $s2, $zero, $zero
/* 3F6FC 8004EEFC C0101100 */  sll        $v0, $s1, 3
/* 3F700 8004EF00 21105100 */  addu       $v0, $v0, $s1
/* 3F704 8004EF04 0000908C */  lw         $s0, ($a0)
/* 3F708 8004EF08 40990200 */  sll        $s3, $v0, 5
/* 3F70C 8004EF0C 01000326 */  addiu      $v1, $s0, 1
/* 3F710 8004EF10 000083AC */  sw         $v1, ($a0)
/* 3F714 8004EF14 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3F718 8004EF18 7470000C */  jal        getcoinslot1_8001c1d0
/* 3F71C 8004EF1C A400ADAF */   sw        $t5, 0xa4($sp)
/* 3F720 8004EF20 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3F724 8004EF24 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3F728 8004EF28 05004010 */  beqz       $v0, .L8004EF40
/* 3F72C 8004EF2C 02000224 */   addiu     $v0, $zero, 2
/* 3F730 8004EF30 06002212 */  beq        $s1, $v0, .L8004EF4C
/* 3F734 8004EF34 23181202 */   subu      $v1, $s0, $s2
/* 3F738 8004EF38 D83B0108 */  j          .L8004EF60
/* 3F73C 8004EF3C C0180300 */   sll       $v1, $v1, 3
.L8004EF40:
/* 3F740 8004EF40 03002332 */  andi       $v1, $s1, 3
/* 3F744 8004EF44 05006214 */  bne        $v1, $v0, .L8004EF5C
/* 3F748 8004EF48 23181202 */   subu      $v1, $s0, $s2
.L8004EF4C:
/* 3F74C 8004EF4C 0300C013 */  beqz       $fp, .L8004EF5C
/* 3F750 8004EF50 23181202 */   subu      $v1, $s0, $s2
/* 3F754 8004EF54 01001224 */  addiu      $s2, $zero, 1
/* 3F758 8004EF58 23181202 */  subu       $v1, $s0, $s2
.L8004EF5C:
/* 3F75C 8004EF5C C0180300 */  sll        $v1, $v1, 3
.L8004EF60:
/* 3F760 8004EF60 1780023C */  lui        $v0, %hi(D_8016EEA0)
/* 3F764 8004EF64 A0EE4224 */  addiu      $v0, $v0, %lo(D_8016EEA0)
/* 3F768 8004EF68 21186200 */  addu       $v1, $v1, $v0
/* 3F76C 8004EF6C 21306302 */  addu       $a2, $s3, $v1
/* 3F770 8004EF70 8000A28F */  lw         $v0, 0x80($sp)
/* 3F774 8004EF74 7C00A38F */  lw         $v1, 0x7c($sp)
/* 3F778 8004EF78 8C00A48F */  lw         $a0, 0x8c($sp)
/* 3F77C 8004EF7C 80390200 */  sll        $a3, $v0, 6
/* 3F780 8004EF80 21106400 */  addu       $v0, $v1, $a0
/* 3F784 8004EF84 03110200 */  sra        $v0, $v0, 4
/* 3F788 8004EF88 3F004230 */  andi       $v0, $v0, 0x3f
/* 3F78C 8004EF8C 2510E200 */  or         $v0, $a3, $v0
/* 3F790 8004EF90 0400C2A4 */  sh         $v0, 4($a2)
/* 3F794 8004EF94 40111100 */  sll        $v0, $s1, 5
/* 3F798 8004EF98 6C00A58F */  lw         $a1, 0x6c($sp)
/* 3F79C 8004EF9C 2110C202 */  addu       $v0, $s6, $v0
/* 3F7A0 8004EFA0 0200D4A4 */  sh         $s4, 2($a2)
/* 3F7A4 8004EFA4 0000C2A4 */  sh         $v0, ($a2)
/* 3F7A8 8004EFA8 0600C5A4 */  sh         $a1, 6($a2)
/* 3F7AC 8004EFAC 9400A38F */  lw         $v1, 0x94($sp)
/* 3F7B0 8004EFB0 2800A525 */  addiu      $a1, $t5, 0x28
/* 3F7B4 8004EFB4 21106C00 */  addu       $v0, $v1, $t4
/* 3F7B8 8004EFB8 C0190200 */  sll        $v1, $v0, 7
/* 3F7BC 8004EFBC 21104300 */  addu       $v0, $v0, $v1
/* 3F7C0 8004EFC0 40110200 */  sll        $v0, $v0, 5
/* 3F7C4 8004EFC4 23104C00 */  subu       $v0, $v0, $t4
/* 3F7C8 8004EFC8 80100200 */  sll        $v0, $v0, 2
/* 3F7CC 8004EFCC 21104500 */  addu       $v0, $v0, $a1
/* 3F7D0 8004EFD0 88004490 */  lbu        $a0, 0x88($v0)
/* 3F7D4 8004EFD4 05000324 */  addiu      $v1, $zero, 5
/* 3F7D8 8004EFD8 24008314 */  bne        $a0, $v1, .L8004F06C
/* 3F7DC 8004EFDC 01002226 */   addiu     $v0, $s1, 1
/* 3F7E0 8004EFE0 4C00A48F */  lw         $a0, 0x4c($sp)
/* 3F7E4 8004EFE4 00000000 */  nop
/* 3F7E8 8004EFE8 20008010 */  beqz       $a0, .L8004F06C
/* 3F7EC 8004EFEC 00000000 */   nop
/* 3F7F0 8004EFF0 1100A016 */  bnez       $s5, .L8004F038
/* 3F7F4 8004EFF4 1780033C */   lui       $v1, 0x8017
/* 3F7F8 8004EFF8 3300822A */  slti       $v0, $s4, 0x33
/* 3F7FC 8004EFFC 1B004014 */  bnez       $v0, .L8004F06C
/* 3F800 8004F000 01002226 */   addiu     $v0, $s1, 1
/* 3F804 8004F004 1280053C */  lui        $a1, %hi(D_8011864A)
/* 3F808 8004F008 04008384 */  lh         $v1, 4($a0)
/* 3F80C 8004F00C 4A86A424 */  addiu      $a0, $a1, %lo(D_8011864A)
/* 3F810 8004F010 40100300 */  sll        $v0, $v1, 1
/* 3F814 8004F014 21104300 */  addu       $v0, $v0, $v1
/* 3F818 8004F018 C0100200 */  sll        $v0, $v0, 3
/* 3F81C 8004F01C 21104400 */  addu       $v0, $v0, $a0
/* 3F820 8004F020 21105100 */  addu       $v0, $v0, $s1
/* 3F824 8004F024 00004490 */  lbu        $a0, ($v0)
/* 3F828 8004F028 01000324 */  addiu      $v1, $zero, 1
/* 3F82C 8004F02C 0F008314 */  bne        $a0, $v1, .L8004F06C
/* 3F830 8004F030 01002226 */   addiu     $v0, $s1, 1
/* 3F834 8004F034 1780033C */  lui        $v1, %hi(D_8016F810)
.L8004F038:
/* 3F838 8004F038 6800A58F */  lw         $a1, 0x68($sp)
/* 3F83C 8004F03C 10F86224 */  addiu      $v0, $v1, %lo(D_8016F810)
/* 3F840 8004F040 40200500 */  sll        $a0, $a1, 1
/* 3F844 8004F044 21104400 */  addu       $v0, $v0, $a0
/* 3F848 8004F048 10004384 */  lh         $v1, 0x10($v0)
/* 3F84C 8004F04C 7C00A28F */  lw         $v0, 0x7c($sp)
/* 3F850 8004F050 00000000 */  nop
/* 3F854 8004F054 21184300 */  addu       $v1, $v0, $v1
/* 3F858 8004F058 03190300 */  sra        $v1, $v1, 4
/* 3F85C 8004F05C 3F006330 */  andi       $v1, $v1, 0x3f
/* 3F860 8004F060 2518E300 */  or         $v1, $a3, $v1
/* 3F864 8004F064 0400C3A4 */  sh         $v1, 4($a2)
.L8004F068:
/* 3F868 8004F068 01002226 */  addiu      $v0, $s1, 1
.L8004F06C:
/* 3F86C 8004F06C 00140200 */  sll        $v0, $v0, 0x10
/* 3F870 8004F070 6400A48F */  lw         $a0, 0x64($sp)
/* 3F874 8004F074 038C0200 */  sra        $s1, $v0, 0x10
/* 3F878 8004F078 2A182402 */  slt        $v1, $s1, $a0
/* 3F87C 8004F07C 08006010 */  beqz       $v1, .L8004F0A0
/* 3F880 8004F080 80101100 */   sll       $v0, $s1, 2
/* 3F884 8004F084 2120A203 */  addu       $a0, $sp, $v0
/* 3F888 8004F088 2800838C */  lw         $v1, 0x28($a0)
/* 3F88C 8004F08C 00000000 */  nop
/* 3F890 8004F090 23006328 */  slti       $v1, $v1, 0x23
/* 3F894 8004F094 60FF6014 */  bnez       $v1, .L8004EE18
/* 3F898 8004F098 01000524 */   addiu     $a1, $zero, 1
/* 3F89C 8004F09C 5800A5AF */  sw         $a1, 0x58($sp)
.L8004F0A0:
/* 3F8A0 8004F0A0 2800F726 */  addiu      $s7, $s7, 0x28
.L8004F0A4:
/* 3F8A4 8004F0A4 6000A68F */  lw         $a2, 0x60($sp)
/* 3F8A8 8004F0A8 0600E286 */  lh         $v0, 6($s7)
/* 3F8AC 8004F0AC 0100C624 */  addiu      $a2, $a2, 1
/* 3F8B0 8004F0B0 05004010 */  beqz       $v0, .L8004F0C8
/* 3F8B4 8004F0B4 6000A6AF */   sw        $a2, 0x60($sp)
/* 3F8B8 8004F0B8 5800A28F */  lw         $v0, 0x58($sp)
/* 3F8BC 8004F0BC 00000000 */  nop
/* 3F8C0 8004F0C0 28FA4010 */  beqz       $v0, .L8004D964
/* 3F8C4 8004F0C4 00000000 */   nop
.L8004F0C8:
/* 3F8C8 8004F0C8 0E80033C */  lui        $v1, %hi(D_800DAF80)
.L8004F0CC:
/* 3F8CC 8004F0CC 80AF628C */  lw         $v0, %lo(D_800DAF80)($v1)
/* 3F8D0 8004F0D0 00000000 */  nop
/* 3F8D4 8004F0D4 20004010 */  beqz       $v0, .L8004F158
/* 3F8D8 8004F0D8 FF00093C */   lui       $t1, 0xff
/* 3F8DC 8004F0DC FFFF2935 */  ori        $t1, $t1, 0xffff
/* 3F8E0 8004F0E0 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 3F8E4 8004F0E4 A89D8324 */  addiu      $v1, $a0, %lo(D_80129DA8)
/* 3F8E8 8004F0E8 1780083C */  lui        $t0, %hi(D_8016F7D0)
/* 3F8EC 8004F0EC D0F70825 */  addiu      $t0, $t0, %lo(D_8016F7D0)
/* 3F8F0 8004F0F0 A89D828C */  lw         $v0, -0x6258($a0)
/* 3F8F4 8004F0F4 40200C00 */  sll        $a0, $t4, 1
/* 3F8F8 8004F0F8 21208C00 */  addu       $a0, $a0, $t4
/* 3F8FC 8004F0FC 80200400 */  sll        $a0, $a0, 2
/* 3F900 8004F100 00FF0B3C */  lui        $t3, 0xff00
/* 3F904 8004F104 2C0C6A8C */  lw         $t2, 0xc2c($v1)
/* 3F908 8004F108 40280200 */  sll        $a1, $v0, 1
/* 3F90C 8004F10C 2128A200 */  addu       $a1, $a1, $v0
/* 3F910 8004F110 C0280500 */  sll        $a1, $a1, 3
/* 3F914 8004F114 2130A400 */  addu       $a2, $a1, $a0
/* 3F918 8004F118 2130C800 */  addu       $a2, $a2, $t0
/* 3F91C 8004F11C 21208800 */  addu       $a0, $a0, $t0
/* 3F920 8004F120 0400478D */  lw         $a3, 4($t2)
/* 3F924 8004F124 0000C38C */  lw         $v1, ($a2)
/* 3F928 8004F128 F003E28C */  lw         $v0, 0x3f0($a3)
/* 3F92C 8004F12C 24186B00 */  and        $v1, $v1, $t3
/* 3F930 8004F130 24104900 */  and        $v0, $v0, $t1
/* 3F934 8004F134 25186200 */  or         $v1, $v1, $v0
/* 3F938 8004F138 0000C3AC */  sw         $v1, ($a2)
/* 3F93C 8004F13C 0400478D */  lw         $a3, 4($t2)
/* 3F940 8004F140 2128A400 */  addu       $a1, $a1, $a0
/* 3F944 8004F144 F003E28C */  lw         $v0, 0x3f0($a3)
/* 3F948 8004F148 2428A900 */  and        $a1, $a1, $t1
/* 3F94C 8004F14C 24104B00 */  and        $v0, $v0, $t3
/* 3F950 8004F150 25104500 */  or         $v0, $v0, $a1
/* 3F954 8004F154 F003E2AC */  sw         $v0, 0x3f0($a3)
.L8004F158:
/* 3F958 8004F158 6400A58F */  lw         $a1, 0x64($sp)
/* 3F95C 8004F15C 00000000 */  nop
/* 3F960 8004F160 6800A010 */  beqz       $a1, .L8004F304
/* 3F964 8004F164 21880000 */   addu      $s1, $zero, $zero
/* 3F968 8004F168 2800A627 */  addiu      $a2, $sp, 0x28
/* 3F96C 8004F16C 9000A6AF */  sw         $a2, 0x90($sp)
/* 3F970 8004F170 1380033C */  lui        $v1, %hi(D_80129DA8)
.L8004F174:
/* 3F974 8004F174 1780053C */  lui        $a1, %hi(D_8016F9F0)
/* 3F978 8004F178 A89D628C */  lw         $v0, %lo(D_80129DA8)($v1)
/* 3F97C 8004F17C 5400A48F */  lw         $a0, 0x54($sp)
/* 3F980 8004F180 F0F9A524 */  addiu      $a1, $a1, %lo(D_8016F9F0)
/* 3F984 8004F184 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3F988 8004F188 A400ADAF */  sw         $t5, 0xa4($sp)
/* 3F98C 8004F18C 40100200 */  sll        $v0, $v0, 1
/* 3F990 8004F190 21104400 */  addu       $v0, $v0, $a0
/* 3F994 8004F194 80100200 */  sll        $v0, $v0, 2
/* 3F998 8004F198 21105100 */  addu       $v0, $v0, $s1
/* 3F99C 8004F19C 40200200 */  sll        $a0, $v0, 1
/* 3F9A0 8004F1A0 21208200 */  addu       $a0, $a0, $v0
/* 3F9A4 8004F1A4 00190400 */  sll        $v1, $a0, 4
/* 3F9A8 8004F1A8 23186400 */  subu       $v1, $v1, $a0
/* 3F9AC 8004F1AC 00190300 */  sll        $v1, $v1, 4
/* 3F9B0 8004F1B0 7470000C */  jal        getcoinslot1_8001c1d0
/* 3F9B4 8004F1B4 21806500 */   addu      $s0, $v1, $a1
/* 3F9B8 8004F1B8 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3F9BC 8004F1BC A400AD8F */  lw         $t5, 0xa4($sp)
/* 3F9C0 8004F1C0 05004010 */  beqz       $v0, .L8004F1D8
/* 3F9C4 8004F1C4 02000624 */   addiu     $a2, $zero, 2
/* 3F9C8 8004F1C8 07002612 */  beq        $s1, $a2, .L8004F1E8
/* 3F9CC 8004F1CC FFFF1724 */   addiu     $s7, $zero, -1
/* 3F9D0 8004F1D0 823C0108 */  j          .L8004F208
/* 3F9D4 8004F1D4 21180000 */   addu      $v1, $zero, $zero
.L8004F1D8:
/* 3F9D8 8004F1D8 03002232 */  andi       $v0, $s1, 3
/* 3F9DC 8004F1DC 02000324 */  addiu      $v1, $zero, 2
/* 3F9E0 8004F1E0 08004314 */  bne        $v0, $v1, .L8004F204
/* 3F9E4 8004F1E4 FFFF1724 */   addiu     $s7, $zero, -1
.L8004F1E8:
/* 3F9E8 8004F1E8 9000A48F */  lw         $a0, 0x90($sp)
/* 3F9EC 8004F1EC 80101100 */  sll        $v0, $s1, 2
/* 3F9F0 8004F1F0 21108200 */  addu       $v0, $a0, $v0
/* 3F9F4 8004F1F4 0000438C */  lw         $v1, ($v0)
/* 3F9F8 8004F1F8 FFFF1624 */  addiu      $s6, $zero, -1
/* 3F9FC 8004F1FC 873C0108 */  j          .L8004F21C
/* 3FA00 8004F200 FFFF6324 */   addiu     $v1, $v1, -1
.L8004F204:
/* 3FA04 8004F204 21180000 */  addu       $v1, $zero, $zero
.L8004F208:
/* 3FA08 8004F208 80101100 */  sll        $v0, $s1, 2
/* 3FA0C 8004F20C 9000A58F */  lw         $a1, 0x90($sp)
/* 3FA10 8004F210 01001624 */  addiu      $s6, $zero, 1
/* 3FA14 8004F214 2110A200 */  addu       $v0, $a1, $v0
/* 3FA18 8004F218 0000578C */  lw         $s7, ($v0)
.L8004F21C:
/* 3FA1C 8004F21C 21906000 */  addu       $s2, $v1, $zero
/* 3FA20 8004F220 33005712 */  beq        $s2, $s7, .L8004F2F0
/* 3FA24 8004F224 01003E26 */   addiu     $fp, $s1, 1
/* 3FA28 8004F228 FF00133C */  lui        $s3, 0xff
/* 3FA2C 8004F22C FFFF7336 */  ori        $s3, $s3, 0xffff
/* 3FA30 8004F230 00FF153C */  lui        $s5, 0xff00
/* 3FA34 8004F234 C0101100 */  sll        $v0, $s1, 3
/* 3FA38 8004F238 21105100 */  addu       $v0, $v0, $s1
/* 3FA3C 8004F23C 40110200 */  sll        $v0, $v0, 5
/* 3FA40 8004F240 C0181200 */  sll        $v1, $s2, 3
/* 3FA44 8004F244 1780063C */  lui        $a2, %hi(D_8016EEA0)
/* 3FA48 8004F248 A0EEC624 */  addiu      $a2, $a2, %lo(D_8016EEA0)
/* 3FA4C 8004F24C 2110C200 */  addu       $v0, $a2, $v0
/* 3FA50 8004F250 21886200 */  addu       $s1, $v1, $v0
/* 3FA54 8004F254 C0A01600 */  sll        $s4, $s6, 3
.L8004F258:
/* 3FA58 8004F258 A000ACAF */  sw         $t4, 0xa0($sp)
/* 3FA5C 8004F25C 7470000C */  jal        getcoinslot1_8001c1d0
/* 3FA60 8004F260 A400ADAF */   sw        $t5, 0xa4($sp)
/* 3FA64 8004F264 A000AC8F */  lw         $t4, 0xa0($sp)
/* 3FA68 8004F268 A400AD8F */  lw         $t5, 0xa4($sp)
/* 3FA6C 8004F26C 04004014 */  bnez       $v0, .L8004F280
/* 3FA70 8004F270 00000000 */   nop
/* 3FA74 8004F274 00002296 */  lhu        $v0, ($s1)
/* 3FA78 8004F278 00000000 */  nop
/* 3FA7C 8004F27C 080002A6 */  sh         $v0, 8($s0)
.L8004F280:
/* 3FA80 8004F280 02002496 */  lhu        $a0, 2($s1)
/* 3FA84 8004F284 06002392 */  lbu        $v1, 6($s1)
/* 3FA88 8004F288 04002696 */  lhu        $a2, 4($s1)
/* 3FA8C 8004F28C 21883402 */  addu       $s1, $s1, $s4
/* 3FA90 8004F290 1380053C */  lui        $a1, %hi(D_80129DA8)
/* 3FA94 8004F294 A89DA224 */  addiu      $v0, $a1, %lo(D_80129DA8)
/* 3FA98 8004F298 2C0C458C */  lw         $a1, 0xc2c($v0)
/* 3FA9C 8004F29C 21905602 */  addu       $s2, $s2, $s6
/* 3FAA0 8004F2A0 0A0004A6 */  sh         $a0, 0xa($s0)
/* 3FAA4 8004F2A4 060003A2 */  sb         $v1, 6($s0)
/* 3FAA8 8004F2A8 050003A2 */  sb         $v1, 5($s0)
/* 3FAAC 8004F2AC 040003A2 */  sb         $v1, 4($s0)
/* 3FAB0 8004F2B0 0E0006A6 */  sh         $a2, 0xe($s0)
/* 3FAB4 8004F2B4 0400A48C */  lw         $a0, 4($a1)
/* 3FAB8 8004F2B8 0000028E */  lw         $v0, ($s0)
/* 3FABC 8004F2BC F003838C */  lw         $v1, 0x3f0($a0)
/* 3FAC0 8004F2C0 24105500 */  and        $v0, $v0, $s5
/* 3FAC4 8004F2C4 24187300 */  and        $v1, $v1, $s3
/* 3FAC8 8004F2C8 25104300 */  or         $v0, $v0, $v1
/* 3FACC 8004F2CC 000002AE */  sw         $v0, ($s0)
/* 3FAD0 8004F2D0 0400A38C */  lw         $v1, 4($a1)
/* 3FAD4 8004F2D4 24201302 */  and        $a0, $s0, $s3
/* 3FAD8 8004F2D8 F003628C */  lw         $v0, 0x3f0($v1)
/* 3FADC 8004F2DC 14001026 */  addiu      $s0, $s0, 0x14
/* 3FAE0 8004F2E0 24105500 */  and        $v0, $v0, $s5
/* 3FAE4 8004F2E4 25104400 */  or         $v0, $v0, $a0
/* 3FAE8 8004F2E8 DBFF5716 */  bne        $s2, $s7, .L8004F258
/* 3FAEC 8004F2EC F00362AC */   sw        $v0, 0x3f0($v1)
.L8004F2F0:
/* 3FAF0 8004F2F0 00141E00 */  sll        $v0, $fp, 0x10
/* 3FAF4 8004F2F4 6400A68F */  lw         $a2, 0x64($sp)
/* 3FAF8 8004F2F8 038C0200 */  sra        $s1, $v0, 0x10
/* 3FAFC 8004F2FC 9DFF2616 */  bne        $s1, $a2, .L8004F174
/* 3FB00 8004F300 1380033C */   lui       $v1, 0x8013
.L8004F304:
/* 3FB04 8004F304 0E80033C */  lui        $v1, %hi(D_800DAF80)
/* 3FB08 8004F308 80AF628C */  lw         $v0, %lo(D_800DAF80)($v1)
/* 3FB0C 8004F30C 00000000 */  nop
/* 3FB10 8004F310 20004010 */  beqz       $v0, .L8004F394
/* 3FB14 8004F314 FF00093C */   lui       $t1, 0xff
/* 3FB18 8004F318 FFFF2935 */  ori        $t1, $t1, 0xffff
/* 3FB1C 8004F31C 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 3FB20 8004F320 A89D8324 */  addiu      $v1, $a0, %lo(D_80129DA8)
/* 3FB24 8004F324 1780083C */  lui        $t0, %hi(D_8016F7A0)
/* 3FB28 8004F328 A0F70825 */  addiu      $t0, $t0, %lo(D_8016F7A0)
/* 3FB2C 8004F32C A89D828C */  lw         $v0, -0x6258($a0)
/* 3FB30 8004F330 40200C00 */  sll        $a0, $t4, 1
/* 3FB34 8004F334 21208C00 */  addu       $a0, $a0, $t4
/* 3FB38 8004F338 80200400 */  sll        $a0, $a0, 2
/* 3FB3C 8004F33C 00FF0B3C */  lui        $t3, 0xff00
/* 3FB40 8004F340 2C0C6A8C */  lw         $t2, 0xc2c($v1)
/* 3FB44 8004F344 40280200 */  sll        $a1, $v0, 1
/* 3FB48 8004F348 2128A200 */  addu       $a1, $a1, $v0
/* 3FB4C 8004F34C C0280500 */  sll        $a1, $a1, 3
/* 3FB50 8004F350 2130A400 */  addu       $a2, $a1, $a0
/* 3FB54 8004F354 2130C800 */  addu       $a2, $a2, $t0
/* 3FB58 8004F358 21208800 */  addu       $a0, $a0, $t0
/* 3FB5C 8004F35C 0400478D */  lw         $a3, 4($t2)
/* 3FB60 8004F360 0000C38C */  lw         $v1, ($a2)
/* 3FB64 8004F364 F003E28C */  lw         $v0, 0x3f0($a3)
/* 3FB68 8004F368 24186B00 */  and        $v1, $v1, $t3
/* 3FB6C 8004F36C 24104900 */  and        $v0, $v0, $t1
/* 3FB70 8004F370 25186200 */  or         $v1, $v1, $v0
/* 3FB74 8004F374 0000C3AC */  sw         $v1, ($a2)
/* 3FB78 8004F378 0400478D */  lw         $a3, 4($t2)
/* 3FB7C 8004F37C 2128A400 */  addu       $a1, $a1, $a0
/* 3FB80 8004F380 F003E28C */  lw         $v0, 0x3f0($a3)
/* 3FB84 8004F384 2428A900 */  and        $a1, $a1, $t1
/* 3FB88 8004F388 24104B00 */  and        $v0, $v0, $t3
/* 3FB8C 8004F38C 25104500 */  or         $v0, $v0, $a1
/* 3FB90 8004F390 F003E2AC */  sw         $v0, 0x3f0($a3)
.L8004F394:
/* 3FB94 8004F394 FF00083C */  lui        $t0, 0xff
/* 3FB98 8004F398 FFFF0835 */  ori        $t0, $t0, 0xffff
/* 3FB9C 8004F39C 1380053C */  lui        $a1, %hi(D_80129DA8)
/* 3FBA0 8004F3A0 A89DA224 */  addiu      $v0, $a1, %lo(D_80129DA8)
/* 3FBA4 8004F3A4 1780073C */  lui        $a3, %hi(D_801726F0)
/* 3FBA8 8004F3A8 F026E724 */  addiu      $a3, $a3, %lo(D_801726F0)
/* 3FBAC 8004F3AC 00FF0A3C */  lui        $t2, 0xff00
/* 3FBB0 8004F3B0 A89DA48C */  lw         $a0, -0x6258($a1)
/* 3FBB4 8004F3B4 9800A68F */  lw         $a2, 0x98($sp)
/* 3FBB8 8004F3B8 2C0C498C */  lw         $t1, 0xc2c($v0)
/* 3FBBC 8004F3BC 00210400 */  sll        $a0, $a0, 4
/* 3FBC0 8004F3C0 21288600 */  addu       $a1, $a0, $a2
/* 3FBC4 8004F3C4 2128A700 */  addu       $a1, $a1, $a3
/* 3FBC8 8004F3C8 0400268D */  lw         $a2, 4($t1)
/* 3FBCC 8004F3CC 0000A38C */  lw         $v1, ($a1)
/* 3FBD0 8004F3D0 F003C28C */  lw         $v0, 0x3f0($a2)
/* 3FBD4 8004F3D4 24186A00 */  and        $v1, $v1, $t2
/* 3FBD8 8004F3D8 24104800 */  and        $v0, $v0, $t0
/* 3FBDC 8004F3DC 25186200 */  or         $v1, $v1, $v0
/* 3FBE0 8004F3E0 0000A3AC */  sw         $v1, ($a1)
/* 3FBE4 8004F3E4 9800A38F */  lw         $v1, 0x98($sp)
/* 3FBE8 8004F3E8 0400268D */  lw         $a2, 4($t1)
/* 3FBEC 8004F3EC 21386700 */  addu       $a3, $v1, $a3
/* 3FBF0 8004F3F0 21208700 */  addu       $a0, $a0, $a3
/* 3FBF4 8004F3F4 F003C28C */  lw         $v0, 0x3f0($a2)
/* 3FBF8 8004F3F8 24208800 */  and        $a0, $a0, $t0
/* 3FBFC 8004F3FC 24104A00 */  and        $v0, $v0, $t2
/* 3FC00 8004F400 25104400 */  or         $v0, $v0, $a0
/* 3FC04 8004F404 F003C2AC */  sw         $v0, 0x3f0($a2)
/* 3FC08 8004F408 9400A48F */  lw         $a0, 0x94($sp)
/* 3FC0C 8004F40C 2800A525 */  addiu      $a1, $t5, 0x28
/* 3FC10 8004F410 21108C00 */  addu       $v0, $a0, $t4
/* 3FC14 8004F414 C0190200 */  sll        $v1, $v0, 7
/* 3FC18 8004F418 21104300 */  addu       $v0, $v0, $v1
/* 3FC1C 8004F41C 40110200 */  sll        $v0, $v0, 5
/* 3FC20 8004F420 23104C00 */  subu       $v0, $v0, $t4
/* 3FC24 8004F424 80100200 */  sll        $v0, $v0, 2
/* 3FC28 8004F428 21104500 */  addu       $v0, $v0, $a1
/* 3FC2C 8004F42C 88004490 */  lbu        $a0, 0x88($v0)
/* 3FC30 8004F430 05000324 */  addiu      $v1, $zero, 5
/* 3FC34 8004F434 08008314 */  bne        $a0, $v1, .L8004F458
/* 3FC38 8004F438 00000000 */   nop
/* 3FC3C 8004F43C 06008015 */  bnez       $t4, .L8004F458
/* 3FC40 8004F440 1780023C */   lui       $v0, %hi(D_80172710)
/* 3FC44 8004F444 4800A58F */  lw         $a1, 0x48($sp)
/* 3FC48 8004F448 00000000 */  nop
/* 3FC4C 8004F44C 0400A38C */  lw         $v1, 4($a1)
/* 3FC50 8004F450 00000000 */  nop
/* 3FC54 8004F454 102743AC */  sw         $v1, %lo(D_80172710)($v0)
.L8004F458:
/* 3FC58 8004F458 D400A28F */  lw         $v0, 0xd4($sp)
/* 3FC5C 8004F45C CC00BF8F */  lw         $ra, 0xcc($sp)
/* 3FC60 8004F460 C800BE8F */  lw         $fp, 0xc8($sp)
/* 3FC64 8004F464 C400B78F */  lw         $s7, 0xc4($sp)
/* 3FC68 8004F468 C000B68F */  lw         $s6, 0xc0($sp)
/* 3FC6C 8004F46C BC00B58F */  lw         $s5, 0xbc($sp)
/* 3FC70 8004F470 B800B48F */  lw         $s4, 0xb8($sp)
/* 3FC74 8004F474 B400B38F */  lw         $s3, 0xb4($sp)
/* 3FC78 8004F478 B000B28F */  lw         $s2, 0xb0($sp)
/* 3FC7C 8004F47C AC00B18F */  lw         $s1, 0xac($sp)
/* 3FC80 8004F480 A800B08F */  lw         $s0, 0xa8($sp)
/* 3FC84 8004F484 0800E003 */  jr         $ra
/* 3FC88 8004F488 D000BD27 */   addiu     $sp, $sp, 0xd0

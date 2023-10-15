.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001d3e8
/* DBE8 8001D3E8 1280023C */  lui        $v0, %hi(D_801222B0)
/* DBEC 8001D3EC B0224384 */  lh         $v1, %lo(D_801222B0)($v0)
/* DBF0 8001D3F0 68FDBD27 */  addiu      $sp, $sp, -0x298
/* DBF4 8001D3F4 7002B0AF */  sw         $s0, 0x270($sp)
/* DBF8 8001D3F8 B0225024 */  addiu      $s0, $v0, 0x22b0
/* DBFC 8001D3FC 8C02B7AF */  sw         $s7, 0x28c($sp)
/* DC00 8001D400 21B88000 */  addu       $s7, $a0, $zero
/* DC04 8001D404 8802B6AF */  sw         $s6, 0x288($sp)
/* DC08 8001D408 21B0C000 */  addu       $s6, $a2, $zero
/* DC0C 8001D40C 9002BEAF */  sw         $fp, 0x290($sp)
/* DC10 8001D410 13801E3C */  lui        $fp, 0x8013
/* DC14 8001D414 9402BFAF */  sw         $ra, 0x294($sp)
/* DC18 8001D418 8402B5AF */  sw         $s5, 0x284($sp)
/* DC1C 8001D41C 8002B4AF */  sw         $s4, 0x280($sp)
/* DC20 8001D420 7C02B3AF */  sw         $s3, 0x27c($sp)
/* DC24 8001D424 7802B2AF */  sw         $s2, 0x278($sp)
/* DC28 8001D428 6A006004 */  bltz       $v1, .L8001D5D4
/* DC2C 8001D42C 7402B1AF */   sw        $s1, 0x274($sp)
/* DC30 8001D430 0180023C */  lui        $v0, %hi(D_800107E0)
/* DC34 8001D434 E0075524 */  addiu      $s5, $v0, %lo(D_800107E0)
/* DC38 8001D438 3002B227 */  addiu      $s2, $sp, 0x230
/* DC3C 8001D43C 1380023C */  lui        $v0, %hi(D_801280E0)
/* DC40 8001D440 E0805424 */  addiu      $s4, $v0, %lo(D_801280E0)
/* DC44 8001D444 1000B127 */  addiu      $s1, $sp, 0x10
/* DC48 8001D448 01001324 */  addiu      $s3, $zero, 1
.L8001D44C:
/* DC4C 8001D44C 000020A2 */  sb         $zero, ($s1)
/* DC50 8001D450 2120E002 */  addu       $a0, $s7, $zero
/* DC54 8001D454 21280002 */  addu       $a1, $s0, $zero
/* DC58 8001D458 4A73000C */  jal        FUN_8001cd28
/* DC5C 8001D45C 2130C002 */   addu      $a2, $s6, $zero
/* DC60 8001D460 57004010 */  beqz       $v0, .L8001D5C0
/* DC64 8001D464 FEFF0224 */   addiu     $v0, $zero, -2
/* DC68 8001D468 0C000386 */  lh         $v1, 0xc($s0)
/* DC6C 8001D46C 00000000 */  nop
/* DC70 8001D470 10006214 */  bne        $v1, $v0, .L8001D4B4
/* DC74 8001D474 21204002 */   addu      $a0, $s2, $zero
/* DC78 8001D478 0180023C */  lui        $v0, %hi(D_800107E0)
/* DC7C 8001D47C E007438C */  lw         $v1, %lo(D_800107E0)($v0)
/* DC80 8001D480 0400A68E */  lw         $a2, 4($s5)
/* DC84 8001D484 0800A296 */  lhu        $v0, 8($s5)
/* DC88 8001D488 10000526 */  addiu      $a1, $s0, 0x10
/* DC8C 8001D48C 3002A3AF */  sw         $v1, 0x230($sp)
/* DC90 8001D490 3402A6AF */  sw         $a2, 0x234($sp)
/* DC94 8001D494 3F71000C */  jal        FUN_8001c4fc
/* DC98 8001D498 3802A2A7 */   sh        $v0, 0x238($sp)
/* DC9C 8001D49C 1280033C */  lui        $v1, %hi(D_801270D0)
/* DCA0 8001D4A0 D070658C */  lw         $a1, %lo(D_801270D0)($v1)
/* DCA4 8001D4A4 DDB3000C */  jal        decodefile_8002cf74
/* DCA8 8001D4A8 21204002 */   addu      $a0, $s2, $zero
/* DCAC 8001D4AC 70750008 */  j          .L8001D5C0
/* DCB0 8001D4B0 000033A2 */   sb        $s3, ($s1)
.L8001D4B4:
/* DCB4 8001D4B4 00000286 */  lh         $v0, ($s0)
/* DCB8 8001D4B8 00000000 */  nop
/* DCBC 8001D4BC 21105400 */  addu       $v0, $v0, $s4
/* DCC0 8001D4C0 00004390 */  lbu        $v1, ($v0)
/* DCC4 8001D4C4 00000696 */  lhu        $a2, ($s0)
/* DCC8 8001D4C8 5000632C */  sltiu      $v1, $v1, 0x50
/* DCCC 8001D4CC 3C006010 */  beqz       $v1, .L8001D5C0
/* DCD0 8001D4D0 00000000 */   nop
/* DCD4 8001D4D4 00004390 */  lbu        $v1, ($v0)
/* DCD8 8001D4D8 00000000 */  nop
/* DCDC 8001D4DC C0100300 */  sll        $v0, $v1, 3
/* DCE0 8001D4E0 23104300 */  subu       $v0, $v0, $v1
/* DCE4 8001D4E4 80100200 */  sll        $v0, $v0, 2
/* DCE8 8001D4E8 E082C327 */  addiu      $v1, $fp, -0x7d20
/* DCEC 8001D4EC 21284300 */  addu       $a1, $v0, $v1
/* DCF0 8001D4F0 0000A494 */  lhu        $a0, ($a1)
/* DCF4 8001D4F4 FF7FC230 */  andi       $v0, $a2, 0x7fff
/* DCF8 8001D4F8 FF7F8430 */  andi       $a0, $a0, 0x7fff
/* DCFC 8001D4FC 30008214 */  bne        $a0, $v0, .L8001D5C0
/* DD00 8001D500 00000000 */   nop
/* DD04 8001D504 0400A294 */  lhu        $v0, 4($a1)
/* DD08 8001D508 0C00A484 */  lh         $a0, 0xc($a1)
/* DD0C 8001D50C 04000686 */  lh         $a2, 4($s0)
/* DD10 8001D510 001C0200 */  sll        $v1, $v0, 0x10
/* DD14 8001D514 03008228 */  slti       $v0, $a0, 3
/* DD18 8001D518 08004010 */  beqz       $v0, .L8001D53C
/* DD1C 8001D51C 033C0300 */   sra       $a3, $v1, 0x10
/* DD20 8001D520 02000224 */  addiu      $v0, $zero, 2
/* DD24 8001D524 23104400 */  subu       $v0, $v0, $a0
/* DD28 8001D528 07104700 */  srav       $v0, $a3, $v0
/* DD2C 8001D52C 06004610 */  beq        $v0, $a2, .L8001D548
/* DD30 8001D530 00000000 */   nop
/* DD34 8001D534 71750008 */  j          .L8001D5C4
/* DD38 8001D538 30001026 */   addiu     $s0, $s0, 0x30
.L8001D53C:
/* DD3C 8001D53C 43140300 */  sra        $v0, $v1, 0x11
/* DD40 8001D540 1F004614 */  bne        $v0, $a2, .L8001D5C0
/* DD44 8001D544 00000000 */   nop
.L8001D548:
/* DD48 8001D548 0600A384 */  lh         $v1, 6($a1)
/* DD4C 8001D54C 06000286 */  lh         $v0, 6($s0)
/* DD50 8001D550 00000000 */  nop
/* DD54 8001D554 1A006214 */  bne        $v1, $v0, .L8001D5C0
/* DD58 8001D558 00000000 */   nop
/* DD5C 8001D55C 0800A38C */  lw         $v1, 8($a1)
/* DD60 8001D560 0800028E */  lw         $v0, 8($s0)
/* DD64 8001D564 00000000 */  nop
/* DD68 8001D568 15006214 */  bne        $v1, $v0, .L8001D5C0
/* DD6C 8001D56C FFFF0424 */   addiu     $a0, $zero, -1
/* DD70 8001D570 1400A294 */  lhu        $v0, 0x14($a1)
/* DD74 8001D574 00000000 */  nop
/* DD78 8001D578 02004230 */  andi       $v0, $v0, 2
/* DD7C 8001D57C 04004010 */  beqz       $v0, .L8001D590
/* DD80 8001D580 00000000 */   nop
/* DD84 8001D584 0000A4A4 */  sh         $a0, ($a1)
/* DD88 8001D588 6C750008 */  j          .L8001D5B0
/* DD8C 8001D58C 1400A0A4 */   sh        $zero, 0x14($a1)
.L8001D590:
/* DD90 8001D590 000033A2 */  sb         $s3, ($s1)
/* DD94 8001D594 00000386 */  lh         $v1, ($s0)
/* DD98 8001D598 00000000 */  nop
/* DD9C 8001D59C 21187400 */  addu       $v1, $v1, $s4
/* DDA0 8001D5A0 00006290 */  lbu        $v0, ($v1)
/* DDA4 8001D5A4 00000000 */  nop
/* DDA8 8001D5A8 80004234 */  ori        $v0, $v0, 0x80
/* DDAC 8001D5AC 000062A0 */  sb         $v0, ($v1)
.L8001D5B0:
/* DDB0 8001D5B0 1400A294 */  lhu        $v0, 0x14($a1)
/* DDB4 8001D5B4 00000000 */  nop
/* DDB8 8001D5B8 FBFF4230 */  andi       $v0, $v0, 0xfffb
/* DDBC 8001D5BC 1400A2A4 */  sh         $v0, 0x14($a1)
.L8001D5C0:
/* DDC0 8001D5C0 30001026 */  addiu      $s0, $s0, 0x30
.L8001D5C4:
/* DDC4 8001D5C4 00000286 */  lh         $v0, ($s0)
/* DDC8 8001D5C8 00000000 */  nop
/* DDCC 8001D5CC 9FFF4104 */  bgez       $v0, .L8001D44C
/* DDD0 8001D5D0 01003126 */   addiu     $s1, $s1, 1
.L8001D5D4:
/* DDD4 8001D5D4 1380023C */  lui        $v0, %hi(D_801282E0)
/* DDD8 8001D5D8 E0824524 */  addiu      $a1, $v0, %lo(D_801282E0)
/* DDDC 8001D5DC 50000724 */  addiu      $a3, $zero, 0x50
/* DDE0 8001D5E0 1380023C */  lui        $v0, %hi(D_801280E0)
/* DDE4 8001D5E4 E0804424 */  addiu      $a0, $v0, %lo(D_801280E0)
/* DDE8 8001D5E8 00028624 */  addiu      $a2, $a0, 0x200
.L8001D5EC:
/* DDEC 8001D5EC 00008390 */  lbu        $v1, ($a0)
/* DDF0 8001D5F0 00000000 */  nop
/* DDF4 8001D5F4 80006230 */  andi       $v0, $v1, 0x80
/* DDF8 8001D5F8 0C004010 */  beqz       $v0, .L8001D62C
/* DDFC 8001D5FC 7F006230 */   andi      $v0, $v1, 0x7f
/* DE00 8001D600 000082A0 */  sb         $v0, ($a0)
/* DE04 8001D604 FF004330 */  andi       $v1, $v0, 0xff
/* DE08 8001D608 C0100300 */  sll        $v0, $v1, 3
/* DE0C 8001D60C 23104300 */  subu       $v0, $v0, $v1
/* DE10 8001D610 80100200 */  sll        $v0, $v0, 2
/* DE14 8001D614 21104500 */  addu       $v0, $v0, $a1
/* DE18 8001D618 14004394 */  lhu        $v1, 0x14($v0)
/* DE1C 8001D61C 00000000 */  nop
/* DE20 8001D620 08006334 */  ori        $v1, $v1, 8
/* DE24 8001D624 97750008 */  j          .L8001D65C
/* DE28 8001D628 140043A4 */   sh        $v1, 0x14($v0)
.L8001D62C:
/* DE2C 8001D62C 00008290 */  lbu        $v0, ($a0)
/* DE30 8001D630 00000000 */  nop
/* DE34 8001D634 C0180200 */  sll        $v1, $v0, 3
/* DE38 8001D638 23186200 */  subu       $v1, $v1, $v0
/* DE3C 8001D63C 80180300 */  sll        $v1, $v1, 2
/* DE40 8001D640 21186500 */  addu       $v1, $v1, $a1
/* DE44 8001D644 14006294 */  lhu        $v0, 0x14($v1)
/* DE48 8001D648 00000000 */  nop
/* DE4C 8001D64C 06004230 */  andi       $v0, $v0, 6
/* DE50 8001D650 02004014 */  bnez       $v0, .L8001D65C
/* DE54 8001D654 00000000 */   nop
/* DE58 8001D658 000087A0 */  sb         $a3, ($a0)
.L8001D65C:
/* DE5C 8001D65C 01008424 */  addiu      $a0, $a0, 1
/* DE60 8001D660 2A108600 */  slt        $v0, $a0, $a2
/* DE64 8001D664 E1FF4014 */  bnez       $v0, .L8001D5EC
/* DE68 8001D668 1380023C */   lui       $v0, %hi(D_801282E0)
/* DE6C 8001D66C F7FF0724 */  addiu      $a3, $zero, -9
/* DE70 8001D670 FFFF0624 */  addiu      $a2, $zero, -1
/* DE74 8001D674 E0824424 */  addiu      $a0, $v0, %lo(D_801282E0)
/* DE78 8001D678 4F000524 */  addiu      $a1, $zero, 0x4f
.L8001D67C:
/* DE7C 8001D67C 14008394 */  lhu        $v1, 0x14($a0)
/* DE80 8001D680 00000000 */  nop
/* DE84 8001D684 08006230 */  andi       $v0, $v1, 8
/* DE88 8001D688 03004010 */  beqz       $v0, .L8001D698
/* DE8C 8001D68C 24106700 */   and       $v0, $v1, $a3
/* DE90 8001D690 AB750008 */  j          .L8001D6AC
/* DE94 8001D694 140082A4 */   sh        $v0, 0x14($a0)
.L8001D698:
/* DE98 8001D698 06006230 */  andi       $v0, $v1, 6
/* DE9C 8001D69C 03004014 */  bnez       $v0, .L8001D6AC
/* DEA0 8001D6A0 00000000 */   nop
/* DEA4 8001D6A4 000086A4 */  sh         $a2, ($a0)
/* DEA8 8001D6A8 140080A4 */  sh         $zero, 0x14($a0)
.L8001D6AC:
/* DEAC 8001D6AC FFFFA524 */  addiu      $a1, $a1, -1
/* DEB0 8001D6B0 F2FFA104 */  bgez       $a1, .L8001D67C
/* DEB4 8001D6B4 1C008424 */   addiu     $a0, $a0, 0x1c
/* DEB8 8001D6B8 FFFF1124 */  addiu      $s1, $zero, -1
/* DEBC 8001D6BC 1280043C */  lui        $a0, %hi(D_801222B0)
/* DEC0 8001D6C0 B0229024 */  addiu      $s0, $a0, %lo(D_801222B0)
/* DEC4 8001D6C4 D2750008 */  j          .L8001D748
/* DEC8 8001D6C8 21900000 */   addu      $s2, $zero, $zero
.L8001D6CC:
/* DECC 8001D6CC 23209100 */  subu       $a0, $a0, $s1
/* DED0 8001D6D0 80200400 */  sll        $a0, $a0, 2
/* DED4 8001D6D4 E082C227 */  addiu      $v0, $fp, -0x7d20
/* DED8 8001D6D8 00000396 */  lhu        $v1, ($s0)
/* DEDC 8001D6DC 21208200 */  addu       $a0, $a0, $v0
/* DEE0 8001D6E0 000083A4 */  sh         $v1, ($a0)
/* DEE4 8001D6E4 04000296 */  lhu        $v0, 4($s0)
/* DEE8 8001D6E8 00000000 */  nop
/* DEEC 8001D6EC 040082A4 */  sh         $v0, 4($a0)
/* DEF0 8001D6F0 06000396 */  lhu        $v1, 6($s0)
/* DEF4 8001D6F4 00000000 */  nop
/* DEF8 8001D6F8 060083A4 */  sh         $v1, 6($a0)
/* DEFC 8001D6FC 08000296 */  lhu        $v0, 8($s0)
/* DF00 8001D700 00000000 */  nop
/* DF04 8001D704 080082A4 */  sh         $v0, 8($a0)
/* DF08 8001D708 0A000396 */  lhu        $v1, 0xa($s0)
/* DF0C 8001D70C 00000000 */  nop
/* DF10 8001D710 0A0083A4 */  sh         $v1, 0xa($a0)
/* DF14 8001D714 0C000296 */  lhu        $v0, 0xc($s0)
/* DF18 8001D718 00000000 */  nop
/* DF1C 8001D71C 0C0082A4 */  sh         $v0, 0xc($a0)
/* DF20 8001D720 0E000392 */  lbu        $v1, 0xe($s0)
/* DF24 8001D724 10000226 */  addiu      $v0, $s0, 0x10
/* DF28 8001D728 0E0083A0 */  sb         $v1, 0xe($a0)
/* DF2C 8001D72C 0F000592 */  lbu        $a1, 0xf($s0)
/* DF30 8001D730 10000324 */  addiu      $v1, $zero, 0x10
/* DF34 8001D734 100082AC */  sw         $v0, 0x10($a0)
/* DF38 8001D738 140083A4 */  sh         $v1, 0x14($a0)
/* DF3C 8001D73C 0F0085A0 */  sb         $a1, 0xf($a0)
.L8001D740:
/* DF40 8001D740 30001026 */  addiu      $s0, $s0, 0x30
/* DF44 8001D744 01005226 */  addiu      $s2, $s2, 1
.L8001D748:
/* DF48 8001D748 00000286 */  lh         $v0, ($s0)
/* DF4C 8001D74C 00000000 */  nop
/* DF50 8001D750 10004004 */  bltz       $v0, .L8001D794
/* DF54 8001D754 2120E002 */   addu      $a0, $s7, $zero
/* DF58 8001D758 21280002 */  addu       $a1, $s0, $zero
/* DF5C 8001D75C 4A73000C */  jal        FUN_8001cd28
/* DF60 8001D760 2130C002 */   addu      $a2, $s6, $zero
/* DF64 8001D764 F6FF4010 */  beqz       $v0, .L8001D740
/* DF68 8001D768 2110B203 */   addu      $v0, $sp, $s2
/* DF6C 8001D76C 10004390 */  lbu        $v1, 0x10($v0)
/* DF70 8001D770 00000000 */  nop
/* DF74 8001D774 F2FF6014 */  bnez       $v1, .L8001D740
/* DF78 8001D778 00000000 */   nop
/* DF7C 8001D77C AD7B000C */  jal        FUN_8001eeb4
/* DF80 8001D780 01002426 */   addiu     $a0, $s1, 1
/* DF84 8001D784 21884000 */  addu       $s1, $v0, $zero
/* DF88 8001D788 5000222A */  slti       $v0, $s1, 0x50
/* DF8C 8001D78C CFFF4014 */  bnez       $v0, .L8001D6CC
/* DF90 8001D790 C0201100 */   sll       $a0, $s1, 3
.L8001D794:
/* DF94 8001D794 21880000 */  addu       $s1, $zero, $zero
/* DF98 8001D798 1380023C */  lui        $v0, %hi(D_80129DA8)
/* DF9C 8001D79C A89D5424 */  addiu      $s4, $v0, %lo(D_80129DA8)
/* DFA0 8001D7A0 0F80033C */  lui        $v1, %hi(D_800F0028)
/* DFA4 8001D7A4 28007324 */  addiu      $s3, $v1, %lo(D_800F0028)
/* DFA8 8001D7A8 C0101100 */  sll        $v0, $s1, 3
.L8001D7AC:
/* DFAC 8001D7AC 23105100 */  subu       $v0, $v0, $s1
/* DFB0 8001D7B0 80100200 */  sll        $v0, $v0, 2
/* DFB4 8001D7B4 E082C327 */  addiu      $v1, $fp, -0x7d20
/* DFB8 8001D7B8 21804300 */  addu       $s0, $v0, $v1
/* DFBC 8001D7BC 14000496 */  lhu        $a0, 0x14($s0)
/* DFC0 8001D7C0 00000000 */  nop
/* DFC4 8001D7C4 10008230 */  andi       $v0, $a0, 0x10
/* DFC8 8001D7C8 84004010 */  beqz       $v0, .L8001D9DC
/* DFCC 8001D7CC 01003226 */   addiu     $s2, $s1, 1
/* DFD0 8001D7D0 01000324 */  addiu      $v1, $zero, 1
/* DFD4 8001D7D4 EFFF0224 */  addiu      $v0, $zero, -0x11
/* DFD8 8001D7D8 24108200 */  and        $v0, $a0, $v0
/* DFDC 8001D7DC B10D83A2 */  sb         $v1, 0xdb1($s4)
/* DFE0 8001D7E0 0C000386 */  lh         $v1, 0xc($s0)
/* DFE4 8001D7E4 01004234 */  ori        $v0, $v0, 1
/* DFE8 8001D7E8 140002A6 */  sh         $v0, 0x14($s0)
/* DFEC 8001D7EC 06000224 */  addiu      $v0, $zero, 6
/* DFF0 8001D7F0 04006214 */  bne        $v1, $v0, .L8001D804
/* DFF4 8001D7F4 0180023C */   lui       $v0, %hi(D_800107D0)
/* DFF8 8001D7F8 01000224 */  addiu      $v0, $zero, 1
/* DFFC 8001D7FC 77760008 */  j          .L8001D9DC
/* E000 8001D800 0C0002A6 */   sh        $v0, 0xc($s0)
.L8001D804:
/* E004 8001D804 D0074324 */  addiu      $v1, $v0, %lo(D_800107D0)
/* E008 8001D808 1000058E */  lw         $a1, 0x10($s0)
/* E00C 8001D80C D007468C */  lw         $a2, 0x7d0($v0)
/* E010 8001D810 04006794 */  lhu        $a3, 4($v1)
/* E014 8001D814 3002A427 */  addiu      $a0, $sp, 0x230
/* E018 8001D818 3002A6AF */  sw         $a2, 0x230($sp)
/* E01C 8001D81C 3F71000C */  jal        FUN_8001c4fc
/* E020 8001D820 3402A7A7 */   sh        $a3, 0x234($sp)
/* E024 8001D824 3002A427 */  addiu      $a0, $sp, 0x230
/* E028 8001D828 0180053C */  lui        $a1, %hi(D_800107D8)
/* E02C 8001D82C 3F71000C */  jal        FUN_8001c4fc
/* E030 8001D830 D807A524 */   addiu     $a1, $a1, %lo(D_800107D8)
/* E034 8001D834 3002A427 */  addiu      $a0, $sp, 0x230
/* E038 8001D838 2380053C */  lui        $a1, 0x8023
/* E03C 8001D83C DDB3000C */  jal        decodefile_8002cf74
/* E040 8001D840 0080A534 */   ori       $a1, $a1, 0x8000
/* E044 8001D844 2380043C */  lui        $a0, 0x8023
/* E048 8001D848 04808434 */  ori        $a0, $a0, 0x8004
/* E04C 8001D84C 197C000C */  jal        GsGetTimInfo
/* E050 8001D850 1002A527 */   addiu     $a1, $sp, 0x210
/* E054 8001D854 1802A297 */  lhu        $v0, 0x218($sp)
/* E058 8001D858 1A02A397 */  lhu        $v1, 0x21a($sp)
/* E05C 8001D85C 00000000 */  nop
/* E060 8001D860 18004300 */  mult       $v0, $v1
/* E064 8001D864 0200043C */  lui        $a0, 2
/* E068 8001D868 12100000 */  mflo       $v0
/* E06C 8001D86C 40100200 */  sll        $v0, $v0, 1
/* E070 8001D870 2C014224 */  addiu      $v0, $v0, 0x12c
/* E074 8001D874 2B104400 */  sltu       $v0, $v0, $a0
/* E078 8001D878 0B004014 */  bnez       $v0, .L8001D8A8
/* E07C 8001D87C 0100023C */   lui       $v0, 1
/* E080 8001D880 0E000524 */  addiu      $a1, $zero, 0xe
/* E084 8001D884 01000424 */  addiu      $a0, $zero, 1
/* E088 8001D888 BC424234 */  ori        $v0, $v0, 0x42bc
/* E08C 8001D88C 21106202 */  addu       $v0, $s3, $v0
/* E090 8001D890 FEFF033C */  lui        $v1, 0xfffe
/* E094 8001D894 84BD6334 */  ori        $v1, $v1, 0xbd84
.L8001D898:
/* E098 8001D898 000045A0 */  sb         $a1, ($v0)
/* E09C 8001D89C FFFF8424 */  addiu      $a0, $a0, -1
/* E0A0 8001D8A0 FDFF8104 */  bgez       $a0, .L8001D898
/* E0A4 8001D8A4 21104300 */   addu      $v0, $v0, $v1
.L8001D8A8:
/* E0A8 8001D8A8 0C000386 */  lh         $v1, 0xc($s0)
/* E0AC 8001D8AC E7030224 */  addiu      $v0, $zero, 0x3e7
/* E0B0 8001D8B0 1E006214 */  bne        $v1, $v0, .L8001D92C
/* E0B4 8001D8B4 3002A427 */   addiu     $a0, $sp, 0x230
/* E0B8 8001D8B8 1C02A68F */  lw         $a2, 0x21c($sp)
/* E0BC 8001D8BC 04000296 */  lhu        $v0, 4($s0)
/* E0C0 8001D8C0 06000396 */  lhu        $v1, 6($s0)
/* E0C4 8001D8C4 1802A797 */  lhu        $a3, 0x218($sp)
/* E0C8 8001D8C8 1A02A897 */  lhu        $t0, 0x21a($sp)
/* E0CC 8001D8CC 16000996 */  lhu        $t1, 0x16($s0)
/* E0D0 8001D8D0 18000A96 */  lhu        $t2, 0x18($s0)
/* E0D4 8001D8D4 2402AB97 */  lhu        $t3, 0x224($sp)
/* E0D8 8001D8D8 2602AC97 */  lhu        $t4, 0x226($sp)
/* E0DC 8001D8DC 21280002 */  addu       $a1, $s0, $zero
/* E0E0 8001D8E0 3002A2A7 */  sh         $v0, 0x230($sp)
/* E0E4 8001D8E4 3202A3A7 */  sh         $v1, 0x232($sp)
/* E0E8 8001D8E8 3402A7A7 */  sh         $a3, 0x234($sp)
/* E0EC 8001D8EC 3602A8A7 */  sh         $t0, 0x236($sp)
/* E0F0 8001D8F0 3802A9A7 */  sh         $t1, 0x238($sp)
/* E0F4 8001D8F4 3A02AAA7 */  sh         $t2, 0x23a($sp)
/* E0F8 8001D8F8 3C02ABA7 */  sh         $t3, 0x23c($sp)
/* E0FC 8001D8FC AF73000C */  jal        FUN_8001cebc
/* E100 8001D900 3E02ACA7 */   sh        $t4, 0x23e($sp)
/* E104 8001D904 3802A427 */  addiu      $a0, $sp, 0x238
/* E108 8001D908 2802A68F */  lw         $a2, 0x228($sp)
/* E10C 8001D90C 2774000C */  jal        FUN_8001d09c
/* E110 8001D910 21280002 */   addu      $a1, $s0, $zero
/* E114 8001D914 D860000C */  jal        DrawSync
/* E118 8001D918 21200000 */   addu      $a0, $zero, $zero
/* E11C 8001D91C FFFF0324 */  addiu      $v1, $zero, -1
/* E120 8001D920 000003A6 */  sh         $v1, ($s0)
/* E124 8001D924 77760008 */  j          .L8001D9DC
/* E128 8001D928 140000A6 */   sh        $zero, 0x14($s0)
.L8001D92C:
/* E12C 8001D92C 1C02A68F */  lw         $a2, 0x21c($sp)
/* E130 8001D930 04000296 */  lhu        $v0, 4($s0)
/* E134 8001D934 06000396 */  lhu        $v1, 6($s0)
/* E138 8001D938 1802A797 */  lhu        $a3, 0x218($sp)
/* E13C 8001D93C 1A02A897 */  lhu        $t0, 0x21a($sp)
/* E140 8001D940 16000996 */  lhu        $t1, 0x16($s0)
/* E144 8001D944 18000A96 */  lhu        $t2, 0x18($s0)
/* E148 8001D948 2402AB97 */  lhu        $t3, 0x224($sp)
/* E14C 8001D94C 2602AC97 */  lhu        $t4, 0x226($sp)
/* E150 8001D950 21280002 */  addu       $a1, $s0, $zero
/* E154 8001D954 3002A2A7 */  sh         $v0, 0x230($sp)
/* E158 8001D958 3202A3A7 */  sh         $v1, 0x232($sp)
/* E15C 8001D95C 3402A7A7 */  sh         $a3, 0x234($sp)
/* E160 8001D960 3602A8A7 */  sh         $t0, 0x236($sp)
/* E164 8001D964 3802A9A7 */  sh         $t1, 0x238($sp)
/* E168 8001D968 3A02AAA7 */  sh         $t2, 0x23a($sp)
/* E16C 8001D96C 3C02ABA7 */  sh         $t3, 0x23c($sp)
/* E170 8001D970 AF73000C */  jal        FUN_8001cebc
/* E174 8001D974 3E02ACA7 */   sh        $t4, 0x23e($sp)
/* E178 8001D978 3802A427 */  addiu      $a0, $sp, 0x238
/* E17C 8001D97C 2802A68F */  lw         $a2, 0x228($sp)
/* E180 8001D980 2774000C */  jal        FUN_8001d09c
/* E184 8001D984 21280002 */   addu      $a1, $s0, $zero
/* E188 8001D988 D860000C */  jal        DrawSync
/* E18C 8001D98C 21200000 */   addu      $a0, $zero, $zero
/* E190 8001D990 0C000386 */  lh         $v1, 0xc($s0)
/* E194 8001D994 0C000296 */  lhu        $v0, 0xc($s0)
/* E198 8001D998 03006328 */  slti       $v1, $v1, 3
/* E19C 8001D99C 02006010 */  beqz       $v1, .L8001D9A8
/* E1A0 8001D9A0 01000424 */   addiu     $a0, $zero, 1
/* E1A4 8001D9A4 21204000 */  addu       $a0, $v0, $zero
.L8001D9A8:
/* E1A8 8001D9A8 0C0004A6 */  sh         $a0, 0xc($s0)
/* E1AC 8001D9AC 00240400 */  sll        $a0, $a0, 0x10
/* E1B0 8001D9B0 03240400 */  sra        $a0, $a0, 0x10
/* E1B4 8001D9B4 02000224 */  addiu      $v0, $zero, 2
/* E1B8 8001D9B8 04000386 */  lh         $v1, 4($s0)
/* E1BC 8001D9BC 23104400 */  subu       $v0, $v0, $a0
/* E1C0 8001D9C0 04184300 */  sllv       $v1, $v1, $v0
/* E1C4 8001D9C4 00000286 */  lh         $v0, ($s0)
/* E1C8 8001D9C8 1380043C */  lui        $a0, %hi(D_801280E0)
/* E1CC 8001D9CC 040003A6 */  sh         $v1, 4($s0)
/* E1D0 8001D9D0 E0808324 */  addiu      $v1, $a0, %lo(D_801280E0)
/* E1D4 8001D9D4 21104300 */  addu       $v0, $v0, $v1
/* E1D8 8001D9D8 000051A0 */  sb         $s1, ($v0)
.L8001D9DC:
/* E1DC 8001D9DC 21884002 */  addu       $s1, $s2, $zero
/* E1E0 8001D9E0 5000222A */  slti       $v0, $s1, 0x50
/* E1E4 8001D9E4 71FF4014 */  bnez       $v0, .L8001D7AC
/* E1E8 8001D9E8 C0101100 */   sll       $v0, $s1, 3
/* E1EC 8001D9EC 9402BF8F */  lw         $ra, 0x294($sp)
/* E1F0 8001D9F0 9002BE8F */  lw         $fp, 0x290($sp)
/* E1F4 8001D9F4 8C02B78F */  lw         $s7, 0x28c($sp)
/* E1F8 8001D9F8 8802B68F */  lw         $s6, 0x288($sp)
/* E1FC 8001D9FC 8402B58F */  lw         $s5, 0x284($sp)
/* E200 8001DA00 8002B48F */  lw         $s4, 0x280($sp)
/* E204 8001DA04 7C02B38F */  lw         $s3, 0x27c($sp)
/* E208 8001DA08 7802B28F */  lw         $s2, 0x278($sp)
/* E20C 8001DA0C 7402B18F */  lw         $s1, 0x274($sp)
/* E210 8001DA10 7002B08F */  lw         $s0, 0x270($sp)
/* E214 8001DA14 21100000 */  addu       $v0, $zero, $zero
/* E218 8001DA18 0800E003 */  jr         $ra
/* E21C 8001DA1C 9802BD27 */   addiu     $sp, $sp, 0x298

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc400
/* BCC00 800CC400 70FFBD27 */  addiu      $sp, $sp, -0x90
/* BCC04 800CC404 8800BEAF */  sw         $fp, 0x88($sp)
/* BCC08 800CC408 21F08000 */  addu       $fp, $a0, $zero
/* BCC0C 800CC40C 6C00B1AF */  sw         $s1, 0x6c($sp)
/* BCC10 800CC410 2188A000 */  addu       $s1, $a1, $zero
/* BCC14 800CC414 2080023C */  lui        $v0, %hi(D_801FBCB0)
/* BCC18 800CC418 7800B4AF */  sw         $s4, 0x78($sp)
/* BCC1C 800CC41C B0BC5424 */  addiu      $s4, $v0, %lo(D_801FBCB0)
/* BCC20 800CC420 8C00BFAF */  sw         $ra, 0x8c($sp)
/* BCC24 800CC424 8400B7AF */  sw         $s7, 0x84($sp)
/* BCC28 800CC428 8000B6AF */  sw         $s6, 0x80($sp)
/* BCC2C 800CC42C 7C00B5AF */  sw         $s5, 0x7c($sp)
/* BCC30 800CC430 7400B3AF */  sw         $s3, 0x74($sp)
/* BCC34 800CC434 7000B2AF */  sw         $s2, 0x70($sp)
/* BCC38 800CC438 6800B0AF */  sw         $s0, 0x68($sp)
/* BCC3C 800CC43C 9800A6AF */  sw         $a2, 0x98($sp)
/* BCC40 800CC440 A435030C */  jal        FUN_800cd690
/* BCC44 800CC444 9C00A7AF */   sw        $a3, 0x9c($sp)
/* BCC48 800CC448 21204000 */  addu       $a0, $v0, $zero
/* BCC4C 800CC44C 05008010 */  beqz       $a0, .L800CC464
/* BCC50 800CC450 C3881100 */   sra       $s1, $s1, 3
/* BCC54 800CC454 A2310308 */  j          .L800CC688
/* BCC58 800CC458 00000000 */   nop
.L800CC45C:
/* BCC5C 800CC45C A2310308 */  j          .L800CC688
/* BCC60 800CC460 21108000 */   addu      $v0, $a0, $zero
.L800CC464:
/* BCC64 800CC464 9C00A88F */  lw         $t0, 0x9c($sp)
/* BCC68 800CC468 00000000 */  nop
/* BCC6C 800CC46C 85000019 */  blez       $t0, .L800CC684
/* BCC70 800CC470 21900000 */   addu      $s2, $zero, $zero
/* BCC74 800CC474 FD00223A */  xori       $v0, $s1, 0xfd
/* BCC78 800CC478 2B104202 */  sltu       $v0, $s2, $v0
/* BCC7C 800CC47C 23100200 */  negu       $v0, $v0
/* BCC80 800CC480 5800A927 */  addiu      $t1, $sp, 0x58
/* BCC84 800CC484 3800B627 */  addiu      $s6, $sp, 0x38
/* BCC88 800CC488 FF001724 */  addiu      $s7, $zero, 0xff
/* BCC8C 800CC48C 4800B527 */  addiu      $s5, $sp, 0x48
/* BCC90 800CC490 2800B327 */  addiu      $s3, $sp, 0x28
/* BCC94 800CC494 6400A2AF */  sw         $v0, 0x64($sp)
/* BCC98 800CC498 6000A9AF */  sw         $t1, 0x60($sp)
.L800CC49C:
/* BCC9C 800CC49C 2120C003 */  addu       $a0, $fp, $zero
/* BCCA0 800CC4A0 4535030C */  jal        FUN_800cd514
/* BCCA4 800CC4A4 5800A527 */   addiu     $a1, $sp, 0x58
/* BCCA8 800CC4A8 0400222A */  slti       $v0, $s1, 4
/* BCCAC 800CC4AC 07004014 */  bnez       $v0, .L800CC4CC
/* BCCB0 800CC4B0 21800000 */   addu      $s0, $zero, $zero
/* BCCB4 800CC4B4 FC000224 */  addiu      $v0, $zero, 0xfc
/* BCCB8 800CC4B8 05002212 */  beq        $s1, $v0, .L800CC4D0
/* BCCBC 800CC4BC 1800A427 */   addiu     $a0, $sp, 0x18
/* BCCC0 800CC4C0 6400AA8F */  lw         $t2, 0x64($sp)
/* BCCC4 800CC4C4 00000000 */  nop
/* BCCC8 800CC4C8 04005031 */  andi       $s0, $t2, 4
.L800CC4CC:
/* BCCCC 800CC4CC 1800A427 */  addiu      $a0, $sp, 0x18
.L800CC4D0:
/* BCCD0 800CC4D0 C3111100 */  sra        $v0, $s1, 7
/* BCCD4 800CC4D4 02004230 */  andi       $v0, $v0, 2
/* BCCD8 800CC4D8 01004234 */  ori        $v0, $v0, 1
/* BCCDC 800CC4DC 25105000 */  or         $v0, $v0, $s0
/* BCCE0 800CC4E0 1800A2A3 */  sb         $v0, 0x18($sp)
/* BCCE4 800CC4E4 1900B1A3 */  sb         $s1, 0x19($sp)
/* BCCE8 800CC4E8 5B00AB8B */  lwl        $t3, 0x5b($sp)
/* BCCEC 800CC4EC 5800AB9B */  lwr        $t3, 0x58($sp)
/* BCCF0 800CC4F0 5F00A88B */  lwl        $t0, 0x5f($sp)
/* BCCF4 800CC4F4 5C00A89B */  lwr        $t0, 0x5c($sp)
/* BCCF8 800CC4F8 1D00ABAB */  swl        $t3, 0x1d($sp)
/* BCCFC 800CC4FC 1A00ABBB */  swr        $t3, 0x1a($sp)
/* BCD00 800CC500 2100A8AB */  swl        $t0, 0x21($sp)
/* BCD04 800CC504 1E00A8BB */  swr        $t0, 0x1e($sp)
/* BCD08 800CC508 2D35030C */  jal        FUN_800cd4b4
/* BCD0C 800CC50C 0A000524 */   addiu     $a1, $zero, 0xa
/* BCD10 800CC510 FFFF4430 */  andi       $a0, $v0, 0xffff
/* BCD14 800CC514 03120400 */  sra        $v0, $a0, 8
/* BCD18 800CC518 2200A2A3 */  sb         $v0, 0x22($sp)
/* BCD1C 800CC51C 2300A4A3 */  sb         $a0, 0x23($sp)
/* BCD20 800CC520 1800AB8F */  lw         $t3, 0x18($sp)
/* BCD24 800CC524 1C00A88F */  lw         $t0, 0x1c($sp)
/* BCD28 800CC528 2000A98F */  lw         $t1, 0x20($sp)
/* BCD2C 800CC52C 3800ABAF */  sw         $t3, 0x38($sp)
/* BCD30 800CC530 3C00A8AF */  sw         $t0, 0x3c($sp)
/* BCD34 800CC534 4000A9AF */  sw         $t1, 0x40($sp)
/* BCD38 800CC538 07000012 */  beqz       $s0, .L800CC558
/* BCD3C 800CC53C 3A00A427 */   addiu     $a0, $sp, 0x3a
/* BCD40 800CC540 21288000 */  addu       $a1, $a0, $zero
/* BCD44 800CC544 08000624 */  addiu      $a2, $zero, 8
/* BCD48 800CC548 08008292 */  lbu        $v0, 8($s4)
/* BCD4C 800CC54C 2138C003 */  addu       $a3, $fp, $zero
/* BCD50 800CC550 B734030C */  jal        FUN_800cd2dc
/* BCD54 800CC554 1000A2AF */   sw        $v0, 0x10($sp)
.L800CC558:
/* BCD58 800CC558 1000B7AF */  sw         $s7, 0x10($sp)
/* BCD5C 800CC55C 2120C002 */  addu       $a0, $s6, $zero
/* BCD60 800CC560 2128C002 */  addu       $a1, $s6, $zero
/* BCD64 800CC564 0C000624 */  addiu      $a2, $zero, 0xc
/* BCD68 800CC568 E034030C */  jal        FUN_800cd380
/* BCD6C 800CC56C 11008726 */   addiu     $a3, $s4, 0x11
/* BCD70 800CC570 2120C002 */  addu       $a0, $s6, $zero
/* BCD74 800CC574 2034030C */  jal        FUN_800cd080
/* BCD78 800CC578 2128A002 */   addu      $a1, $s5, $zero
/* BCD7C 800CC57C 21204000 */  addu       $a0, $v0, $zero
/* BCD80 800CC580 B6FF8004 */  bltz       $a0, .L800CC45C
/* BCD84 800CC584 2128A002 */   addu      $a1, $s5, $zero
/* BCD88 800CC588 21206002 */  addu       $a0, $s3, $zero
/* BCD8C 800CC58C 6000A78F */  lw         $a3, 0x60($sp)
/* BCD90 800CC590 0C000624 */  addiu      $a2, $zero, 0xc
/* BCD94 800CC594 0735030C */  jal        FUN_800cd41c
/* BCD98 800CC598 1000B7AF */   sw        $s7, 0x10($sp)
/* BCD9C 800CC59C 21206002 */  addu       $a0, $s3, $zero
/* BCDA0 800CC5A0 2D35030C */  jal        FUN_800cd4b4
/* BCDA4 800CC5A4 0A000524 */   addiu     $a1, $zero, 0xa
/* BCDA8 800CC5A8 FFFF4430 */  andi       $a0, $v0, 0xffff
/* BCDAC 800CC5AC 3200A293 */  lbu        $v0, 0x32($sp)
/* BCDB0 800CC5B0 3300A393 */  lbu        $v1, 0x33($sp)
/* BCDB4 800CC5B4 00120200 */  sll        $v0, $v0, 8
/* BCDB8 800CC5B8 25104300 */  or         $v0, $v0, $v1
/* BCDBC 800CC5BC 12008210 */  beq        $a0, $v0, .L800CC608
/* BCDC0 800CC5C0 21206002 */   addu      $a0, $s3, $zero
/* BCDC4 800CC5C4 2128A002 */  addu       $a1, $s5, $zero
/* BCDC8 800CC5C8 0C000624 */  addiu      $a2, $zero, 0xc
/* BCDCC 800CC5CC 09008726 */  addiu      $a3, $s4, 9
/* BCDD0 800CC5D0 0735030C */  jal        FUN_800cd41c
/* BCDD4 800CC5D4 1000B7AF */   sw        $s7, 0x10($sp)
/* BCDD8 800CC5D8 21206002 */  addu       $a0, $s3, $zero
/* BCDDC 800CC5DC 2D35030C */  jal        FUN_800cd4b4
/* BCDE0 800CC5E0 0A000524 */   addiu     $a1, $zero, 0xa
/* BCDE4 800CC5E4 FFFF4430 */  andi       $a0, $v0, 0xffff
/* BCDE8 800CC5E8 3200A293 */  lbu        $v0, 0x32($sp)
/* BCDEC 800CC5EC 3300A393 */  lbu        $v1, 0x33($sp)
/* BCDF0 800CC5F0 00120200 */  sll        $v0, $v0, 8
/* BCDF4 800CC5F4 25104300 */  or         $v0, $v0, $v1
/* BCDF8 800CC5F8 0B008210 */  beq        $a0, $v0, .L800CC628
/* BCDFC 800CC5FC FEFF0224 */   addiu     $v0, $zero, -2
/* BCE00 800CC600 A2310308 */  j          .L800CC688
/* BCE04 800CC604 00000000 */   nop
.L800CC608:
/* BCE08 800CC608 5B00AB8B */  lwl        $t3, 0x5b($sp)
/* BCE0C 800CC60C 5800AB9B */  lwr        $t3, 0x58($sp)
/* BCE10 800CC610 5F00A88B */  lwl        $t0, 0x5f($sp)
/* BCE14 800CC614 5C00A89B */  lwr        $t0, 0x5c($sp)
/* BCE18 800CC618 0C008BAA */  swl        $t3, 0xc($s4)
/* BCE1C 800CC61C 09008BBA */  swr        $t3, 9($s4)
/* BCE20 800CC620 100088AA */  swl        $t0, 0x10($s4)
/* BCE24 800CC624 0D0088BA */  swr        $t0, 0xd($s4)
.L800CC628:
/* BCE28 800CC628 2900A293 */  lbu        $v0, 0x29($sp)
/* BCE2C 800CC62C 2800A493 */  lbu        $a0, 0x28($sp)
/* BCE30 800CC630 9535030C */  jal        FUN_800cd654
/* BCE34 800CC634 080082A2 */   sb        $v0, 8($s4)
/* BCE38 800CC638 21204000 */  addu       $a0, $v0, $zero
/* BCE3C 800CC63C 12008014 */  bnez       $a0, .L800CC688
/* BCE40 800CC640 21108000 */   addu      $v0, $a0, $zero
/* BCE44 800CC644 9800AB8F */  lw         $t3, 0x98($sp)
/* BCE48 800CC648 00000000 */  nop
/* BCE4C 800CC64C 21107201 */  addu       $v0, $t3, $s2
/* BCE50 800CC650 2D00A88B */  lwl        $t0, 0x2d($sp)
/* BCE54 800CC654 2A00A89B */  lwr        $t0, 0x2a($sp)
/* BCE58 800CC658 3100A98B */  lwl        $t1, 0x31($sp)
/* BCE5C 800CC65C 2E00A99B */  lwr        $t1, 0x2e($sp)
/* BCE60 800CC660 030048A8 */  swl        $t0, 3($v0)
/* BCE64 800CC664 000048B8 */  swr        $t0, ($v0)
/* BCE68 800CC668 070049A8 */  swl        $t1, 7($v0)
/* BCE6C 800CC66C 040049B8 */  swr        $t1, 4($v0)
/* BCE70 800CC670 9C00A88F */  lw         $t0, 0x9c($sp)
/* BCE74 800CC674 08005226 */  addiu      $s2, $s2, 8
/* BCE78 800CC678 2A104802 */  slt        $v0, $s2, $t0
/* BCE7C 800CC67C 87FF4014 */  bnez       $v0, .L800CC49C
/* BCE80 800CC680 00000000 */   nop
.L800CC684:
/* BCE84 800CC684 21100000 */  addu       $v0, $zero, $zero
.L800CC688:
/* BCE88 800CC688 8C00BF8F */  lw         $ra, 0x8c($sp)
/* BCE8C 800CC68C 8800BE8F */  lw         $fp, 0x88($sp)
/* BCE90 800CC690 8400B78F */  lw         $s7, 0x84($sp)
/* BCE94 800CC694 8000B68F */  lw         $s6, 0x80($sp)
/* BCE98 800CC698 7C00B58F */  lw         $s5, 0x7c($sp)
/* BCE9C 800CC69C 7800B48F */  lw         $s4, 0x78($sp)
/* BCEA0 800CC6A0 7400B38F */  lw         $s3, 0x74($sp)
/* BCEA4 800CC6A4 7000B28F */  lw         $s2, 0x70($sp)
/* BCEA8 800CC6A8 6C00B18F */  lw         $s1, 0x6c($sp)
/* BCEAC 800CC6AC 6800B08F */  lw         $s0, 0x68($sp)
/* BCEB0 800CC6B0 0800E003 */  jr         $ra
/* BCEB4 800CC6B4 9000BD27 */   addiu     $sp, $sp, 0x90

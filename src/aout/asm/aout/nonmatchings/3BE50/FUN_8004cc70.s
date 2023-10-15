.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004cc70
/* 3D470 8004CC70 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 3D474 8004CC74 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3D478 8004CC78 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 3D47C 8004CC7C 02000624 */  addiu      $a2, $zero, 2
/* 3D480 8004CC80 8400BFAF */  sw         $ra, 0x84($sp)
/* 3D484 8004CC84 8000BEAF */  sw         $fp, 0x80($sp)
/* 3D488 8004CC88 7C00B7AF */  sw         $s7, 0x7c($sp)
/* 3D48C 8004CC8C 7800B6AF */  sw         $s6, 0x78($sp)
/* 3D490 8004CC90 7400B5AF */  sw         $s5, 0x74($sp)
/* 3D494 8004CC94 7000B4AF */  sw         $s4, 0x70($sp)
/* 3D498 8004CC98 6C00B3AF */  sw         $s3, 0x6c($sp)
/* 3D49C 8004CC9C 6800B2AF */  sw         $s2, 0x68($sp)
/* 3D4A0 8004CCA0 6400B1AF */  sw         $s1, 0x64($sp)
/* 3D4A4 8004CCA4 6000B0AF */  sw         $s0, 0x60($sp)
/* 3D4A8 8004CCA8 8A00A390 */  lbu        $v1, 0x8a($a1)
/* 3D4AC 8004CCAC 00000000 */  nop
/* 3D4B0 8004CCB0 0B006610 */  beq        $v1, $a2, .L8004CCE0
/* 3D4B4 8004CCB4 21504000 */   addu      $t2, $v0, $zero
/* 3D4B8 8004CCB8 0A000424 */  addiu      $a0, $zero, 0xa
/* 3D4BC 8004CCBC 08006410 */  beq        $v1, $a0, .L8004CCE0
/* 3D4C0 8004CCC0 0100023C */   lui       $v0, 1
/* 3D4C4 8004CCC4 2110A200 */  addu       $v0, $a1, $v0
/* 3D4C8 8004CCC8 06434290 */  lbu        $v0, 0x4306($v0)
/* 3D4CC 8004CCCC 00000000 */  nop
/* 3D4D0 8004CCD0 03004610 */  beq        $v0, $a2, .L8004CCE0
/* 3D4D4 8004CCD4 00000000 */   nop
/* 3D4D8 8004CCD8 0C004414 */  bne        $v0, $a0, .L8004CD0C
/* 3D4DC 8004CCDC 04000324 */   addiu     $v1, $zero, 4
.L8004CCE0:
/* 3D4E0 8004CCE0 28004385 */  lh         $v1, 0x28($t2)
/* 3D4E4 8004CCE4 03000224 */  addiu      $v0, $zero, 3
/* 3D4E8 8004CCE8 07006210 */  beq        $v1, $v0, .L8004CD08
/* 3D4EC 8004CCEC 26000224 */   addiu     $v0, $zero, 0x26
/* 3D4F0 8004CCF0 05006210 */  beq        $v1, $v0, .L8004CD08
/* 3D4F4 8004CCF4 08000224 */   addiu     $v0, $zero, 8
/* 3D4F8 8004CCF8 2800A2AF */  sw         $v0, 0x28($sp)
/* 3D4FC 8004CCFC 15000224 */  addiu      $v0, $zero, 0x15
/* 3D500 8004CD00 04006214 */  bne        $v1, $v0, .L8004CD14
/* 3D504 8004CD04 28004425 */   addiu     $a0, $t2, 0x28
.L8004CD08:
/* 3D508 8004CD08 04000324 */  addiu      $v1, $zero, 4
.L8004CD0C:
/* 3D50C 8004CD0C 2800A3AF */  sw         $v1, 0x28($sp)
/* 3D510 8004CD10 28004425 */  addiu      $a0, $t2, 0x28
.L8004CD14:
/* 3D514 8004CD14 8A008290 */  lbu        $v0, 0x8a($a0)
/* 3D518 8004CD18 02000524 */  addiu      $a1, $zero, 2
/* 3D51C 8004CD1C 0A004510 */  beq        $v0, $a1, .L8004CD48
/* 3D520 8004CD20 0A000324 */   addiu     $v1, $zero, 0xa
/* 3D524 8004CD24 08004310 */  beq        $v0, $v1, .L8004CD48
/* 3D528 8004CD28 0100023C */   lui       $v0, 1
/* 3D52C 8004CD2C 21108200 */  addu       $v0, $a0, $v0
/* 3D530 8004CD30 06434290 */  lbu        $v0, 0x4306($v0)
/* 3D534 8004CD34 00000000 */  nop
/* 3D538 8004CD38 03004510 */  beq        $v0, $a1, .L8004CD48
/* 3D53C 8004CD3C 00000000 */   nop
/* 3D540 8004CD40 0C004314 */  bne        $v0, $v1, .L8004CD74
/* 3D544 8004CD44 02000224 */   addiu     $v0, $zero, 2
.L8004CD48:
/* 3D548 8004CD48 28004385 */  lh         $v1, 0x28($t2)
/* 3D54C 8004CD4C 03000224 */  addiu      $v0, $zero, 3
/* 3D550 8004CD50 08006210 */  beq        $v1, $v0, .L8004CD74
/* 3D554 8004CD54 02000224 */   addiu     $v0, $zero, 2
/* 3D558 8004CD58 26000224 */  addiu      $v0, $zero, 0x26
/* 3D55C 8004CD5C 04006210 */  beq        $v1, $v0, .L8004CD70
/* 3D560 8004CD60 01000424 */   addiu     $a0, $zero, 1
/* 3D564 8004CD64 15000224 */  addiu      $v0, $zero, 0x15
/* 3D568 8004CD68 03006214 */  bne        $v1, $v0, .L8004CD78
/* 3D56C 8004CD6C 2400A4AF */   sw        $a0, 0x24($sp)
.L8004CD70:
/* 3D570 8004CD70 02000224 */  addiu      $v0, $zero, 2
.L8004CD74:
/* 3D574 8004CD74 2400A2AF */  sw         $v0, 0x24($sp)
.L8004CD78:
/* 3D578 8004CD78 FFFF0524 */  addiu      $a1, $zero, -1
/* 3D57C 8004CD7C 1780023C */  lui        $v0, %hi(D_8016F808)
/* 3D580 8004CD80 08F84424 */  addiu      $a0, $v0, %lo(D_8016F808)
/* 3D584 8004CD84 1780033C */  lui        $v1, %hi(D_8016F800)
/* 3D588 8004CD88 00F86324 */  addiu      $v1, $v1, %lo(D_8016F800)
/* 3D58C 8004CD8C 1780023C */  lui        $v0, %hi(D_8016F9E0)
/* 3D590 8004CD90 E0F94224 */  addiu      $v0, $v0, %lo(D_8016F9E0)
/* 3D594 8004CD94 01001424 */  addiu      $s4, $zero, 1
.L8004CD98:
/* 3D598 8004CD98 000080AC */  sw         $zero, ($a0)
/* 3D59C 8004CD9C 04008424 */  addiu      $a0, $a0, 4
/* 3D5A0 8004CDA0 000060AC */  sw         $zero, ($v1)
/* 3D5A4 8004CDA4 04006324 */  addiu      $v1, $v1, 4
/* 3D5A8 8004CDA8 000045AC */  sw         $a1, ($v0)
/* 3D5AC 8004CDAC FFFF9426 */  addiu      $s4, $s4, -1
/* 3D5B0 8004CDB0 F9FF8106 */  bgez       $s4, .L8004CD98
/* 3D5B4 8004CDB4 04004224 */   addiu     $v0, $v0, 4
/* 3D5B8 8004CDB8 1380023C */  lui        $v0, %hi(D_801280E0)
/* 3D5BC 8004CDBC E0804224 */  addiu      $v0, $v0, %lo(D_801280E0)
/* 3D5C0 8004CDC0 02001424 */  addiu      $s4, $zero, 2
/* 3D5C4 8004CDC4 84004490 */  lbu        $a0, 0x84($v0)
/* 3D5C8 8004CDC8 1380023C */  lui        $v0, %hi(D_801282E0)
/* 3D5CC 8004CDCC E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 3D5D0 8004CDD0 C0180400 */  sll        $v1, $a0, 3
/* 3D5D4 8004CDD4 23186400 */  subu       $v1, $v1, $a0
/* 3D5D8 8004CDD8 80180300 */  sll        $v1, $v1, 2
/* 3D5DC 8004CDDC 21386200 */  addu       $a3, $v1, $v0
/* 3D5E0 8004CDE0 0C00E484 */  lh         $a0, 0xc($a3)
/* 3D5E4 8004CDE4 0400E284 */  lh         $v0, 4($a3)
/* 3D5E8 8004CDE8 0600E384 */  lh         $v1, 6($a3)
/* 3D5EC 8004CDEC 23308402 */  subu       $a2, $s4, $a0
/* 3D5F0 8004CDF0 0720C200 */  srav       $a0, $v0, $a2
/* 3D5F4 8004CDF4 02008104 */  bgez       $a0, .L8004CE00
/* 3D5F8 8004CDF8 21108000 */   addu      $v0, $a0, $zero
/* 3D5FC 8004CDFC 3F008224 */  addiu      $v0, $a0, 0x3f
.L8004CE00:
/* 3D600 8004CE00 21286000 */  addu       $a1, $v1, $zero
/* 3D604 8004CE04 83110200 */  sra        $v0, $v0, 6
/* 3D608 8004CE08 80110200 */  sll        $v0, $v0, 6
/* 3D60C 8004CE0C 23108200 */  subu       $v0, $a0, $v0
/* 3D610 8004CE10 00140200 */  sll        $v0, $v0, 0x10
/* 3D614 8004CE14 02006104 */  bgez       $v1, .L8004CE20
/* 3D618 8004CE18 034C0200 */   sra       $t1, $v0, 0x10
/* 3D61C 8004CE1C FF006524 */  addiu      $a1, $v1, 0xff
.L8004CE20:
/* 3D620 8004CE20 0410C900 */  sllv       $v0, $t1, $a2
/* 3D624 8004CE24 00140200 */  sll        $v0, $v0, 0x10
/* 3D628 8004CE28 03140200 */  sra        $v0, $v0, 0x10
/* 3D62C 8004CE2C 21400000 */  addu       $t0, $zero, $zero
/* 3D630 8004CE30 2000A2AF */  sw         $v0, 0x20($sp)
/* 3D634 8004CE34 03120500 */  sra        $v0, $a1, 8
/* 3D638 8004CE38 00120200 */  sll        $v0, $v0, 8
/* 3D63C 8004CE3C 23106200 */  subu       $v0, $v1, $v0
/* 3D640 8004CE40 00140200 */  sll        $v0, $v0, 0x10
/* 3D644 8004CE44 03140200 */  sra        $v0, $v0, 0x10
/* 3D648 8004CE48 23186200 */  subu       $v1, $v1, $v0
/* 3D64C 8004CE4C 001C0300 */  sll        $v1, $v1, 0x10
/* 3D650 8004CE50 031C0300 */  sra        $v1, $v1, 0x10
/* 3D654 8004CE54 2C00A2AF */  sw         $v0, 0x2c($sp)
/* 3D658 8004CE58 00016230 */  andi       $v0, $v1, 0x100
/* 3D65C 8004CE5C 4C00A2AF */  sw         $v0, 0x4c($sp)
/* 3D660 8004CE60 23108900 */  subu       $v0, $a0, $t1
/* 3D664 8004CE64 FF034230 */  andi       $v0, $v0, 0x3ff
/* 3D668 8004CE68 00026330 */  andi       $v1, $v1, 0x200
/* 3D66C 8004CE6C 3C00A2AF */  sw         $v0, 0x3c($sp)
/* 3D670 8004CE70 3800A3AF */  sw         $v1, 0x38($sp)
.L8004CE74:
/* 3D674 8004CE74 2400A38F */  lw         $v1, 0x24($sp)
/* 3D678 8004CE78 00000000 */  nop
/* 3D67C 8004CE7C CC006010 */  beqz       $v1, .L8004D1B0
/* 3D680 8004CE80 21900000 */   addu      $s2, $zero, $zero
/* 3D684 8004CE84 80101200 */  sll        $v0, $s2, 2
.L8004CE88:
/* 3D688 8004CE88 21205200 */  addu       $a0, $v0, $s2
/* 3D68C 8004CE8C C0190400 */  sll        $v1, $a0, 7
/* 3D690 8004CE90 21188300 */  addu       $v1, $a0, $v1
/* 3D694 8004CE94 40190300 */  sll        $v1, $v1, 5
/* 3D698 8004CE98 23187200 */  subu       $v1, $v1, $s2
/* 3D69C 8004CE9C 80180300 */  sll        $v1, $v1, 2
/* 3D6A0 8004CEA0 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3D6A4 8004CEA4 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 3D6A8 8004CEA8 21186200 */  addu       $v1, $v1, $v0
/* 3D6AC 8004CEAC 9000628C */  lw         $v0, 0x90($v1)
/* 3D6B0 8004CEB0 21880000 */  addu       $s1, $zero, $zero
/* 3D6B4 8004CEB4 03004230 */  andi       $v0, $v0, 3
/* 3D6B8 8004CEB8 2B100200 */  sltu       $v0, $zero, $v0
/* 3D6BC 8004CEBC 3000A2AF */  sw         $v0, 0x30($sp)
/* 3D6C0 8004CEC0 2800A28F */  lw         $v0, 0x28($sp)
/* 3D6C4 8004CEC4 01004326 */  addiu      $v1, $s2, 1
/* 3D6C8 8004CEC8 B2004010 */  beqz       $v0, .L8004D194
/* 3D6CC 8004CECC 4400A3AF */   sw        $v1, 0x44($sp)
/* 3D6D0 8004CED0 40180800 */  sll        $v1, $t0, 1
/* 3D6D4 8004CED4 21B88000 */  addu       $s7, $a0, $zero
/* 3D6D8 8004CED8 4800A3AF */  sw         $v1, 0x48($sp)
/* 3D6DC 8004CEDC 40181200 */  sll        $v1, $s2, 1
/* 3D6E0 8004CEE0 21107200 */  addu       $v0, $v1, $s2
/* 3D6E4 8004CEE4 80100200 */  sll        $v0, $v0, 2
/* 3D6E8 8004CEE8 23105200 */  subu       $v0, $v0, $s2
/* 3D6EC 8004CEEC C0100200 */  sll        $v0, $v0, 3
/* 3D6F0 8004CEF0 FFFF7324 */  addiu      $s3, $v1, -1
/* 3D6F4 8004CEF4 AA2A163C */  lui        $s6, 0x2aaa
/* 3D6F8 8004CEF8 ABAAD636 */  ori        $s6, $s6, 0xaaab
/* 3D6FC 8004CEFC 3400A2AF */  sw         $v0, 0x34($sp)
/* 3D700 8004CF00 18003602 */  mult       $s1, $s6
.L8004CF04:
/* 3D704 8004CF04 01002426 */  addiu      $a0, $s1, 1
/* 3D708 8004CF08 4000A4AF */  sw         $a0, 0x40($sp)
/* 3D70C 8004CF0C 21A80000 */  addu       $s5, $zero, $zero
/* 3D710 8004CF10 23001424 */  addiu      $s4, $zero, 0x23
/* 3D714 8004CF14 10F00000 */  mfhi       $fp
.L8004CF18:
/* 3D718 8004CF18 4800A38F */  lw         $v1, 0x48($sp)
/* 3D71C 8004CF1C 00000000 */  nop
/* 3D720 8004CF20 21107200 */  addu       $v0, $v1, $s2
/* 3D724 8004CF24 80100200 */  sll        $v0, $v0, 2
/* 3D728 8004CF28 21105100 */  addu       $v0, $v0, $s1
/* 3D72C 8004CF2C 40180200 */  sll        $v1, $v0, 1
/* 3D730 8004CF30 21186200 */  addu       $v1, $v1, $v0
/* 3D734 8004CF34 00210300 */  sll        $a0, $v1, 4
/* 3D738 8004CF38 23208300 */  subu       $a0, $a0, $v1
/* 3D73C 8004CF3C 00210400 */  sll        $a0, $a0, 4
/* 3D740 8004CF40 1780033C */  lui        $v1, %hi(D_8016F9F0)
/* 3D744 8004CF44 F0F96224 */  addiu      $v0, $v1, %lo(D_8016F9F0)
/* 3D748 8004CF48 2110A202 */  addu       $v0, $s5, $v0
/* 3D74C 8004CF4C 21808200 */  addu       $s0, $a0, $v0
/* 3D750 8004CF50 04000324 */  addiu      $v1, $zero, 4
/* 3D754 8004CF54 64000224 */  addiu      $v0, $zero, 0x64
/* 3D758 8004CF58 030003A2 */  sb         $v1, 3($s0)
/* 3D75C 8004CF5C 070002A2 */  sb         $v0, 7($s0)
/* 3D760 8004CF60 3000A48F */  lw         $a0, 0x30($sp)
/* 3D764 8004CF64 00000000 */  nop
/* 3D768 8004CF68 02008010 */  beqz       $a0, .L8004CF74
/* 3D76C 8004CF6C 64000224 */   addiu     $v0, $zero, 0x64
/* 3D770 8004CF70 66000224 */  addiu      $v0, $zero, 0x66
.L8004CF74:
/* 3D774 8004CF74 070002A2 */  sb         $v0, 7($s0)
/* 3D778 8004CF78 5000A7AF */  sw         $a3, 0x50($sp)
/* 3D77C 8004CF7C 5400A8AF */  sw         $t0, 0x54($sp)
/* 3D780 8004CF80 7470000C */  jal        getcoinslot1_8001c1d0
/* 3D784 8004CF84 5800AAAF */   sw        $t2, 0x58($sp)
/* 3D788 8004CF88 5000A78F */  lw         $a3, 0x50($sp)
/* 3D78C 8004CF8C 5400A88F */  lw         $t0, 0x54($sp)
/* 3D790 8004CF90 5800AA8F */  lw         $t2, 0x58($sp)
/* 3D794 8004CF94 17004010 */  beqz       $v0, .L8004CFF4
/* 3D798 8004CF98 26000224 */   addiu     $v0, $zero, 0x26
/* 3D79C 8004CF9C 28004385 */  lh         $v1, 0x28($t2)
/* 3D7A0 8004CFA0 00000000 */  nop
/* 3D7A4 8004CFA4 13006210 */  beq        $v1, $v0, .L8004CFF4
/* 3D7A8 8004CFA8 28004425 */   addiu     $a0, $t2, 0x28
/* 3D7AC 8004CFAC 0180033C */  lui        $v1, %hi(D_80013D14)
/* 3D7B0 8004CFB0 143D6624 */  addiu      $a2, $v1, %lo(D_80013D14)
/* 3D7B4 8004CFB4 C0111700 */  sll        $v0, $s7, 7
/* 3D7B8 8004CFB8 2110E202 */  addu       $v0, $s7, $v0
/* 3D7BC 8004CFBC 40110200 */  sll        $v0, $v0, 5
/* 3D7C0 8004CFC0 23105200 */  subu       $v0, $v0, $s2
/* 3D7C4 8004CFC4 80100200 */  sll        $v0, $v0, 2
/* 3D7C8 8004CFC8 21104400 */  addu       $v0, $v0, $a0
/* 3D7CC 8004CFCC 8A004490 */  lbu        $a0, 0x8a($v0)
/* 3D7D0 8004CFD0 0A000324 */  addiu      $v1, $zero, 0xa
/* 3D7D4 8004CFD4 02008310 */  beq        $a0, $v1, .L8004CFE0
/* 3D7D8 8004CFD8 40281100 */   sll       $a1, $s1, 1
/* 3D7DC 8004CFDC 1000A524 */  addiu      $a1, $a1, 0x10
.L8004CFE0:
/* 3D7E0 8004CFE0 2110A600 */  addu       $v0, $a1, $a2
/* 3D7E4 8004CFE4 00004394 */  lhu        $v1, ($v0)
/* 3D7E8 8004CFE8 3400A48F */  lw         $a0, 0x34($sp)
/* 3D7EC 8004CFEC 1E340108 */  j          .L8004D078
/* 3D7F0 8004CFF0 21106400 */   addu      $v0, $v1, $a0
.L8004CFF4:
/* 3D7F4 8004CFF4 28004525 */  addiu      $a1, $t2, 0x28
/* 3D7F8 8004CFF8 8A00A290 */  lbu        $v0, 0x8a($a1)
/* 3D7FC 8004CFFC 02000624 */  addiu      $a2, $zero, 2
/* 3D800 8004D000 0B004610 */  beq        $v0, $a2, .L8004D030
/* 3D804 8004D004 40191100 */   sll       $v1, $s1, 5
/* 3D808 8004D008 0A000424 */  addiu      $a0, $zero, 0xa
/* 3D80C 8004D00C 08004410 */  beq        $v0, $a0, .L8004D030
/* 3D810 8004D010 0100023C */   lui       $v0, 1
/* 3D814 8004D014 2110A200 */  addu       $v0, $a1, $v0
/* 3D818 8004D018 06434290 */  lbu        $v0, 0x4306($v0)
/* 3D81C 8004D01C 00000000 */  nop
/* 3D820 8004D020 03004610 */  beq        $v0, $a2, .L8004D030
/* 3D824 8004D024 00000000 */   nop
/* 3D828 8004D028 0B004414 */  bne        $v0, $a0, .L8004D058
/* 3D82C 8004D02C 40101300 */   sll       $v0, $s3, 1
.L8004D030:
/* 3D830 8004D030 28004485 */  lh         $a0, 0x28($t2)
/* 3D834 8004D034 03000224 */  addiu      $v0, $zero, 3
/* 3D838 8004D038 07008210 */  beq        $a0, $v0, .L8004D058
/* 3D83C 8004D03C 40101300 */   sll       $v0, $s3, 1
/* 3D840 8004D040 26000224 */  addiu      $v0, $zero, 0x26
/* 3D844 8004D044 04008210 */  beq        $a0, $v0, .L8004D058
/* 3D848 8004D048 40101300 */   sll       $v0, $s3, 1
/* 3D84C 8004D04C 15000224 */  addiu      $v0, $zero, 0x15
/* 3D850 8004D050 08008214 */  bne        $a0, $v0, .L8004D074
/* 3D854 8004D054 40101300 */   sll       $v0, $s3, 1
.L8004D058:
/* 3D858 8004D058 21105300 */  addu       $v0, $v0, $s3
/* 3D85C 8004D05C 80100200 */  sll        $v0, $v0, 2
/* 3D860 8004D060 23105300 */  subu       $v0, $v0, $s3
/* 3D864 8004D064 C0100200 */  sll        $v0, $v0, 3
/* 3D868 8004D068 C0FF6324 */  addiu      $v1, $v1, -0x40
/* 3D86C 8004D06C 1E340108 */  j          .L8004D078
/* 3D870 8004D070 21104300 */   addu      $v0, $v0, $v1
.L8004D074:
/* 3D874 8004D074 80FF6224 */  addiu      $v0, $v1, -0x80
.L8004D078:
/* 3D878 8004D078 080002A6 */  sh         $v0, 8($s0)
/* 3D87C 8004D07C A2FF0224 */  addiu      $v0, $zero, -0x5e
/* 3D880 8004D080 0A0002A6 */  sh         $v0, 0xa($s0)
/* 3D884 8004D084 5000A7AF */  sw         $a3, 0x50($sp)
/* 3D888 8004D088 5400A8AF */  sw         $t0, 0x54($sp)
/* 3D88C 8004D08C 7470000C */  jal        getcoinslot1_8001c1d0
/* 3D890 8004D090 5800AAAF */   sw        $t2, 0x58($sp)
/* 3D894 8004D094 5000A78F */  lw         $a3, 0x50($sp)
/* 3D898 8004D098 5400A88F */  lw         $t0, 0x54($sp)
/* 3D89C 8004D09C 5800AA8F */  lw         $t2, 0x58($sp)
/* 3D8A0 8004D0A0 0A004010 */  beqz       $v0, .L8004D0CC
/* 3D8A4 8004D0A4 03002332 */   andi      $v1, $s1, 3
/* 3D8A8 8004D0A8 C3171100 */  sra        $v0, $s1, 0x1f
/* 3D8AC 8004D0AC 2310C203 */  subu       $v0, $fp, $v0
/* 3D8B0 8004D0B0 00140200 */  sll        $v0, $v0, 0x10
/* 3D8B4 8004D0B4 03140200 */  sra        $v0, $v0, 0x10
/* 3D8B8 8004D0B8 23186200 */  subu       $v1, $v1, $v0
/* 3D8BC 8004D0BC 2000A48F */  lw         $a0, 0x20($sp)
/* 3D8C0 8004D0C0 40190300 */  sll        $v1, $v1, 5
/* 3D8C4 8004D0C4 3D340108 */  j          .L8004D0F4
/* 3D8C8 8004D0C8 21108300 */   addu      $v0, $a0, $v1
.L8004D0CC:
/* 3D8CC 8004D0CC 02002106 */  bgez       $s1, .L8004D0D8
/* 3D8D0 8004D0D0 21102002 */   addu      $v0, $s1, $zero
/* 3D8D4 8004D0D4 03002226 */  addiu      $v0, $s1, 3
.L8004D0D8:
/* 3D8D8 8004D0D8 83100200 */  sra        $v0, $v0, 2
/* 3D8DC 8004D0DC 80100200 */  sll        $v0, $v0, 2
/* 3D8E0 8004D0E0 23102202 */  subu       $v0, $s1, $v0
/* 3D8E4 8004D0E4 00140200 */  sll        $v0, $v0, 0x10
/* 3D8E8 8004D0E8 2000A38F */  lw         $v1, 0x20($sp)
/* 3D8EC 8004D0EC C3120200 */  sra        $v0, $v0, 0xb
/* 3D8F0 8004D0F0 21106200 */  addu       $v0, $v1, $v0
.L8004D0F4:
/* 3D8F4 8004D0F4 0C0002A2 */  sb         $v0, 0xc($s0)
/* 3D8F8 8004D0F8 5000A7AF */  sw         $a3, 0x50($sp)
/* 3D8FC 8004D0FC 5400A8AF */  sw         $t0, 0x54($sp)
/* 3D900 8004D100 7470000C */  jal        getcoinslot1_8001c1d0
/* 3D904 8004D104 5800AAAF */   sw        $t2, 0x58($sp)
/* 3D908 8004D108 5000A78F */  lw         $a3, 0x50($sp)
/* 3D90C 8004D10C 5400A88F */  lw         $t0, 0x54($sp)
/* 3D910 8004D110 5800AA8F */  lw         $t2, 0x58($sp)
/* 3D914 8004D114 05004010 */  beqz       $v0, .L8004D12C
/* 3D918 8004D118 83101100 */   sra       $v0, $s1, 2
/* 3D91C 8004D11C 2C00A48F */  lw         $a0, 0x2c($sp)
/* 3D920 8004D120 40110200 */  sll        $v0, $v0, 5
/* 3D924 8004D124 4C340108 */  j          .L8004D130
/* 3D928 8004D128 21108200 */   addu      $v0, $a0, $v0
.L8004D12C:
/* 3D92C 8004D12C 2C00A28F */  lw         $v0, 0x2c($sp)
.L8004D130:
/* 3D930 8004D130 1400B526 */  addiu      $s5, $s5, 0x14
/* 3D934 8004D134 FFFF9426 */  addiu      $s4, $s4, -1
/* 3D938 8004D138 20000324 */  addiu      $v1, $zero, 0x20
/* 3D93C 8004D13C 0D0002A2 */  sb         $v0, 0xd($s0)
/* 3D940 8004D140 80000224 */  addiu      $v0, $zero, 0x80
/* 3D944 8004D144 100003A6 */  sh         $v1, 0x10($s0)
/* 3D948 8004D148 120003A6 */  sh         $v1, 0x12($s0)
/* 3D94C 8004D14C 040002A2 */  sb         $v0, 4($s0)
/* 3D950 8004D150 050002A2 */  sb         $v0, 5($s0)
/* 3D954 8004D154 060002A2 */  sb         $v0, 6($s0)
/* 3D958 8004D158 1800E394 */  lhu        $v1, 0x18($a3)
/* 3D95C 8004D15C 1600E294 */  lhu        $v0, 0x16($a3)
/* 3D960 8004D160 80190300 */  sll        $v1, $v1, 6
/* 3D964 8004D164 02110200 */  srl        $v0, $v0, 4
/* 3D968 8004D168 3F004230 */  andi       $v0, $v0, 0x3f
/* 3D96C 8004D16C 25186200 */  or         $v1, $v1, $v0
/* 3D970 8004D170 69FF8106 */  bgez       $s4, .L8004CF18
/* 3D974 8004D174 0E0003A6 */   sh        $v1, 0xe($s0)
/* 3D978 8004D178 4000A38F */  lw         $v1, 0x40($sp)
/* 3D97C 8004D17C 2800A48F */  lw         $a0, 0x28($sp)
/* 3D980 8004D180 00140300 */  sll        $v0, $v1, 0x10
/* 3D984 8004D184 038C0200 */  sra        $s1, $v0, 0x10
/* 3D988 8004D188 2A182402 */  slt        $v1, $s1, $a0
/* 3D98C 8004D18C 5DFF6014 */  bnez       $v1, .L8004CF04
/* 3D990 8004D190 18003602 */   mult      $s1, $s6
.L8004D194:
/* 3D994 8004D194 4400A38F */  lw         $v1, 0x44($sp)
/* 3D998 8004D198 2400A48F */  lw         $a0, 0x24($sp)
/* 3D99C 8004D19C 00140300 */  sll        $v0, $v1, 0x10
/* 3D9A0 8004D1A0 03940200 */  sra        $s2, $v0, 0x10
/* 3D9A4 8004D1A4 2A184402 */  slt        $v1, $s2, $a0
/* 3D9A8 8004D1A8 37FF6014 */  bnez       $v1, .L8004CE88
/* 3D9AC 8004D1AC 80101200 */   sll       $v0, $s2, 2
.L8004D1B0:
/* 3D9B0 8004D1B0 01000825 */  addiu      $t0, $t0, 1
/* 3D9B4 8004D1B4 02000229 */  slti       $v0, $t0, 2
/* 3D9B8 8004D1B8 2EFF4014 */  bnez       $v0, .L8004CE74
/* 3D9BC 8004D1BC 1780023C */   lui       $v0, %hi(D_801726F0)
/* 3D9C0 8004D1C0 21400000 */  addu       $t0, $zero, $zero
/* 3D9C4 8004D1C4 F0264224 */  addiu      $v0, $v0, %lo(D_801726F0)
/* 3D9C8 8004D1C8 04004C24 */  addiu      $t4, $v0, 4
/* 3D9CC 8004D1CC 0C00E394 */  lhu        $v1, 0xc($a3)
/* 3D9D0 8004D1D0 4C00A48F */  lw         $a0, 0x4c($sp)
/* 3D9D4 8004D1D4 03006330 */  andi       $v1, $v1, 3
/* 3D9D8 8004D1D8 C0190300 */  sll        $v1, $v1, 7
/* 3D9DC 8004D1DC 00140400 */  sll        $v0, $a0, 0x10
/* 3D9E0 8004D1E0 03150200 */  sra        $v0, $v0, 0x14
/* 3D9E4 8004D1E4 20004234 */  ori        $v0, $v0, 0x20
/* 3D9E8 8004D1E8 25186200 */  or         $v1, $v1, $v0
/* 3D9EC 8004D1EC 3C00A28F */  lw         $v0, 0x3c($sp)
/* 3D9F0 8004D1F0 01000B24 */  addiu      $t3, $zero, 1
/* 3D9F4 8004D1F4 82210200 */  srl        $a0, $v0, 6
/* 3D9F8 8004D1F8 25186400 */  or         $v1, $v1, $a0
/* 3D9FC 8004D1FC 3800A48F */  lw         $a0, 0x38($sp)
/* 3DA00 8004D200 0100093C */  lui        $t1, 1
/* 3DA04 8004D204 80100400 */  sll        $v0, $a0, 2
/* 3DA08 8004D208 25186200 */  or         $v1, $v1, $v0
/* 3DA0C 8004D20C 00E1043C */  lui        $a0, 0xe100
/* 3DA10 8004D210 25206400 */  or         $a0, $v1, $a0
/* 3DA14 8004D214 01000725 */  addiu      $a3, $t0, 1
.L8004D218:
/* 3DA18 8004D218 0100063C */  lui        $a2, 1
/* 3DA1C 8004D21C 00110800 */  sll        $v0, $t0, 4
/* 3DA20 8004D220 21284C00 */  addu       $a1, $v0, $t4
.L8004D224:
/* 3DA24 8004D224 2118C000 */  addu       $v1, $a2, $zero
/* 3DA28 8004D228 2130C900 */  addu       $a2, $a2, $t1
/* 3DA2C 8004D22C FFFFABA0 */  sb         $t3, -1($a1)
/* 3DA30 8004D230 0000A4AC */  sw         $a0, ($a1)
/* 3DA34 8004D234 03940300 */  sra        $s2, $v1, 0x10
/* 3DA38 8004D238 0200422A */  slti       $v0, $s2, 2
/* 3DA3C 8004D23C F9FF4014 */  bnez       $v0, .L8004D224
/* 3DA40 8004D240 0800A524 */   addiu     $a1, $a1, 8
/* 3DA44 8004D244 2140E000 */  addu       $t0, $a3, $zero
/* 3DA48 8004D248 02000229 */  slti       $v0, $t0, 2
/* 3DA4C 8004D24C F2FF4014 */  bnez       $v0, .L8004D218
/* 3DA50 8004D250 01000725 */   addiu     $a3, $t0, 1
/* 3DA54 8004D254 21200000 */  addu       $a0, $zero, $zero
/* 3DA58 8004D258 1780023C */  lui        $v0, %hi(D_8016F9C0)
/* 3DA5C 8004D25C C0F94B24 */  addiu      $t3, $v0, %lo(D_8016F9C0)
/* 3DA60 8004D260 1780033C */  lui        $v1, %hi(D_8016F830)
/* 3DA64 8004D264 30F86824 */  addiu      $t0, $v1, %lo(D_8016F830)
/* 3DA68 8004D268 04000925 */  addiu      $t1, $t0, 4
/* 3DA6C 8004D26C 80300400 */  sll        $a2, $a0, 2
.L8004D270:
/* 3DA70 8004D270 01008724 */  addiu      $a3, $a0, 1
/* 3DA74 8004D274 09000524 */  addiu      $a1, $zero, 9
/* 3DA78 8004D278 40180400 */  sll        $v1, $a0, 1
/* 3DA7C 8004D27C 21106400 */  addu       $v0, $v1, $a0
/* 3DA80 8004D280 C0100200 */  sll        $v0, $v0, 3
/* 3DA84 8004D284 21104400 */  addu       $v0, $v0, $a0
/* 3DA88 8004D288 C0100200 */  sll        $v0, $v0, 3
/* 3DA8C 8004D28C 21104900 */  addu       $v0, $v0, $t1
/* 3DA90 8004D290 B4004224 */  addiu      $v0, $v0, 0xb4
.L8004D294:
/* 3DA94 8004D294 000040AC */  sw         $zero, ($v0)
/* 3DA98 8004D298 FFFFA524 */  addiu      $a1, $a1, -1
/* 3DA9C 8004D29C FDFFA104 */  bgez       $a1, .L8004D294
/* 3DAA0 8004D2A0 ECFF4224 */   addiu     $v0, $v0, -0x14
/* 3DAA4 8004D2A4 2110CB00 */  addu       $v0, $a2, $t3
/* 3DAA8 8004D2A8 21186400 */  addu       $v1, $v1, $a0
/* 3DAAC 8004D2AC C0180300 */  sll        $v1, $v1, 3
/* 3DAB0 8004D2B0 21186400 */  addu       $v1, $v1, $a0
/* 3DAB4 8004D2B4 C0180300 */  sll        $v1, $v1, 3
/* 3DAB8 8004D2B8 21186800 */  addu       $v1, $v1, $t0
/* 3DABC 8004D2BC 000043AC */  sw         $v1, ($v0)
/* 3DAC0 8004D2C0 2120E000 */  addu       $a0, $a3, $zero
/* 3DAC4 8004D2C4 02008228 */  slti       $v0, $a0, 2
/* 3DAC8 8004D2C8 E9FF4014 */  bnez       $v0, .L8004D270
/* 3DACC 8004D2CC 80300400 */   sll       $a2, $a0, 2
/* 3DAD0 8004D2D0 A04B010C */  jal        FUN_80052e80
/* 3DAD4 8004D2D4 5800AAAF */   sw        $t2, 0x58($sp)
/* 3DAD8 8004D2D8 5800AA8F */  lw         $t2, 0x58($sp)
/* 3DADC 8004D2DC 1780023C */  lui        $v0, %hi(D_80172710)
/* 3DAE0 8004D2E0 102740AC */  sw         $zero, %lo(D_80172710)($v0)
/* 3DAE4 8004D2E4 28004385 */  lh         $v1, 0x28($t2)
/* 3DAE8 8004D2E8 03000224 */  addiu      $v0, $zero, 3
/* 3DAEC 8004D2EC 37006210 */  beq        $v1, $v0, .L8004D3CC
/* 3DAF0 8004D2F0 26000224 */   addiu     $v0, $zero, 0x26
/* 3DAF4 8004D2F4 35006210 */  beq        $v1, $v0, .L8004D3CC
/* 3DAF8 8004D2F8 21200000 */   addu      $a0, $zero, $zero
/* 3DAFC 8004D2FC 1800B727 */  addiu      $s7, $sp, 0x18
/* 3DB00 8004D300 1780033C */  lui        $v1, %hi(D_8016F7A0)
/* 3DB04 8004D304 A0F77E24 */  addiu      $fp, $v1, %lo(D_8016F7A0)
/* 3DB08 8004D308 40010224 */  addiu      $v0, $zero, 0x140
/* 3DB0C 8004D30C F0000324 */  addiu      $v1, $zero, 0xf0
/* 3DB10 8004D310 1400A2A7 */  sh         $v0, 0x14($sp)
/* 3DB14 8004D314 08000224 */  addiu      $v0, $zero, 8
/* 3DB18 8004D318 1600A3A7 */  sh         $v1, 0x16($sp)
/* 3DB1C 8004D31C 30010324 */  addiu      $v1, $zero, 0x130
/* 3DB20 8004D320 1800A2A7 */  sh         $v0, 0x18($sp)
/* 3DB24 8004D324 B0000224 */  addiu      $v0, $zero, 0xb0
/* 3DB28 8004D328 1C00A3A7 */  sh         $v1, 0x1c($sp)
/* 3DB2C 8004D32C 01000324 */  addiu      $v1, $zero, 1
/* 3DB30 8004D330 1E00A2A7 */  sh         $v0, 0x1e($sp)
/* 3DB34 8004D334 0E80023C */  lui        $v0, %hi(D_800DAF80)
/* 3DB38 8004D338 1000A0A7 */  sh         $zero, 0x10($sp)
/* 3DB3C 8004D33C 80AF43AC */  sw         $v1, %lo(D_800DAF80)($v0)
/* 3DB40 8004D340 01009624 */  addiu      $s6, $a0, 1
.L8004D344:
/* 3DB44 8004D344 01000324 */  addiu      $v1, $zero, 1
/* 3DB48 8004D348 23106400 */  subu       $v0, $v1, $a0
/* 3DB4C 8004D34C 00A20200 */  sll        $s4, $v0, 8
/* 3DB50 8004D350 19009526 */  addiu      $s5, $s4, 0x19
/* 3DB54 8004D354 0100133C */  lui        $s3, 1
/* 3DB58 8004D358 40100400 */  sll        $v0, $a0, 1
/* 3DB5C 8004D35C 21104400 */  addu       $v0, $v0, $a0
/* 3DB60 8004D360 C0100200 */  sll        $v0, $v0, 3
/* 3DB64 8004D364 2188C203 */  addu       $s1, $fp, $v0
/* 3DB68 8004D368 1780043C */  lui        $a0, %hi(D_8016F7D0)
/* 3DB6C 8004D36C D0F78424 */  addiu      $a0, $a0, %lo(D_8016F7D0)
/* 3DB70 8004D370 21808200 */  addu       $s0, $a0, $v0
.L8004D374:
/* 3DB74 8004D374 21200002 */  addu       $a0, $s0, $zero
/* 3DB78 8004D378 1000A527 */  addiu      $a1, $sp, 0x10
/* 3DB7C 8004D37C 1200B4A7 */  sh         $s4, 0x12($sp)
/* 3DB80 8004D380 3B64000C */  jal        SetDrawArea
/* 3DB84 8004D384 1A00B5A7 */   sh        $s5, 0x1a($sp)
/* 3DB88 8004D388 21202002 */  addu       $a0, $s1, $zero
/* 3DB8C 8004D38C 3B64000C */  jal        SetDrawArea
/* 3DB90 8004D390 2128E002 */   addu      $a1, $s7, $zero
/* 3DB94 8004D394 21106002 */  addu       $v0, $s3, $zero
/* 3DB98 8004D398 0100033C */  lui        $v1, 1
/* 3DB9C 8004D39C 21986302 */  addu       $s3, $s3, $v1
/* 3DBA0 8004D3A0 0C003126 */  addiu      $s1, $s1, 0xc
/* 3DBA4 8004D3A4 03940200 */  sra        $s2, $v0, 0x10
/* 3DBA8 8004D3A8 0200432A */  slti       $v1, $s2, 2
/* 3DBAC 8004D3AC F1FF6014 */  bnez       $v1, .L8004D374
/* 3DBB0 8004D3B0 0C001026 */   addiu     $s0, $s0, 0xc
/* 3DBB4 8004D3B4 2120C002 */  addu       $a0, $s6, $zero
/* 3DBB8 8004D3B8 02008228 */  slti       $v0, $a0, 2
/* 3DBBC 8004D3BC E1FF4014 */  bnez       $v0, .L8004D344
/* 3DBC0 8004D3C0 01009624 */   addiu     $s6, $a0, 1
/* 3DBC4 8004D3C4 F5340108 */  j          .L8004D3D4
/* 3DBC8 8004D3C8 00000000 */   nop
.L8004D3CC:
/* 3DBCC 8004D3CC 0E80023C */  lui        $v0, %hi(D_800DAF80)
/* 3DBD0 8004D3D0 80AF40AC */  sw         $zero, %lo(D_800DAF80)($v0)
.L8004D3D4:
/* 3DBD4 8004D3D4 8400BF8F */  lw         $ra, 0x84($sp)
/* 3DBD8 8004D3D8 8000BE8F */  lw         $fp, 0x80($sp)
/* 3DBDC 8004D3DC 7C00B78F */  lw         $s7, 0x7c($sp)
/* 3DBE0 8004D3E0 7800B68F */  lw         $s6, 0x78($sp)
/* 3DBE4 8004D3E4 7400B58F */  lw         $s5, 0x74($sp)
/* 3DBE8 8004D3E8 7000B48F */  lw         $s4, 0x70($sp)
/* 3DBEC 8004D3EC 6C00B38F */  lw         $s3, 0x6c($sp)
/* 3DBF0 8004D3F0 6800B28F */  lw         $s2, 0x68($sp)
/* 3DBF4 8004D3F4 6400B18F */  lw         $s1, 0x64($sp)
/* 3DBF8 8004D3F8 6000B08F */  lw         $s0, 0x60($sp)
/* 3DBFC 8004D3FC 0800E003 */  jr         $ra
/* 3DC00 8004D400 8800BD27 */   addiu     $sp, $sp, 0x88

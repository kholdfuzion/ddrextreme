.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800acd74
/* 9D574 800ACD74 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9D578 800ACD78 1800B2AF */  sw         $s2, 0x18($sp)
/* 9D57C 800ACD7C 21908000 */  addu       $s2, $a0, $zero
/* 9D580 800ACD80 1C80023C */  lui        $v0, %hi(D_801C465C)
/* 9D584 800ACD84 1000B0AF */  sw         $s0, 0x10($sp)
/* 9D588 800ACD88 5C465024 */  addiu      $s0, $v0, %lo(D_801C465C)
/* 9D58C 800ACD8C 21200002 */  addu       $a0, $s0, $zero
/* 9D590 800ACD90 1400B1AF */  sw         $s1, 0x14($sp)
/* 9D594 800ACD94 2188A000 */  addu       $s1, $a1, $zero
/* 9D598 800ACD98 2000BFAF */  sw         $ra, 0x20($sp)
/* 9D59C 800ACD9C D6B9020C */  jal        FUN_800ae758
/* 9D5A0 800ACDA0 1C00B3AF */   sw        $s3, 0x1c($sp)
/* 9D5A4 800ACDA4 21184000 */  addu       $v1, $v0, $zero
/* 9D5A8 800ACDA8 71006010 */  beqz       $v1, .L800ACF70
/* 9D5AC 800ACDAC 21100000 */   addu      $v0, $zero, $zero
/* 9D5B0 800ACDB0 0600601C */  bgtz       $v1, .L800ACDCC
/* 9D5B4 800ACDB4 01000224 */   addiu     $v0, $zero, 1
/* 9D5B8 800ACDB8 FFFF0224 */  addiu      $v0, $zero, -1
/* 9D5BC 800ACDBC 07006210 */  beq        $v1, $v0, .L800ACDDC
/* 9D5C0 800ACDC0 21100000 */   addu      $v0, $zero, $zero
/* 9D5C4 800ACDC4 DCB30208 */  j          .L800ACF70
/* 9D5C8 800ACDC8 00000000 */   nop
.L800ACDCC:
/* 9D5CC 800ACDCC 06006210 */  beq        $v1, $v0, .L800ACDE8
/* 9D5D0 800ACDD0 21100000 */   addu      $v0, $zero, $zero
/* 9D5D4 800ACDD4 DCB30208 */  j          .L800ACF70
/* 9D5D8 800ACDD8 00000000 */   nop
.L800ACDDC:
/* 9D5DC 800ACDDC FCFF00AE */  sw         $zero, -4($s0)
/* 9D5E0 800ACDE0 DCB30208 */  j          .L800ACF70
/* 9D5E4 800ACDE4 FFFF0224 */   addiu     $v0, $zero, -1
.L800ACDE8:
/* 9D5E8 800ACDE8 03002012 */  beqz       $s1, .L800ACDF8
/* 9D5EC 800ACDEC 02000224 */   addiu     $v0, $zero, 2
/* 9D5F0 800ACDF0 1D002216 */  bne        $s1, $v0, .L800ACE68
/* 9D5F4 800ACDF4 00000000 */   nop
.L800ACDF8:
/* 9D5F8 800ACDF8 FCFF028E */  lw         $v0, -4($s0)
/* 9D5FC 800ACDFC 00000000 */  nop
/* 9D600 800ACE00 80004228 */  slti       $v0, $v0, 0x80
/* 9D604 800ACE04 21004010 */  beqz       $v0, .L800ACE8C
/* 9D608 800ACE08 1C80113C */   lui       $s1, 0x801c
/* 9D60C 800ACE0C C0111200 */  sll        $v0, $s2, 7
/* 9D610 800ACE10 21302002 */  addu       $a2, $s1, $zero
/* 9D614 800ACE14 FCFF1326 */  addiu      $s3, $s0, -4
/* 9D618 800ACE18 21105200 */  addu       $v0, $v0, $s2
/* 9D61C 800ACE1C C0810200 */  sll        $s0, $v0, 7
/* 9D620 800ACE20 1C80033C */  lui        $v1, %hi(D_801C4678)
/* 9D624 800ACE24 78467224 */  addiu      $s2, $v1, %lo(D_801C4678)
/* 9D628 800ACE28 00404426 */  addiu      $a0, $s2, 0x4000
.L800ACE2C:
/* 9D62C 800ACE2C 5846C58C */  lw         $a1, 0x4658($a2)
/* 9D630 800ACE30 00000000 */  nop
/* 9D634 800ACE34 2110B000 */  addu       $v0, $a1, $s0
/* 9D638 800ACE38 21384400 */  addu       $a3, $v0, $a0
/* 9D63C 800ACE3C 0000E390 */  lbu        $v1, ($a3)
/* 9D640 800ACE40 00000000 */  nop
/* 9D644 800ACE44 01006230 */  andi       $v0, $v1, 1
/* 9D648 800ACE48 37004014 */  bnez       $v0, .L800ACF28
/* 9D64C 800ACE4C 0100A224 */   addiu     $v0, $a1, 1
/* 9D650 800ACE50 584622AE */  sw         $v0, 0x4658($s1)
/* 9D654 800ACE54 80004228 */  slti       $v0, $v0, 0x80
/* 9D658 800ACE58 F4FF4014 */  bnez       $v0, .L800ACE2C
/* 9D65C 800ACE5C 21100000 */   addu      $v0, $zero, $zero
/* 9D660 800ACE60 DCB30208 */  j          .L800ACF70
/* 9D664 800ACE64 00000000 */   nop
.L800ACE68:
/* 9D668 800ACE68 03002312 */  beq        $s1, $v1, .L800ACE78
/* 9D66C 800ACE6C 03000224 */   addiu     $v0, $zero, 3
/* 9D670 800ACE70 3F002216 */  bne        $s1, $v0, .L800ACF70
/* 9D674 800ACE74 FFFF0224 */   addiu     $v0, $zero, -1
.L800ACE78:
/* 9D678 800ACE78 FCFF028E */  lw         $v0, -4($s0)
/* 9D67C 800ACE7C 00000000 */  nop
/* 9D680 800ACE80 80004228 */  slti       $v0, $v0, 0x80
/* 9D684 800ACE84 04004014 */  bnez       $v0, .L800ACE98
/* 9D688 800ACE88 1C80113C */   lui       $s1, 0x801c
.L800ACE8C:
/* 9D68C 800ACE8C FCFF00AE */  sw         $zero, -4($s0)
/* 9D690 800ACE90 DCB30208 */  j          .L800ACF70
/* 9D694 800ACE94 01000224 */   addiu     $v0, $zero, 1
.L800ACE98:
/* 9D698 800ACE98 C0111200 */  sll        $v0, $s2, 7
/* 9D69C 800ACE9C 21302002 */  addu       $a2, $s1, $zero
/* 9D6A0 800ACEA0 FCFF1326 */  addiu      $s3, $s0, -4
/* 9D6A4 800ACEA4 21105200 */  addu       $v0, $v0, $s2
/* 9D6A8 800ACEA8 C0810200 */  sll        $s0, $v0, 7
/* 9D6AC 800ACEAC 1C80033C */  lui        $v1, %hi(D_801C4678)
/* 9D6B0 800ACEB0 78467224 */  addiu      $s2, $v1, %lo(D_801C4678)
/* 9D6B4 800ACEB4 00404426 */  addiu      $a0, $s2, 0x4000
.L800ACEB8:
/* 9D6B8 800ACEB8 5846C58C */  lw         $a1, 0x4658($a2)
/* 9D6BC 800ACEBC 00000000 */  nop
/* 9D6C0 800ACEC0 2110B000 */  addu       $v0, $a1, $s0
/* 9D6C4 800ACEC4 21104400 */  addu       $v0, $v0, $a0
/* 9D6C8 800ACEC8 00004390 */  lbu        $v1, ($v0)
/* 9D6CC 800ACECC 00000000 */  nop
/* 9D6D0 800ACED0 02006330 */  andi       $v1, $v1, 2
/* 9D6D4 800ACED4 07006014 */  bnez       $v1, .L800ACEF4
/* 9D6D8 800ACED8 0100A224 */   addiu     $v0, $a1, 1
/* 9D6DC 800ACEDC 584622AE */  sw         $v0, 0x4658($s1)
/* 9D6E0 800ACEE0 80004228 */  slti       $v0, $v0, 0x80
/* 9D6E4 800ACEE4 F4FF4014 */  bnez       $v0, .L800ACEB8
/* 9D6E8 800ACEE8 21100000 */   addu      $v0, $zero, $zero
/* 9D6EC 800ACEEC DCB30208 */  j          .L800ACF70
/* 9D6F0 800ACEF0 00000000 */   nop
.L800ACEF4:
/* 9D6F4 800ACEF4 C0290500 */  sll        $a1, $a1, 7
/* 9D6F8 800ACEF8 0400648E */  lw         $a0, 4($s3)
/* 9D6FC 800ACEFC F118030C */  jal        FUN_800c63c4
/* 9D700 800ACF00 21300000 */   addu      $a2, $zero, $zero
/* 9D704 800ACF04 80000624 */  addiu      $a2, $zero, 0x80
/* 9D708 800ACF08 5846258E */  lw         $a1, 0x4658($s1)
/* 9D70C 800ACF0C 0400648E */  lw         $a0, 4($s3)
/* 9D710 800ACF10 C0290500 */  sll        $a1, $a1, 7
/* 9D714 800ACF14 2128B200 */  addu       $a1, $a1, $s2
/* 9D718 800ACF18 BA18030C */  jal        FUN_800c62e8
/* 9D71C 800ACF1C 21280502 */   addu      $a1, $s0, $a1
/* 9D720 800ACF20 D7B30208 */  j          .L800ACF5C
/* 9D724 800ACF24 00000000 */   nop
.L800ACF28:
/* 9D728 800ACF28 C0290500 */  sll        $a1, $a1, 7
/* 9D72C 800ACF2C 21300000 */  addu       $a2, $zero, $zero
/* 9D730 800ACF30 0400648E */  lw         $a0, 4($s3)
/* 9D734 800ACF34 FE006230 */  andi       $v0, $v1, 0xfe
/* 9D738 800ACF38 F118030C */  jal        FUN_800c63c4
/* 9D73C 800ACF3C 0000E2A0 */   sb        $v0, ($a3)
/* 9D740 800ACF40 80000624 */  addiu      $a2, $zero, 0x80
/* 9D744 800ACF44 5846258E */  lw         $a1, 0x4658($s1)
/* 9D748 800ACF48 0400648E */  lw         $a0, 4($s3)
/* 9D74C 800ACF4C C0290500 */  sll        $a1, $a1, 7
/* 9D750 800ACF50 2128B200 */  addu       $a1, $a1, $s2
/* 9D754 800ACF54 8318030C */  jal        FUN_800c620c
/* 9D758 800ACF58 21280502 */   addu      $a1, $s0, $a1
.L800ACF5C:
/* 9D75C 800ACF5C 5846238E */  lw         $v1, 0x4658($s1)
/* 9D760 800ACF60 00000000 */  nop
/* 9D764 800ACF64 01006324 */  addiu      $v1, $v1, 1
/* 9D768 800ACF68 584623AE */  sw         $v1, 0x4658($s1)
/* 9D76C 800ACF6C 21100000 */  addu       $v0, $zero, $zero
.L800ACF70:
/* 9D770 800ACF70 2000BF8F */  lw         $ra, 0x20($sp)
/* 9D774 800ACF74 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9D778 800ACF78 1800B28F */  lw         $s2, 0x18($sp)
/* 9D77C 800ACF7C 1400B18F */  lw         $s1, 0x14($sp)
/* 9D780 800ACF80 1000B08F */  lw         $s0, 0x10($sp)
/* 9D784 800ACF84 0800E003 */  jr         $ra
/* 9D788 800ACF88 2800BD27 */   addiu     $sp, $sp, 0x28

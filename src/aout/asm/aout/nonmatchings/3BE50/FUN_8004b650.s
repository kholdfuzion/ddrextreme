.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004b650
/* 3BE50 8004B650 1780023C */  lui        $v0, %hi(D_8016F9C0)
/* 3BE54 8004B654 C0F94224 */  addiu      $v0, $v0, %lo(D_8016F9C0)
/* 3BE58 8004B658 80580400 */  sll        $t3, $a0, 2
/* 3BE5C 8004B65C 21486201 */  addu       $t1, $t3, $v0
/* 3BE60 8004B660 2168A000 */  addu       $t5, $a1, $zero
/* 3BE64 8004B664 FF00E730 */  andi       $a3, $a3, 0xff
/* 3BE68 8004B668 40100400 */  sll        $v0, $a0, 1
/* 3BE6C 8004B66C 21104400 */  addu       $v0, $v0, $a0
/* 3BE70 8004B670 C0100200 */  sll        $v0, $v0, 3
/* 3BE74 8004B674 21104400 */  addu       $v0, $v0, $a0
/* 3BE78 8004B678 C0200200 */  sll        $a0, $v0, 3
/* 3BE7C 8004B67C 1780033C */  lui        $v1, %hi(D_8016F8F8)
/* 3BE80 8004B680 F8F86324 */  addiu      $v1, $v1, %lo(D_8016F8F8)
/* 3BE84 8004B684 0000288D */  lw         $t0, ($t1)
/* 3BE88 8004B688 21108300 */  addu       $v0, $a0, $v1
/* 3BE8C 8004B68C 14000825 */  addiu      $t0, $t0, 0x14
/* 3BE90 8004B690 04000215 */  bne        $t0, $v0, .L8004B6A4
/* 3BE94 8004B694 000028AD */   sw        $t0, ($t1)
/* 3BE98 8004B698 38FF6224 */  addiu      $v0, $v1, -0xc8
/* 3BE9C 8004B69C 21108200 */  addu       $v0, $a0, $v0
/* 3BEA0 8004B6A0 000022AD */  sw         $v0, ($t1)
.L8004B6A4:
/* 3BEA4 8004B6A4 21500000 */  addu       $t2, $zero, $zero
/* 3BEA8 8004B6A8 21606001 */  addu       $t4, $t3, $zero
/* 3BEAC 8004B6AC 0F80033C */  lui        $v1, 0x800f
/* 3BEB0 8004B6B0 0000228D */  lw         $v0, ($t1)
/* 3BEB4 8004B6B4 21402001 */  addu       $t0, $t1, $zero
/* 3BEB8 8004B6B8 000046AC */  sw         $a2, ($v0)
/* 3BEBC 8004B6BC FF00C630 */  andi       $a2, $a2, 0xff
/* 3BEC0 8004B6C0 0000228D */  lw         $v0, ($t1)
/* 3BEC4 8004B6C4 2158C000 */  addu       $t3, $a2, $zero
/* 3BEC8 8004B6C8 110040A0 */  sb         $zero, 0x11($v0)
/* 3BECC 8004B6CC 0000248D */  lw         $a0, ($t1)
/* 3BED0 8004B6D0 1C00628C */  lw         $v0, 0x1c($v1)
/* 3BED4 8004B6D4 0E80033C */  lui        $v1, %hi(D_800DAF84)
/* 3BED8 8004B6D8 040082AC */  sw         $v0, 4($a0)
/* 3BEDC 8004B6DC 0000228D */  lw         $v0, ($t1)
/* 3BEE0 8004B6E0 84AF6524 */  addiu      $a1, $v1, %lo(D_800DAF84)
/* 3BEE4 8004B6E4 100047A0 */  sb         $a3, 0x10($v0)
.L8004B6E8:
/* 3BEE8 8004B6E8 0000A290 */  lbu        $v0, ($a1)
/* 3BEEC 8004B6EC 00000000 */  nop
/* 3BEF0 8004B6F0 05006215 */  bne        $t3, $v0, .L8004B708
/* 3BEF4 8004B6F4 00000000 */   nop
/* 3BEF8 8004B6F8 0000038D */  lw         $v1, ($t0)
/* 3BEFC 8004B6FC 0100A290 */  lbu        $v0, 1($a1)
/* 3BF00 8004B700 00000000 */  nop
/* 3BF04 8004B704 110062A0 */  sb         $v0, 0x11($v1)
.L8004B708:
/* 3BF08 8004B708 01004A25 */  addiu      $t2, $t2, 1
/* 3BF0C 8004B70C 0600422D */  sltiu      $v0, $t2, 6
/* 3BF10 8004B710 F5FF4014 */  bnez       $v0, .L8004B6E8
/* 3BF14 8004B714 0200A524 */   addiu     $a1, $a1, 2
/* 3BF18 8004B718 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3BF1C 8004B71C 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 3BF20 8004B720 88004490 */  lbu        $a0, 0x88($v0)
/* 3BF24 8004B724 05000324 */  addiu      $v1, $zero, 5
/* 3BF28 8004B728 2C008314 */  bne        $a0, $v1, .L8004B7DC
/* 3BF2C 8004B72C 21500000 */   addu      $t2, $zero, $zero
/* 3BF30 8004B730 04000224 */  addiu      $v0, $zero, 4
/* 3BF34 8004B734 2A00C214 */  bne        $a2, $v0, .L8004B7E0
/* 3BF38 8004B738 1780023C */   lui       $v0, %hi(D_8016F9C0)
/* 3BF3C 8004B73C 21500000 */  addu       $t2, $zero, $zero
/* 3BF40 8004B740 C0F94224 */  addiu      $v0, $v0, %lo(D_8016F9C0)
/* 3BF44 8004B744 21488201 */  addu       $t1, $t4, $v0
/* 3BF48 8004B748 1280063C */  lui        $a2, %hi(D_8011864A)
/* 3BF4C 8004B74C 4A86C624 */  addiu      $a2, $a2, %lo(D_8011864A)
/* 3BF50 8004B750 0400A385 */  lh         $v1, 4($t5)
/* 3BF54 8004B754 0C00A485 */  lh         $a0, 0xc($t5)
/* 3BF58 8004B758 40280300 */  sll        $a1, $v1, 1
/* 3BF5C 8004B75C 2128A300 */  addu       $a1, $a1, $v1
/* 3BF60 8004B760 C0280500 */  sll        $a1, $a1, 3
/* 3BF64 8004B764 1080033C */  lui        $v1, %hi(D_80104550)
/* 3BF68 8004B768 50456324 */  addiu      $v1, $v1, %lo(D_80104550)
/* 3BF6C 8004B76C 80100400 */  sll        $v0, $a0, 2
/* 3BF70 8004B770 21104400 */  addu       $v0, $v0, $a0
/* 3BF74 8004B774 C0100200 */  sll        $v0, $v0, 3
/* 3BF78 8004B778 21104300 */  addu       $v0, $v0, $v1
/* 3BF7C 8004B77C 04004484 */  lh         $a0, 4($v0)
/* 3BF80 8004B780 2140A600 */  addu       $t0, $a1, $a2
/* 3BF84 8004B784 40100400 */  sll        $v0, $a0, 1
/* 3BF88 8004B788 21104400 */  addu       $v0, $v0, $a0
/* 3BF8C 8004B78C C0100200 */  sll        $v0, $v0, 3
/* 3BF90 8004B790 21284600 */  addu       $a1, $v0, $a2
.L8004B794:
/* 3BF94 8004B794 21380000 */  addu       $a3, $zero, $zero
/* 3BF98 8004B798 21180A01 */  addu       $v1, $t0, $t2
/* 3BF9C 8004B79C 0000228D */  lw         $v0, ($t1)
/* 3BFA0 8004B7A0 00006490 */  lbu        $a0, ($v1)
/* 3BFA4 8004B7A4 08004224 */  addiu      $v0, $v0, 8
/* 3BFA8 8004B7A8 06008010 */  beqz       $a0, .L8004B7C4
/* 3BFAC 8004B7AC 21304A00 */   addu      $a2, $v0, $t2
/* 3BFB0 8004B7B0 2118AA00 */  addu       $v1, $a1, $t2
/* 3BFB4 8004B7B4 00006290 */  lbu        $v0, ($v1)
/* 3BFB8 8004B7B8 00000000 */  nop
/* 3BFBC 8004B7BC 2B100200 */  sltu       $v0, $zero, $v0
/* 3BFC0 8004B7C0 21384000 */  addu       $a3, $v0, $zero
.L8004B7C4:
/* 3BFC4 8004B7C4 01004A25 */  addiu      $t2, $t2, 1
/* 3BFC8 8004B7C8 08004229 */  slti       $v0, $t2, 8
/* 3BFCC 8004B7CC F1FF4014 */  bnez       $v0, .L8004B794
/* 3BFD0 8004B7D0 0000C7A0 */   sb        $a3, ($a2)
/* 3BFD4 8004B7D4 0800E003 */  jr         $ra
/* 3BFD8 8004B7D8 00000000 */   nop
.L8004B7DC:
/* 3BFDC 8004B7DC 1780023C */  lui        $v0, %hi(D_8016F9C0)
.L8004B7E0:
/* 3BFE0 8004B7E0 C0F94224 */  addiu      $v0, $v0, %lo(D_8016F9C0)
/* 3BFE4 8004B7E4 21288201 */  addu       $a1, $t4, $v0
/* 3BFE8 8004B7E8 1280033C */  lui        $v1, %hi(D_8011864A)
/* 3BFEC 8004B7EC 4A866624 */  addiu      $a2, $v1, %lo(D_8011864A)
.L8004B7F0:
/* 3BFF0 8004B7F0 0000A48C */  lw         $a0, ($a1)
/* 3BFF4 8004B7F4 0400A385 */  lh         $v1, 4($t5)
/* 3BFF8 8004B7F8 21208A00 */  addu       $a0, $a0, $t2
/* 3BFFC 8004B7FC 40100300 */  sll        $v0, $v1, 1
/* 3C000 8004B800 21104300 */  addu       $v0, $v0, $v1
/* 3C004 8004B804 C0100200 */  sll        $v0, $v0, 3
/* 3C008 8004B808 21104600 */  addu       $v0, $v0, $a2
/* 3C00C 8004B80C 21104A00 */  addu       $v0, $v0, $t2
/* 3C010 8004B810 01004A25 */  addiu      $t2, $t2, 1
/* 3C014 8004B814 00004390 */  lbu        $v1, ($v0)
/* 3C018 8004B818 08004229 */  slti       $v0, $t2, 8
/* 3C01C 8004B81C F4FF4014 */  bnez       $v0, .L8004B7F0
/* 3C020 8004B820 080083A0 */   sb        $v1, 8($a0)
/* 3C024 8004B824 0800E003 */  jr         $ra
/* 3C028 8004B828 00000000 */   nop

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007bd60
/* 6C560 8007BD60 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 6C564 8007BD64 4C00B5AF */  sw         $s5, 0x4c($sp)
/* 6C568 8007BD68 21A80000 */  addu       $s5, $zero, $zero
/* 6C56C 8007BD6C 0F800C3C */  lui        $t4, 0x800f
/* 6C570 8007BD70 FEFF0924 */  addiu      $t1, $zero, -2
/* 6C574 8007BD74 4800B4AF */  sw         $s4, 0x48($sp)
/* 6C578 8007BD78 21A00000 */  addu       $s4, $zero, $zero
/* 6C57C 8007BD7C 5C00BFAF */  sw         $ra, 0x5c($sp)
/* 6C580 8007BD80 5800BEAF */  sw         $fp, 0x58($sp)
/* 6C584 8007BD84 5400B7AF */  sw         $s7, 0x54($sp)
/* 6C588 8007BD88 5000B6AF */  sw         $s6, 0x50($sp)
/* 6C58C 8007BD8C 4400B3AF */  sw         $s3, 0x44($sp)
/* 6C590 8007BD90 4000B2AF */  sw         $s2, 0x40($sp)
/* 6C594 8007BD94 3C00B1AF */  sw         $s1, 0x3c($sp)
/* 6C598 8007BD98 3800B0AF */  sw         $s0, 0x38($sp)
/* 6C59C 8007BD9C 0F80033C */  lui        $v1, %hi(D_800F02D4)
.L8007BDA0:
/* 6C5A0 8007BDA0 D4026224 */  addiu      $v0, $v1, %lo(D_800F02D4)
/* 6C5A4 8007BDA4 21808202 */  addu       $s0, $s4, $v0
/* 6C5A8 8007BDA8 04000386 */  lh         $v1, 4($s0)
/* 6C5AC 8007BDAC 04000496 */  lhu        $a0, 4($s0)
/* 6C5B0 8007BDB0 95006910 */  beq        $v1, $t1, .L8007C008
/* 6C5B4 8007BDB4 21280000 */   addu      $a1, $zero, $zero
/* 6C5B8 8007BDB8 12800A3C */  lui        $t2, %hi(D_8011864A)
/* 6C5BC 8007BDBC 4A864B25 */  addiu      $t3, $t2, %lo(D_8011864A)
.L8007BDC0:
/* 6C5C0 8007BDC0 0C0005A6 */  sh         $a1, 0xc($s0)
/* 6C5C4 8007BDC4 00140400 */  sll        $v0, $a0, 0x10
/* 6C5C8 8007BDC8 031C0200 */  sra        $v1, $v0, 0x10
/* 6C5CC 8007BDCC 0100BE24 */  addiu      $fp, $a1, 1
/* 6C5D0 8007BDD0 88006004 */  bltz       $v1, .L8007BFF4
/* 6C5D4 8007BDD4 28001726 */   addiu     $s7, $s0, 0x28
/* 6C5D8 8007BDD8 21200000 */  addu       $a0, $zero, $zero
/* 6C5DC 8007BDDC 21300000 */  addu       $a2, $zero, $zero
/* 6C5E0 8007BDE0 21900000 */  addu       $s2, $zero, $zero
/* 6C5E4 8007BDE4 01000724 */  addiu      $a3, $zero, 1
/* 6C5E8 8007BDE8 40100300 */  sll        $v0, $v1, 1
/* 6C5EC 8007BDEC 21104300 */  addu       $v0, $v0, $v1
/* 6C5F0 8007BDF0 C0100200 */  sll        $v0, $v0, 3
/* 6C5F4 8007BDF4 21984B00 */  addu       $s3, $v0, $t3
/* 6C5F8 8007BDF8 08006526 */  addiu      $a1, $s3, 8
.L8007BDFC:
/* 6C5FC 8007BDFC 21107202 */  addu       $v0, $s3, $s2
/* 6C600 8007BE00 00004390 */  lbu        $v1, ($v0)
/* 6C604 8007BE04 00000000 */  nop
/* 6C608 8007BE08 08006714 */  bne        $v1, $a3, .L8007BE2C
/* 6C60C 8007BE0C 00000000 */   nop
/* 6C610 8007BE10 0000A394 */  lhu        $v1, ($a1)
/* 6C614 8007BE14 00000000 */  nop
/* 6C618 8007BE18 2A10C300 */  slt        $v0, $a2, $v1
/* 6C61C 8007BE1C 02004010 */  beqz       $v0, .L8007BE28
/* 6C620 8007BE20 00000000 */   nop
/* 6C624 8007BE24 21306000 */  addu       $a2, $v1, $zero
.L8007BE28:
/* 6C628 8007BE28 01008424 */  addiu      $a0, $a0, 1
.L8007BE2C:
/* 6C62C 8007BE2C 01005226 */  addiu      $s2, $s2, 1
/* 6C630 8007BE30 0800422A */  slti       $v0, $s2, 8
/* 6C634 8007BE34 F1FF4014 */  bnez       $v0, .L8007BDFC
/* 6C638 8007BE38 0200A524 */   addiu     $a1, $a1, 2
/* 6C63C 8007BE3C 007D0224 */  addiu      $v0, $zero, 0x7d00
/* 6C640 8007BE40 06008014 */  bnez       $a0, .L8007BE5C
/* 6C644 8007BE44 0A0002A6 */   sh        $v0, 0xa($s0)
/* 6C648 8007BE48 FDFF0224 */  addiu      $v0, $zero, -3
/* 6C64C 8007BE4C FDEF0108 */  j          .L8007BFF4
/* 6C650 8007BE50 040002A6 */   sh        $v0, 4($s0)
.L8007BE54:
/* 6C654 8007BE54 FDEF0108 */  j          .L8007BFF4
/* 6C658 8007BE58 040011A6 */   sh        $s1, 4($s0)
.L8007BE5C:
/* 6C65C 8007BE5C 28008525 */  addiu      $a1, $t4, 0x28
/* 6C660 8007BE60 9802A224 */  addiu      $v0, $a1, 0x298
/* 6C664 8007BE64 21108202 */  addu       $v0, $s4, $v0
/* 6C668 8007BE68 0000438C */  lw         $v1, ($v0)
/* 6C66C 8007BE6C 02008428 */  slti       $a0, $a0, 2
/* 6C670 8007BE70 01006324 */  addiu      $v1, $v1, 1
/* 6C674 8007BE74 07008014 */  bnez       $a0, .L8007BE94
/* 6C678 8007BE78 000043AC */   sw        $v1, ($v0)
/* 6C67C 8007BE7C 9C02A324 */  addiu      $v1, $a1, 0x29c
/* 6C680 8007BE80 21188302 */  addu       $v1, $s4, $v1
/* 6C684 8007BE84 0000628C */  lw         $v0, ($v1)
/* 6C688 8007BE88 00000000 */  nop
/* 6C68C 8007BE8C 01004224 */  addiu      $v0, $v0, 1
/* 6C690 8007BE90 000062AC */  sw         $v0, ($v1)
.L8007BE94:
/* 6C694 8007BE94 0600C018 */  blez       $a2, .L8007BEB0
/* 6C698 8007BE98 A002A324 */   addiu     $v1, $a1, 0x2a0
/* 6C69C 8007BE9C 21188302 */  addu       $v1, $s4, $v1
/* 6C6A0 8007BEA0 0000628C */  lw         $v0, ($v1)
/* 6C6A4 8007BEA4 00000000 */  nop
/* 6C6A8 8007BEA8 01004224 */  addiu      $v0, $v0, 1
/* 6C6AC 8007BEAC 000062AC */  sw         $v0, ($v1)
.L8007BEB0:
/* 6C6B0 8007BEB0 21188502 */  addu       $v1, $s4, $a1
/* 6C6B4 8007BEB4 9000628C */  lw         $v0, 0x90($v1)
/* 6C6B8 8007BEB8 00000000 */  nop
/* 6C6BC 8007BEBC 82130200 */  srl        $v0, $v0, 0xe
/* 6C6C0 8007BEC0 01004230 */  andi       $v0, $v0, 1
/* 6C6C4 8007BEC4 4B004014 */  bnez       $v0, .L8007BFF4
/* 6C6C8 8007BEC8 00000000 */   nop
/* 6C6CC 8007BECC 21900000 */  addu       $s2, $zero, $zero
/* 6C6D0 8007BED0 4A865625 */  addiu      $s6, $t2, -0x79b6
/* 6C6D4 8007BED4 21107202 */  addu       $v0, $s3, $s2
.L8007BED8:
/* 6C6D8 8007BED8 00004490 */  lbu        $a0, ($v0)
/* 6C6DC 8007BEDC 01000324 */  addiu      $v1, $zero, 1
/* 6C6E0 8007BEE0 40008314 */  bne        $a0, $v1, .L8007BFE4
/* 6C6E4 8007BEE4 1E000426 */   addiu     $a0, $s0, 0x1e
/* 6C6E8 8007BEE8 21109200 */  addu       $v0, $a0, $s2
/* 6C6EC 8007BEEC 00004390 */  lbu        $v1, ($v0)
/* 6C6F0 8007BEF0 00000000 */  nop
/* 6C6F4 8007BEF4 3B006014 */  bnez       $v1, .L8007BFE4
/* 6C6F8 8007BEF8 21300000 */   addu      $a2, $zero, $zero
/* 6C6FC 8007BEFC 21388000 */  addu       $a3, $a0, $zero
/* 6C700 8007BF00 FF000824 */  addiu      $t0, $zero, 0xff
/* 6C704 8007BF04 0E000526 */  addiu      $a1, $s0, 0xe
/* 6C708 8007BF08 04001186 */  lh         $s1, 4($s0)
/* 6C70C 8007BF0C 1800A427 */  addiu      $a0, $sp, 0x18
/* 6C710 8007BF10 40101100 */  sll        $v0, $s1, 1
/* 6C714 8007BF14 21105100 */  addu       $v0, $v0, $s1
/* 6C718 8007BF18 C0100200 */  sll        $v0, $v0, 3
/* 6C71C 8007BF1C 21105600 */  addu       $v0, $v0, $s6
/* 6C720 8007BF20 03004D88 */  lwl        $t5, 3($v0)
/* 6C724 8007BF24 00004D98 */  lwr        $t5, ($v0)
/* 6C728 8007BF28 07004E88 */  lwl        $t6, 7($v0)
/* 6C72C 8007BF2C 04004E98 */  lwr        $t6, 4($v0)
/* 6C730 8007BF30 0B004F88 */  lwl        $t7, 0xb($v0)
/* 6C734 8007BF34 08004F98 */  lwr        $t7, 8($v0)
/* 6C738 8007BF38 0F004388 */  lwl        $v1, 0xf($v0)
/* 6C73C 8007BF3C 0C004398 */  lwr        $v1, 0xc($v0)
/* 6C740 8007BF40 1300ADAB */  swl        $t5, 0x13($sp)
/* 6C744 8007BF44 1000ADBB */  swr        $t5, 0x10($sp)
/* 6C748 8007BF48 1700AEAB */  swl        $t6, 0x17($sp)
/* 6C74C 8007BF4C 1400AEBB */  swr        $t6, 0x14($sp)
/* 6C750 8007BF50 1B00AFAB */  swl        $t7, 0x1b($sp)
/* 6C754 8007BF54 1800AFBB */  swr        $t7, 0x18($sp)
/* 6C758 8007BF58 1F00A3AB */  swl        $v1, 0x1f($sp)
/* 6C75C 8007BF5C 1C00A3BB */  swr        $v1, 0x1c($sp)
/* 6C760 8007BF60 13004D88 */  lwl        $t5, 0x13($v0)
/* 6C764 8007BF64 10004D98 */  lwr        $t5, 0x10($v0)
/* 6C768 8007BF68 17004E88 */  lwl        $t6, 0x17($v0)
/* 6C76C 8007BF6C 14004E98 */  lwr        $t6, 0x14($v0)
/* 6C770 8007BF70 2300ADAB */  swl        $t5, 0x23($sp)
/* 6C774 8007BF74 2000ADBB */  swr        $t5, 0x20($sp)
/* 6C778 8007BF78 2700AEAB */  swl        $t6, 0x27($sp)
/* 6C77C 8007BF7C 2400AEBB */  swr        $t6, 0x24($sp)
.L8007BF80:
/* 6C780 8007BF80 000080A4 */  sh         $zero, ($a0)
/* 6C784 8007BF84 0000A0A4 */  sh         $zero, ($a1)
/* 6C788 8007BF88 0200A524 */  addiu      $a1, $a1, 2
/* 6C78C 8007BF8C 02008424 */  addiu      $a0, $a0, 2
/* 6C790 8007BF90 2118E600 */  addu       $v1, $a3, $a2
/* 6C794 8007BF94 0100C624 */  addiu      $a2, $a2, 1
/* 6C798 8007BF98 0800C228 */  slti       $v0, $a2, 8
/* 6C79C 8007BF9C F8FF4014 */  bnez       $v0, .L8007BF80
/* 6C7A0 8007BFA0 000068A0 */   sb        $t0, ($v1)
/* 6C7A4 8007BFA4 1000A427 */  addiu      $a0, $sp, 0x10
/* 6C7A8 8007BFA8 2800A9AF */  sw         $t1, 0x28($sp)
/* 6C7AC 8007BFAC 2C00AAAF */  sw         $t2, 0x2c($sp)
/* 6C7B0 8007BFB0 3000ABAF */  sw         $t3, 0x30($sp)
/* 6C7B4 8007BFB4 6DF0010C */  jal        FUN_8007c1b4
/* 6C7B8 8007BFB8 3400ACAF */   sw        $t4, 0x34($sp)
/* 6C7BC 8007BFBC 040002A6 */  sh         $v0, 4($s0)
/* 6C7C0 8007BFC0 00140200 */  sll        $v0, $v0, 0x10
/* 6C7C4 8007BFC4 03140200 */  sra        $v0, $v0, 0x10
/* 6C7C8 8007BFC8 FDFF0324 */  addiu      $v1, $zero, -3
/* 6C7CC 8007BFCC 2800A98F */  lw         $t1, 0x28($sp)
/* 6C7D0 8007BFD0 2C00AA8F */  lw         $t2, 0x2c($sp)
/* 6C7D4 8007BFD4 3000AB8F */  lw         $t3, 0x30($sp)
/* 6C7D8 8007BFD8 3400AC8F */  lw         $t4, 0x34($sp)
/* 6C7DC 8007BFDC 9DFF4310 */  beq        $v0, $v1, .L8007BE54
/* 6C7E0 8007BFE0 00000000 */   nop
.L8007BFE4:
/* 6C7E4 8007BFE4 01005226 */  addiu      $s2, $s2, 1
/* 6C7E8 8007BFE8 0800422A */  slti       $v0, $s2, 8
/* 6C7EC 8007BFEC BAFF4014 */  bnez       $v0, .L8007BED8
/* 6C7F0 8007BFF0 21107202 */   addu      $v0, $s3, $s2
.L8007BFF4:
/* 6C7F4 8007BFF4 2180E002 */  addu       $s0, $s7, $zero
/* 6C7F8 8007BFF8 0400E286 */  lh         $v0, 4($s7)
/* 6C7FC 8007BFFC 04000496 */  lhu        $a0, 4($s0)
/* 6C800 8007C000 6FFF4914 */  bne        $v0, $t1, .L8007BDC0
/* 6C804 8007C004 2128C003 */   addu      $a1, $fp, $zero
.L8007C008:
/* 6C808 8007C008 28008425 */  addiu      $a0, $t4, 0x28
/* 6C80C 8007C00C 21188402 */  addu       $v1, $s4, $a0
/* 6C810 8007C010 9000628C */  lw         $v0, 0x90($v1)
/* 6C814 8007C014 00000000 */  nop
/* 6C818 8007C018 82100200 */  srl        $v0, $v0, 2
/* 6C81C 8007C01C 01004230 */  andi       $v0, $v0, 1
/* 6C820 8007C020 16004010 */  beqz       $v0, .L8007C07C
/* 6C824 8007C024 AC028224 */   addiu     $v0, $a0, 0x2ac
/* 6C828 8007C028 21808202 */  addu       $s0, $s4, $v0
/* 6C82C 8007C02C 04000386 */  lh         $v1, 4($s0)
/* 6C830 8007C030 04000496 */  lhu        $a0, 4($s0)
/* 6C834 8007C034 11006910 */  beq        $v1, $t1, .L8007C07C
/* 6C838 8007C038 FEFF0324 */   addiu     $v1, $zero, -2
/* 6C83C 8007C03C FCFF0524 */  addiu      $a1, $zero, -4
/* 6C840 8007C040 00140400 */  sll        $v0, $a0, 0x10
.L8007C044:
/* 6C844 8007C044 08004004 */  bltz       $v0, .L8007C068
/* 6C848 8007C048 00000000 */   nop
/* 6C84C 8007C04C 0000028E */  lw         $v0, ($s0)
/* 6C850 8007C050 00000000 */  nop
/* 6C854 8007C054 FF034230 */  andi       $v0, $v0, 0x3ff
/* 6C858 8007C058 80004228 */  slti       $v0, $v0, 0x80
/* 6C85C 8007C05C 02004014 */  bnez       $v0, .L8007C068
/* 6C860 8007C060 00000000 */   nop
/* 6C864 8007C064 040005A6 */  sh         $a1, 4($s0)
.L8007C068:
/* 6C868 8007C068 28001026 */  addiu      $s0, $s0, 0x28
/* 6C86C 8007C06C 04000286 */  lh         $v0, 4($s0)
/* 6C870 8007C070 04000496 */  lhu        $a0, 4($s0)
/* 6C874 8007C074 F3FF4314 */  bne        $v0, $v1, .L8007C044
/* 6C878 8007C078 00140400 */   sll       $v0, $a0, 0x10
.L8007C07C:
/* 6C87C 8007C07C 0100023C */  lui        $v0, 1
/* 6C880 8007C080 7C424234 */  ori        $v0, $v0, 0x427c
/* 6C884 8007C084 21A08202 */  addu       $s4, $s4, $v0
/* 6C888 8007C088 0100B526 */  addiu      $s5, $s5, 1
/* 6C88C 8007C08C 0200A22A */  slti       $v0, $s5, 2
/* 6C890 8007C090 43FF4014 */  bnez       $v0, .L8007BDA0
/* 6C894 8007C094 0F80033C */   lui       $v1, 0x800f
/* 6C898 8007C098 21A80000 */  addu       $s5, $zero, $zero
/* 6C89C 8007C09C 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 6C8A0 8007C0A0 D4024C24 */  addiu      $t4, $v0, %lo(D_800F02D4)
/* 6C8A4 8007C0A4 01000D24 */  addiu      $t5, $zero, 1
/* 6C8A8 8007C0A8 FEFF0B24 */  addiu      $t3, $zero, -2
/* 6C8AC 8007C0AC FFFF0A24 */  addiu      $t2, $zero, -1
.L8007C0B0:
/* 6C8B0 8007C0B0 21400000 */  addu       $t0, $zero, $zero
/* 6C8B4 8007C0B4 0100A926 */  addiu      $t1, $s5, 1
/* 6C8B8 8007C0B8 2320B501 */  subu       $a0, $t5, $s5
/* 6C8BC 8007C0BC 80100400 */  sll        $v0, $a0, 2
/* 6C8C0 8007C0C0 21104400 */  addu       $v0, $v0, $a0
/* 6C8C4 8007C0C4 C0190200 */  sll        $v1, $v0, 7
/* 6C8C8 8007C0C8 21104300 */  addu       $v0, $v0, $v1
/* 6C8CC 8007C0CC 40110200 */  sll        $v0, $v0, 5
/* 6C8D0 8007C0D0 23104400 */  subu       $v0, $v0, $a0
/* 6C8D4 8007C0D4 80100200 */  sll        $v0, $v0, 2
/* 6C8D8 8007C0D8 21384C00 */  addu       $a3, $v0, $t4
/* 6C8DC 8007C0DC 80181500 */  sll        $v1, $s5, 2
/* 6C8E0 8007C0E0 21187500 */  addu       $v1, $v1, $s5
/* 6C8E4 8007C0E4 C0110300 */  sll        $v0, $v1, 7
/* 6C8E8 8007C0E8 21186200 */  addu       $v1, $v1, $v0
/* 6C8EC 8007C0EC 40190300 */  sll        $v1, $v1, 5
/* 6C8F0 8007C0F0 23187500 */  subu       $v1, $v1, $s5
/* 6C8F4 8007C0F4 80180300 */  sll        $v1, $v1, 2
/* 6C8F8 8007C0F8 21186C00 */  addu       $v1, $v1, $t4
.L8007C0FC:
/* 6C8FC 8007C0FC 04006284 */  lh         $v0, 4($v1)
/* 6C900 8007C100 00000000 */  nop
/* 6C904 8007C104 11004004 */  bltz       $v0, .L8007C14C
/* 6C908 8007C108 21306000 */   addu      $a2, $v1, $zero
/* 6C90C 8007C10C 0400E284 */  lh         $v0, 4($a3)
/* 6C910 8007C110 00000000 */  nop
/* 6C914 8007C114 0D004B10 */  beq        $v0, $t3, .L8007C14C
/* 6C918 8007C118 00000000 */   nop
/* 6C91C 8007C11C 10004004 */  bltz       $v0, .L8007C160
/* 6C920 8007C120 00000000 */   nop
/* 6C924 8007C124 0000C58C */  lw         $a1, ($a2)
/* 6C928 8007C128 0000E48C */  lw         $a0, ($a3)
/* 6C92C 8007C12C 00000000 */  nop
/* 6C930 8007C130 0400A414 */  bne        $a1, $a0, .L8007C144
/* 6C934 8007C134 2A10A400 */   slt       $v0, $a1, $a0
/* 6C938 8007C138 0C00C8A4 */  sh         $t0, 0xc($a2)
/* 6C93C 8007C13C 5AF00108 */  j          .L8007C168
/* 6C940 8007C140 2800C324 */   addiu     $v1, $a2, 0x28
.L8007C144:
/* 6C944 8007C144 04004010 */  beqz       $v0, .L8007C158
/* 6C948 8007C148 2A108500 */   slt       $v0, $a0, $a1
.L8007C14C:
/* 6C94C 8007C14C 0C00CAA4 */  sh         $t2, 0xc($a2)
/* 6C950 8007C150 5AF00108 */  j          .L8007C168
/* 6C954 8007C154 2800C324 */   addiu     $v1, $a2, 0x28
.L8007C158:
/* 6C958 8007C158 03004010 */  beqz       $v0, .L8007C168
/* 6C95C 8007C15C 00000000 */   nop
.L8007C160:
/* 6C960 8007C160 2800E724 */  addiu      $a3, $a3, 0x28
/* 6C964 8007C164 01000825 */  addiu      $t0, $t0, 1
.L8007C168:
/* 6C968 8007C168 0400C284 */  lh         $v0, 4($a2)
/* 6C96C 8007C16C 00000000 */  nop
/* 6C970 8007C170 E2FF4B14 */  bne        $v0, $t3, .L8007C0FC
/* 6C974 8007C174 21A82001 */   addu      $s5, $t1, $zero
/* 6C978 8007C178 0200A22A */  slti       $v0, $s5, 2
/* 6C97C 8007C17C CCFF4014 */  bnez       $v0, .L8007C0B0
/* 6C980 8007C180 21100000 */   addu      $v0, $zero, $zero
/* 6C984 8007C184 5C00BF8F */  lw         $ra, 0x5c($sp)
/* 6C988 8007C188 5800BE8F */  lw         $fp, 0x58($sp)
/* 6C98C 8007C18C 5400B78F */  lw         $s7, 0x54($sp)
/* 6C990 8007C190 5000B68F */  lw         $s6, 0x50($sp)
/* 6C994 8007C194 4C00B58F */  lw         $s5, 0x4c($sp)
/* 6C998 8007C198 4800B48F */  lw         $s4, 0x48($sp)
/* 6C99C 8007C19C 4400B38F */  lw         $s3, 0x44($sp)
/* 6C9A0 8007C1A0 4000B28F */  lw         $s2, 0x40($sp)
/* 6C9A4 8007C1A4 3C00B18F */  lw         $s1, 0x3c($sp)
/* 6C9A8 8007C1A8 3800B08F */  lw         $s0, 0x38($sp)
/* 6C9AC 8007C1AC 0800E003 */  jr         $ra
/* 6C9B0 8007C1B0 6000BD27 */   addiu     $sp, $sp, 0x60

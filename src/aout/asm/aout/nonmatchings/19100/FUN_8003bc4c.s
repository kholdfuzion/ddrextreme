.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003bc4c
/* 2C44C 8003BC4C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 2C450 8003BC50 5C00B5AF */  sw         $s5, 0x5c($sp)
/* 2C454 8003BC54 21A8A000 */  addu       $s5, $a1, $zero
/* 2C458 8003BC58 0F000524 */  addiu      $a1, $zero, 0xf
/* 2C45C 8003BC5C 5800B4AF */  sw         $s4, 0x58($sp)
/* 2C460 8003BC60 1380143C */  lui        $s4, %hi(D_801280E0)
/* 2C464 8003BC64 E0809426 */  addiu      $s4, $s4, %lo(D_801280E0)
/* 2C468 8003BC68 5000B2AF */  sw         $s2, 0x50($sp)
/* 2C46C 8003BC6C 2190E000 */  addu       $s2, $a3, $zero
/* 2C470 8003BC70 5400B3AF */  sw         $s3, 0x54($sp)
/* 2C474 8003BC74 1380133C */  lui        $s3, %hi(D_801282E0)
/* 2C478 8003BC78 E0827326 */  addiu      $s3, $s3, %lo(D_801282E0)
/* 2C47C 8003BC7C 6C00BFAF */  sw         $ra, 0x6c($sp)
/* 2C480 8003BC80 6800BEAF */  sw         $fp, 0x68($sp)
/* 2C484 8003BC84 6400B7AF */  sw         $s7, 0x64($sp)
/* 2C488 8003BC88 6000B6AF */  sw         $s6, 0x60($sp)
/* 2C48C 8003BC8C 4C00B1AF */  sw         $s1, 0x4c($sp)
/* 2C490 8003BC90 4800B0AF */  sw         $s0, 0x48($sp)
/* 2C494 8003BC94 7000A4AF */  sw         $a0, 0x70($sp)
/* 2C498 8003BC98 7800A6AF */  sw         $a2, 0x78($sp)
/* 2C49C 8003BC9C 1F008292 */  lbu        $v0, 0x1f($s4)
/* 2C4A0 8003BCA0 8000B18F */  lw         $s1, 0x80($sp)
/* 2C4A4 8003BCA4 C0800200 */  sll        $s0, $v0, 3
/* 2C4A8 8003BCA8 23800202 */  subu       $s0, $s0, $v0
/* 2C4AC 8003BCAC 80801000 */  sll        $s0, $s0, 2
/* 2C4B0 8003BCB0 FA56010C */  jal        FUN_80055be8
/* 2C4B4 8003BCB4 21801302 */   addu      $s0, $s0, $s3
/* 2C4B8 8003BCB8 7000A48F */  lw         $a0, 0x70($sp)
/* 2C4BC 8003BCBC 376C010C */  jal        FUN_8005b0dc
/* 2C4C0 8003BCC0 2128A002 */   addu      $a1, $s5, $zero
/* 2C4C4 8003BCC4 08001686 */  lh         $s6, 8($s0)
/* 2C4C8 8003BCC8 00000000 */  nop
/* 2C4CC 8003BCCC 40181600 */  sll        $v1, $s6, 1
/* 2C4D0 8003BCD0 FFFF6324 */  addiu      $v1, $v1, -1
/* 2C4D4 8003BCD4 1A007600 */  div        $zero, $v1, $s6
/* 2C4D8 8003BCD8 23901200 */  negu       $s2, $s2
/* 2C4DC 8003BCDC 23881100 */  negu       $s1, $s1
/* 2C4E0 8003BCE0 0A001586 */  lh         $s5, 0xa($s0)
/* 2C4E4 8003BCE4 12180000 */  mflo       $v1
/* 2C4E8 8003BCE8 0200C016 */  bnez       $s6, .L8003BCF4
/* 2C4EC 8003BCEC 00000000 */   nop
/* 2C4F0 8003BCF0 CD010000 */  break      0, 7
.L8003BCF4:
/* 2C4F4 8003BCF4 40101500 */   sll       $v0, $s5, 1
/* 2C4F8 8003BCF8 FFFF4224 */  addiu      $v0, $v0, -1
/* 2C4FC 8003BCFC 1A005500 */  div        $zero, $v0, $s5
/* 2C500 8003BD00 12100000 */  mflo       $v0
/* 2C504 8003BD04 0200A016 */  bnez       $s5, .L8003BD10
/* 2C508 8003BD08 00000000 */   nop
/* 2C50C 8003BD0C CD010000 */  break      0, 7
.L8003BD10:
/* 2C510 8003BD10 1A00C302 */   div       $zero, $s6, $v1
/* 2C514 8003BD14 12B80000 */  mflo       $s7
/* 2C518 8003BD18 02006014 */  bnez       $v1, .L8003BD24
/* 2C51C 8003BD1C 00000000 */   nop
/* 2C520 8003BD20 CD010000 */  break      0, 7
.L8003BD24:
/* 2C524 8003BD24 1A00A202 */   div       $zero, $s5, $v0
/* 2C528 8003BD28 12F00000 */  mflo       $fp
/* 2C52C 8003BD2C 2000B7AF */  sw         $s7, 0x20($sp)
/* 2C530 8003BD30 02004014 */  bnez       $v0, .L8003BD3C
/* 2C534 8003BD34 00000000 */   nop
/* 2C538 8003BD38 CD010000 */  break      0, 7
.L8003BD3C:
/* 2C53C 8003BD3C 1A005602 */   div       $zero, $s2, $s6
/* 2C540 8003BD40 12100000 */  mflo       $v0
/* 2C544 8003BD44 2400BEAF */  sw         $fp, 0x24($sp)
/* 2C548 8003BD48 0200C016 */  bnez       $s6, .L8003BD54
/* 2C54C 8003BD4C 00000000 */   nop
/* 2C550 8003BD50 CD010000 */  break      0, 7
.L8003BD54:
/* 2C554 8003BD54 1A003502 */   div       $zero, $s1, $s5
/* 2C558 8003BD58 12180000 */  mflo       $v1
/* 2C55C 8003BD5C FFFF4224 */  addiu      $v0, $v0, -1
/* 2C560 8003BD60 00000000 */  nop
/* 2C564 8003BD64 18005600 */  mult       $v0, $s6
/* 2C568 8003BD68 12100000 */  mflo       $v0
/* 2C56C 8003BD6C 23904202 */  subu       $s2, $s2, $v0
/* 2C570 8003BD70 0200A016 */  bnez       $s5, .L8003BD7C
/* 2C574 8003BD74 00000000 */   nop
/* 2C578 8003BD78 CD010000 */  break      0, 7
.L8003BD7C:
/* 2C57C 8003BD7C 1A005702 */   div       $zero, $s2, $s7
/* 2C580 8003BD80 12900000 */  mflo       $s2
/* 2C584 8003BD84 10100000 */  mfhi       $v0
/* 2C588 8003BD88 FFFF6324 */  addiu      $v1, $v1, -1
/* 2C58C 8003BD8C 00000000 */  nop
/* 2C590 8003BD90 18007500 */  mult       $v1, $s5
/* 2C594 8003BD94 3000A2AF */  sw         $v0, 0x30($sp)
/* 2C598 8003BD98 12180000 */  mflo       $v1
/* 2C59C 8003BD9C 23882302 */  subu       $s1, $s1, $v1
/* 2C5A0 8003BDA0 0200E016 */  bnez       $s7, .L8003BDAC
/* 2C5A4 8003BDA4 00000000 */   nop
/* 2C5A8 8003BDA8 CD010000 */  break      0, 7
.L8003BDAC:
/* 2C5AC 8003BDAC 1A003E02 */   div       $zero, $s1, $fp
/* 2C5B0 8003BDB0 2118C003 */  addu       $v1, $fp, $zero
/* 2C5B4 8003BDB4 10100000 */  mfhi       $v0
/* 2C5B8 8003BDB8 2800B2AF */  sw         $s2, 0x28($sp)
/* 2C5BC 8003BDBC 3400A2AF */  sw         $v0, 0x34($sp)
/* 2C5C0 8003BDC0 12880000 */  mflo       $s1
/* 2C5C4 8003BDC4 02006014 */  bnez       $v1, .L8003BDD0
/* 2C5C8 8003BDC8 00000000 */   nop
/* 2C5CC 8003BDCC CD010000 */  break      0, 7
.L8003BDD0:
/* 2C5D0 8003BDD0 2C00B1AF */   sw        $s1, 0x2c($sp)
/* 2C5D4 8003BDD4 0200E016 */  bnez       $s7, .L8003BDE0
/* 2C5D8 8003BDD8 00000000 */   nop
/* 2C5DC 8003BDDC CD010000 */  break      0, 7
.L8003BDE0:
/* 2C5E0 8003BDE0 02006014 */   bnez      $v1, .L8003BDEC
/* 2C5E4 8003BDE4 00000000 */   nop
/* 2C5E8 8003BDE8 CD010000 */  break      0, 7
.L8003BDEC:
/* 2C5EC 8003BDEC 21900000 */   addu      $s2, $zero, $zero
/* 2C5F0 8003BDF0 1F008392 */  lbu        $v1, 0x1f($s4)
/* 2C5F4 8003BDF4 00000000 */  nop
/* 2C5F8 8003BDF8 C0100300 */  sll        $v0, $v1, 3
/* 2C5FC 8003BDFC 23104300 */  subu       $v0, $v0, $v1
/* 2C600 8003BE00 80100200 */  sll        $v0, $v0, 2
/* 2C604 8003BE04 21985300 */  addu       $s3, $v0, $s3
/* 2C608 8003BE08 F000C227 */  addiu      $v0, $fp, 0xf0
/* 2C60C 8003BE0C 52004018 */  blez       $v0, .L8003BF58
/* 2C610 8003BE10 21A00000 */   addu      $s4, $zero, $zero
/* 2C614 8003BE14 4001E426 */  addiu      $a0, $s7, 0x140
/* 2C618 8003BE18 3C00A4AF */  sw         $a0, 0x3c($sp)
/* 2C61C 8003BE1C 4400A2AF */  sw         $v0, 0x44($sp)
/* 2C620 8003BE20 21800000 */  addu       $s0, $zero, $zero
.L8003BE24:
/* 2C624 8003BE24 3C00A38F */  lw         $v1, 0x3c($sp)
/* 2C628 8003BE28 21105E02 */  addu       $v0, $s2, $fp
/* 2C62C 8003BE2C 44006018 */  blez       $v1, .L8003BF40
/* 2C630 8003BE30 4000A2AF */   sw        $v0, 0x40($sp)
/* 2C634 8003BE34 2C00A38F */  lw         $v1, 0x2c($sp)
/* 2C638 8003BE38 2400A48F */  lw         $a0, 0x24($sp)
/* 2C63C 8003BE3C 00000000 */  nop
/* 2C640 8003BE40 18006400 */  mult       $v1, $a0
/* 2C644 8003BE44 3400A38F */  lw         $v1, 0x34($sp)
/* 2C648 8003BE48 00000000 */  nop
/* 2C64C 8003BE4C 78006324 */  addiu      $v1, $v1, 0x78
/* 2C650 8003BE50 3800A3AF */  sw         $v1, 0x38($sp)
/* 2C654 8003BE54 12100000 */  mflo       $v0
/* 2C658 8003BE58 21884202 */  addu       $s1, $s2, $v0
.L8003BE5C:
/* 2C65C 8003BE5C 7000A48F */  lw         $a0, 0x70($sp)
/* 2C660 8003BE60 3000A28F */  lw         $v0, 0x30($sp)
/* 2C664 8003BE64 3800A38F */  lw         $v1, 0x38($sp)
/* 2C668 8003BE68 21288002 */  addu       $a1, $s4, $zero
/* 2C66C 8003BE6C 1000B7AF */  sw         $s7, 0x10($sp)
/* 2C670 8003BE70 1400BEAF */  sw         $fp, 0x14($sp)
/* 2C674 8003BE74 A0004624 */  addiu      $a2, $v0, 0xa0
/* 2C678 8003BE78 23300602 */  subu       $a2, $s0, $a2
/* 2C67C 8003BE7C 976D010C */  jal        FUN_8005b65c
/* 2C680 8003BE80 23384302 */   subu      $a3, $s2, $v1
/* 2C684 8003BE84 2800A38F */  lw         $v1, 0x28($sp)
/* 2C688 8003BE88 2000A48F */  lw         $a0, 0x20($sp)
/* 2C68C 8003BE8C 00000000 */  nop
/* 2C690 8003BE90 18006400 */  mult       $v1, $a0
/* 2C694 8003BE94 12100000 */  mflo       $v0
/* 2C698 8003BE98 21100202 */  addu       $v0, $s0, $v0
/* 2C69C 8003BE9C 00000000 */  nop
/* 2C6A0 8003BEA0 1A005600 */  div        $zero, $v0, $s6
/* 2C6A4 8003BEA4 04006686 */  lh         $a2, 4($s3)
/* 2C6A8 8003BEA8 10180000 */  mfhi       $v1
/* 2C6AC 8003BEAC 0200C016 */  bnez       $s6, .L8003BEB8
/* 2C6B0 8003BEB0 00000000 */   nop
/* 2C6B4 8003BEB4 CD010000 */  break      0, 7
.L8003BEB8:
/* 2C6B8 8003BEB8 1A003502 */   div       $zero, $s1, $s5
/* 2C6BC 8003BEBC 06006786 */  lh         $a3, 6($s3)
/* 2C6C0 8003BEC0 10100000 */  mfhi       $v0
/* 2C6C4 8003BEC4 0200A016 */  bnez       $s5, .L8003BED0
/* 2C6C8 8003BEC8 00000000 */   nop
/* 2C6CC 8003BECC CD010000 */  break      0, 7
.L8003BED0:
/* 2C6D0 8003BED0 21288002 */   addu      $a1, $s4, $zero
/* 2C6D4 8003BED4 2130C300 */  addu       $a2, $a2, $v1
/* 2C6D8 8003BED8 2138E200 */  addu       $a3, $a3, $v0
/* 2C6DC 8003BEDC 7000A48F */  lw         $a0, 0x70($sp)
/* 2C6E0 8003BEE0 21801702 */  addu       $s0, $s0, $s7
/* 2C6E4 8003BEE4 1000B7AF */  sw         $s7, 0x10($sp)
/* 2C6E8 8003BEE8 1400BEAF */  sw         $fp, 0x14($sp)
/* 2C6EC 8003BEEC 0C006386 */  lh         $v1, 0xc($s3)
/* 2C6F0 8003BEF0 FFFF0224 */  addiu      $v0, $zero, -1
/* 2C6F4 8003BEF4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 2C6F8 8003BEF8 1769010C */  jal        FUN_8005a45c
/* 2C6FC 8003BEFC 1800A3AF */   sw        $v1, 0x18($sp)
/* 2C700 8003BF00 7000A48F */  lw         $a0, 0x70($sp)
/* 2C704 8003BF04 16006686 */  lh         $a2, 0x16($s3)
/* 2C708 8003BF08 18006786 */  lh         $a3, 0x18($s3)
/* 2C70C 8003BF0C 396D010C */  jal        FUN_8005b4e4
/* 2C710 8003BF10 21288002 */   addu      $a1, $s4, $zero
/* 2C714 8003BF14 21288002 */  addu       $a1, $s4, $zero
/* 2C718 8003BF18 7800A68F */  lw         $a2, 0x78($sp)
/* 2C71C 8003BF1C 7000A48F */  lw         $a0, 0x70($sp)
/* 2C720 8003BF20 2138C000 */  addu       $a3, $a2, $zero
/* 2C724 8003BF24 EB6C010C */  jal        FUN_8005b3ac
/* 2C728 8003BF28 1000A7AF */   sw        $a3, 0x10($sp)
/* 2C72C 8003BF2C 3C00A38F */  lw         $v1, 0x3c($sp)
/* 2C730 8003BF30 00000000 */  nop
/* 2C734 8003BF34 2A100302 */  slt        $v0, $s0, $v1
/* 2C738 8003BF38 C8FF4014 */  bnez       $v0, .L8003BE5C
/* 2C73C 8003BF3C 01009426 */   addiu     $s4, $s4, 1
.L8003BF40:
/* 2C740 8003BF40 4000B28F */  lw         $s2, 0x40($sp)
/* 2C744 8003BF44 4400A48F */  lw         $a0, 0x44($sp)
/* 2C748 8003BF48 00000000 */  nop
/* 2C74C 8003BF4C 2A104402 */  slt        $v0, $s2, $a0
/* 2C750 8003BF50 B4FF4014 */  bnez       $v0, .L8003BE24
/* 2C754 8003BF54 21800000 */   addu      $s0, $zero, $zero
.L8003BF58:
/* 2C758 8003BF58 7000A48F */  lw         $a0, 0x70($sp)
/* 2C75C 8003BF5C 1D6B010C */  jal        FUN_8005ac74
/* 2C760 8003BF60 21288002 */   addu      $a1, $s4, $zero
/* 2C764 8003BF64 7000A48F */  lw         $a0, 0x70($sp)
/* 2C768 8003BF68 9157010C */  jal        FUN_80055e44
/* 2C76C 8003BF6C 00000000 */   nop
/* 2C770 8003BF70 6C00BF8F */  lw         $ra, 0x6c($sp)
/* 2C774 8003BF74 6800BE8F */  lw         $fp, 0x68($sp)
/* 2C778 8003BF78 6400B78F */  lw         $s7, 0x64($sp)
/* 2C77C 8003BF7C 6000B68F */  lw         $s6, 0x60($sp)
/* 2C780 8003BF80 5C00B58F */  lw         $s5, 0x5c($sp)
/* 2C784 8003BF84 5800B48F */  lw         $s4, 0x58($sp)
/* 2C788 8003BF88 5400B38F */  lw         $s3, 0x54($sp)
/* 2C78C 8003BF8C 5000B28F */  lw         $s2, 0x50($sp)
/* 2C790 8003BF90 4C00B18F */  lw         $s1, 0x4c($sp)
/* 2C794 8003BF94 4800B08F */  lw         $s0, 0x48($sp)
/* 2C798 8003BF98 0800E003 */  jr         $ra
/* 2C79C 8003BF9C 7000BD27 */   addiu     $sp, $sp, 0x70

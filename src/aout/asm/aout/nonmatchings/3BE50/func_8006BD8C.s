.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006BD8C
/* 5C58C 8006BD8C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 5C590 8006BD90 1380063C */  lui        $a2, %hi(D_80129DA8)
/* 5C594 8006BD94 1400B1AF */  sw         $s1, 0x14($sp)
/* 5C598 8006BD98 A89DD124 */  addiu      $s1, $a2, %lo(D_80129DA8)
/* 5C59C 8006BD9C 40100400 */  sll        $v0, $a0, 1
/* 5C5A0 8006BDA0 21104400 */  addu       $v0, $v0, $a0
/* 5C5A4 8006BDA4 80100200 */  sll        $v0, $v0, 2
/* 5C5A8 8006BDA8 23104400 */  subu       $v0, $v0, $a0
/* 5C5AC 8006BDAC 80100200 */  sll        $v0, $v0, 2
/* 5C5B0 8006BDB0 23104400 */  subu       $v0, $v0, $a0
/* 5C5B4 8006BDB4 80100200 */  sll        $v0, $v0, 2
/* 5C5B8 8006BDB8 21104400 */  addu       $v0, $v0, $a0
/* 5C5BC 8006BDBC 80100200 */  sll        $v0, $v0, 2
/* 5C5C0 8006BDC0 23104400 */  subu       $v0, $v0, $a0
/* 5C5C4 8006BDC4 80100200 */  sll        $v0, $v0, 2
/* 5C5C8 8006BDC8 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5C5CC 8006BDCC 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5C5D0 8006BDD0 A89DC78C */  lw         $a3, -0x6258($a2)
/* 5C5D4 8006BDD4 21104300 */  addu       $v0, $v0, $v1
/* 5C5D8 8006BDD8 2400B5AF */  sw         $s5, 0x24($sp)
/* 5C5DC 8006BDDC 21A8C000 */  addu       $s5, $a2, $zero
/* 5C5E0 8006BDE0 2800BFAF */  sw         $ra, 0x28($sp)
/* 5C5E4 8006BDE4 2000B4AF */  sw         $s4, 0x20($sp)
/* 5C5E8 8006BDE8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 5C5EC 8006BDEC 1800B2AF */  sw         $s2, 0x18($sp)
/* 5C5F0 8006BDF0 1000B0AF */  sw         $s0, 0x10($sp)
/* 5C5F4 8006BDF4 80290700 */  sll        $a1, $a3, 6
/* 5C5F8 8006BDF8 2128A700 */  addu       $a1, $a1, $a3
/* 5C5FC 8006BDFC 80280500 */  sll        $a1, $a1, 2
/* 5C600 8006BE00 2328A700 */  subu       $a1, $a1, $a3
/* 5C604 8006BE04 C0280500 */  sll        $a1, $a1, 3
/* 5C608 8006BE08 2128A700 */  addu       $a1, $a1, $a3
/* 5C60C 8006BE0C C0280500 */  sll        $a1, $a1, 3
/* 5C610 8006BE10 2190A200 */  addu       $s2, $a1, $v0
/* 5C614 8006BE14 B80A4286 */  lh         $v0, 0xab8($s2)
/* 5C618 8006BE18 00000000 */  nop
/* 5C61C 8006BE1C 4C004010 */  beqz       $v0, .L8006BF50
/* 5C620 8006BE20 34005426 */   addiu     $s4, $s2, 0x34
/* 5C624 8006BE24 0000428E */  lw         $v0, ($s2)
/* 5C628 8006BE28 00000000 */  nop
/* 5C62C 8006BE2C 0B004010 */  beqz       $v0, .L8006BE5C
/* 5C630 8006BE30 40280700 */   sll       $a1, $a3, 1
/* 5C634 8006BE34 2128A700 */  addu       $a1, $a1, $a3
/* 5C638 8006BE38 80280500 */  sll        $a1, $a1, 2
/* 5C63C 8006BE3C 1C00A524 */  addiu      $a1, $a1, 0x1c
/* 5C640 8006BE40 21284502 */  addu       $a1, $s2, $a1
/* 5C644 8006BE44 2C0C228E */  lw         $v0, 0xc2c($s1)
/* 5C648 8006BE48 BC0A4486 */  lh         $a0, 0xabc($s2)
/* 5C64C 8006BE4C 0400438C */  lw         $v1, 4($v0)
/* 5C650 8006BE50 80200400 */  sll        $a0, $a0, 2
/* 5C654 8006BE54 D685000C */  jal        AddPrim
/* 5C658 8006BE58 21206400 */   addu      $a0, $v1, $a0
.L8006BE5C:
/* 5C65C 8006BE5C B60A4286 */  lh         $v0, 0xab6($s2)
/* 5C660 8006BE60 00000000 */  nop
/* 5C664 8006BE64 FFFF5024 */  addiu      $s0, $v0, -1
/* 5C668 8006BE68 10000006 */  bltz       $s0, .L8006BEAC
/* 5C66C 8006BE6C C0101000 */   sll       $v0, $s0, 3
/* 5C670 8006BE70 21982002 */  addu       $s3, $s1, $zero
/* 5C674 8006BE74 23105000 */  subu       $v0, $v0, $s0
/* 5C678 8006BE78 80100200 */  sll        $v0, $v0, 2
/* 5C67C 8006BE7C 21885400 */  addu       $s1, $v0, $s4
/* 5C680 8006BE80 21282002 */  addu       $a1, $s1, $zero
.L8006BE84:
/* 5C684 8006BE84 E4FF3126 */  addiu      $s1, $s1, -0x1c
/* 5C688 8006BE88 FFFF1026 */  addiu      $s0, $s0, -1
/* 5C68C 8006BE8C 2C0C628E */  lw         $v0, 0xc2c($s3)
/* 5C690 8006BE90 BC0A4486 */  lh         $a0, 0xabc($s2)
/* 5C694 8006BE94 0400438C */  lw         $v1, 4($v0)
/* 5C698 8006BE98 80200400 */  sll        $a0, $a0, 2
/* 5C69C 8006BE9C D685000C */  jal        AddPrim
/* 5C6A0 8006BEA0 21206400 */   addu      $a0, $v1, $a0
/* 5C6A4 8006BEA4 F7FF0106 */  bgez       $s0, .L8006BE84
/* 5C6A8 8006BEA8 21282002 */   addu      $a1, $s1, $zero
.L8006BEAC:
/* 5C6AC 8006BEAC B40A4386 */  lh         $v1, 0xab4($s2)
/* 5C6B0 8006BEB0 B60A4286 */  lh         $v0, 0xab6($s2)
/* 5C6B4 8006BEB4 FFFF7024 */  addiu      $s0, $v1, -1
/* 5C6B8 8006BEB8 2A100202 */  slt        $v0, $s0, $v0
/* 5C6BC 8006BEBC 13004014 */  bnez       $v0, .L8006BF0C
/* 5C6C0 8006BEC0 1380033C */   lui       $v1, %hi(D_80129DA8)
/* 5C6C4 8006BEC4 A89D7324 */  addiu      $s3, $v1, %lo(D_80129DA8)
/* 5C6C8 8006BEC8 C0101000 */  sll        $v0, $s0, 3
/* 5C6CC 8006BECC 23105000 */  subu       $v0, $v0, $s0
/* 5C6D0 8006BED0 80100200 */  sll        $v0, $v0, 2
/* 5C6D4 8006BED4 21885400 */  addu       $s1, $v0, $s4
/* 5C6D8 8006BED8 21282002 */  addu       $a1, $s1, $zero
.L8006BEDC:
/* 5C6DC 8006BEDC E4FF3126 */  addiu      $s1, $s1, -0x1c
/* 5C6E0 8006BEE0 2C0C628E */  lw         $v0, 0xc2c($s3)
/* 5C6E4 8006BEE4 BC0A4486 */  lh         $a0, 0xabc($s2)
/* 5C6E8 8006BEE8 0400438C */  lw         $v1, 4($v0)
/* 5C6EC 8006BEEC 80200400 */  sll        $a0, $a0, 2
/* 5C6F0 8006BEF0 D685000C */  jal        AddPrim
/* 5C6F4 8006BEF4 21206400 */   addu      $a0, $v1, $a0
/* 5C6F8 8006BEF8 B60A4286 */  lh         $v0, 0xab6($s2)
/* 5C6FC 8006BEFC FFFF1026 */  addiu      $s0, $s0, -1
/* 5C700 8006BF00 2A100202 */  slt        $v0, $s0, $v0
/* 5C704 8006BF04 F5FF4010 */  beqz       $v0, .L8006BEDC
/* 5C708 8006BF08 21282002 */   addu      $a1, $s1, $zero
.L8006BF0C:
/* 5C70C 8006BF0C 0000428E */  lw         $v0, ($s2)
/* 5C710 8006BF10 00000000 */  nop
/* 5C714 8006BF14 0E004010 */  beqz       $v0, .L8006BF50
/* 5C718 8006BF18 00000000 */   nop
/* 5C71C 8006BF1C A89DA28E */  lw         $v0, -0x6258($s5)
/* 5C720 8006BF20 BC0A4486 */  lh         $a0, 0xabc($s2)
/* 5C724 8006BF24 40280200 */  sll        $a1, $v0, 1
/* 5C728 8006BF28 2128A200 */  addu       $a1, $a1, $v0
/* 5C72C 8006BF2C 80280500 */  sll        $a1, $a1, 2
/* 5C730 8006BF30 0400A524 */  addiu      $a1, $a1, 4
/* 5C734 8006BF34 A89DA226 */  addiu      $v0, $s5, -0x6258
/* 5C738 8006BF38 2C0C438C */  lw         $v1, 0xc2c($v0)
/* 5C73C 8006BF3C 21284502 */  addu       $a1, $s2, $a1
/* 5C740 8006BF40 0400628C */  lw         $v0, 4($v1)
/* 5C744 8006BF44 80200400 */  sll        $a0, $a0, 2
/* 5C748 8006BF48 D685000C */  jal        AddPrim
/* 5C74C 8006BF4C 21204400 */   addu      $a0, $v0, $a0
.L8006BF50:
/* 5C750 8006BF50 2800BF8F */  lw         $ra, 0x28($sp)
/* 5C754 8006BF54 2400B58F */  lw         $s5, 0x24($sp)
/* 5C758 8006BF58 2000B48F */  lw         $s4, 0x20($sp)
/* 5C75C 8006BF5C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 5C760 8006BF60 1800B28F */  lw         $s2, 0x18($sp)
/* 5C764 8006BF64 1400B18F */  lw         $s1, 0x14($sp)
/* 5C768 8006BF68 1000B08F */  lw         $s0, 0x10($sp)
/* 5C76C 8006BF6C 0800E003 */  jr         $ra
/* 5C770 8006BF70 3000BD27 */   addiu     $sp, $sp, 0x30

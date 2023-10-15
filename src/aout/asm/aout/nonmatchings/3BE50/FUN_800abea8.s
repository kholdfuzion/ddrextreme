.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abea8
/* 9C6A8 800ABEA8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9C6AC 800ABEAC 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C6B0 800ABEB0 21808000 */  addu       $s0, $a0, $zero
/* 9C6B4 800ABEB4 2000BFAF */  sw         $ra, 0x20($sp)
/* 9C6B8 800ABEB8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9C6BC 800ABEBC 1800B2AF */  sw         $s2, 0x18($sp)
/* 9C6C0 800ABEC0 F8AE020C */  jal        FUN_800abbe0
/* 9C6C4 800ABEC4 1400B1AF */   sw        $s1, 0x14($sp)
/* 9C6C8 800ABEC8 34004010 */  beqz       $v0, .L800ABF9C
/* 9C6CC 800ABECC 21100000 */   addu      $v0, $zero, $zero
/* 9C6D0 800ABED0 6E19030C */  jal        FUN_800c65b8
/* 9C6D4 800ABED4 00000000 */   nop
/* 9C6D8 800ABED8 06000012 */  beqz       $s0, .L800ABEF4
/* 9C6DC 800ABEDC 00000000 */   nop
/* 9C6E0 800ABEE0 20004230 */  andi       $v0, $v0, 0x20
/* 9C6E4 800ABEE4 06004014 */  bnez       $v0, .L800ABF00
/* 9C6E8 800ABEE8 1C80033C */   lui       $v1, 0x801c
/* 9C6EC 800ABEEC E7AF0208 */  j          .L800ABF9C
/* 9C6F0 800ABEF0 21100000 */   addu      $v0, $zero, $zero
.L800ABEF4:
/* 9C6F4 800ABEF4 02004230 */  andi       $v0, $v0, 2
/* 9C6F8 800ABEF8 08004010 */  beqz       $v0, .L800ABF1C
/* 9C6FC 800ABEFC 1C80033C */   lui       $v1, %hi(D_801C4658)
.L800ABF00:
/* 9C700 800ABF00 58467124 */  addiu      $s1, $v1, %lo(D_801C4658)
/* 9C704 800ABF04 08002492 */  lbu        $a0, 8($s1)
/* 9C708 800ABF08 00000000 */  nop
/* 9C70C 800ABF0C 07100402 */  srav       $v0, $a0, $s0
/* 9C710 800ABF10 01004230 */  andi       $v0, $v0, 1
/* 9C714 800ABF14 03004014 */  bnez       $v0, .L800ABF24
/* 9C718 800ABF18 21986000 */   addu      $s3, $v1, $zero
.L800ABF1C:
/* 9C71C 800ABF1C E7AF0208 */  j          .L800ABF9C
/* 9C720 800ABF20 21100000 */   addu      $v0, $zero, $zero
.L800ABF24:
/* 9C724 800ABF24 01001224 */  addiu      $s2, $zero, 1
/* 9C728 800ABF28 04101202 */  sllv       $v0, $s2, $s0
/* 9C72C 800ABF2C 27100200 */  nor        $v0, $zero, $v0
/* 9C730 800ABF30 24108200 */  and        $v0, $a0, $v0
/* 9C734 800ABF34 21200002 */  addu       $a0, $s0, $zero
/* 9C738 800ABF38 03000524 */  addiu      $a1, $zero, 3
/* 9C73C 800ABF3C 69B9020C */  jal        FUN_800ae5a4
/* 9C740 800ABF40 080022A2 */   sb        $v0, 8($s1)
/* 9C744 800ABF44 21103002 */  addu       $v0, $s1, $s0
/* 9C748 800ABF48 0B004490 */  lbu        $a0, 0xb($v0)
/* 9C74C 800ABF4C 11000224 */  addiu      $v0, $zero, 0x11
/* 9C750 800ABF50 FF008330 */  andi       $v1, $a0, 0xff
/* 9C754 800ABF54 10006210 */  beq        $v1, $v0, .L800ABF98
/* 9C758 800ABF58 13000224 */   addiu     $v0, $zero, 0x13
/* 9C75C 800ABF5C 0E006210 */  beq        $v1, $v0, .L800ABF98
/* 9C760 800ABF60 08000224 */   addiu     $v0, $zero, 8
/* 9C764 800ABF64 0C006210 */  beq        $v1, $v0, .L800ABF98
/* 9C768 800ABF68 FBFF8224 */   addiu     $v0, $a0, -5
/* 9C76C 800ABF6C 0300422C */  sltiu      $v0, $v0, 3
/* 9C770 800ABF70 06004010 */  beqz       $v0, .L800ABF8C
/* 9C774 800ABF74 58466226 */   addiu     $v0, $s3, 0x4658
/* 9C778 800ABF78 05001216 */  bne        $s0, $s2, .L800ABF90
/* 9C77C 800ABF7C 21105000 */   addu      $v0, $v0, $s0
/* 9C780 800ABF80 12000224 */  addiu      $v0, $zero, 0x12
/* 9C784 800ABF84 E6AF0208 */  j          .L800ABF98
/* 9C788 800ABF88 0C0022A2 */   sb        $v0, 0xc($s1)
.L800ABF8C:
/* 9C78C 800ABF8C 21105000 */  addu       $v0, $v0, $s0
.L800ABF90:
/* 9C790 800ABF90 11000324 */  addiu      $v1, $zero, 0x11
/* 9C794 800ABF94 0B0043A0 */  sb         $v1, 0xb($v0)
.L800ABF98:
/* 9C798 800ABF98 FFFF0224 */  addiu      $v0, $zero, -1
.L800ABF9C:
/* 9C79C 800ABF9C 2000BF8F */  lw         $ra, 0x20($sp)
/* 9C7A0 800ABFA0 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9C7A4 800ABFA4 1800B28F */  lw         $s2, 0x18($sp)
/* 9C7A8 800ABFA8 1400B18F */  lw         $s1, 0x14($sp)
/* 9C7AC 800ABFAC 1000B08F */  lw         $s0, 0x10($sp)
/* 9C7B0 800ABFB0 0800E003 */  jr         $ra
/* 9C7B4 800ABFB4 2800BD27 */   addiu     $sp, $sp, 0x28

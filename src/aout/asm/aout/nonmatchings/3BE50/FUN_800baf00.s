.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800baf00
/* AB700 800BAF00 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AB704 800BAF04 1800B2AF */  sw         $s2, 0x18($sp)
/* AB708 800BAF08 21908000 */  addu       $s2, $a0, $zero
/* AB70C 800BAF0C 1E80023C */  lui        $v0, %hi(D_801E0F10)
/* AB710 800BAF10 1400B1AF */  sw         $s1, 0x14($sp)
/* AB714 800BAF14 100F5124 */  addiu      $s1, $v0, %lo(D_801E0F10)
/* AB718 800BAF18 0F80033C */  lui        $v1, %hi(D_800ED078)
/* AB71C 800BAF1C 78D0658C */  lw         $a1, %lo(D_800ED078)($v1)
/* AB720 800BAF20 21202002 */  addu       $a0, $s1, $zero
/* AB724 800BAF24 2000BFAF */  sw         $ra, 0x20($sp)
/* AB728 800BAF28 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AB72C 800BAF2C 057C000C */  jal        strcpy
/* AB730 800BAF30 1000B0AF */   sw        $s0, 0x10($sp)
/* AB734 800BAF34 7E81000C */  jal        strlen
/* AB738 800BAF38 21202002 */   addu      $a0, $s1, $zero
/* AB73C 800BAF3C 21804000 */  addu       $s0, $v0, $zero
/* AB740 800BAF40 1B00022A */  slti       $v0, $s0, 0x1b
/* AB744 800BAF44 25004010 */  beqz       $v0, .L800BAFDC
/* AB748 800BAF48 21100000 */   addu      $v0, $zero, $zero
/* AB74C 800BAF4C 2300001A */  blez       $s0, .L800BAFDC
/* AB750 800BAF50 00000000 */   nop
/* AB754 800BAF54 10ED020C */  jal        FUN_800bb440
/* AB758 800BAF58 21204002 */   addu      $a0, $s2, $zero
/* AB75C 800BAF5C 21900000 */  addu       $s2, $zero, $zero
/* AB760 800BAF60 21982002 */  addu       $s3, $s1, $zero
.L800BAF64:
/* AB764 800BAF64 FBED020C */  jal        FUN_800bb7ec
/* AB768 800BAF68 00000000 */   nop
/* AB76C 800BAF6C 1B005000 */  divu       $zero, $v0, $s0
/* AB770 800BAF70 10880000 */  mfhi       $s1
/* AB774 800BAF74 02000016 */  bnez       $s0, .L800BAF80
/* AB778 800BAF78 00000000 */   nop
/* AB77C 800BAF7C CD010000 */  break      0, 7
.L800BAF80:
/* AB780 800BAF80 FBED020C */   jal       FUN_800bb7ec
/* AB784 800BAF84 00000000 */   nop
/* AB788 800BAF88 1B005000 */  divu       $zero, $v0, $s0
/* AB78C 800BAF8C 10200000 */  mfhi       $a0
/* AB790 800BAF90 02000016 */  bnez       $s0, .L800BAF9C
/* AB794 800BAF94 00000000 */   nop
/* AB798 800BAF98 CD010000 */  break      0, 7
.L800BAF9C:
/* AB79C 800BAF9C 2B103002 */   sltu      $v0, $s1, $s0
/* AB7A0 800BAFA0 03004010 */  beqz       $v0, .L800BAFB0
/* AB7A4 800BAFA4 2B109000 */   sltu      $v0, $a0, $s0
/* AB7A8 800BAFA8 03004014 */  bnez       $v0, .L800BAFB8
/* AB7AC 800BAFAC 21183302 */   addu      $v1, $s1, $s3
.L800BAFB0:
/* AB7B0 800BAFB0 F7EB0208 */  j          .L800BAFDC
/* AB7B4 800BAFB4 21100000 */   addu      $v0, $zero, $zero
.L800BAFB8:
/* AB7B8 800BAFB8 21209300 */  addu       $a0, $a0, $s3
/* AB7BC 800BAFBC 00006590 */  lbu        $a1, ($v1)
/* AB7C0 800BAFC0 00008290 */  lbu        $v0, ($a0)
/* AB7C4 800BAFC4 01005226 */  addiu      $s2, $s2, 1
/* AB7C8 800BAFC8 000062A0 */  sb         $v0, ($v1)
/* AB7CC 800BAFCC 3D02422A */  slti       $v0, $s2, 0x23d
/* AB7D0 800BAFD0 E4FF4014 */  bnez       $v0, .L800BAF64
/* AB7D4 800BAFD4 000085A0 */   sb        $a1, ($a0)
/* AB7D8 800BAFD8 01000224 */  addiu      $v0, $zero, 1
.L800BAFDC:
/* AB7DC 800BAFDC 2000BF8F */  lw         $ra, 0x20($sp)
/* AB7E0 800BAFE0 1C00B38F */  lw         $s3, 0x1c($sp)
/* AB7E4 800BAFE4 1800B28F */  lw         $s2, 0x18($sp)
/* AB7E8 800BAFE8 1400B18F */  lw         $s1, 0x14($sp)
/* AB7EC 800BAFEC 1000B08F */  lw         $s0, 0x10($sp)
/* AB7F0 800BAFF0 0800E003 */  jr         $ra
/* AB7F4 800BAFF4 2800BD27 */   addiu     $sp, $sp, 0x28

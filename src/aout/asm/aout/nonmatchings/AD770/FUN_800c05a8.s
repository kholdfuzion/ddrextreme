.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c05a8
/* B0DA8 800C05A8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* B0DAC 800C05AC 3000BFAF */  sw         $ra, 0x30($sp)
/* B0DB0 800C05B0 2C00B5AF */  sw         $s5, 0x2c($sp)
/* B0DB4 800C05B4 2800B4AF */  sw         $s4, 0x28($sp)
/* B0DB8 800C05B8 2400B3AF */  sw         $s3, 0x24($sp)
/* B0DBC 800C05BC 2000B2AF */  sw         $s2, 0x20($sp)
/* B0DC0 800C05C0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B0DC4 800C05C4 1800B0AF */  sw         $s0, 0x18($sp)
/* B0DC8 800C05C8 21A8E000 */  addu       $s5, $a3, $zero
/* B0DCC 800C05CC FF009030 */  andi       $s0, $a0, 0xff
/* B0DD0 800C05D0 FFFFB130 */  andi       $s1, $a1, 0xffff
/* B0DD4 800C05D4 F6FF020C */  jal        FUN_800bffd8
/* B0DD8 800C05D8 FFFFD330 */   andi      $s3, $a2, 0xffff
/* B0DDC 800C05DC FEFF0324 */  addiu      $v1, $zero, -2
/* B0DE0 800C05E0 44004310 */  beq        $v0, $v1, .L800C06F4
/* B0DE4 800C05E4 FEFF0224 */   addiu     $v0, $zero, -2
/* B0DE8 800C05E8 55FE020C */  jal        FUN_800bf954
/* B0DEC 800C05EC 21A00000 */   addu      $s4, $zero, $zero
/* B0DF0 800C05F0 5AFF020C */  jal        FUN_800bfd68
/* B0DF4 800C05F4 3A000424 */   addiu     $a0, $zero, 0x3a
/* B0DF8 800C05F8 E0FF020C */  jal        FUN_800bff80
/* B0DFC 800C05FC 00000000 */   nop
/* B0E00 800C0600 07004014 */  bnez       $v0, .L800C0620
/* B0E04 800C0604 00000000 */   nop
/* B0E08 800C0608 5AFF020C */  jal        FUN_800bfd68
/* B0E0C 800C060C 68000424 */   addiu     $a0, $zero, 0x68
/* B0E10 800C0610 E0FF020C */  jal        FUN_800bff80
/* B0E14 800C0614 00000000 */   nop
/* B0E18 800C0618 03004010 */  beqz       $v0, .L800C0628
/* B0E1C 800C061C 01000424 */   addiu     $a0, $zero, 1
.L800C0620:
/* B0E20 800C0620 B8010308 */  j          .L800C06E0
/* B0E24 800C0624 FDFF1424 */   addiu     $s4, $zero, -3
.L800C0628:
/* B0E28 800C0628 21280002 */  addu       $a1, $s0, $zero
/* B0E2C 800C062C 5601030C */  jal        FUN_800c0558
/* B0E30 800C0630 1000A627 */   addiu     $a2, $sp, 0x10
/* B0E34 800C0634 21206002 */  addu       $a0, $s3, $zero
/* B0E38 800C0638 2500030C */  jal        FUN_800c0094
/* B0E3C 800C063C 1200A527 */   addiu     $a1, $sp, 0x12
/* B0E40 800C0640 21202002 */  addu       $a0, $s1, $zero
/* B0E44 800C0644 2500030C */  jal        FUN_800c0094
/* B0E48 800C0648 1400A527 */   addiu     $a1, $sp, 0x14
/* B0E4C 800C064C 21880000 */  addu       $s1, $zero, $zero
/* B0E50 800C0650 1000B027 */  addiu      $s0, $sp, 0x10
/* B0E54 800C0654 21101102 */  addu       $v0, $s0, $s1
.L800C0658:
/* B0E58 800C0658 00004490 */  lbu        $a0, ($v0)
/* B0E5C 800C065C 5AFF020C */  jal        FUN_800bfd68
/* B0E60 800C0660 00000000 */   nop
/* B0E64 800C0664 E0FF020C */  jal        FUN_800bff80
/* B0E68 800C0668 00000000 */   nop
/* B0E6C 800C066C ECFF4014 */  bnez       $v0, .L800C0620
/* B0E70 800C0670 01003126 */   addiu     $s1, $s1, 1
/* B0E74 800C0674 0600222A */  slti       $v0, $s1, 6
/* B0E78 800C0678 F7FF4014 */  bnez       $v0, .L800C0658
/* B0E7C 800C067C 21101102 */   addu      $v0, $s0, $s1
/* B0E80 800C0680 17006012 */  beqz       $s3, .L800C06E0
/* B0E84 800C0684 21880000 */   addu      $s1, $zero, $zero
/* B0E88 800C0688 1000B227 */  addiu      $s2, $sp, 0x10
/* B0E8C 800C068C 80101100 */  sll        $v0, $s1, 2
.L800C0690:
/* B0E90 800C0690 21105500 */  addu       $v0, $v0, $s5
/* B0E94 800C0694 0000448C */  lw         $a0, ($v0)
/* B0E98 800C0698 6201030C */  jal        FUN_800c0588
/* B0E9C 800C069C 1000A527 */   addiu     $a1, $sp, 0x10
/* B0EA0 800C06A0 21800000 */  addu       $s0, $zero, $zero
/* B0EA4 800C06A4 21105002 */  addu       $v0, $s2, $s0
.L800C06A8:
/* B0EA8 800C06A8 00004490 */  lbu        $a0, ($v0)
/* B0EAC 800C06AC 5AFF020C */  jal        FUN_800bfd68
/* B0EB0 800C06B0 00000000 */   nop
/* B0EB4 800C06B4 E0FF020C */  jal        FUN_800bff80
/* B0EB8 800C06B8 00000000 */   nop
/* B0EBC 800C06BC D8FF4014 */  bnez       $v0, .L800C0620
/* B0EC0 800C06C0 01001026 */   addiu     $s0, $s0, 1
/* B0EC4 800C06C4 0400022A */  slti       $v0, $s0, 4
/* B0EC8 800C06C8 F7FF4014 */  bnez       $v0, .L800C06A8
/* B0ECC 800C06CC 21105002 */   addu      $v0, $s2, $s0
/* B0ED0 800C06D0 01003126 */  addiu      $s1, $s1, 1
/* B0ED4 800C06D4 2A103302 */  slt        $v0, $s1, $s3
/* B0ED8 800C06D8 EDFF4014 */  bnez       $v0, .L800C0690
/* B0EDC 800C06DC 80101100 */   sll       $v0, $s1, 2
.L800C06E0:
/* B0EE0 800C06E0 A7FE020C */  jal        FUN_800bfa9c
/* B0EE4 800C06E4 00000000 */   nop
/* B0EE8 800C06E8 0C00030C */  jal        FUN_800c0030
/* B0EEC 800C06EC 00000000 */   nop
/* B0EF0 800C06F0 21108002 */  addu       $v0, $s4, $zero
.L800C06F4:
/* B0EF4 800C06F4 3000BF8F */  lw         $ra, 0x30($sp)
/* B0EF8 800C06F8 2C00B58F */  lw         $s5, 0x2c($sp)
/* B0EFC 800C06FC 2800B48F */  lw         $s4, 0x28($sp)
/* B0F00 800C0700 2400B38F */  lw         $s3, 0x24($sp)
/* B0F04 800C0704 2000B28F */  lw         $s2, 0x20($sp)
/* B0F08 800C0708 1C00B18F */  lw         $s1, 0x1c($sp)
/* B0F0C 800C070C 1800B08F */  lw         $s0, 0x18($sp)
/* B0F10 800C0710 0800E003 */  jr         $ra
/* B0F14 800C0714 3800BD27 */   addiu     $sp, $sp, 0x38

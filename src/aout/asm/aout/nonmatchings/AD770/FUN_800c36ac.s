.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c36ac
/* B3EAC 800C36AC C0FFBD27 */  addiu      $sp, $sp, -0x40
/* B3EB0 800C36B0 3800B2AF */  sw         $s2, 0x38($sp)
/* B3EB4 800C36B4 21908000 */  addu       $s2, $a0, $zero
/* B3EB8 800C36B8 3400B1AF */  sw         $s1, 0x34($sp)
/* B3EBC 800C36BC 2188A000 */  addu       $s1, $a1, $zero
/* B3EC0 800C36C0 3000B0AF */  sw         $s0, 0x30($sp)
/* B3EC4 800C36C4 1000B027 */  addiu      $s0, $sp, 0x10
/* B3EC8 800C36C8 3C00BFAF */  sw         $ra, 0x3c($sp)
/* B3ECC 800C36CC 7E81000C */  jal        strlen
/* B3ED0 800C36D0 21202002 */   addu      $a0, $s1, $zero
/* B3ED4 800C36D4 21384000 */  addu       $a3, $v0, $zero
/* B3ED8 800C36D8 0100E230 */  andi       $v0, $a3, 1
/* B3EDC 800C36DC 03004010 */  beqz       $v0, .L800C36EC
/* B3EE0 800C36E0 00000000 */   nop
.L800C36E4:
/* B3EE4 800C36E4 EA0D0308 */  j          .L800C37A8
/* B3EE8 800C36E8 FFFF0224 */   addiu     $v0, $zero, -1
.L800C36EC:
/* B3EEC 800C36EC 2D00E018 */  blez       $a3, .L800C37A4
/* B3EF0 800C36F0 21300000 */   addu      $a2, $zero, $zero
/* B3EF4 800C36F4 21202002 */  addu       $a0, $s1, $zero
.L800C36F8:
/* B3EF8 800C36F8 00008390 */  lbu        $v1, ($a0)
/* B3EFC 800C36FC 00000000 */  nop
/* B3F00 800C3700 D0FF6224 */  addiu      $v0, $v1, -0x30
/* B3F04 800C3704 0A00422C */  sltiu      $v0, $v0, 0xa
/* B3F08 800C3708 0B004014 */  bnez       $v0, .L800C3738
/* B3F0C 800C370C 30000224 */   addiu     $v0, $zero, 0x30
/* B3F10 800C3710 9FFF6224 */  addiu      $v0, $v1, -0x61
/* B3F14 800C3714 0600422C */  sltiu      $v0, $v0, 6
/* B3F18 800C3718 07004014 */  bnez       $v0, .L800C3738
/* B3F1C 800C371C 57000224 */   addiu     $v0, $zero, 0x57
/* B3F20 800C3720 BFFF6224 */  addiu      $v0, $v1, -0x41
/* B3F24 800C3724 0600422C */  sltiu      $v0, $v0, 6
/* B3F28 800C3728 03004014 */  bnez       $v0, .L800C3738
/* B3F2C 800C372C 37000224 */   addiu     $v0, $zero, 0x37
/* B3F30 800C3730 CF0D0308 */  j          .L800C373C
/* B3F34 800C3734 FFFF0524 */   addiu     $a1, $zero, -1
.L800C3738:
/* B3F38 800C3738 23286200 */  subu       $a1, $v1, $v0
.L800C373C:
/* B3F3C 800C373C 01008390 */  lbu        $v1, 1($a0)
/* B3F40 800C3740 00000000 */  nop
/* B3F44 800C3744 D0FF6224 */  addiu      $v0, $v1, -0x30
/* B3F48 800C3748 0A00422C */  sltiu      $v0, $v0, 0xa
/* B3F4C 800C374C 0B004014 */  bnez       $v0, .L800C377C
/* B3F50 800C3750 30000224 */   addiu     $v0, $zero, 0x30
/* B3F54 800C3754 9FFF6224 */  addiu      $v0, $v1, -0x61
/* B3F58 800C3758 0600422C */  sltiu      $v0, $v0, 6
/* B3F5C 800C375C 07004014 */  bnez       $v0, .L800C377C
/* B3F60 800C3760 57000224 */   addiu     $v0, $zero, 0x57
/* B3F64 800C3764 BFFF6224 */  addiu      $v0, $v1, -0x41
/* B3F68 800C3768 0600422C */  sltiu      $v0, $v0, 6
/* B3F6C 800C376C 03004014 */  bnez       $v0, .L800C377C
/* B3F70 800C3770 37000224 */   addiu     $v0, $zero, 0x37
/* B3F74 800C3774 E00D0308 */  j          .L800C3780
/* B3F78 800C3778 FFFF0324 */   addiu     $v1, $zero, -1
.L800C377C:
/* B3F7C 800C377C 23186200 */  subu       $v1, $v1, $v0
.L800C3780:
/* B3F80 800C3780 00110500 */  sll        $v0, $a1, 4
/* B3F84 800C3784 25104300 */  or         $v0, $v0, $v1
/* B3F88 800C3788 D6FF4004 */  bltz       $v0, .L800C36E4
/* B3F8C 800C378C 0200C624 */   addiu     $a2, $a2, 2
/* B3F90 800C3790 000002A2 */  sb         $v0, ($s0)
/* B3F94 800C3794 01001026 */  addiu      $s0, $s0, 1
/* B3F98 800C3798 2A10C700 */  slt        $v0, $a2, $a3
/* B3F9C 800C379C D6FF4014 */  bnez       $v0, .L800C36F8
/* B3FA0 800C37A0 02008424 */   addiu     $a0, $a0, 2
.L800C37A4:
/* B3FA4 800C37A4 21100000 */  addu       $v0, $zero, $zero
.L800C37A8:
/* B3FA8 800C37A8 06004004 */  bltz       $v0, .L800C37C4
/* B3FAC 800C37AC 21204002 */   addu      $a0, $s2, $zero
/* B3FB0 800C37B0 1000A527 */  addiu      $a1, $sp, 0x10
/* B3FB4 800C37B4 870F030C */  jal        FUN_800c3e1c
/* B3FB8 800C37B8 08000624 */   addiu     $a2, $zero, 8
/* B3FBC 800C37BC F20D0308 */  j          .L800C37C8
/* B3FC0 800C37C0 21104002 */   addu      $v0, $s2, $zero
.L800C37C4:
/* B3FC4 800C37C4 21100000 */  addu       $v0, $zero, $zero
.L800C37C8:
/* B3FC8 800C37C8 3C00BF8F */  lw         $ra, 0x3c($sp)
/* B3FCC 800C37CC 3800B28F */  lw         $s2, 0x38($sp)
/* B3FD0 800C37D0 3400B18F */  lw         $s1, 0x34($sp)
/* B3FD4 800C37D4 3000B08F */  lw         $s0, 0x30($sp)
/* B3FD8 800C37D8 0800E003 */  jr         $ra
/* B3FDC 800C37DC 4000BD27 */   addiu     $sp, $sp, 0x40

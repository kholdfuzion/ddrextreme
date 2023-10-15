.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d06b0
/* C0EB0 800D06B0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* C0EB4 800D06B4 2000B4AF */  sw         $s4, 0x20($sp)
/* C0EB8 800D06B8 21A08000 */  addu       $s4, $a0, $zero
/* C0EBC 800D06BC FFFF0424 */  addiu      $a0, $zero, -1
/* C0EC0 800D06C0 2C00B7AF */  sw         $s7, 0x2c($sp)
/* C0EC4 800D06C4 21B8A000 */  addu       $s7, $a1, $zero
/* C0EC8 800D06C8 3000BFAF */  sw         $ra, 0x30($sp)
/* C0ECC 800D06CC 2800B6AF */  sw         $s6, 0x28($sp)
/* C0ED0 800D06D0 2400B5AF */  sw         $s5, 0x24($sp)
/* C0ED4 800D06D4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C0ED8 800D06D8 1800B2AF */  sw         $s2, 0x18($sp)
/* C0EDC 800D06DC 1400B1AF */  sw         $s1, 0x14($sp)
/* C0EE0 800D06E0 CD6B000C */  jal        VSync
/* C0EE4 800D06E4 1000B0AF */   sw        $s0, 0x10($sp)
/* C0EE8 800D06E8 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C0EEC 800D06EC 481F043C */  lui        $a0, 0x1f48
/* C0EF0 800D06F0 21804000 */  addu       $s0, $v0, $zero
/* C0EF4 800D06F4 21988000 */  addu       $s3, $a0, $zero
/* C0EF8 800D06F8 0E008390 */  lbu        $v1, 0xe($a0)
/* C0EFC 800D06FC 00000000 */  nop
/* C0F00 800D0700 88006330 */  andi       $v1, $v1, 0x88
/* C0F04 800D0704 0F006010 */  beqz       $v1, .L800D0744
/* C0F08 800D0708 2080163C */   lui       $s6, 0x8020
/* C0F0C 800D070C 21886002 */  addu       $s1, $s3, $zero
.L800D0710:
/* C0F10 800D0710 CD6B000C */  jal        VSync
/* C0F14 800D0714 FFFF0424 */   addiu     $a0, $zero, -1
/* C0F18 800D0718 23105000 */  subu       $v0, $v0, $s0
/* C0F1C 800D071C 2A104202 */  slt        $v0, $s2, $v0
/* C0F20 800D0720 09004014 */  bnez       $v0, .L800D0748
/* C0F24 800D0724 FFFF0224 */   addiu     $v0, $zero, -1
/* C0F28 800D0728 4A70000C */  jal        FUN_8001c128
/* C0F2C 800D072C 00000000 */   nop
/* C0F30 800D0730 0E002292 */  lbu        $v0, 0xe($s1)
/* C0F34 800D0734 00000000 */  nop
/* C0F38 800D0738 88004230 */  andi       $v0, $v0, 0x88
/* C0F3C 800D073C F4FF4014 */  bnez       $v0, .L800D0710
/* C0F40 800D0740 00000000 */   nop
.L800D0744:
/* C0F44 800D0744 21100000 */  addu       $v0, $zero, $zero
.L800D0748:
/* C0F48 800D0748 3D004014 */  bnez       $v0, .L800D0840
/* C0F4C 800D074C 10BDC226 */   addiu     $v0, $s6, -0x42f0
/* C0F50 800D0750 E0011524 */  addiu      $s5, $zero, 0x1e0
/* C0F54 800D0754 FFFF0424 */  addiu      $a0, $zero, -1
/* C0F58 800D0758 481F053C */  lui        $a1, 0x1f48
/* C0F5C 800D075C 01008232 */  andi       $v0, $s4, 1
/* C0F60 800D0760 00110200 */  sll        $v0, $v0, 4
/* C0F64 800D0764 A0004234 */  ori        $v0, $v0, 0xa0
/* C0F68 800D0768 481F033C */  lui        $v1, 0x1f48
/* C0F6C 800D076C 0C00A2A0 */  sb         $v0, 0xc($a1)
/* C0F70 800D0770 481F053C */  lui        $a1, 0x1f48
/* C0F74 800D0774 08000224 */  addiu      $v0, $zero, 8
/* C0F78 800D0778 020060A0 */  sb         $zero, 2($v1)
/* C0F7C 800D077C 481F033C */  lui        $v1, 0x1f48
/* C0F80 800D0780 0A00A2A0 */  sb         $v0, 0xa($a1)
/* C0F84 800D0784 481F053C */  lui        $a1, 0x1f48
/* C0F88 800D0788 A0000224 */  addiu      $v0, $zero, 0xa0
/* C0F8C 800D078C 080060A0 */  sb         $zero, 8($v1)
/* C0F90 800D0790 0E00A2A0 */  sb         $v0, 0xe($a1)
/* C0F94 800D0794 CD6B000C */  jal        VSync
/* C0F98 800D0798 481F123C */   lui       $s2, 0x1f48
/* C0F9C 800D079C 21884000 */  addu       $s1, $v0, $zero
/* C0FA0 800D07A0 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C0FA4 800D07A4 10BD5024 */  addiu      $s0, $v0, %lo(D_801FBD10)
.L800D07A8:
/* C0FA8 800D07A8 0E006292 */  lbu        $v0, 0xe($s3)
/* C0FAC 800D07AC 00000000 */  nop
/* C0FB0 800D07B0 D81102A2 */  sb         $v0, 0x11d8($s0)
/* C0FB4 800D07B4 04004392 */  lbu        $v1, 4($s2)
/* C0FB8 800D07B8 FFFF0424 */  addiu      $a0, $zero, -1
/* C0FBC 800D07BC DA1103A2 */  sb         $v1, 0x11da($s0)
/* C0FC0 800D07C0 CD6B000C */  jal        VSync
/* C0FC4 800D07C4 00000000 */   nop
/* C0FC8 800D07C8 D8110392 */  lbu        $v1, 0x11d8($s0)
/* C0FCC 800D07CC 00000000 */  nop
/* C0FD0 800D07D0 80006330 */  andi       $v1, $v1, 0x80
/* C0FD4 800D07D4 10006014 */  bnez       $v1, .L800D0818
/* C0FD8 800D07D8 21204000 */   addu      $a0, $v0, $zero
/* C0FDC 800D07DC D8110292 */  lbu        $v0, 0x11d8($s0)
/* C0FE0 800D07E0 00000000 */  nop
/* C0FE4 800D07E4 08004230 */  andi       $v0, $v0, 8
/* C0FE8 800D07E8 0C004010 */  beqz       $v0, .L800D081C
/* C0FEC 800D07EC 23109100 */   subu      $v0, $a0, $s1
/* C0FF0 800D07F0 DA110292 */  lbu        $v0, 0x11da($s0)
/* C0FF4 800D07F4 00000000 */  nop
/* C0FF8 800D07F8 01004230 */  andi       $v0, $v0, 1
/* C0FFC 800D07FC 07004010 */  beqz       $v0, .L800D081C
/* C1000 800D0800 23109100 */   subu      $v0, $a0, $s1
/* C1004 800D0804 DA110292 */  lbu        $v0, 0x11da($s0)
/* C1008 800D0808 00000000 */  nop
/* C100C 800D080C 02004230 */  andi       $v0, $v0, 2
/* C1010 800D0810 09004010 */  beqz       $v0, .L800D0838
/* C1014 800D0814 21100000 */   addu      $v0, $zero, $zero
.L800D0818:
/* C1018 800D0818 23109100 */  subu       $v0, $a0, $s1
.L800D081C:
/* C101C 800D081C 2A10A202 */  slt        $v0, $s5, $v0
/* C1020 800D0820 05004014 */  bnez       $v0, .L800D0838
/* C1024 800D0824 FFFF0224 */   addiu     $v0, $zero, -1
/* C1028 800D0828 4A70000C */  jal        FUN_8001c128
/* C102C 800D082C 00000000 */   nop
/* C1030 800D0830 EA410308 */  j          .L800D07A8
/* C1034 800D0834 00000000 */   nop
.L800D0838:
/* C1038 800D0838 04004010 */  beqz       $v0, .L800D084C
/* C103C 800D083C 10BDC226 */   addiu     $v0, $s6, -0x42f0
.L800D0840:
/* C1040 800D0840 DF1140A0 */  sb         $zero, 0x11df($v0)
/* C1044 800D0844 1C420308 */  j          .L800D0870
/* C1048 800D0848 FFFF0224 */   addiu     $v0, $zero, -1
.L800D084C:
/* C104C 800D084C 2128E002 */  addu       $a1, $s7, $zero
/* C1050 800D0850 06000324 */  addiu      $v1, $zero, 6
/* C1054 800D0854 481F043C */  lui        $a0, 0x1f48
.L800D0858:
/* C1058 800D0858 0000A294 */  lhu        $v0, ($a1)
/* C105C 800D085C 0200A524 */  addiu      $a1, $a1, 2
/* C1060 800D0860 FFFF6324 */  addiu      $v1, $v1, -1
/* C1064 800D0864 000082A4 */  sh         $v0, ($a0)
/* C1068 800D0868 FBFF6014 */  bnez       $v1, .L800D0858
/* C106C 800D086C 21100000 */   addu      $v0, $zero, $zero
.L800D0870:
/* C1070 800D0870 3000BF8F */  lw         $ra, 0x30($sp)
/* C1074 800D0874 2C00B78F */  lw         $s7, 0x2c($sp)
/* C1078 800D0878 2800B68F */  lw         $s6, 0x28($sp)
/* C107C 800D087C 2400B58F */  lw         $s5, 0x24($sp)
/* C1080 800D0880 2000B48F */  lw         $s4, 0x20($sp)
/* C1084 800D0884 1C00B38F */  lw         $s3, 0x1c($sp)
/* C1088 800D0888 1800B28F */  lw         $s2, 0x18($sp)
/* C108C 800D088C 1400B18F */  lw         $s1, 0x14($sp)
/* C1090 800D0890 1000B08F */  lw         $s0, 0x10($sp)
/* C1094 800D0894 0800E003 */  jr         $ra
/* C1098 800D0898 3800BD27 */   addiu     $sp, $sp, 0x38

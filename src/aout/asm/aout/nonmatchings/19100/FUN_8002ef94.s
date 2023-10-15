.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ef94
/* 1F794 8002EF94 21480000 */  addu       $t1, $zero, $zero
/* 1F798 8002EF98 21400000 */  addu       $t0, $zero, $zero
/* 1F79C 8002EF9C 21588000 */  addu       $t3, $a0, $zero
/* 1F7A0 8002EFA0 0000C290 */  lbu        $v0, ($a2)
/* 1F7A4 8002EFA4 00000000 */  nop
/* 1F7A8 8002EFA8 20004010 */  beqz       $v0, .L8002F02C
/* 1F7AC 8002EFAC 2150A000 */   addu      $t2, $a1, $zero
.L8002EFB0:
/* 1F7B0 8002EFB0 0000C390 */  lbu        $v1, ($a2)
/* 1F7B4 8002EFB4 00000000 */  nop
/* 1F7B8 8002EFB8 BFFF6224 */  addiu      $v0, $v1, -0x41
/* 1F7BC 8002EFBC 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 1F7C0 8002EFC0 04004010 */  beqz       $v0, .L8002EFD4
/* 1F7C4 8002EFC4 C9FF0225 */   addiu     $v0, $t0, -0x37
/* 1F7C8 8002EFC8 FF006330 */  andi       $v1, $v1, 0xff
/* 1F7CC 8002EFCC 06BC0008 */  j          .L8002F018
/* 1F7D0 8002EFD0 21404300 */   addu      $t0, $v0, $v1
.L8002EFD4:
/* 1F7D4 8002EFD4 9FFF6224 */  addiu      $v0, $v1, -0x61
/* 1F7D8 8002EFD8 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 1F7DC 8002EFDC 04004010 */  beqz       $v0, .L8002EFF0
/* 1F7E0 8002EFE0 A9FF0225 */   addiu     $v0, $t0, -0x57
/* 1F7E4 8002EFE4 0000C390 */  lbu        $v1, ($a2)
/* 1F7E8 8002EFE8 06BC0008 */  j          .L8002F018
/* 1F7EC 8002EFEC 21404300 */   addu      $t0, $v0, $v1
.L8002EFF0:
/* 1F7F0 8002EFF0 D0FF6224 */  addiu      $v0, $v1, -0x30
/* 1F7F4 8002EFF4 0A00422C */  sltiu      $v0, $v0, 0xa
/* 1F7F8 8002EFF8 04004010 */  beqz       $v0, .L8002F00C
/* 1F7FC 8002EFFC D0FF0225 */   addiu     $v0, $t0, -0x30
/* 1F800 8002F000 0000C390 */  lbu        $v1, ($a2)
/* 1F804 8002F004 06BC0008 */  j          .L8002F018
/* 1F808 8002F008 21404300 */   addu      $t0, $v0, $v1
.L8002F00C:
/* 1F80C 8002F00C 0000C290 */  lbu        $v0, ($a2)
/* 1F810 8002F010 00000000 */  nop
/* 1F814 8002F014 21400201 */  addu       $t0, $t0, $v0
.L8002F018:
/* 1F818 8002F018 0100C624 */  addiu      $a2, $a2, 1
/* 1F81C 8002F01C 0000C290 */  lbu        $v0, ($a2)
/* 1F820 8002F020 00000000 */  nop
/* 1F824 8002F024 E2FF4014 */  bnez       $v0, .L8002EFB0
/* 1F828 8002F028 00000000 */   nop
.L8002F02C:
/* 1F82C 8002F02C 17004011 */  beqz       $t2, .L8002F08C
/* 1F830 8002F030 C641033C */   lui       $v1, 0x41c6
/* 1F834 8002F034 6D4E6334 */  ori        $v1, $v1, 0x4e6d
/* 1F838 8002F038 18000301 */  mult       $t0, $v1
/* 1F83C 8002F03C 40100900 */  sll        $v0, $t1, 1
/* 1F840 8002F040 21104900 */  addu       $v0, $v0, $t1
/* 1F844 8002F044 80110200 */  sll        $v0, $v0, 6
/* 1F848 8002F048 21104900 */  addu       $v0, $v0, $t1
/* 1F84C 8002F04C C0100200 */  sll        $v0, $v0, 3
/* 1F850 8002F050 23104900 */  subu       $v0, $v0, $t1
/* 1F854 8002F054 C0100200 */  sll        $v0, $v0, 3
/* 1F858 8002F058 21304900 */  addu       $a2, $v0, $t1
/* 1F85C 8002F05C 12400000 */  mflo       $t0
.L8002F060:
/* 1F860 8002F060 21180601 */  addu       $v1, $t0, $a2
/* 1F864 8002F064 3930C624 */  addiu      $a2, $a2, 0x3039
/* 1F868 8002F068 21206901 */  addu       $a0, $t3, $t1
/* 1F86C 8002F06C 2128E900 */  addu       $a1, $a3, $t1
/* 1F870 8002F070 01002925 */  addiu      $t1, $t1, 1
/* 1F874 8002F074 00008290 */  lbu        $v0, ($a0)
/* 1F878 8002F078 42190300 */  srl        $v1, $v1, 5
/* 1F87C 8002F07C 26186200 */  xor        $v1, $v1, $v0
/* 1F880 8002F080 2B102A01 */  sltu       $v0, $t1, $t2
/* 1F884 8002F084 F6FF4014 */  bnez       $v0, .L8002F060
/* 1F888 8002F088 0000A3A0 */   sb        $v1, ($a1)
.L8002F08C:
/* 1F88C 8002F08C 0800E003 */  jr         $ra
/* 1F890 8002F090 00000000 */   nop

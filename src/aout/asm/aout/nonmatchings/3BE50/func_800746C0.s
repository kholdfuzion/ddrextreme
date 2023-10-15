.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800746C0
/* 64EC0 800746C0 2130A000 */  addu       $a2, $a1, $zero
/* 64EC4 800746C4 1B80023C */  lui        $v0, %hi(D_801AFBF8)
/* 64EC8 800746C8 F8FB4224 */  addiu      $v0, $v0, %lo(D_801AFBF8)
/* 64ECC 800746CC 40180600 */  sll        $v1, $a2, 1
/* 64ED0 800746D0 21186600 */  addu       $v1, $v1, $a2
/* 64ED4 800746D4 80180300 */  sll        $v1, $v1, 2
/* 64ED8 800746D8 21186200 */  addu       $v1, $v1, $v0
/* 64EDC 800746DC 0000658C */  lw         $a1, ($v1)
/* 64EE0 800746E0 00000000 */  nop
/* 64EE4 800746E4 0500A010 */  beqz       $a1, .L800746FC
/* 64EE8 800746E8 21488000 */   addu      $t1, $a0, $zero
/* 64EEC 800746EC 0300C004 */  bltz       $a2, .L800746FC
/* 64EF0 800746F0 6201C22C */   sltiu     $v0, $a2, 0x162
/* 64EF4 800746F4 04004014 */  bnez       $v0, .L80074708
/* 64EF8 800746F8 21300000 */   addu      $a2, $zero, $zero
.L800746FC:
/* 64EFC 800746FC 000020A1 */  sb         $zero, ($t1)
/* 64F00 80074700 0800E003 */  jr         $ra
/* 64F04 80074704 FFFF0224 */   addiu     $v0, $zero, -1
.L80074708:
/* 64F08 80074708 05002825 */  addiu      $t0, $t1, 5
/* 64F0C 8007470C 21286000 */  addu       $a1, $v1, $zero
/* 64F10 80074710 21380000 */  addu       $a3, $zero, $zero
.L80074714:
/* 64F14 80074714 23100601 */  subu       $v0, $t0, $a2
/* 64F18 80074718 0100C624 */  addiu      $a2, $a2, 1
/* 64F1C 8007471C 0000A38C */  lw         $v1, ($a1)
/* 64F20 80074720 0600C428 */  slti       $a0, $a2, 6
/* 64F24 80074724 0618E300 */  srlv       $v1, $v1, $a3
/* 64F28 80074728 0500E724 */  addiu      $a3, $a3, 5
/* 64F2C 8007472C 1F006330 */  andi       $v1, $v1, 0x1f
/* 64F30 80074730 41006324 */  addiu      $v1, $v1, 0x41
/* 64F34 80074734 F7FF8014 */  bnez       $a0, .L80074714
/* 64F38 80074738 000043A0 */   sb        $v1, ($v0)
/* 64F3C 8007473C 21102601 */  addu       $v0, $t1, $a2
/* 64F40 80074740 000040A0 */  sb         $zero, ($v0)
/* 64F44 80074744 0800E003 */  jr         $ra
/* 64F48 80074748 21100000 */   addu      $v0, $zero, $zero

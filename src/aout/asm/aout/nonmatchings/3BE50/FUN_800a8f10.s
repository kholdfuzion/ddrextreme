.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8f10
/* 99710 800A8F10 05008228 */  slti       $v0, $a0, 5
/* 99714 800A8F14 03004014 */  bnez       $v0, .L800A8F24
/* 99718 800A8F18 FFFF0324 */   addiu     $v1, $zero, -1
/* 9971C 800A8F1C 0800E003 */  jr         $ra
/* 99720 800A8F20 FFFF0224 */   addiu     $v0, $zero, -1
.L800A8F24:
/* 99724 800A8F24 0500822C */  sltiu      $v0, $a0, 5
/* 99728 800A8F28 11004010 */  beqz       $v0, .L800A8F70
/* 9972C 800A8F2C 0180023C */   lui       $v0, %hi(D_80016C78)
/* 99730 800A8F30 786C4224 */  addiu      $v0, $v0, %lo(D_80016C78)
/* 99734 800A8F34 80180400 */  sll        $v1, $a0, 2
/* 99738 800A8F38 21186200 */  addu       $v1, $v1, $v0
/* 9973C 800A8F3C 0000648C */  lw         $a0, ($v1)
/* 99740 800A8F40 00000000 */  nop
/* 99744 800A8F44 08008000 */  jr         $a0
/* 99748 800A8F48 00000000 */   nop
/* 9974C 800A8F4C DCA30208 */  j          .L800A8F70
/* 99750 800A8F50 80020324 */   addiu     $v1, $zero, 0x280
/* 99754 800A8F54 DCA30208 */  j          .L800A8F70
/* 99758 800A8F58 76010324 */   addiu     $v1, $zero, 0x176
/* 9975C 800A8F5C DCA30208 */  j          .L800A8F70
/* 99760 800A8F60 43000324 */   addiu     $v1, $zero, 0x43
/* 99764 800A8F64 DCA30208 */  j          .L800A8F70
/* 99768 800A8F68 F80E0324 */   addiu     $v1, $zero, 0xef8
/* 9976C 800A8F6C 401F0324 */  addiu      $v1, $zero, 0x1f40
.L800A8F70:
/* 99770 800A8F70 0800E003 */  jr         $ra
/* 99774 800A8F74 21106000 */   addu      $v0, $v1, $zero

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80073e84
/* 64684 80073E84 2140A000 */  addu       $t0, $a1, $zero
/* 64688 80073E88 21280000 */  addu       $a1, $zero, $zero
/* 6468C 80073E8C 06008724 */  addiu      $a3, $a0, 6
.L80073E90:
/* 64690 80073E90 00008390 */  lbu        $v1, ($a0)
/* 64694 80073E94 00000000 */  nop
/* 64698 80073E98 9FFF6224 */  addiu      $v0, $v1, -0x61
/* 6469C 80073E9C 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 646A0 80073EA0 05004010 */  beqz       $v0, .L80073EB8
/* 646A4 80073EA4 40290500 */   sll       $a1, $a1, 5
/* 646A8 80073EA8 FF006330 */  andi       $v1, $v1, 0xff
/* 646AC 80073EAC 9FFFA224 */  addiu      $v0, $a1, -0x61
/* 646B0 80073EB0 B6CF0108 */  j          .L80073ED8
/* 646B4 80073EB4 21284300 */   addu      $a1, $v0, $v1
.L80073EB8:
/* 646B8 80073EB8 BFFF6224 */  addiu      $v0, $v1, -0x41
/* 646BC 80073EBC 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 646C0 80073EC0 04004010 */  beqz       $v0, .L80073ED4
/* 646C4 80073EC4 BFFFA224 */   addiu     $v0, $a1, -0x41
/* 646C8 80073EC8 00008390 */  lbu        $v1, ($a0)
/* 646CC 80073ECC B6CF0108 */  j          .L80073ED8
/* 646D0 80073ED0 21284300 */   addu      $a1, $v0, $v1
.L80073ED4:
/* 646D4 80073ED4 1F00A524 */  addiu      $a1, $a1, 0x1f
.L80073ED8:
/* 646D8 80073ED8 01008424 */  addiu      $a0, $a0, 1
/* 646DC 80073EDC 2A108700 */  slt        $v0, $a0, $a3
/* 646E0 80073EE0 EBFF4014 */  bnez       $v0, .L80073E90
/* 646E4 80073EE4 21180000 */   addu      $v1, $zero, $zero
/* 646E8 80073EE8 FFFF0724 */  addiu      $a3, $zero, -1
/* 646EC 80073EEC 1B80023C */  lui        $v0, %hi(D_801AFBF8)
/* 646F0 80073EF0 BFCF0108 */  j          .L80073EFC
/* 646F4 80073EF4 F8FB4424 */   addiu     $a0, $v0, %lo(D_801AFBF8)
.L80073EF8:
/* 646F8 80073EF8 01006324 */  addiu      $v1, $v1, 1
.L80073EFC:
/* 646FC 80073EFC 6201622C */  sltiu      $v0, $v1, 0x162
/* 64700 80073F00 0B004010 */  beqz       $v0, .L80073F30
/* 64704 80073F04 62010224 */   addiu     $v0, $zero, 0x162
/* 64708 80073F08 0000828C */  lw         $v0, ($a0)
/* 6470C 80073F0C 00000000 */  nop
/* 64710 80073F10 03004014 */  bnez       $v0, .L80073F20
/* 64714 80073F14 00000000 */   nop
/* 64718 80073F18 CBCF0108 */  j          .L80073F2C
/* 6471C 80073F1C 21180000 */   addu      $v1, $zero, $zero
.L80073F20:
/* 64720 80073F20 F5FF4514 */  bne        $v0, $a1, .L80073EF8
/* 64724 80073F24 0C008424 */   addiu     $a0, $a0, 0xc
/* 64728 80073F28 21386000 */  addu       $a3, $v1, $zero
.L80073F2C:
/* 6472C 80073F2C 62010224 */  addiu      $v0, $zero, 0x162
.L80073F30:
/* 64730 80073F30 02006214 */  bne        $v1, $v0, .L80073F3C
/* 64734 80073F34 1B80053C */   lui       $a1, %hi(D_801AFBF8)
/* 64738 80073F38 21180000 */  addu       $v1, $zero, $zero
.L80073F3C:
/* 6473C 80073F3C F8FBA524 */  addiu      $a1, $a1, %lo(D_801AFBF8)
/* 64740 80073F40 40100300 */  sll        $v0, $v1, 1
/* 64744 80073F44 21104300 */  addu       $v0, $v0, $v1
/* 64748 80073F48 80100200 */  sll        $v0, $v0, 2
/* 6474C 80073F4C 2118A200 */  addu       $v1, $a1, $v0
/* 64750 80073F50 0400648C */  lw         $a0, 4($v1)
/* 64754 80073F54 21286000 */  addu       $a1, $v1, $zero
/* 64758 80073F58 000004AD */  sw         $a0, ($t0)
/* 6475C 80073F5C 0800A38C */  lw         $v1, 8($a1)
/* 64760 80073F60 2110E000 */  addu       $v0, $a3, $zero
/* 64764 80073F64 0800E003 */  jr         $ra
/* 64768 80073F68 0000C3AC */   sw        $v1, ($a2)

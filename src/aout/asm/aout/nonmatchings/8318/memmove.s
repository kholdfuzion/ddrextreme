.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel memmove
/* 11708 80020F08 21388000 */  addu       $a3, $a0, $zero
/* 1170C 80020F0C 2B10E500 */  sltu       $v0, $a3, $a1
/* 11710 80020F10 0C004014 */  bnez       $v0, .L80020F44
/* 11714 80020F14 2110C000 */   addu      $v0, $a2, $zero
/* 11718 80020F18 13004018 */  blez       $v0, .L80020F68
/* 1171C 80020F1C FFFFC624 */   addiu     $a2, $a2, -1
.L80020F20:
/* 11720 80020F20 2120E600 */  addu       $a0, $a3, $a2
/* 11724 80020F24 2110A600 */  addu       $v0, $a1, $a2
/* 11728 80020F28 2118C000 */  addu       $v1, $a2, $zero
/* 1172C 80020F2C 00004290 */  lbu        $v0, ($v0)
/* 11730 80020F30 FFFFC624 */  addiu      $a2, $a2, -1
/* 11734 80020F34 FAFF601C */  bgtz       $v1, .L80020F20
/* 11738 80020F38 000082A0 */   sb        $v0, ($a0)
/* 1173C 80020F3C DB830008 */  j          MEMMOVE_OBJ_64
/* 11740 80020F40 2110E000 */   addu      $v0, $a3, $zero
.L80020F44:
/* 11744 80020F44 08004018 */  blez       $v0, .L80020F68
/* 11748 80020F48 FFFFC624 */   addiu     $a2, $a2, -1
.L80020F4C:
/* 1174C 80020F4C 0000A290 */  lbu        $v0, ($a1)
/* 11750 80020F50 0100A524 */  addiu      $a1, $a1, 1
/* 11754 80020F54 2118C000 */  addu       $v1, $a2, $zero
/* 11758 80020F58 FFFFC624 */  addiu      $a2, $a2, -1
/* 1175C 80020F5C 0000E2A0 */  sb         $v0, ($a3)
/* 11760 80020F60 FAFF601C */  bgtz       $v1, .L80020F4C
/* 11764 80020F64 0100E724 */   addiu     $a3, $a3, 1
.L80020F68:
/* 11768 80020F68 2110E000 */  addu       $v0, $a3, $zero

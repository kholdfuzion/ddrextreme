.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aa850
/* 9B050 800AA850 1C80023C */  lui        $v0, %hi(D_801C3E94)
/* 9B054 800AA854 943E438C */  lw         $v1, %lo(D_801C3E94)($v0)
/* 9B058 800AA858 00000000 */  nop
/* 9B05C 800AA85C 26006018 */  blez       $v1, .L800AA8F8
/* 9B060 800AA860 21300000 */   addu      $a2, $zero, $zero
/* 9B064 800AA864 01000924 */  addiu      $t1, $zero, 1
/* 9B068 800AA868 02000824 */  addiu      $t0, $zero, 2
/* 9B06C 800AA86C 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9B070 800AA870 B8FB4224 */  addiu      $v0, $v0, %lo(D_801BFBB8)
/* 9B074 800AA874 21386000 */  addu       $a3, $v1, $zero
.L800AA878:
/* 9B078 800AA878 10004590 */  lbu        $a1, 0x10($v0)
/* 9B07C 800AA87C 00000000 */  nop
/* 9B080 800AA880 0D00A914 */  bne        $a1, $t1, .L800AA8B8
/* 9B084 800AA884 00000000 */   nop
/* 9B088 800AA888 0F004380 */  lb         $v1, 0xf($v0)
/* 9B08C 800AA88C 00000000 */  nop
/* 9B090 800AA890 03006010 */  beqz       $v1, .L800AA8A0
/* 9B094 800AA894 00000000 */   nop
/* 9B098 800AA898 03006514 */  bne        $v1, $a1, .L800AA8A8
/* 9B09C 800AA89C 00000000 */   nop
.L800AA8A0:
/* 9B0A0 800AA8A0 3BAA0208 */  j          .L800AA8EC
/* 9B0A4 800AA8A4 0100C634 */   ori       $a2, $a2, 1
.L800AA8A8:
/* 9B0A8 800AA8A8 10006814 */  bne        $v1, $t0, .L800AA8EC
/* 9B0AC 800AA8AC 00000000 */   nop
/* 9B0B0 800AA8B0 3BAA0208 */  j          .L800AA8EC
/* 9B0B4 800AA8B4 0400C634 */   ori       $a2, $a2, 4
.L800AA8B8:
/* 9B0B8 800AA8B8 0C00A814 */  bne        $a1, $t0, .L800AA8EC
/* 9B0BC 800AA8BC 00000000 */   nop
/* 9B0C0 800AA8C0 0F004380 */  lb         $v1, 0xf($v0)
/* 9B0C4 800AA8C4 00000000 */  nop
/* 9B0C8 800AA8C8 03006010 */  beqz       $v1, .L800AA8D8
/* 9B0CC 800AA8CC 00000000 */   nop
/* 9B0D0 800AA8D0 03006914 */  bne        $v1, $t1, .L800AA8E0
/* 9B0D4 800AA8D4 00000000 */   nop
.L800AA8D8:
/* 9B0D8 800AA8D8 3BAA0208 */  j          .L800AA8EC
/* 9B0DC 800AA8DC 0200C634 */   ori       $a2, $a2, 2
.L800AA8E0:
/* 9B0E0 800AA8E0 02006514 */  bne        $v1, $a1, .L800AA8EC
/* 9B0E4 800AA8E4 00000000 */   nop
/* 9B0E8 800AA8E8 0800C634 */  ori        $a2, $a2, 8
.L800AA8EC:
/* 9B0EC 800AA8EC FFFFE724 */  addiu      $a3, $a3, -1
/* 9B0F0 800AA8F0 E1FFE014 */  bnez       $a3, .L800AA878
/* 9B0F4 800AA8F4 18004224 */   addiu     $v0, $v0, 0x18
.L800AA8F8:
/* 9B0F8 800AA8F8 03008014 */  bnez       $a0, .L800AA908
/* 9B0FC 800AA8FC 01000224 */   addiu     $v0, $zero, 1
.L800AA900:
/* 9B100 800AA900 0800E003 */  jr         $ra
/* 9B104 800AA904 0300C230 */   andi      $v0, $a2, 3
.L800AA908:
/* 9B108 800AA908 FDFF8210 */  beq        $a0, $v0, .L800AA900
/* 9B10C 800AA90C 02000224 */   addiu     $v0, $zero, 2
/* 9B110 800AA910 03008214 */  bne        $a0, $v0, .L800AA920
/* 9B114 800AA914 82100600 */   srl       $v0, $a2, 2
/* 9B118 800AA918 0800E003 */  jr         $ra
/* 9B11C 800AA91C 03004230 */   andi      $v0, $v0, 3
.L800AA920:
/* 9B120 800AA920 03000224 */  addiu      $v0, $zero, 3
/* 9B124 800AA924 03008210 */  beq        $a0, $v0, .L800AA934
/* 9B128 800AA928 82100600 */   srl       $v0, $a2, 2
/* 9B12C 800AA92C 0800E003 */  jr         $ra
/* 9B130 800AA930 21100000 */   addu      $v0, $zero, $zero
.L800AA934:
/* 9B134 800AA934 2510C200 */  or         $v0, $a2, $v0
/* 9B138 800AA938 0800E003 */  jr         $ra
/* 9B13C 800AA93C 03004230 */   andi      $v0, $v0, 3

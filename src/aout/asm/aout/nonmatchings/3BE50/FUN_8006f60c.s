.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006f60c
/* 5FE0C 8006F60C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5FE10 8006F610 1800BEAF */  sw         $fp, 0x18($sp)
/* 5FE14 8006F614 21F0A003 */  addu       $fp, $sp, $zero
/* 5FE18 8006F618 00110600 */  sll        $v0, $a2, 4
/* 5FE1C 8006F61C C2100200 */  srl        $v0, $v0, 3
/* 5FE20 8006F620 07004224 */  addiu      $v0, $v0, 7
/* 5FE24 8006F624 C2100200 */  srl        $v0, $v0, 3
/* 5FE28 8006F628 C0100200 */  sll        $v0, $v0, 3
/* 5FE2C 8006F62C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 5FE30 8006F630 23E8A203 */  subu       $sp, $sp, $v0
/* 5FE34 8006F634 21380000 */  addu       $a3, $zero, $zero
/* 5FE38 8006F638 01000224 */  addiu      $v0, $zero, 1
/* 5FE3C 8006F63C 1200C5A7 */  sh         $a1, 0x12($fp)
/* 5FE40 8006F640 1000A527 */  addiu      $a1, $sp, 0x10
/* 5FE44 8006F644 1000C4A7 */  sh         $a0, 0x10($fp)
/* 5FE48 8006F648 1400C6A7 */  sh         $a2, 0x14($fp)
/* 5FE4C 8006F64C 0C00C018 */  blez       $a2, .L8006F680
/* 5FE50 8006F650 1600C2A7 */   sh        $v0, 0x16($fp)
/* 5FE54 8006F654 FFFF0424 */  addiu      $a0, $zero, -1
/* 5FE58 8006F658 2118A000 */  addu       $v1, $a1, $zero
.L8006F65C:
/* 5FE5C 8006F65C 0300E010 */  beqz       $a3, .L8006F66C
/* 5FE60 8006F660 00000000 */   nop
/* 5FE64 8006F664 9CBD0108 */  j          .L8006F670
/* 5FE68 8006F668 000064A4 */   sh        $a0, ($v1)
.L8006F66C:
/* 5FE6C 8006F66C 000060A4 */  sh         $zero, ($v1)
.L8006F670:
/* 5FE70 8006F670 0100E724 */  addiu      $a3, $a3, 1
/* 5FE74 8006F674 2A10E600 */  slt        $v0, $a3, $a2
/* 5FE78 8006F678 F8FF4014 */  bnez       $v0, .L8006F65C
/* 5FE7C 8006F67C 02006324 */   addiu     $v1, $v1, 2
.L8006F680:
/* 5FE80 8006F680 8361000C */  jal        LoadImage
/* 5FE84 8006F684 1000C427 */   addiu     $a0, $fp, 0x10
/* 5FE88 8006F688 D860000C */  jal        DrawSync
/* 5FE8C 8006F68C 21200000 */   addu      $a0, $zero, $zero
/* 5FE90 8006F690 21E8C003 */  addu       $sp, $fp, $zero
/* 5FE94 8006F694 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 5FE98 8006F698 1800BE8F */  lw         $fp, 0x18($sp)
/* 5FE9C 8006F69C 0800E003 */  jr         $ra
/* 5FEA0 8006F6A0 2000BD27 */   addiu     $sp, $sp, 0x20

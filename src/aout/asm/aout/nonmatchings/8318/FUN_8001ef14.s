.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001ef14
/* F714 8001EF14 21388000 */  addu       $a3, $a0, $zero
/* F718 8001EF18 0000E290 */  lbu        $v0, ($a3)
/* F71C 8001EF1C 00000000 */  nop
/* F720 8001EF20 08004010 */  beqz       $v0, .L8001EF44
/* F724 8001EF24 21300000 */   addu      $a2, $zero, $zero
/* F728 8001EF28 0100C624 */  addiu      $a2, $a2, 1
.L8001EF2C:
/* F72C 8001EF2C 2110E600 */  addu       $v0, $a3, $a2
/* F730 8001EF30 00004390 */  lbu        $v1, ($v0)
/* F734 8001EF34 00000000 */  nop
/* F738 8001EF38 FCFF6014 */  bnez       $v1, .L8001EF2C
/* F73C 8001EF3C 0100C624 */   addiu     $a2, $a2, 1
/* F740 8001EF40 FFFFC624 */  addiu      $a2, $a2, -1
.L8001EF44:
/* F744 8001EF44 2110E600 */  addu       $v0, $a3, $a2
/* F748 8001EF48 00004490 */  lbu        $a0, ($v0)
/* F74C 8001EF4C 2F000324 */  addiu      $v1, $zero, 0x2f
/* F750 8001EF50 09008310 */  beq        $a0, $v1, .L8001EF78
/* F754 8001EF54 FFFFC824 */   addiu     $t0, $a2, -1
/* F758 8001EF58 2F000424 */  addiu      $a0, $zero, 0x2f
/* F75C 8001EF5C FFFFC624 */  addiu      $a2, $a2, -1
.L8001EF60:
/* F760 8001EF60 2110E600 */  addu       $v0, $a3, $a2
/* F764 8001EF64 00004390 */  lbu        $v1, ($v0)
/* F768 8001EF68 00000000 */  nop
/* F76C 8001EF6C FCFF6414 */  bne        $v1, $a0, .L8001EF60
/* F770 8001EF70 FFFFC624 */   addiu     $a2, $a2, -1
/* F774 8001EF74 0100C624 */  addiu      $a2, $a2, 1
.L8001EF78:
/* F778 8001EF78 2118C700 */  addu       $v1, $a2, $a3
/* F77C 8001EF7C 01006290 */  lbu        $v0, 1($v1)
/* F780 8001EF80 00000000 */  nop
/* F784 8001EF84 9FFF4224 */  addiu      $v0, $v0, -0x61
/* F788 8001EF88 1A00422C */  sltiu      $v0, $v0, 0x1a
/* F78C 8001EF8C 06004010 */  beqz       $v0, .L8001EFA8
/* F790 8001EF90 5F000224 */   addiu     $v0, $zero, 0x5f
/* F794 8001EF94 02006390 */  lbu        $v1, 2($v1)
/* F798 8001EF98 00000000 */  nop
/* F79C 8001EF9C 03006214 */  bne        $v1, $v0, .L8001EFAC
/* F7A0 8001EFA0 0100C324 */   addiu     $v1, $a2, 1
/* F7A4 8001EFA4 0200C624 */  addiu      $a2, $a2, 2
.L8001EFA8:
/* F7A8 8001EFA8 0100C324 */  addiu      $v1, $a2, 1
.L8001EFAC:
/* F7AC 8001EFAC 23100301 */  subu       $v0, $t0, $v1
/* F7B0 8001EFB0 13004004 */  bltz       $v0, .L8001F000
/* F7B4 8001EFB4 21300000 */   addu      $a2, $zero, $zero
/* F7B8 8001EFB8 21404000 */  addu       $t0, $v0, $zero
/* F7BC 8001EFBC 21206700 */  addu       $a0, $v1, $a3
.L8001EFC0:
/* F7C0 8001EFC0 00008390 */  lbu        $v1, ($a0)
/* F7C4 8001EFC4 00000000 */  nop
/* F7C8 8001EFC8 BFFF6224 */  addiu      $v0, $v1, -0x41
/* F7CC 8001EFCC 1A00422C */  sltiu      $v0, $v0, 0x1a
/* F7D0 8001EFD0 02004010 */  beqz       $v0, .L8001EFDC
/* F7D4 8001EFD4 2110A600 */   addu      $v0, $a1, $a2
/* F7D8 8001EFD8 20006324 */  addiu      $v1, $v1, 0x20
.L8001EFDC:
/* F7DC 8001EFDC 000043A0 */  sb         $v1, ($v0)
/* F7E0 8001EFE0 0100C624 */  addiu      $a2, $a2, 1
/* F7E4 8001EFE4 2A100601 */  slt        $v0, $t0, $a2
/* F7E8 8001EFE8 F5FF4010 */  beqz       $v0, .L8001EFC0
/* F7EC 8001EFEC 01008424 */   addiu     $a0, $a0, 1
/* F7F0 8001EFF0 017C0008 */  j          .L8001F004
/* F7F4 8001EFF4 0800C228 */   slti      $v0, $a2, 8
.L8001EFF8:
/* F7F8 8001EFF8 000040A0 */  sb         $zero, ($v0)
/* F7FC 8001EFFC 0100C624 */  addiu      $a2, $a2, 1
.L8001F000:
/* F800 8001F000 0800C228 */  slti       $v0, $a2, 8
.L8001F004:
/* F804 8001F004 FCFF4014 */  bnez       $v0, .L8001EFF8
/* F808 8001F008 2110A600 */   addu      $v0, $a1, $a2
/* F80C 8001F00C 0800E003 */  jr         $ra
/* F810 8001F010 2110A000 */   addu      $v0, $a1, $zero

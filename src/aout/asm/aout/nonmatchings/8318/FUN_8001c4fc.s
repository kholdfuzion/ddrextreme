.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c4fc
/* CCFC 8001C4FC 00008290 */  lbu        $v0, ($a0)
/* CD00 8001C500 00000000 */  nop
/* CD04 8001C504 08004010 */  beqz       $v0, .L8001C528
/* CD08 8001C508 21380000 */   addu      $a3, $zero, $zero
/* CD0C 8001C50C 0100E724 */  addiu      $a3, $a3, 1
.L8001C510:
/* CD10 8001C510 21108700 */  addu       $v0, $a0, $a3
/* CD14 8001C514 00004390 */  lbu        $v1, ($v0)
/* CD18 8001C518 00000000 */  nop
/* CD1C 8001C51C FCFF6014 */  bnez       $v1, .L8001C510
/* CD20 8001C520 0100E724 */   addiu     $a3, $a3, 1
/* CD24 8001C524 FFFFE724 */  addiu      $a3, $a3, -1
.L8001C528:
/* CD28 8001C528 0000A290 */  lbu        $v0, ($a1)
/* CD2C 8001C52C 00000000 */  nop
/* CD30 8001C530 0A004010 */  beqz       $v0, .L8001C55C
/* CD34 8001C534 21400000 */   addu      $t0, $zero, $zero
/* CD38 8001C538 2130E400 */  addu       $a2, $a3, $a0
.L8001C53C:
/* CD3C 8001C53C 0000A390 */  lbu        $v1, ($a1)
/* CD40 8001C540 0100A524 */  addiu      $a1, $a1, 1
/* CD44 8001C544 01000825 */  addiu      $t0, $t0, 1
/* CD48 8001C548 0000C3A0 */  sb         $v1, ($a2)
/* CD4C 8001C54C 0000A290 */  lbu        $v0, ($a1)
/* CD50 8001C550 00000000 */  nop
/* CD54 8001C554 F9FF4014 */  bnez       $v0, .L8001C53C
/* CD58 8001C558 0100C624 */   addiu     $a2, $a2, 1
.L8001C55C:
/* CD5C 8001C55C 2110E800 */  addu       $v0, $a3, $t0
/* CD60 8001C560 21108200 */  addu       $v0, $a0, $v0
/* CD64 8001C564 000040A0 */  sb         $zero, ($v0)
/* CD68 8001C568 0800E003 */  jr         $ra
/* CD6C 8001C56C 21108000 */   addu      $v0, $a0, $zero

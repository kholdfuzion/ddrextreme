.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BAD38
/* AB538 800BAD38 FFFF0524 */  addiu      $a1, $zero, -1
/* AB53C 800BAD3C 1A000624 */  addiu      $a2, $zero, 0x1a
/* AB540 800BAD40 21200000 */  addu       $a0, $zero, $zero
.L800BAD44:
/* AB544 800BAD44 1B00A600 */  divu       $zero, $a1, $a2
/* AB548 800BAD48 12180000 */  mflo       $v1
/* AB54C 800BAD4C 0200C014 */  bnez       $a2, .L800BAD58
/* AB550 800BAD50 00000000 */   nop
/* AB554 800BAD54 CD010000 */  break      0, 7
.L800BAD58:
/* AB558 800BAD58 21286000 */   addu      $a1, $v1, $zero
/* AB55C 800BAD5C 04006010 */  beqz       $v1, .L800BAD70
/* AB560 800BAD60 01008424 */   addiu     $a0, $a0, 1
/* AB564 800BAD64 0700822C */  sltiu      $v0, $a0, 7
/* AB568 800BAD68 F6FF4014 */  bnez       $v0, .L800BAD44
/* AB56C 800BAD6C 00000000 */   nop
.L800BAD70:
/* AB570 800BAD70 0800E003 */  jr         $ra
/* AB574 800BAD74 0100622C */   sltiu     $v0, $v1, 1

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001ed98
/* F598 8001ED98 1000A28C */  lw         $v0, 0x10($a1)
/* F59C 8001ED9C 0000838C */  lw         $v1, ($a0)
/* F5A0 8001EDA0 00000000 */  nop
/* F5A4 8001EDA4 24104300 */  and        $v0, $v0, $v1
/* F5A8 8001EDA8 0F004014 */  bnez       $v0, .L8001EDE8
/* F5AC 8001EDAC 21400000 */   addu      $t0, $zero, $zero
/* F5B0 8001EDB0 21388000 */  addu       $a3, $a0, $zero
/* F5B4 8001EDB4 1000A624 */  addiu      $a2, $a1, 0x10
/* F5B8 8001EDB8 0400E724 */  addiu      $a3, $a3, 4
.L8001EDBC:
/* F5BC 8001EDBC 01000825 */  addiu      $t0, $t0, 1
/* F5C0 8001EDC0 0200022D */  sltiu      $v0, $t0, 2
/* F5C4 8001EDC4 0C004010 */  beqz       $v0, .L8001EDF8
/* F5C8 8001EDC8 0400C624 */   addiu     $a2, $a2, 4
/* F5CC 8001EDCC 0000C28C */  lw         $v0, ($a2)
/* F5D0 8001EDD0 0000E38C */  lw         $v1, ($a3)
/* F5D4 8001EDD4 00000000 */  nop
/* F5D8 8001EDD8 24104300 */  and        $v0, $v0, $v1
/* F5DC 8001EDDC F7FF4010 */  beqz       $v0, .L8001EDBC
/* F5E0 8001EDE0 0400E724 */   addiu     $a3, $a3, 4
/* F5E4 8001EDE4 FCFFE724 */  addiu      $a3, $a3, -4
.L8001EDE8:
/* F5E8 8001EDE8 0000898C */  lw         $t1, ($a0)
/* F5EC 8001EDEC 0200022D */  sltiu      $v0, $t0, 2
/* F5F0 8001EDF0 18004014 */  bnez       $v0, .L8001EE54
/* F5F4 8001EDF4 00000000 */   nop
.L8001EDF8:
/* F5F8 8001EDF8 0000828C */  lw         $v0, ($a0)
/* F5FC 8001EDFC 0000A38C */  lw         $v1, ($a1)
/* F600 8001EE00 21484000 */  addu       $t1, $v0, $zero
/* F604 8001EE04 24106200 */  and        $v0, $v1, $v0
/* F608 8001EE08 0F004314 */  bne        $v0, $v1, .L8001EE48
/* F60C 8001EE0C 21400000 */   addu      $t0, $zero, $zero
/* F610 8001EE10 21388000 */  addu       $a3, $a0, $zero
/* F614 8001EE14 2130A000 */  addu       $a2, $a1, $zero
/* F618 8001EE18 0400E724 */  addiu      $a3, $a3, 4
.L8001EE1C:
/* F61C 8001EE1C 01000825 */  addiu      $t0, $t0, 1
/* F620 8001EE20 0200022D */  sltiu      $v0, $t0, 2
/* F624 8001EE24 0B004010 */  beqz       $v0, .L8001EE54
/* F628 8001EE28 0400C624 */   addiu     $a2, $a2, 4
/* F62C 8001EE2C 0000C38C */  lw         $v1, ($a2)
/* F630 8001EE30 0000E28C */  lw         $v0, ($a3)
/* F634 8001EE34 00000000 */  nop
/* F638 8001EE38 24106200 */  and        $v0, $v1, $v0
/* F63C 8001EE3C F7FF4310 */  beq        $v0, $v1, .L8001EE1C
/* F640 8001EE40 0400E724 */   addiu     $a3, $a3, 4
/* F644 8001EE44 FCFFE724 */  addiu      $a3, $a3, -4
.L8001EE48:
/* F648 8001EE48 0200022D */  sltiu      $v0, $t0, 2
/* F64C 8001EE4C 15004014 */  bnez       $v0, .L8001EEA4
/* F650 8001EE50 21100000 */   addu      $v0, $zero, $zero
.L8001EE54:
/* F654 8001EE54 0800A28C */  lw         $v0, 8($a1)
/* F658 8001EE58 00000000 */  nop
/* F65C 8001EE5C 24104900 */  and        $v0, $v0, $t1
/* F660 8001EE60 0D004014 */  bnez       $v0, .L8001EE98
/* F664 8001EE64 21400000 */   addu      $t0, $zero, $zero
/* F668 8001EE68 0800A524 */  addiu      $a1, $a1, 8
/* F66C 8001EE6C 04008424 */  addiu      $a0, $a0, 4
.L8001EE70:
/* F670 8001EE70 01000825 */  addiu      $t0, $t0, 1
/* F674 8001EE74 0200022D */  sltiu      $v0, $t0, 2
/* F678 8001EE78 08004010 */  beqz       $v0, .L8001EE9C
/* F67C 8001EE7C 0400A524 */   addiu     $a1, $a1, 4
/* F680 8001EE80 0000A28C */  lw         $v0, ($a1)
/* F684 8001EE84 0000838C */  lw         $v1, ($a0)
/* F688 8001EE88 00000000 */  nop
/* F68C 8001EE8C 24104300 */  and        $v0, $v0, $v1
/* F690 8001EE90 F7FF4010 */  beqz       $v0, .L8001EE70
/* F694 8001EE94 04008424 */   addiu     $a0, $a0, 4
.L8001EE98:
/* F698 8001EE98 0200022D */  sltiu      $v0, $t0, 2
.L8001EE9C:
/* F69C 8001EE9C 0800E003 */  jr         $ra
/* F6A0 8001EEA0 01004238 */   xori      $v0, $v0, 1
.L8001EEA4:
/* F6A4 8001EEA4 0800E003 */  jr         $ra
/* F6A8 8001EEA8 00000000 */   nop

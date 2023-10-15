.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cd28
/* D528 8001CD28 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* D52C 8001CD2C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* D530 8001CD30 21988000 */  addu       $s3, $a0, $zero
/* D534 8001CD34 2000B4AF */  sw         $s4, 0x20($sp)
/* D538 8001CD38 21A0A000 */  addu       $s4, $a1, $zero
/* D53C 8001CD3C 01000224 */  addiu      $v0, $zero, 1
/* D540 8001CD40 2400BFAF */  sw         $ra, 0x24($sp)
/* D544 8001CD44 1800B2AF */  sw         $s2, 0x18($sp)
/* D548 8001CD48 1400B1AF */  sw         $s1, 0x14($sp)
/* D54C 8001CD4C 2300C210 */  beq        $a2, $v0, .L8001CDDC
/* D550 8001CD50 1000B0AF */   sw        $s0, 0x10($sp)
/* D554 8001CD54 0200C228 */  slti       $v0, $a2, 2
/* D558 8001CD58 05004010 */  beqz       $v0, .L8001CD70
/* D55C 8001CD5C 02000224 */   addiu     $v0, $zero, 2
/* D560 8001CD60 0700C010 */  beqz       $a2, .L8001CD80
/* D564 8001CD64 21100000 */   addu      $v0, $zero, $zero
/* D568 8001CD68 A7730008 */  j          .L8001CE9C
/* D56C 8001CD6C 00000000 */   nop
.L8001CD70:
/* D570 8001CD70 2000C210 */  beq        $a2, $v0, .L8001CDF4
/* D574 8001CD74 21100000 */   addu      $v0, $zero, $zero
/* D578 8001CD78 A7730008 */  j          .L8001CE9C
/* D57C 8001CD7C 00000000 */   nop
.L8001CD80:
/* D580 8001CD80 0000708E */  lw         $s0, ($s3)
/* D584 8001CD84 02009186 */  lh         $s1, 2($s4)
/* D588 8001CD88 7470000C */  jal        getcoinslot1_8001c1d0
/* D58C 8001CD8C 00000000 */   nop
/* D590 8001CD90 03004010 */  beqz       $v0, .L8001CDA0
/* D594 8001CD94 00000000 */   nop
/* D598 8001CD98 69730008 */  j          .L8001CDA4
/* D59C 8001CD9C 00021036 */   ori       $s0, $s0, 0x200
.L8001CDA0:
/* D5A0 8001CDA0 00011036 */  ori        $s0, $s0, 0x100
.L8001CDA4:
/* D5A4 8001CDA4 24201102 */  and        $a0, $s0, $s1
/* D5A8 8001CDA8 00FF8230 */  andi       $v0, $a0, 0xff00
/* D5AC 8001CDAC 05004014 */  bnez       $v0, .L8001CDC4
/* D5B0 8001CDB0 21280000 */   addu      $a1, $zero, $zero
/* D5B4 8001CDB4 00FF2332 */  andi       $v1, $s1, 0xff00
/* D5B8 8001CDB8 00FF0234 */  ori        $v0, $zero, 0xff00
/* D5BC 8001CDBC 37006214 */  bne        $v1, $v0, .L8001CE9C
/* D5C0 8001CDC0 2110A000 */   addu      $v0, $a1, $zero
.L8001CDC4:
/* D5C4 8001CDC4 FF008230 */  andi       $v0, $a0, 0xff
/* D5C8 8001CDC8 34004010 */  beqz       $v0, .L8001CE9C
/* D5CC 8001CDCC 2110A000 */   addu      $v0, $a1, $zero
/* D5D0 8001CDD0 01000524 */  addiu      $a1, $zero, 1
/* D5D4 8001CDD4 A7730008 */  j          .L8001CE9C
/* D5D8 8001CDD8 2110A000 */   addu      $v0, $a1, $zero
.L8001CDDC:
/* D5DC 8001CDDC 0000628E */  lw         $v0, ($s3)
/* D5E0 8001CDE0 02008386 */  lh         $v1, 2($s4)
/* D5E4 8001CDE4 00000000 */  nop
/* D5E8 8001CDE8 26104300 */  xor        $v0, $v0, $v1
/* D5EC 8001CDEC A7730008 */  j          .L8001CE9C
/* D5F0 8001CDF0 0100422C */   sltiu     $v0, $v0, 1
.L8001CDF4:
/* D5F4 8001CDF4 0000718E */  lw         $s1, ($s3)
/* D5F8 8001CDF8 00000000 */  nop
/* D5FC 8001CDFC 12002012 */  beqz       $s1, .L8001CE48
/* D600 8001CE00 00000000 */   nop
/* D604 8001CE04 02009286 */  lh         $s2, 2($s4)
/* D608 8001CE08 7470000C */  jal        getcoinslot1_8001c1d0
/* D60C 8001CE0C 21802002 */   addu      $s0, $s1, $zero
/* D610 8001CE10 02004010 */  beqz       $v0, .L8001CE1C
/* D614 8001CE14 00011036 */   ori       $s0, $s0, 0x100
/* D618 8001CE18 00023036 */  ori        $s0, $s1, 0x200
.L8001CE1C:
/* D61C 8001CE1C 24201202 */  and        $a0, $s0, $s2
/* D620 8001CE20 00FF8230 */  andi       $v0, $a0, 0xff00
/* D624 8001CE24 06004014 */  bnez       $v0, .L8001CE40
/* D628 8001CE28 FF008230 */   andi      $v0, $a0, 0xff
/* D62C 8001CE2C 00FF4332 */  andi       $v1, $s2, 0xff00
/* D630 8001CE30 00FF0234 */  ori        $v0, $zero, 0xff00
/* D634 8001CE34 19006214 */  bne        $v1, $v0, .L8001CE9C
/* D638 8001CE38 21100000 */   addu      $v0, $zero, $zero
/* D63C 8001CE3C FF008230 */  andi       $v0, $a0, 0xff
.L8001CE40:
/* D640 8001CE40 16004010 */  beqz       $v0, .L8001CE9C
/* D644 8001CE44 21100000 */   addu      $v0, $zero, $zero
.L8001CE48:
/* D648 8001CE48 0400628E */  lw         $v0, 4($s3)
/* D64C 8001CE4C 00000000 */  nop
/* D650 8001CE50 0300401C */  bgtz       $v0, .L8001CE60
/* D654 8001CE54 00000000 */   nop
.L8001CE58:
/* D658 8001CE58 A7730008 */  j          .L8001CE9C
/* D65C 8001CE5C 01000224 */   addiu     $v0, $zero, 1
.L8001CE60:
/* D660 8001CE60 0D004018 */  blez       $v0, .L8001CE98
/* D664 8001CE64 21800000 */   addu      $s0, $zero, $zero
/* D668 8001CE68 21880000 */  addu       $s1, $zero, $zero
.L8001CE6C:
/* D66C 8001CE6C 0800658E */  lw         $a1, 8($s3)
/* D670 8001CE70 28008426 */  addiu      $a0, $s4, 0x28
/* D674 8001CE74 667B000C */  jal        FUN_8001ed98
/* D678 8001CE78 2128B100 */   addu      $a1, $a1, $s1
/* D67C 8001CE7C F6FF4014 */  bnez       $v0, .L8001CE58
/* D680 8001CE80 01001026 */   addiu     $s0, $s0, 1
/* D684 8001CE84 0400628E */  lw         $v0, 4($s3)
/* D688 8001CE88 00000000 */  nop
/* D68C 8001CE8C 2A100202 */  slt        $v0, $s0, $v0
/* D690 8001CE90 F6FF4014 */  bnez       $v0, .L8001CE6C
/* D694 8001CE94 18003126 */   addiu     $s1, $s1, 0x18
.L8001CE98:
/* D698 8001CE98 21100000 */  addu       $v0, $zero, $zero
.L8001CE9C:
/* D69C 8001CE9C 2400BF8F */  lw         $ra, 0x24($sp)
/* D6A0 8001CEA0 2000B48F */  lw         $s4, 0x20($sp)
/* D6A4 8001CEA4 1C00B38F */  lw         $s3, 0x1c($sp)
/* D6A8 8001CEA8 1800B28F */  lw         $s2, 0x18($sp)
/* D6AC 8001CEAC 1400B18F */  lw         $s1, 0x14($sp)
/* D6B0 8001CEB0 1000B08F */  lw         $s0, 0x10($sp)
/* D6B4 8001CEB4 0800E003 */  jr         $ra
/* D6B8 8001CEB8 2800BD27 */   addiu     $sp, $sp, 0x28

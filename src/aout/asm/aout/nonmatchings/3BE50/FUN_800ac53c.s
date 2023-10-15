.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ac53c
/* 9CD3C 800AC53C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9CD40 800AC540 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 9CD44 800AC544 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 9CD48 800AC548 2400BFAF */  sw         $ra, 0x24($sp)
/* 9CD4C 800AC54C 2000B4AF */  sw         $s4, 0x20($sp)
/* 9CD50 800AC550 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9CD54 800AC554 1800B2AF */  sw         $s2, 0x18($sp)
/* 9CD58 800AC558 1400B1AF */  sw         $s1, 0x14($sp)
/* 9CD5C 800AC55C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9CD60 800AC560 8A008390 */  lbu        $v1, 0x8a($a0)
/* 9CD64 800AC564 02000524 */  addiu      $a1, $zero, 2
/* 9CD68 800AC568 06006510 */  beq        $v1, $a1, .L800AC584
/* 9CD6C 800AC56C 0100023C */   lui       $v0, 1
/* 9CD70 800AC570 21108200 */  addu       $v0, $a0, $v0
/* 9CD74 800AC574 06434390 */  lbu        $v1, 0x4306($v0)
/* 9CD78 800AC578 00000000 */  nop
/* 9CD7C 800AC57C 02006514 */  bne        $v1, $a1, .L800AC588
/* 9CD80 800AC580 21200000 */   addu      $a0, $zero, $zero
.L800AC584:
/* 9CD84 800AC584 02000424 */  addiu      $a0, $zero, 2
.L800AC588:
/* 9CD88 800AC588 14AA020C */  jal        FUN_800aa850
/* 9CD8C 800AC58C 00000000 */   nop
/* 9CD90 800AC590 21284000 */  addu       $a1, $v0, $zero
/* 9CD94 800AC594 0100A230 */  andi       $v0, $a1, 1
/* 9CD98 800AC598 0E004010 */  beqz       $v0, .L800AC5D4
/* 9CD9C 800AC59C 1C80033C */   lui       $v1, %hi(D_801C4658)
/* 9CDA0 800AC5A0 58466324 */  addiu      $v1, $v1, %lo(D_801C4658)
/* 9CDA4 800AC5A4 08006290 */  lbu        $v0, 8($v1)
/* 9CDA8 800AC5A8 00000000 */  nop
/* 9CDAC 800AC5AC 01004230 */  andi       $v0, $v0, 1
/* 9CDB0 800AC5B0 02004010 */  beqz       $v0, .L800AC5BC
/* 9CDB4 800AC5B4 FFFF0424 */   addiu     $a0, $zero, -1
/* 9CDB8 800AC5B8 21200000 */  addu       $a0, $zero, $zero
.L800AC5BC:
/* 9CDBC 800AC5BC 06008014 */  bnez       $a0, .L800AC5D8
/* 9CDC0 800AC5C0 0200A230 */   andi      $v0, $a1, 2
/* 9CDC4 800AC5C4 0A006290 */  lbu        $v0, 0xa($v1)
/* 9CDC8 800AC5C8 00000000 */  nop
/* 9CDCC 800AC5CC 02004234 */  ori        $v0, $v0, 2
/* 9CDD0 800AC5D0 0A0062A0 */  sb         $v0, 0xa($v1)
.L800AC5D4:
/* 9CDD4 800AC5D4 0200A230 */  andi       $v0, $a1, 2
.L800AC5D8:
/* 9CDD8 800AC5D8 0F004010 */  beqz       $v0, .L800AC618
/* 9CDDC 800AC5DC 1C80033C */   lui       $v1, %hi(D_801C4658)
/* 9CDE0 800AC5E0 58466324 */  addiu      $v1, $v1, %lo(D_801C4658)
/* 9CDE4 800AC5E4 08006290 */  lbu        $v0, 8($v1)
/* 9CDE8 800AC5E8 00000000 */  nop
/* 9CDEC 800AC5EC 43100200 */  sra        $v0, $v0, 1
/* 9CDF0 800AC5F0 01004230 */  andi       $v0, $v0, 1
/* 9CDF4 800AC5F4 02004010 */  beqz       $v0, .L800AC600
/* 9CDF8 800AC5F8 FFFF0424 */   addiu     $a0, $zero, -1
/* 9CDFC 800AC5FC 21200000 */  addu       $a0, $zero, $zero
.L800AC600:
/* 9CE00 800AC600 06008014 */  bnez       $a0, .L800AC61C
/* 9CE04 800AC604 21880000 */   addu      $s1, $zero, $zero
/* 9CE08 800AC608 0A006290 */  lbu        $v0, 0xa($v1)
/* 9CE0C 800AC60C 00000000 */  nop
/* 9CE10 800AC610 08004234 */  ori        $v0, $v0, 8
/* 9CE14 800AC614 0A0062A0 */  sb         $v0, 0xa($v1)
.L800AC618:
/* 9CE18 800AC618 21880000 */  addu       $s1, $zero, $zero
.L800AC61C:
/* 9CE1C 800AC61C 21800000 */  addu       $s0, $zero, $zero
/* 9CE20 800AC620 1C80023C */  lui        $v0, %hi(D_801C5F78)
/* 9CE24 800AC624 785F5424 */  addiu      $s4, $v0, %lo(D_801C5F78)
/* 9CE28 800AC628 1D80033C */  lui        $v1, %hi(D_801CC77C)
/* 9CE2C 800AC62C 7CC77324 */  addiu      $s3, $v1, %lo(D_801CC77C)
.L800AC630:
/* 9CE30 800AC630 AAAF020C */  jal        FUN_800abea8
/* 9CE34 800AC634 21200002 */   addu      $a0, $s0, $zero
/* 9CE38 800AC638 1A004014 */  bnez       $v0, .L800AC6A4
/* 9CE3C 800AC63C 01001226 */   addiu     $s2, $s0, 1
/* 9CE40 800AC640 21200002 */  addu       $a0, $s0, $zero
/* 9CE44 800AC644 19B9020C */  jal        FUN_800ae464
/* 9CE48 800AC648 21280000 */   addu      $a1, $zero, $zero
/* 9CE4C 800AC64C 15004010 */  beqz       $v0, .L800AC6A4
/* 9CE50 800AC650 C0281000 */   sll       $a1, $s0, 3
/* 9CE54 800AC654 FF000624 */  addiu      $a2, $zero, 0xff
/* 9CE58 800AC658 C0111000 */  sll        $v0, $s0, 7
/* 9CE5C 800AC65C 21105000 */  addu       $v0, $v0, $s0
/* 9CE60 800AC660 C0110200 */  sll        $v0, $v0, 7
/* 9CE64 800AC664 21185400 */  addu       $v1, $v0, $s4
/* 9CE68 800AC668 AF000424 */  addiu      $a0, $zero, 0xaf
.L800AC66C:
/* 9CE6C 800AC66C 00006290 */  lbu        $v0, ($v1)
/* 9CE70 800AC670 00000000 */  nop
/* 9CE74 800AC674 02004614 */  bne        $v0, $a2, .L800AC680
/* 9CE78 800AC678 00000000 */   nop
/* 9CE7C 800AC67C 01003126 */  addiu      $s1, $s1, 1
.L800AC680:
/* 9CE80 800AC680 FFFF8424 */  addiu      $a0, $a0, -1
/* 9CE84 800AC684 F9FF8104 */  bgez       $a0, .L800AC66C
/* 9CE88 800AC688 18006324 */   addiu     $v1, $v1, 0x18
/* 9CE8C 800AC68C 2310B000 */  subu       $v0, $a1, $s0
/* 9CE90 800AC690 80100200 */  sll        $v0, $v0, 2
/* 9CE94 800AC694 21105000 */  addu       $v0, $v0, $s0
/* 9CE98 800AC698 C0100200 */  sll        $v0, $v0, 3
/* 9CE9C 800AC69C 21105300 */  addu       $v0, $v0, $s3
/* 9CEA0 800AC6A0 000051AC */  sw         $s1, ($v0)
.L800AC6A4:
/* 9CEA4 800AC6A4 21804002 */  addu       $s0, $s2, $zero
/* 9CEA8 800AC6A8 0200022A */  slti       $v0, $s0, 2
/* 9CEAC 800AC6AC E0FF4014 */  bnez       $v0, .L800AC630
/* 9CEB0 800AC6B0 00000000 */   nop
/* 9CEB4 800AC6B4 2400BF8F */  lw         $ra, 0x24($sp)
/* 9CEB8 800AC6B8 2000B48F */  lw         $s4, 0x20($sp)
/* 9CEBC 800AC6BC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9CEC0 800AC6C0 1800B28F */  lw         $s2, 0x18($sp)
/* 9CEC4 800AC6C4 1400B18F */  lw         $s1, 0x14($sp)
/* 9CEC8 800AC6C8 1000B08F */  lw         $s0, 0x10($sp)
/* 9CECC 800AC6CC 0800E003 */  jr         $ra
/* 9CED0 800AC6D0 2800BD27 */   addiu     $sp, $sp, 0x28

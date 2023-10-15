.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CDC98
/* BE498 800CDC98 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BE49C 800CDC9C 2400B5AF */  sw         $s5, 0x24($sp)
/* BE4A0 800CDCA0 21A88000 */  addu       $s5, $a0, $zero
/* BE4A4 800CDCA4 2000B4AF */  sw         $s4, 0x20($sp)
/* BE4A8 800CDCA8 21A00000 */  addu       $s4, $zero, $zero
/* BE4AC 800CDCAC 2C00BFAF */  sw         $ra, 0x2c($sp)
/* BE4B0 800CDCB0 2800B6AF */  sw         $s6, 0x28($sp)
/* BE4B4 800CDCB4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BE4B8 800CDCB8 1800B2AF */  sw         $s2, 0x18($sp)
/* BE4BC 800CDCBC 1400B1AF */  sw         $s1, 0x14($sp)
/* BE4C0 800CDCC0 FE02030C */  jal        FUN_800c0bf8
/* BE4C4 800CDCC4 1000B0AF */   sw        $s0, 0x10($sp)
/* BE4C8 800CDCC8 01004230 */  andi       $v0, $v0, 1
/* BE4CC 800CDCCC 03004010 */  beqz       $v0, .L800CDCDC
/* BE4D0 800CDCD0 21B00000 */   addu      $s6, $zero, $zero
/* BE4D4 800CDCD4 1D6E000C */  jal        FUN_8001b874
/* BE4D8 800CDCD8 01001624 */   addiu     $s6, $zero, 1
.L800CDCDC:
/* BE4DC 800CDCDC CE35030C */  jal        FUN_800cd738
/* BE4E0 800CDCE0 00000000 */   nop
/* BE4E4 800CDCE4 05004104 */  bgez       $v0, .L800CDCFC
/* BE4E8 800CDCE8 33001124 */   addiu     $s1, $zero, 0x33
.L800CDCEC:
/* BE4EC 800CDCEC 7C370308 */  j          .L800CDDF0
/* BE4F0 800CDCF0 F6FF1424 */   addiu     $s4, $zero, -0xa
.L800CDCF4:
/* BE4F4 800CDCF4 48370308 */  j          .L800CDD20
/* BE4F8 800CDCF8 FFFF0324 */   addiu     $v1, $zero, -1
.L800CDCFC:
/* BE4FC 800CDCFC 21800000 */  addu       $s0, $zero, $zero
.L800CDD00:
/* BE500 800CDD00 6736030C */  jal        FUN_800cd99c
/* BE504 800CDD04 01002432 */   andi      $a0, $s1, 1
/* BE508 800CDD08 FAFF4004 */  bltz       $v0, .L800CDCF4
/* BE50C 800CDD0C 01001026 */   addiu     $s0, $s0, 1
/* BE510 800CDD10 0800022A */  slti       $v0, $s0, 8
/* BE514 800CDD14 FAFF4014 */  bnez       $v0, .L800CDD00
/* BE518 800CDD18 43881100 */   sra       $s1, $s1, 1
/* BE51C 800CDD1C 21180000 */  addu       $v1, $zero, $zero
.L800CDD20:
/* BE520 800CDD20 F2FF6004 */  bltz       $v1, .L800CDCEC
/* BE524 800CDD24 21980000 */   addu      $s3, $zero, $zero
/* BE528 800CDD28 21906002 */  addu       $s2, $s3, $zero
/* BE52C 800CDD2C 21880000 */  addu       $s1, $zero, $zero
.L800CDD30:
/* BE530 800CDD30 21802002 */  addu       $s0, $s1, $zero
.L800CDD34:
/* BE534 800CDD34 C836030C */  jal        FUN_800cdb20
/* BE538 800CDD38 00000000 */   nop
/* BE53C 800CDD3C 0A004004 */  bltz       $v0, .L800CDD68
/* BE540 800CDD40 04100202 */   sllv      $v0, $v0, $s0
/* BE544 800CDD44 25882202 */  or         $s1, $s1, $v0
/* BE548 800CDD48 01001026 */  addiu      $s0, $s0, 1
/* BE54C 800CDD4C 0800022A */  slti       $v0, $s0, 8
/* BE550 800CDD50 F8FF4014 */  bnez       $v0, .L800CDD34
/* BE554 800CDD54 21182002 */   addu      $v1, $s1, $zero
.L800CDD58:
/* BE558 800CDD58 05006104 */  bgez       $v1, .L800CDD70
/* BE55C 800CDD5C 00000000 */   nop
/* BE560 800CDD60 7C370308 */  j          .L800CDDF0
/* BE564 800CDD64 F6FF1424 */   addiu     $s4, $zero, -0xa
.L800CDD68:
/* BE568 800CDD68 56370308 */  j          .L800CDD58
/* BE56C 800CDD6C FFFF0324 */   addiu     $v1, $zero, -1
.L800CDD70:
/* BE570 800CDD70 02006010 */  beqz       $v1, .L800CDD7C
/* BE574 800CDD74 2110B202 */   addu      $v0, $s5, $s2
/* BE578 800CDD78 01001324 */  addiu      $s3, $zero, 1
.L800CDD7C:
/* BE57C 800CDD7C 000043A0 */  sb         $v1, ($v0)
/* BE580 800CDD80 01005226 */  addiu      $s2, $s2, 1
/* BE584 800CDD84 0800422A */  slti       $v0, $s2, 8
/* BE588 800CDD88 E9FF4014 */  bnez       $v0, .L800CDD30
/* BE58C 800CDD8C 21880000 */   addu      $s1, $zero, $zero
/* BE590 800CDD90 16006012 */  beqz       $s3, .L800CDDEC
/* BE594 800CDD94 21180000 */   addu      $v1, $zero, $zero
/* BE598 800CDD98 21306000 */  addu       $a2, $v1, $zero
/* BE59C 800CDD9C 2110A602 */  addu       $v0, $s5, $a2
.L800CDDA0:
/* BE5A0 800CDDA0 00004590 */  lbu        $a1, ($v0)
/* BE5A4 800CDDA4 07000424 */  addiu      $a0, $zero, 7
.L800CDDA8:
/* BE5A8 800CDDA8 2610A300 */  xor        $v0, $a1, $v1
/* BE5AC 800CDDAC 01004230 */  andi       $v0, $v0, 1
/* BE5B0 800CDDB0 03004010 */  beqz       $v0, .L800CDDC0
/* BE5B4 800CDDB4 43100300 */   sra       $v0, $v1, 1
/* BE5B8 800CDDB8 71370308 */  j          .L800CDDC4
/* BE5BC 800CDDBC 8C004338 */   xori      $v1, $v0, 0x8c
.L800CDDC0:
/* BE5C0 800CDDC0 43180300 */  sra        $v1, $v1, 1
.L800CDDC4:
/* BE5C4 800CDDC4 FFFF8424 */  addiu      $a0, $a0, -1
/* BE5C8 800CDDC8 F7FF8104 */  bgez       $a0, .L800CDDA8
/* BE5CC 800CDDCC 43280500 */   sra       $a1, $a1, 1
/* BE5D0 800CDDD0 0100C624 */  addiu      $a2, $a2, 1
/* BE5D4 800CDDD4 0800C228 */  slti       $v0, $a2, 8
/* BE5D8 800CDDD8 F1FF4014 */  bnez       $v0, .L800CDDA0
/* BE5DC 800CDDDC 2110A602 */   addu      $v0, $s5, $a2
/* BE5E0 800CDDE0 FF006230 */  andi       $v0, $v1, 0xff
/* BE5E4 800CDDE4 02004010 */  beqz       $v0, .L800CDDF0
/* BE5E8 800CDDE8 00000000 */   nop
.L800CDDEC:
/* BE5EC 800CDDEC F5FF1424 */  addiu      $s4, $zero, -0xb
.L800CDDF0:
/* BE5F0 800CDDF0 0400C012 */  beqz       $s6, .L800CDE04
/* BE5F4 800CDDF4 21108002 */   addu      $v0, $s4, $zero
/* BE5F8 800CDDF8 216E000C */  jal        FUN_8001b884
/* BE5FC 800CDDFC 00000000 */   nop
/* BE600 800CDE00 21108002 */  addu       $v0, $s4, $zero
.L800CDE04:
/* BE604 800CDE04 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BE608 800CDE08 2800B68F */  lw         $s6, 0x28($sp)
/* BE60C 800CDE0C 2400B58F */  lw         $s5, 0x24($sp)
/* BE610 800CDE10 2000B48F */  lw         $s4, 0x20($sp)
/* BE614 800CDE14 1C00B38F */  lw         $s3, 0x1c($sp)
/* BE618 800CDE18 1800B28F */  lw         $s2, 0x18($sp)
/* BE61C 800CDE1C 1400B18F */  lw         $s1, 0x14($sp)
/* BE620 800CDE20 1000B08F */  lw         $s0, 0x10($sp)
/* BE624 800CDE24 0800E003 */  jr         $ra
/* BE628 800CDE28 3000BD27 */   addiu     $sp, $sp, 0x30

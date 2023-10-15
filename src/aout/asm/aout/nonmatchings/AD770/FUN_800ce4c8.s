.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce4c8
/* BECC8 800CE4C8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* BECCC 800CE4CC 2000B4AF */  sw         $s4, 0x20($sp)
/* BECD0 800CE4D0 21A08000 */  addu       $s4, $a0, $zero
/* BECD4 800CE4D4 2400BFAF */  sw         $ra, 0x24($sp)
/* BECD8 800CE4D8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BECDC 800CE4DC 1800B2AF */  sw         $s2, 0x18($sp)
/* BECE0 800CE4E0 1400B1AF */  sw         $s1, 0x14($sp)
/* BECE4 800CE4E4 E737030C */  jal        FUN_800cdf9c
/* BECE8 800CE4E8 1000B0AF */   sw        $s0, 0x10($sp)
/* BECEC 800CE4EC 05004104 */  bgez       $v0, .L800CE504
/* BECF0 800CE4F0 33001124 */   addiu     $s1, $zero, 0x33
.L800CE4F4:
/* BECF4 800CE4F4 7E390308 */  j          .L800CE5F8
/* BECF8 800CE4F8 F6FF0224 */   addiu     $v0, $zero, -0xa
.L800CE4FC:
/* BECFC 800CE4FC 4A390308 */  j          .L800CE528
/* BED00 800CE500 FFFF0324 */   addiu     $v1, $zero, -1
.L800CE504:
/* BED04 800CE504 21800000 */  addu       $s0, $zero, $zero
.L800CE508:
/* BED08 800CE508 7C38030C */  jal        FUN_800ce1f0
/* BED0C 800CE50C 01002432 */   andi      $a0, $s1, 1
/* BED10 800CE510 FAFF4004 */  bltz       $v0, .L800CE4FC
/* BED14 800CE514 01001026 */   addiu     $s0, $s0, 1
/* BED18 800CE518 0800022A */  slti       $v0, $s0, 8
/* BED1C 800CE51C FAFF4014 */  bnez       $v0, .L800CE508
/* BED20 800CE520 43881100 */   sra       $s1, $s1, 1
/* BED24 800CE524 21180000 */  addu       $v1, $zero, $zero
.L800CE528:
/* BED28 800CE528 F2FF6004 */  bltz       $v1, .L800CE4F4
/* BED2C 800CE52C 21980000 */   addu      $s3, $zero, $zero
/* BED30 800CE530 21906002 */  addu       $s2, $s3, $zero
/* BED34 800CE534 21880000 */  addu       $s1, $zero, $zero
.L800CE538:
/* BED38 800CE538 21802002 */  addu       $s0, $s1, $zero
.L800CE53C:
/* BED3C 800CE53C DA38030C */  jal        FUN_800ce368
/* BED40 800CE540 00000000 */   nop
/* BED44 800CE544 0A004004 */  bltz       $v0, .L800CE570
/* BED48 800CE548 04100202 */   sllv      $v0, $v0, $s0
/* BED4C 800CE54C 25882202 */  or         $s1, $s1, $v0
/* BED50 800CE550 01001026 */  addiu      $s0, $s0, 1
/* BED54 800CE554 0800022A */  slti       $v0, $s0, 8
/* BED58 800CE558 F8FF4014 */  bnez       $v0, .L800CE53C
/* BED5C 800CE55C 21182002 */   addu      $v1, $s1, $zero
.L800CE560:
/* BED60 800CE560 05006104 */  bgez       $v1, .L800CE578
/* BED64 800CE564 F6FF0224 */   addiu     $v0, $zero, -0xa
/* BED68 800CE568 7E390308 */  j          .L800CE5F8
/* BED6C 800CE56C 00000000 */   nop
.L800CE570:
/* BED70 800CE570 58390308 */  j          .L800CE560
/* BED74 800CE574 FFFF0324 */   addiu     $v1, $zero, -1
.L800CE578:
/* BED78 800CE578 02006010 */  beqz       $v1, .L800CE584
/* BED7C 800CE57C 21109202 */   addu      $v0, $s4, $s2
/* BED80 800CE580 01001324 */  addiu      $s3, $zero, 1
.L800CE584:
/* BED84 800CE584 000043A0 */  sb         $v1, ($v0)
/* BED88 800CE588 01005226 */  addiu      $s2, $s2, 1
/* BED8C 800CE58C 0800422A */  slti       $v0, $s2, 8
/* BED90 800CE590 E9FF4014 */  bnez       $v0, .L800CE538
/* BED94 800CE594 21880000 */   addu      $s1, $zero, $zero
/* BED98 800CE598 16006012 */  beqz       $s3, .L800CE5F4
/* BED9C 800CE59C 21180000 */   addu      $v1, $zero, $zero
/* BEDA0 800CE5A0 21306000 */  addu       $a2, $v1, $zero
/* BEDA4 800CE5A4 21108602 */  addu       $v0, $s4, $a2
.L800CE5A8:
/* BEDA8 800CE5A8 00004590 */  lbu        $a1, ($v0)
/* BEDAC 800CE5AC 07000424 */  addiu      $a0, $zero, 7
.L800CE5B0:
/* BEDB0 800CE5B0 2610A300 */  xor        $v0, $a1, $v1
/* BEDB4 800CE5B4 01004230 */  andi       $v0, $v0, 1
/* BEDB8 800CE5B8 03004010 */  beqz       $v0, .L800CE5C8
/* BEDBC 800CE5BC 43100300 */   sra       $v0, $v1, 1
/* BEDC0 800CE5C0 73390308 */  j          .L800CE5CC
/* BEDC4 800CE5C4 8C004338 */   xori      $v1, $v0, 0x8c
.L800CE5C8:
/* BEDC8 800CE5C8 43180300 */  sra        $v1, $v1, 1
.L800CE5CC:
/* BEDCC 800CE5CC FFFF8424 */  addiu      $a0, $a0, -1
/* BEDD0 800CE5D0 F7FF8104 */  bgez       $a0, .L800CE5B0
/* BEDD4 800CE5D4 43280500 */   sra       $a1, $a1, 1
/* BEDD8 800CE5D8 0100C624 */  addiu      $a2, $a2, 1
/* BEDDC 800CE5DC 0800C228 */  slti       $v0, $a2, 8
/* BEDE0 800CE5E0 F1FF4014 */  bnez       $v0, .L800CE5A8
/* BEDE4 800CE5E4 21108602 */   addu      $v0, $s4, $a2
/* BEDE8 800CE5E8 FF006230 */  andi       $v0, $v1, 0xff
/* BEDEC 800CE5EC 02004010 */  beqz       $v0, .L800CE5F8
/* BEDF0 800CE5F0 21100000 */   addu      $v0, $zero, $zero
.L800CE5F4:
/* BEDF4 800CE5F4 F5FF0224 */  addiu      $v0, $zero, -0xb
.L800CE5F8:
/* BEDF8 800CE5F8 2400BF8F */  lw         $ra, 0x24($sp)
/* BEDFC 800CE5FC 2000B48F */  lw         $s4, 0x20($sp)
/* BEE00 800CE600 1C00B38F */  lw         $s3, 0x1c($sp)
/* BEE04 800CE604 1800B28F */  lw         $s2, 0x18($sp)
/* BEE08 800CE608 1400B18F */  lw         $s1, 0x14($sp)
/* BEE0C 800CE60C 1000B08F */  lw         $s0, 0x10($sp)
/* BEE10 800CE610 0800E003 */  jr         $ra
/* BEE14 800CE614 2800BD27 */   addiu     $sp, $sp, 0x28

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb3e4
/* ABBE4 800BB3E4 FFFF0734 */  ori        $a3, $zero, 0xffff
/* ABBE8 800BB3E8 13008010 */  beqz       $a0, .L800BB438
/* ABBEC 800BB3EC 21300000 */   addu      $a2, $zero, $zero
/* ABBF0 800BB3F0 21400000 */  addu       $t0, $zero, $zero
.L800BB3F4:
/* ABBF4 800BB3F4 2110A600 */  addu       $v0, $a1, $a2
/* ABBF8 800BB3F8 00004390 */  lbu        $v1, ($v0)
/* ABBFC 800BB3FC 0100C624 */  addiu      $a2, $a2, 1
/* ABC00 800BB400 2638E300 */  xor        $a3, $a3, $v1
/* ABC04 800BB404 0100E230 */  andi       $v0, $a3, 1
.L800BB408:
/* ABC08 800BB408 03004010 */  beqz       $v0, .L800BB418
/* ABC0C 800BB40C 42100700 */   srl       $v0, $a3, 1
/* ABC10 800BB410 07ED0208 */  j          .L800BB41C
/* ABC14 800BB414 4F384738 */   xori      $a3, $v0, 0x384f
.L800BB418:
/* ABC18 800BB418 42380700 */  srl        $a3, $a3, 1
.L800BB41C:
/* ABC1C 800BB41C 01000825 */  addiu      $t0, $t0, 1
/* ABC20 800BB420 0800022D */  sltiu      $v0, $t0, 8
/* ABC24 800BB424 F8FF4014 */  bnez       $v0, .L800BB408
/* ABC28 800BB428 0100E230 */   andi      $v0, $a3, 1
/* ABC2C 800BB42C 2B10C400 */  sltu       $v0, $a2, $a0
/* ABC30 800BB430 F0FF4014 */  bnez       $v0, .L800BB3F4
/* ABC34 800BB434 21400000 */   addu      $t0, $zero, $zero
.L800BB438:
/* ABC38 800BB438 0800E003 */  jr         $ra
/* ABC3C 800BB43C FFFFE230 */   andi      $v0, $a3, 0xffff

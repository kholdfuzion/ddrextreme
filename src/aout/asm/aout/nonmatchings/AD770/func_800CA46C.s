.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CA46C
/* BAC6C 800CA46C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BAC70 800CA470 2400B3AF */  sw         $s3, 0x24($sp)
/* BAC74 800CA474 21988000 */  addu       $s3, $a0, $zero
/* BAC78 800CA478 2C00B5AF */  sw         $s5, 0x2c($sp)
/* BAC7C 800CA47C 21A8A000 */  addu       $s5, $a1, $zero
/* BAC80 800CA480 2800B4AF */  sw         $s4, 0x28($sp)
/* BAC84 800CA484 21A0C000 */  addu       $s4, $a2, $zero
/* BAC88 800CA488 3000BFAF */  sw         $ra, 0x30($sp)
/* BAC8C 800CA48C 2000B2AF */  sw         $s2, 0x20($sp)
/* BAC90 800CA490 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BAC94 800CA494 622A030C */  jal        FUN_800ca988
/* BAC98 800CA498 1800B0AF */   sw        $s0, 0x18($sp)
/* BAC9C 800CA49C 03004014 */  bnez       $v0, .L800CA4AC
/* BACA0 800CA4A0 1000A427 */   addiu     $a0, $sp, 0x10
/* BACA4 800CA4A4 88290308 */  j          .L800CA620
/* BACA8 800CA4A8 F4FF0224 */   addiu     $v0, $zero, -0xc
.L800CA4AC:
/* BACAC 800CA4AC 21280000 */  addu       $a1, $zero, $zero
/* BACB0 800CA4B0 F6A2000C */  jal        memset
/* BACB4 800CA4B4 08000624 */   addiu     $a2, $zero, 8
/* BACB8 800CA4B8 2080123C */  lui        $s2, %hi(D_801FBCA8)
/* BACBC 800CA4BC 1000A427 */  addiu      $a0, $sp, 0x10
/* BACC0 800CA4C0 A8BC5126 */  addiu      $s1, $s2, %lo(D_801FBCA8)
/* BACC4 800CA4C4 7D2D030C */  jal        FUN_800cb5f4
/* BACC8 800CA4C8 21282002 */   addu      $a1, $s1, $zero
/* BACCC 800CA4CC 21804000 */  addu       $s0, $v0, $zero
/* BACD0 800CA4D0 FDFF0224 */  addiu      $v0, $zero, -3
/* BACD4 800CA4D4 1B000216 */  bne        $s0, $v0, .L800CA544
/* BACD8 800CA4D8 21206002 */   addu      $a0, $s3, $zero
/* BACDC 800CA4DC 7D2D030C */  jal        FUN_800cb5f4
/* BACE0 800CA4E0 21282002 */   addu      $a1, $s1, $zero
/* BACE4 800CA4E4 21804000 */  addu       $s0, $v0, $zero
/* BACE8 800CA4E8 4D000016 */  bnez       $s0, .L800CA620
/* BACEC 800CA4EC 21100002 */   addu      $v0, $s0, $zero
/* BACF0 800CA4F0 4B00A012 */  beqz       $s5, .L800CA620
/* BACF4 800CA4F4 00000000 */   nop
/* BACF8 800CA4F8 49008012 */  beqz       $s4, .L800CA620
/* BACFC 800CA4FC 21206002 */   addu      $a0, $s3, $zero
/* BAD00 800CA500 21280000 */  addu       $a1, $zero, $zero
/* BAD04 800CA504 2080023C */  lui        $v0, %hi(D_801FBAA0)
/* BAD08 800CA508 A0BA5124 */  addiu      $s1, $v0, %lo(D_801FBAA0)
/* BAD0C 800CA50C 21302002 */  addu       $a2, $s1, $zero
/* BAD10 800CA510 A42A030C */  jal        FUN_800caa90
/* BAD14 800CA514 21388002 */   addu      $a3, $s4, $zero
/* BAD18 800CA518 21804000 */  addu       $s0, $v0, $zero
/* BAD1C 800CA51C 3F000016 */  bnez       $s0, .L800CA61C
/* BAD20 800CA520 21202002 */   addu      $a0, $s1, $zero
/* BAD24 800CA524 01001024 */  addiu      $s0, $zero, 1
/* BAD28 800CA528 2128A002 */  addu       $a1, $s5, $zero
/* BAD2C 800CA52C 0905010C */  jal        bcmp
/* BAD30 800CA530 21308002 */   addu      $a2, $s4, $zero
/* BAD34 800CA534 3A004010 */  beqz       $v0, .L800CA620
/* BAD38 800CA538 21100002 */   addu      $v0, $s0, $zero
/* BAD3C 800CA53C 87290308 */  j          .L800CA61C
/* BAD40 800CA540 F5FF1024 */   addiu     $s0, $zero, -0xb
.L800CA544:
/* BAD44 800CA544 36000016 */  bnez       $s0, .L800CA620
/* BAD48 800CA548 21100002 */   addu      $v0, $s0, $zero
/* BAD4C 800CA54C 352D030C */  jal        FUN_800cb4d4
/* BAD50 800CA550 1000A427 */   addiu     $a0, $sp, 0x10
/* BAD54 800CA554 21804000 */  addu       $s0, $v0, $zero
/* BAD58 800CA558 30000016 */  bnez       $s0, .L800CA61C
/* BAD5C 800CA55C 1000A427 */   addiu     $a0, $sp, 0x10
/* BAD60 800CA560 21280000 */  addu       $a1, $zero, $zero
/* BAD64 800CA564 F6A2000C */  jal        memset
/* BAD68 800CA568 08000624 */   addiu     $a2, $zero, 8
/* BAD6C 800CA56C 9129030C */  jal        FUN_800ca644
/* BAD70 800CA570 1000A427 */   addiu     $a0, $sp, 0x10
/* BAD74 800CA574 21804000 */  addu       $s0, $v0, $zero
/* BAD78 800CA578 29000016 */  bnez       $s0, .L800CA620
/* BAD7C 800CA57C 21100002 */   addu      $v0, $s0, $zero
/* BAD80 800CA580 4A70000C */  jal        FUN_8001c128
/* BAD84 800CA584 00000000 */   nop
/* BAD88 800CA588 352D030C */  jal        FUN_800cb4d4
/* BAD8C 800CA58C 1000A427 */   addiu     $a0, $sp, 0x10
/* BAD90 800CA590 21804000 */  addu       $s0, $v0, $zero
/* BAD94 800CA594 21000016 */  bnez       $s0, .L800CA61C
/* BAD98 800CA598 FF000224 */   addiu     $v0, $zero, 0xff
/* BAD9C 800CA59C A8BC42A2 */  sb         $v0, -0x4358($s2)
/* BADA0 800CA5A0 010022A2 */  sb         $v0, 1($s1)
/* BADA4 800CA5A4 20000224 */  addiu      $v0, $zero, 0x20
/* BADA8 800CA5A8 020022A2 */  sb         $v0, 2($s1)
/* BADAC 800CA5AC 09000224 */  addiu      $v0, $zero, 9
/* BADB0 800CA5B0 030022A2 */  sb         $v0, 3($s1)
/* BADB4 800CA5B4 4A70000C */  jal        FUN_8001c128
/* BADB8 800CA5B8 040020A2 */   sb        $zero, 4($s1)
/* BADBC 800CA5BC 1000A427 */  addiu      $a0, $sp, 0x10
/* BADC0 800CA5C0 8F2D030C */  jal        FUN_800cb63c
/* BADC4 800CA5C4 21282002 */   addu      $a1, $s1, $zero
/* BADC8 800CA5C8 21804000 */  addu       $s0, $v0, $zero
/* BADCC 800CA5CC 14000016 */  bnez       $s0, .L800CA620
/* BADD0 800CA5D0 21100002 */   addu      $v0, $s0, $zero
/* BADD4 800CA5D4 4A70000C */  jal        FUN_8001c128
/* BADD8 800CA5D8 00000000 */   nop
/* BADDC 800CA5DC 20000424 */  addiu      $a0, $zero, 0x20
/* BADE0 800CA5E0 1000A527 */  addiu      $a1, $sp, 0x10
/* BADE4 800CA5E4 472D030C */  jal        FUN_800cb51c
/* BADE8 800CA5E8 21306002 */   addu      $a2, $s3, $zero
/* BADEC 800CA5EC 21804000 */  addu       $s0, $v0, $zero
/* BADF0 800CA5F0 0B000016 */  bnez       $s0, .L800CA620
/* BADF4 800CA5F4 21100002 */   addu      $v0, $s0, $zero
/* BADF8 800CA5F8 0900A012 */  beqz       $s5, .L800CA620
/* BADFC 800CA5FC 00000000 */   nop
/* BAE00 800CA600 07008012 */  beqz       $s4, .L800CA620
/* BAE04 800CA604 21206002 */   addu      $a0, $s3, $zero
/* BAE08 800CA608 21280000 */  addu       $a1, $zero, $zero
/* BAE0C 800CA60C 2130A002 */  addu       $a2, $s5, $zero
/* BAE10 800CA610 6A2A030C */  jal        FUN_800ca9a8
/* BAE14 800CA614 21388002 */   addu      $a3, $s4, $zero
/* BAE18 800CA618 21804000 */  addu       $s0, $v0, $zero
.L800CA61C:
/* BAE1C 800CA61C 21100002 */  addu       $v0, $s0, $zero
.L800CA620:
/* BAE20 800CA620 3000BF8F */  lw         $ra, 0x30($sp)
/* BAE24 800CA624 2C00B58F */  lw         $s5, 0x2c($sp)
/* BAE28 800CA628 2800B48F */  lw         $s4, 0x28($sp)
/* BAE2C 800CA62C 2400B38F */  lw         $s3, 0x24($sp)
/* BAE30 800CA630 2000B28F */  lw         $s2, 0x20($sp)
/* BAE34 800CA634 1C00B18F */  lw         $s1, 0x1c($sp)
/* BAE38 800CA638 1800B08F */  lw         $s0, 0x18($sp)
/* BAE3C 800CA63C 0800E003 */  jr         $ra
/* BAE40 800CA640 3800BD27 */   addiu     $sp, $sp, 0x38

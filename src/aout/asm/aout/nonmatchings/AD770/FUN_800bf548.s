.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf548
/* AFD48 800BF548 0D00A018 */  blez       $a1, .L800BF580
/* AFD4C 800BF54C 21300000 */   addu      $a2, $zero, $zero
/* AFD50 800BF550 641F073C */  lui        $a3, 0x1f64
/* AFD54 800BF554 B400E734 */  ori        $a3, $a3, 0xb4
/* AFD58 800BF558 40100600 */  sll        $v0, $a2, 1
.L800BF55C:
/* AFD5C 800BF55C 21104400 */  addu       $v0, $v0, $a0
/* AFD60 800BF560 0000E394 */  lhu        $v1, ($a3)
/* AFD64 800BF564 00000000 */  nop
/* AFD68 800BF568 000043A4 */  sh         $v1, ($v0)
/* AFD6C 800BF56C 00000000 */  nop
/* AFD70 800BF570 0100C624 */  addiu      $a2, $a2, 1
/* AFD74 800BF574 2A10C500 */  slt        $v0, $a2, $a1
/* AFD78 800BF578 F8FF4014 */  bnez       $v0, .L800BF55C
/* AFD7C 800BF57C 40100600 */   sll       $v0, $a2, 1
.L800BF580:
/* AFD80 800BF580 0800E003 */  jr         $ra
/* AFD84 800BF584 00000000 */   nop

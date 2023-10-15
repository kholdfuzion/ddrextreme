.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cfa98
/* C0298 800CFA98 0700C010 */  beqz       $a2, .L800CFAB8
/* C029C 800CFA9C 21180000 */   addu      $v1, $zero, $zero
/* C02A0 800CFAA0 21108300 */  addu       $v0, $a0, $v1
.L800CFAA4:
/* C02A4 800CFAA4 000045A0 */  sb         $a1, ($v0)
/* C02A8 800CFAA8 01006324 */  addiu      $v1, $v1, 1
/* C02AC 800CFAAC 2B106600 */  sltu       $v0, $v1, $a2
/* C02B0 800CFAB0 FCFF4014 */  bnez       $v0, .L800CFAA4
/* C02B4 800CFAB4 21108300 */   addu      $v0, $a0, $v1
.L800CFAB8:
/* C02B8 800CFAB8 0800E003 */  jr         $ra
/* C02BC 800CFABC 00000000 */   nop

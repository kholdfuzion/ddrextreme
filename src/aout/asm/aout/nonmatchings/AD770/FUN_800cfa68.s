.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cfa68
/* C0268 800CFA68 0900C010 */  beqz       $a2, .L800CFA90
/* C026C 800CFA6C 21380000 */   addu      $a3, $zero, $zero
/* C0270 800CFA70 21188700 */  addu       $v1, $a0, $a3
.L800CFA74:
/* C0274 800CFA74 2110A700 */  addu       $v0, $a1, $a3
/* C0278 800CFA78 00004290 */  lbu        $v0, ($v0)
/* C027C 800CFA7C 0100E724 */  addiu      $a3, $a3, 1
/* C0280 800CFA80 000062A0 */  sb         $v0, ($v1)
/* C0284 800CFA84 2B10E600 */  sltu       $v0, $a3, $a2
/* C0288 800CFA88 FAFF4014 */  bnez       $v0, .L800CFA74
/* C028C 800CFA8C 21188700 */   addu      $v1, $a0, $a3
.L800CFA90:
/* C0290 800CFA90 0800E003 */  jr         $ra
/* C0294 800CFA94 00000000 */   nop

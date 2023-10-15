.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strcpy
/* F814 8001F014 0E008010 */  beqz       $a0, .L8001F050
/* F818 8001F018 21100000 */   addu      $v0, $zero, $zero
/* F81C 8001F01C 0C00A010 */  beqz       $a1, .L8001F050
/* F820 8001F020 21188000 */   addu      $v1, $a0, $zero
/* F824 8001F024 0000A290 */  lbu        $v0, ($a1)
/* F828 8001F028 0100A524 */  addiu      $a1, $a1, 1
/* F82C 8001F02C 01006424 */  addiu      $a0, $v1, 1
/* F830 8001F030 06004010 */  beqz       $v0, .L8001F04C
/* F834 8001F034 000062A0 */   sb        $v0, ($v1)
.L8001F038:
/* F838 8001F038 0000A290 */  lbu        $v0, ($a1)
/* F83C 8001F03C 0100A524 */  addiu      $a1, $a1, 1
/* F840 8001F040 000082A0 */  sb         $v0, ($a0)
/* F844 8001F044 FCFF4014 */  bnez       $v0, .L8001F038
/* F848 8001F048 01008424 */   addiu     $a0, $a0, 1
.L8001F04C:
/* F84C 8001F04C 21106000 */  addu       $v0, $v1, $zero
.L8001F050:
/* F850 8001F050 0800E003 */  jr         $ra
/* F854 8001F054 00000000 */   nop
/* F858 8001F058 00000000 */  nop
/* F85C 8001F05C 00000000 */  nop
/* F860 8001F060 00000000 */  nop

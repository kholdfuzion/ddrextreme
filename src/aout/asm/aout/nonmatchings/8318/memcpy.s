.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel memcpy
/* B6F4 8001AEF4 0A008010 */  beqz       $a0, .L8001AF20
/* B6F8 8001AEF8 21100000 */   addu      $v0, $zero, $zero
/* B6FC 8001AEFC 0700C018 */  blez       $a2, .L8001AF1C
/* B700 8001AF00 21188000 */   addu      $v1, $a0, $zero
.L8001AF04:
/* B704 8001AF04 0000A290 */  lbu        $v0, ($a1)
/* B708 8001AF08 0100A524 */  addiu      $a1, $a1, 1
/* B70C 8001AF0C FFFFC624 */  addiu      $a2, $a2, -1
/* B710 8001AF10 000082A0 */  sb         $v0, ($a0)
/* B714 8001AF14 FBFFC01C */  bgtz       $a2, .L8001AF04
/* B718 8001AF18 01008424 */   addiu     $a0, $a0, 1
.L8001AF1C:
/* B71C 8001AF1C 21106000 */  addu       $v0, $v1, $zero
.L8001AF20:
/* B720 8001AF20 0800E003 */  jr         $ra
/* B724 8001AF24 00000000 */   nop
/* B728 8001AF28 00000000 */  nop
/* B72C 8001AF2C 00000000 */  nop
/* B730 8001AF30 00000000 */  nop

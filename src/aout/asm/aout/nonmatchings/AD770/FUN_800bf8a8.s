.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf8a8
/* B00A8 800BF8A8 641F033C */  lui        $v1, 0x1f64
/* B00AC 800BF8AC CA006334 */  ori        $v1, $v1, 0xca
/* B00B0 800BF8B0 00006494 */  lhu        $a0, ($v1)
/* B00B4 800BF8B4 641F023C */  lui        $v0, 0x1f64
/* B00B8 800BF8B8 CC004234 */  ori        $v0, $v0, 0xcc
/* B00BC 800BF8BC 00004294 */  lhu        $v0, ($v0)
/* B00C0 800BF8C0 00000000 */  nop
/* B00C4 800BF8C4 FFFF4530 */  andi       $a1, $v0, 0xffff
/* B00C8 800BF8C8 00006294 */  lhu        $v0, ($v1)
/* B00CC 800BF8CC 00000000 */  nop
/* B00D0 800BF8D0 FF0F4330 */  andi       $v1, $v0, 0xfff
/* B00D4 800BF8D4 00140500 */  sll        $v0, $a1, 0x10
/* B00D8 800BF8D8 02004004 */  bltz       $v0, .L800BF8E4
/* B00DC 800BF8DC FF0F8430 */   andi      $a0, $a0, 0xfff
/* B00E0 800BF8E0 21206000 */  addu       $a0, $v1, $zero
.L800BF8E4:
/* B00E4 800BF8E4 00240400 */  sll        $a0, $a0, 0x10
/* B00E8 800BF8E8 0800E003 */  jr         $ra
/* B00EC 800BF8EC 25108500 */   or        $v0, $a0, $a1

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf644
/* AFE44 800BF644 641F033C */  lui        $v1, 0x1f64
/* AFE48 800BF648 A0006334 */  ori        $v1, $v1, 0xa0
/* AFE4C 800BF64C 00006494 */  lhu        $a0, ($v1)
/* AFE50 800BF650 641F023C */  lui        $v0, 0x1f64
/* AFE54 800BF654 A2004234 */  ori        $v0, $v0, 0xa2
/* AFE58 800BF658 00004294 */  lhu        $v0, ($v0)
/* AFE5C 800BF65C 00000000 */  nop
/* AFE60 800BF660 FFFF4530 */  andi       $a1, $v0, 0xffff
/* AFE64 800BF664 00006294 */  lhu        $v0, ($v1)
/* AFE68 800BF668 00000000 */  nop
/* AFE6C 800BF66C FFFF4330 */  andi       $v1, $v0, 0xffff
/* AFE70 800BF670 00140500 */  sll        $v0, $a1, 0x10
/* AFE74 800BF674 02004004 */  bltz       $v0, .L800BF680
/* AFE78 800BF678 FFFF8430 */   andi      $a0, $a0, 0xffff
/* AFE7C 800BF67C 21206000 */  addu       $a0, $v1, $zero
.L800BF680:
/* AFE80 800BF680 00240400 */  sll        $a0, $a0, 0x10
/* AFE84 800BF684 0800E003 */  jr         $ra
/* AFE88 800BF688 25108500 */   or        $v0, $a0, $a1

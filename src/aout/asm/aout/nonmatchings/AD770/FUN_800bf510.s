.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf510
/* AFD10 800BF510 023C0400 */  srl        $a3, $a0, 0x10
/* AFD14 800BF514 641F023C */  lui        $v0, 0x1f64
/* AFD18 800BF518 B6004234 */  ori        $v0, $v0, 0xb6
/* AFD1C 800BF51C 000047A4 */  sh         $a3, ($v0)
/* AFD20 800BF520 1F80063C */  lui        $a2, 0x801f
/* AFD24 800BF524 30570324 */  addiu      $v1, $zero, 0x5730
/* AFD28 800BF528 1F80053C */  lui        $a1, 0x801f
/* AFD2C 800BF52C FFFF8730 */  andi       $a3, $a0, 0xffff
/* AFD30 800BF530 641F023C */  lui        $v0, 0x1f64
/* AFD34 800BF534 B8004234 */  ori        $v0, $v0, 0xb8
/* AFD38 800BF538 000047A4 */  sh         $a3, ($v0)
/* AFD3C 800BF53C 8270C3A4 */  sh         $v1, 0x7082($a2)
/* AFD40 800BF540 0800E003 */  jr         $ra
/* AFD44 800BF544 8070A3A4 */   sh        $v1, 0x7080($a1)

.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf60c
/* AFE0C 800BF60C 023C0400 */  srl        $a3, $a0, 0x10
/* AFE10 800BF610 641F023C */  lui        $v0, 0x1f64
/* AFE14 800BF614 A4004234 */  ori        $v0, $v0, 0xa4
/* AFE18 800BF618 000047A4 */  sh         $a3, ($v0)
/* AFE1C 800BF61C 1F80063C */  lui        $a2, 0x801f
/* AFE20 800BF620 30570324 */  addiu      $v1, $zero, 0x5730
/* AFE24 800BF624 1F80053C */  lui        $a1, 0x801f
/* AFE28 800BF628 FFFF8730 */  andi       $a3, $a0, 0xffff
/* AFE2C 800BF62C 641F023C */  lui        $v0, 0x1f64
/* AFE30 800BF630 A6004234 */  ori        $v0, $v0, 0xa6
/* AFE34 800BF634 000047A4 */  sh         $a3, ($v0)
/* AFE38 800BF638 8270C3A4 */  sh         $v1, 0x7082($a2)
/* AFE3C 800BF63C 0800E003 */  jr         $ra
/* AFE40 800BF640 8070A3A4 */   sh        $v1, 0x7080($a1)
